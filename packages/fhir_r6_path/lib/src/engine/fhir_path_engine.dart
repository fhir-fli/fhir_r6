// ignore_for_file: public_member_api_docs, avoid_positional_boolean_parameters
// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:math';

import 'package:fhir_r6/fhir_r6.dart';
import 'package:fhir_r6_path/fhir_r6_path.dart';

import 'package:ucum/ucum.dart';

class FHIRPathEngine {
  /// Constructor
  FHIRPathEngine._(this.worker, [this.hostServices])
      : terminologyServiceOptions = ValidationOptions.defaults();

  static Future<FHIRPathEngine> create(
    WorkerContext worker, [
    IEvaluationContext? hostServices,
  ]) async {
    final engine = FHIRPathEngine._(worker, hostServices);
    await engine._initFlags();
    return engine;
  }

  /// Initialization helper
  Future<void> _initFlags() async {
    for (final sd in await worker.getStructures()) {
      if (sd.derivation == TypeDerivationRule.specialization &&
          sd.kind != StructureDefinitionKind.logical &&
          sd.name.valueString != null) {
        allTypes[sd.name.valueString!] = sd;
      }
      if (sd.derivation == TypeDerivationRule.specialization &&
          sd.kind == StructureDefinitionKind.primitiveType &&
          sd.name.valueString != null) {
        primitiveTypes.add(sd.name.valueString!);
      }
    }
    if (!VersionUtilities.isR5VerOrLater(worker.getVersion())) {
      doNotEnforceAsCaseSensitive = true;
      doNotEnforceAsSingletonRule = true;
    }
  }

  Future<StructureDefinition?> _fetchTypeDefinition(String? type) async {
    return type == null ? null : await worker.fetchTypeDefinition(type);
  }

  /// Constants
  // ignore: constant_identifier_names
  static const NS_SYSTEM_TYPE = 'http://hl7.org/fhirpath/System.';
  // ignore: constant_identifier_names
  static const FHIR_TYPES_STRING = [
    'string',
    'uri',
    'code',
    'oid',
    'id',
    'uuid',
    'sid',
    'markdown',
    'base64Binary',
    'canonical',
    'url',
  ];

  /// Fields
  final WorkerContext worker;
  final StringBuffer fpLog = StringBuffer();
  final Set<String> primitiveTypes = {};
  final Map<String, StructureDefinition> allTypes = {};
  final ValidationOptions terminologyServiceOptions;

  /// Flags
  bool legacyMode = false;
  bool allowPolymorphicNames = true;
  bool doImplicitStringConversion = false;
  bool liquidMode = false;
  bool doNotEnforceAsSingletonRule = false;
  bool doNotEnforceAsCaseSensitive = false;
  bool allowDoubleQuotes = false;

  String? location; // For error messages
  IEvaluationContext? hostServices;

  ///
  /// ***************************************
  /// PARSING AND PRECEDENCE MANAGEMENT
  /// ***************************************
  ///
  /// Check if an Expression is valid FHIRPath
  bool isValid(String path) {
    try {
      parse(path);
      return true;
    } catch (e) {
      return false;
    }
  }

  /// Parse a FHIRPath expression
  ExpressionNode parse(String path, [String? name]) {
    final lexer = FHIRLexer(
      source: path,
      name: name,
      allowDoubleQuotes: allowDoubleQuotes,
    );

    if (lexer.done()) {
      throw FHIRLexerException(
        message: 'Path cannot be empty',
        location: lexer.currentLocation,
      );
    }
    return parseLexer(lexer);
  }

  ExpressionNodeWithOffset parsePartial(String path, int i) {
    final lexer = FHIRLexer(
      source: path,
      cursor: i,
      allowDoubleQuotes: allowDoubleQuotes,
    );
    if (lexer.done()) {
      throw lexer.error('Path cannot be empty');
    }
    final result = _parseExpression(lexer, true)..check();
    return ExpressionNodeWithOffset(lexer.currentStart, result);
  }

  ExpressionNode parseLexer(FHIRLexer lexer) {
    final result = _parseExpression(lexer, true)..check();
    // if (!lexer.done()) {
    //   throw lexer.error('Unexpected token "${lexer.current}"');
    // }
    return result;
  }

  ExpressionNode _parseExpression(FHIRLexer lexer, bool proximal) {
    // 1) Create our main 'result' node
    var result = ExpressionNode(lexer.nextId().toString());
    ExpressionNode? wrapper;
    final c = lexer.currentStartLocation;
    result.start = lexer.currentLocation;

    // 2) Check if the current token is a standalone unary ('-' or '+') at this
    // point
    if (['-', '+'].contains(lexer.current)) {
      // This parallels the Java snippet where it does:
      //   if (Utilities.existsInList(lexer.getCurrent(), "-", "+")) { ... }
      wrapper = ExpressionNode(lexer.nextId().toString())
        ..kind = ExpressionNodeKind.unary
        ..operation = FpOperation.fromCode(lexer.take())
        ..start = lexer.currentLocation
        ..proximal = proximal;
    }

    // 3) Now parse out the actual expression content
    if (lexer.current == null) {
      throw lexer.error('Expression terminated unexpectedly');
    } else if (lexer.isConstant()) {
      final isString = lexer.isStringConstant();

      // Check if it's a unary sign embedded with the constant, e.g. '-123'
      if (!isString &&
          (lexer.current!.startsWith('-') || lexer.current!.startsWith('+'))) {
        wrapper = ExpressionNode(lexer.nextId().toString())
          ..kind = ExpressionNodeKind.unary
          ..operation = FpOperation.fromCode(lexer.current!.substring(0, 1))
          ..proximal = proximal
          ..start = lexer.currentLocation;
        // Remove the sign from the string so _processConstant sees just digits
        lexer.current = lexer.current!.substring(1);
      }

      // Actually parse the constant
      result
        ..constant = _processConstant(lexer)
        ..kind = ExpressionNodeKind.constant;

      // Possibly parse a quantity (e.g., "5 years")
      if (!isString &&
          !lexer.done() &&
          (result.constant is FhirInteger || result.constant is FhirDecimal) &&
          (lexer.isStringConstant() ||
              lexer.hasTokenList([
                'year',
                'years',
                'month',
                'months',
                'week',
                'weeks',
                'day',
                'days',
                'hour',
                'hours',
                'minute',
                'minutes',
                'second',
                'seconds',
                'millisecond',
                'milliseconds',
              ]))) {
        String? ucum;
        String? unit;

        if (lexer.hasTokenList([
          'year',
          'years',
          'month',
          'months',
          'week',
          'weeks',
          'day',
          'days',
          'hour',
          'hours',
          'minute',
          'minutes',
          'second',
          'seconds',
          'millisecond',
          'milliseconds',
        ])) {
          final s = lexer.take();
          unit = s;
          switch (s) {
            case 'week':
            case 'weeks':
              ucum = 'wk';
            case 'day':
            case 'days':
              ucum = 'd';
            case 'hour':
            case 'hours':
              ucum = 'h';
            case 'minute':
            case 'minutes':
              ucum = 'min';
            case 'second':
            case 'seconds':
              ucum = 's';
            case 'millisecond':
            case 'milliseconds':
              ucum = 'ms';
            // If 'year' or 'month', the Java code just doesn't set a UCUM,
            // but you can adapt as needed.
          }
        } else {
          ucum = lexer.readConstant('units');
        }

        num? value;
        if (result.constant is FhirNumber) {
          value = (result.constant! as FhirNumber).valueNum;
        } else if (result.constant?.primitiveValue is String) {
          value = int.tryParse(result.constant!.primitiveValue!) ??
              double.tryParse(result.constant!.primitiveValue!);
        }
        result.constant = Quantity(
          value: value?.toFhirDecimal,
          unit: unit?.toFhirString,
          system: ucum == null ? null : 'http://unitsofmeasure.org'.toFhirUri,
          code: ucum?.toFhirCode,
        );
      }
      result.end = lexer.currentLocation;
    } else if (lexer.current == '(') {
      // If the token is '(' => parse a group
      lexer.next();
      final newExpression = _parseExpression(lexer, true);
      result
        ..kind = ExpressionNodeKind.group
        ..group = newExpression;
      if (lexer.current != ')') {
        throw lexer.error('Found ${lexer.current} expecting a ")"');
      }
      result.end = lexer.currentLocation;
      lexer.next(); // consume ')'
    } else {
      // Parse a named token or function
      if (!lexer.isToken() && !lexer.current!.startsWith('')) {
        throw lexer.error('Found ${lexer.current} expecting a token name');
      }
      if (lexer.isFixedName()) {
        result.name = lexer.readFixedName('Path Name');
      } else {
        result.name = lexer.take();
      }
      result.end = lexer.currentLocation;
      if (!result.checkName()) {
        throw lexer.error('Found ${result.name} expecting a valid token name');
      }
      // If it looks like a function call => parse parameters
      if (lexer.current == '(') {
        var f = FpFunction.fromCode(result.name!);
        FunctionDetails? details;
        if (f == null) {
          if (hostServices != null) {
            details = hostServices!.resolveFunction(this, result.name!);
          }
          if (details == null) {
            throw lexer
                .error('The name ${result.name} is not a valid function name');
          }
          f = FpFunction.Custom;
        }
        result
          ..kind = ExpressionNodeKind.function
          ..function = f;

        lexer.next(); // consume '('
        while (lexer.current != ')') {
          result.parameters.add(_parseExpression(lexer, true));
          if (lexer.current == ',') {
            lexer.next();
          } else if (lexer.current != ')') {
            throw lexer.error(
              'The token ${lexer.current} is not expected here - '
              'either a "," or a ")" expected',
            );
          }
        }
        result.end = lexer.currentLocation;
        lexer.next(); // consume ')'
        _checkParameters(lexer, c, result, details);
      } else {
        result.kind = ExpressionNodeKind.name;
      }
    }

    // 4) Possibly parse array indexing [x]
    var focus = result;
    if (lexer.current == '[') {
      lexer.next();
      final item = ExpressionNode(lexer.nextId().toString())
        ..kind = ExpressionNodeKind.function
        ..function = FpFunction.Item
        ..parameters.add(_parseExpression(lexer, true));
      if (lexer.current != ']') {
        throw lexer.error(
          'The token ${lexer.current} is not expected here - a "]" expected',
        );
      }
      lexer.next();
      result.inner = item;
      focus = item;
    }

    // Possibly parse .inner expressions
    if (lexer.current == '.') {
      lexer.next();
      focus.inner = _parseExpression(lexer, false);
    }

    // 5) Mark result as proximal or not
    result.proximal = proximal;

    // 6) If it's the proximal expression, parse any operators
    if (proximal) {
      // The Java code:  while (lexer.isOp()) { focus.setOperation(...); ... }
      while (lexer.isOp()) {
        focus
          ..operation = FpOperation.fromCode(lexer.current)
          ..opStart = lexer.currentStartLocation
          ..opEnd = lexer.currentLocation;

        lexer.next(); // Consume the operator

        // Parse the right-hand side of the operation
        focus.opNext = _parseExpression(lexer, false);

        // Move focus forward carefully
        if (focus.opNext != null) {
          focus = focus.opNext!;

          // Ensure we do not skip unary nodes
          while (
              focus.kind == ExpressionNodeKind.unary && focus.opNext != null) {
            focus = focus.opNext!;
          }
        }
      }

      // 7) Then do the precedence reorganization
      result = _organisePrecedence(lexer, result);
    }

    // 8) If we built a unary wrapper for this expression, link it up
    if (wrapper != null) {
      wrapper.opNext = result;
      result.proximal = false;
      result = wrapper;
    }

    return result;
  }

  // Mirror the Java organisePrecedence
  ExpressionNode _organisePrecedence(FHIRLexer lexer, ExpressionNode oldNode) {
    var node = oldNode;

    // Times/DivideBy/Div/Mod
    node = _gatherPrecedence(
      lexer,
      node,
      {
        FpOperation.Times,
        FpOperation.DivideBy,
        FpOperation.Div,
        FpOperation.Mod,
      },
    );

    // Plus/Minus/Concatenate
    node = _gatherPrecedence(
      lexer,
      node,
      {FpOperation.Plus, FpOperation.Minus, FpOperation.Concatenate},
    );

    node = _gatherPrecedence(
      lexer,
      node,
      {
        FpOperation.Is,
        FpOperation.As,
      },
    );

    // Union
    node = _gatherPrecedence(lexer, node, {FpOperation.Union});
    // <, >, <=, >=
    node = _gatherPrecedence(
      lexer,
      node,
      {
        FpOperation.LessThan,
        FpOperation.Greater,
        FpOperation.LessOrEqual,
        FpOperation.GreaterOrEqual,
      },
    );
    // =, ~, !=, !~
    node = _gatherPrecedence(
      lexer,
      node,
      {
        FpOperation.Equals,
        FpOperation.Equivalent,
        FpOperation.NotEquals,
        FpOperation.NotEquivalent,
      },
    );
    // and
    node = _gatherPrecedence(lexer, node, {FpOperation.And});
    // xor, or
    node = _gatherPrecedence(lexer, node, {FpOperation.Xor, FpOperation.Or});
    // implies
    node = _gatherPrecedence(lexer, node, {FpOperation.Implies});

    return node;
  }

// Mirror the Java gatherPrecedence
  ExpressionNode _gatherPrecedence(
    FHIRLexer lexer,
    ExpressionNode oldStart,
    Set<FpOperation> ops,
  ) {
    // Must be proximal in the chain
    assert(oldStart.proximal, 'Start must be proximal');
    var start = oldStart;

    // 1) Determine if we need to group anything
    var focus = start.opNext;
    var work = false;
    if (ops.contains(start.operation) &&
        start.kind != ExpressionNodeKind.unary) {
      // If the start node's operator is in 'ops', grouping might be needed
      while (focus != null && focus.operation != null) {
        work = work || !ops.contains(focus.operation);
        focus = focus.opNext;
      }
    } else {
      // Otherwise grouping is needed if we see an operator in 'ops'
      while (focus != null && focus.operation != null) {
        work = work ||
            (ops.contains(focus.operation) &&
                focus.kind != ExpressionNodeKind.unary);
        focus = focus.opNext;
      }
    }
    if (!work) {
      // no changes
      return start;
    }

    // 2) Possibly create a new group at the start
    ExpressionNode group;
    if (ops.contains(start.operation) &&
        start.kind != ExpressionNodeKind.unary) {
      group = _newGroup(lexer, start)..proximal = true;
      focus = start;
      start = group;
    } else {
      var node = start;
      focus = node.opNext;
      // skip over unary or irrelevant operators
      while (focus != null) {
        if (focus.kind == ExpressionNodeKind.unary) {
          node = focus;
          focus = focus.opNext;
          continue;
        }
        if (focus.operation == null || !ops.contains(focus.operation)) {
          node = focus;
          focus = focus.opNext;
        } else {
          // found a matching operator
          break;
        }
      }
      if (focus == null) {
        return start; // no grouping needed
      }
      group = _newGroup(lexer, focus);
      node.opNext = group;
    }

    // 3) Grouping loop
    do {
      // (A) skip unary nodes
      while (focus != null && focus.kind == ExpressionNodeKind.unary) {
        focus = focus.opNext;
      }
      // (B) skip consecutive ops in 'ops'
      while (focus != null &&
          focus.operation != null &&
          ops.contains(focus.operation) &&
          focus.kind != ExpressionNodeKind.unary) {
        focus = focus.opNext;
      }
      // (C) if there's still an operator, attach it
      if (focus != null &&
          focus.operation != null &&
          focus.kind != ExpressionNodeKind.unary) {
        group
          ..operation = focus.operation
          ..opNext = focus.opNext;
        focus
          ..operation = null
          ..opNext = null;

        var node = group;
        focus = group.opNext;

        // (D) possibly chain more groups
        if (focus != null) {
          while (focus != null &&
              (focus.kind == ExpressionNodeKind.unary ||
                  !ops.contains(focus.operation))) {
            node = focus;
            focus = focus.opNext;
          }
          if (focus != null) {
            group = _newGroup(lexer, focus);
            node.opNext = group;
          }
        }
      }
    } while (focus != null && focus.operation != null);

    return start;
  }

  // Mirror the Java newGroup
  ExpressionNode _newGroup(FHIRLexer lexer, ExpressionNode? next) {
    final result = ExpressionNode(lexer.nextId().toString())
      ..kind = ExpressionNodeKind.group
      ..group = next;
    if (next != null) {
      next.proximal = true;
    }
    return result;
  }

  ///
  /// ***************************************
  /// CORE EVALUATION METHODS
  /// ***************************************
  ///
  /// Evaluation with base and ExpressionNode
  Future<List<FhirBase>> evaluate(FhirBase? base, ExpressionNode node) async {
    final list = <FhirBase>[];
    if (base != null) {
      list.add(base);
    }
    fpLog.clear();
    final context = ExecutionContext(
      focusResource: base != null && base is Resource ? base : null,
      rootResource: base != null && base is Resource ? base : null,
      context: base,
      thisItem: base,
    );
    return execute(context, list, node, true);
  }

  // Evaluation with base and FHIRPath expression (String)
  Future<List<FhirBase>> evaluateFromPath(FhirBase? base, String path) async {
    final node = parse(path); // Assume `parse` is implemented
    return evaluate(base, node);
  }

  Future<String> evaluateToString(
    Object appInfo,
    FhirBase? focusResource,
    FhirBase? rootResource,
    FhirBase base,
    ExpressionNode node,
  ) async {
    return convertListToString(
      await evaluateWithContext(
        appInfo,
        focusResource,
        rootResource,
        base,
        node,
      ),
    );
  }

  Future<bool> evaluateToBoolean(
    Object appInfo,
    FhirBase? focusResource,
    FhirBase? rootResource,
    FhirBase base,
    ExpressionNode node,
  ) async {
    return convertToBoolean(
      await evaluateWithContext(
        appInfo,
        focusResource,
        rootResource,
        base,
        node,
      ),
    );
  }

  // Evaluation with appContext and additional parameters
  Future<List<FhirBase>> evaluateWithContext(
    Object? appContext,
    FhirBase? focusResource,
    FhirBase? rootResource,
    FhirBase? base,
    ExpressionNode node, {
    Map<String, dynamic>? environment,
  }) async {
    final list = <FhirBase>[];
    if (base != null) {
      list.add(base);
    }
    fpLog.clear();
    final context = ExecutionContext(
      appInfo: appContext,
      focusResource: focusResource,
      rootResource: rootResource,
      context: base,
      thisItem: base,
    )..definedVariables = environment;

    return execute(context, list, node, true);
  }

  // Evaluation with appContext and path (String)
  Future<List<FhirBase>> evaluateWithPath(
    Object? appContext,
    Resource? focusResource,
    Resource? rootResource,
    FhirBase? base,
    String path,
  ) async {
    final node = parse(path); // Assume `parse` is implemented
    return evaluateWithContext(
      appContext,
      focusResource,
      rootResource,
      base,
      node,
    );
  }

  Future<TypeDetails> evaluateFunctionType(
    ExecutionTypeContext context,
    TypeDetails focus,
    ExpressionNode exp,
  ) async {
    final paramTypes = <TypeDetails>[];
    if (exp.function == FpFunction.Is ||
        exp.function == FpFunction.As ||
        exp.function == FpFunction.OfType) {
      paramTypes.add(
        TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_String]),
      );
    } else {
      var i = 0;
      for (final expr in exp.parameters) {
        if (isExpressionParameter(exp, i)) {
          paramTypes.add(
            await executeType(
              changeThisTypeContext(context, focus),
              focus,
              expr,
              true,
            ),
          );
        } else {
          paramTypes
              .add(await executeType(context, context.thisItem, expr, true));
        }
        i++;
      }
    }

    switch (exp.function) {
      case FpFunction.Empty:
      case FpFunction.Not:
        return TypeDetails(
          CollectionStatus.singleton,
          [TypeDetails.FP_Boolean],
        );
      case FpFunction.Exists:
      case FpFunction.SubsetOf:
      case FpFunction.SupersetOf:
        await checkParamTypes(
          exp,
          exp.function.toString(),
          paramTypes,
          [focus],
        );
        return TypeDetails(
          CollectionStatus.singleton,
          [TypeDetails.FP_Boolean],
        );
      case FpFunction.IsDistinct:
        return TypeDetails(
          CollectionStatus.singleton,
          [TypeDetails.FP_Boolean],
        );
      case FpFunction.Distinct:
        return focus;
      case FpFunction.Count:
        return TypeDetails(
          CollectionStatus.singleton,
          [TypeDetails.FP_Integer],
        );
      case FpFunction.Where:
      case FpFunction.Select:
      case FpFunction.Repeat:
      case FpFunction.Aggregate:
        return anything(focus.collectionStatus);
      case FpFunction.All:
        return TypeDetails(
          CollectionStatus.singleton,
          [TypeDetails.FP_Boolean],
        );
      case FpFunction.Item:
        checkOrdered(focus, 'item', exp);
        await checkParamTypes(
          exp,
          exp.function.toString(),
          paramTypes,
          [
            TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_Integer]),
          ],
        );
        return focus;
      case FpFunction.As:
      case FpFunction.OfType:
        await checkParamTypes(
          exp,
          exp.function.toString(),
          paramTypes,
          [
            TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_String]),
          ],
        );
        return TypeDetails(
          CollectionStatus.singleton,
          exp.parameters.isEmpty || exp.parameters.first.name == null
              ? []
              : [exp.parameters.first.name!],
        );
      case FpFunction.Type:
        var hasSystemType = false;
        var hasCustomType = false;
        for (final pt in focus.types) {
          hasSystemType = hasSystemType || pt.isSystemType();
          hasCustomType = hasCustomType || !pt.isSystemType();
        }
        if (hasSystemType && hasCustomType) {
          return TypeDetails(
            CollectionStatus.singleton,
            [TypeDetails.FP_SimpleTypeInfo, TypeDetails.FP_ClassInfo],
          );
        } else if (hasSystemType) {
          return TypeDetails(
            CollectionStatus.singleton,
            [TypeDetails.FP_SimpleTypeInfo],
          );
        } else {
          return TypeDetails(
            CollectionStatus.singleton,
            [TypeDetails.FP_ClassInfo],
          );
        }
      case FpFunction.Is:
        await checkParamTypes(
          exp,
          exp.function.toString(),
          paramTypes,
          [
            TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_String]),
          ],
        );
        return TypeDetails(
          CollectionStatus.singleton,
          [TypeDetails.FP_Boolean],
        );
      case FpFunction.Single:
        return focus.toSingleton();
      case FpFunction.First:
      case FpFunction.Last:
        checkOrdered(focus, exp.function.toString(), exp);
        return focus.toSingleton();
      case FpFunction.Tail:
      case FpFunction.Skip:
      case FpFunction.Take:
        checkOrdered(focus, exp.function.toString(), exp);
        await checkParamTypes(
          exp,
          exp.function.toString(),
          paramTypes,
          [
            TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_Integer]),
          ],
        );
        return focus;
      case FpFunction.Union:
      case FpFunction.Combine:
        return focus.union(paramTypes.first);
      case FpFunction.Intersect:
        return focus.intersect(paramTypes.first);
      case FpFunction.Exclude:
        return focus;
      case FpFunction.Iif:
        final types = TypeDetails(null);
        checkSingleton(focus, 'iif', exp);
        await checkParamTypes(
          exp,
          exp.function.toString(),
          paramTypes,
          [
            TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_Boolean]),
          ],
        );
        types.update(paramTypes[1]);
        if (paramTypes.length > 2) {
          types.update(paramTypes[2]);
        }
        return types;
      case FpFunction.Lower:
      case FpFunction.Upper:
      case FpFunction.ToChars:
        await checkContextString(focus, exp.function.toString(), exp, true);
        return TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_String]);
      case FpFunction.IndexOf:
      case FpFunction.Substring:
      case FpFunction.StartsWith:
      case FpFunction.EndsWith:
      case FpFunction.Matches:
      case FpFunction.MatchesFull:
      case FpFunction.ReplaceMatches:
      case FpFunction.Contains:
      case FpFunction.Replace:
        await checkContextString(focus, exp.function.toString(), exp, true);
        await checkParamTypes(
          exp,
          exp.function.toString(),
          paramTypes,
          [
            TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_String]),
          ],
        );
        return TypeDetails(
          CollectionStatus.singleton,
          [TypeDetails.FP_Boolean],
        );
      case FpFunction.Length:
        checkContextPrimitive(focus, 'length', false, exp);
        return TypeDetails(
          CollectionStatus.singleton,
          [TypeDetails.FP_Integer],
        );
      case FpFunction.Children:
      case FpFunction.Descendants:
        return childTypes(focus, exp.function.toString(), exp);
      case FpFunction.MemberOf:
        await checkContextCoded(focus, 'memberOf', exp);
        await checkParamTypes(
          exp,
          exp.function.toString(),
          paramTypes,
          [
            TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_String]),
          ],
        );
        return TypeDetails(
          CollectionStatus.singleton,
          [TypeDetails.FP_Boolean],
        );
      case FpFunction.Trace:
      case FpFunction.DefineVariable:
      case FpFunction.Check:
        await checkParamTypes(
          exp,
          exp.function.toString(),
          paramTypes,
          [
            TypeDetails(CollectionStatus.unordered, [TypeDetails.FP_String]),
          ],
        );
        return focus;
      case FpFunction.Today:
      case FpFunction.Now:
      case FpFunction.TimeOfDay:
        return TypeDetails(
          CollectionStatus.singleton,
          [TypeDetails.FP_DateTime],
        );
      case FpFunction.Resolve:
        await checkContextReference(focus, 'resolve', exp);
        return TypeDetails(CollectionStatus.singleton, ['DomainResource']);
      case FpFunction.Extension:
        await checkParamTypes(
          exp,
          exp.function.toString(),
          paramTypes,
          [
            TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_String]),
          ],
        );
        return TypeDetails(CollectionStatus.singleton, ['Extension']);
      case FpFunction.ToInteger:
      case FpFunction.ToDecimal:
      case FpFunction.ToString:
      case FpFunction.ToQuantity:
      case FpFunction.ToBoolean:
        checkContextPrimitive(focus, exp.function.toString(), true, exp);
        return TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_String]);
      case FpFunction.ToDateTime:
      case FpFunction.ToDate:
      case FpFunction.ToTime:
        checkContextPrimitive(focus, exp.function.toString(), false, exp);
        return TypeDetails(
          CollectionStatus.singleton,
          [TypeDetails.FP_DateTime],
        );
      case FpFunction.Custom:
        if (hostServices == null) {
          throw makeException(
            exp,
            'FHIRPATH_NO_HOST_SERVICES',
            ['Custom Function'],
          );
        }
        return hostServices!.checkFunction(
          this,
          context.appInfo,
          exp.name ?? 'custom',
          focus,
          paramTypes,
        );
      case null:
      case FpFunction.AllFalse:
      case FpFunction.AnyFalse:
      case FpFunction.AllTrue:
      case FpFunction.AnyTrue:
      case FpFunction.HasValue:
      case FpFunction.IsBoolean:
      case FpFunction.ConvertsToBoolean:
      case FpFunction.IsInteger:
      case FpFunction.ConvertsToInteger:
      case FpFunction.IsString:
      case FpFunction.ConvertsToString:
      case FpFunction.IsDecimal:
      case FpFunction.ConvertsToDecimal:
      case FpFunction.IsQuantity:
      case FpFunction.ConvertsToQuantity:
      case FpFunction.IsDateTime:
      case FpFunction.ConvertsToDateTime:
      case FpFunction.IsDate:
      case FpFunction.ConvertsToDate:
      case FpFunction.IsTime:
      case FpFunction.ConvertsToTime:
      case FpFunction.ConformsTo:
      case FpFunction.Round:
      case FpFunction.Sqrt:
      case FpFunction.Abs:
      case FpFunction.Ceiling:
      case FpFunction.Exp:
      case FpFunction.Floor:
      case FpFunction.Ln:
      case FpFunction.Log:
      case FpFunction.Power:
      case FpFunction.Sum:
      case FpFunction.Truncate:
      case FpFunction.Encode:
      case FpFunction.Decode:
      case FpFunction.Escape:
      case FpFunction.Unescape:
      case FpFunction.Trim:
      case FpFunction.Split:
      case FpFunction.Join:
      case FpFunction.LowBoundary:
      case FpFunction.HighBoundary:
      case FpFunction.Precision:
      case FpFunction.HtmlChecks1:
      case FpFunction.HtmlChecks2:
      case FpFunction.Comparable:
      case FpFunction.HasTemplateIdOf:
        throw UnimplementedError();
    }
  }

  ///
  /// ***************************************
  /// CORE EXECUTION FUNCTIONS
  /// ***************************************
  ///
  /// Core method to execute evaluation logic
  Future<List<FhirBase>> execute(
    ExecutionContext inContext,
    List<FhirBase> focus,
    ExpressionNode exp,
    bool atEntry,
  ) async {
    // Acquire context for special variables ($this, $total, $index, etc.)
    var context = contextForParameter(inContext);

    // This will hold the evaluated results for the current node
    var work = <FhirBase>[];

    // Main switch to evaluate this node based on its kind
    switch (exp.kind) {
      case ExpressionNodeKind.unary:
        // Evaluate the operand first
        if (exp.opNext != null) {
          // Evaluate operand in non-proximal mode (the unary node is the
          // 'proximal' context)
          final operandResult =
              await execute(context, focus, exp.opNext!, false);

          // Now apply the unary operation
          if (exp.operation == FpOperation.Minus) {
            final negValues = <FhirBase>[];
            for (final val in operandResult) {
              if (val is FhirNumber) {
                // Flip sign
                negValues.add((val * -1)!);
              } else if (val is Quantity) {
                negValues.add(
                  val.copyWith(
                    value: val.value == null
                        ? null
                        : (val.value! * -1)! as FhirDecimal,
                  ),
                );
              } else {
                // If you allow unary minus on other types (Quantity, etc.),
                // handle here
                throw PathEngineException('Unary minus not supported on $val');
              }
            }
            work.addAll(negValues);
          } else if (exp.operation == FpOperation.Plus) {
            // Unary plus: no-op
            work.addAll(operandResult);
          } else {
            throw PathEngineException(
              'Unsupported unary operator: ${exp.operation}',
            );
          }
        } else {
          // If no operand, decide how to handle (e.g. 0, or throw an error)
          work.add(0.toFhirInteger);
        }
        // Nullify the unary operation so it's not re-applied in the proximal
        // loop
        exp.operation = null;

      case ExpressionNodeKind.name:
        // Handle a named reference
        if (atEntry && exp.name == r'$this') {
          work.add(context.thisItem!);
        } else if (atEntry && exp.name == r'$total') {
          work.addAll(context.total ?? []);
        } else if (atEntry && exp.name == r'$index') {
          work.add(context.index);
        } else {
          for (final item in focus) {
            final outcome =
                await executeForItem(context, item, exp, atEntry: true);

            work.addAll(outcome);
          }
        }

      case ExpressionNodeKind.function:
        // Evaluate a function call
        work.addAll(await evaluateFunction(context, focus, exp));

      case ExpressionNodeKind.constant:
        // Evaluate a literal constant
        final constants =
            resolveConstantWithBase(context, exp.constant, false, exp, true);

        work.addAll(constants);

      case ExpressionNodeKind.group:
        // Evaluate the sub-expression inside the group
        work.addAll(await execute(context, focus, exp.group!, atEntry));

      case null:
        // No node kind: do nothing or throw
        break;
    }

    // If there's an inner expression (dot or bracket indexing), evaluate that
    // next
    if (exp.inner != null) {
      work = await execute(context, work, exp.inner!, false);
    }

    // If the node is proximal and has an operation, evaluate the chain of
    // operations
    if (exp.proximal && exp.operation != null) {
      var next = exp.opNext;
      var last = exp;

      while (next != null) {
        // If the last node was a unary node, we skip its operand, which is next
        // because unary already consumed 'next' as its single operand
        if (last.kind == ExpressionNodeKind.unary) {
          next = next.opNext; // skip the operand
          if (next == null) {
            break;
          }
        }

        // If there's no operation on 'last', we've exhausted the chain
        if (last.operation == null) {
          break;
        }

        // Re-fetch context for each operation
        context = contextForParameter(inContext);

        // Optional pre-operation logic
        var work2 = preOperate(work, last.operation, exp);

        if (work2 != null) {
          // If preOperate returns a value, use it
          work = work2;
        } else if (last.operation == FpOperation.Is ||
            last.operation == FpOperation.As) {
          // Evaluate a type check or cast
          work2 = await executeContextTypeName(context, focus, next, false);
          work = await operate(context, work, last.operation, work2, last);
        } else {
          // Evaluate the 'next' node, then apply the operation

          work2 = await execute(context, focus, next, true);
          work = await operate(context, work, last.operation, work2, last);
        }

        // Move on to the next operation
        last = next;
        next = next.opNext;
      }
    }

    return work;
  }

  Future<List<FhirBase>> executeForItem(
    ExecutionContext context,
    FhirBase item,
    ExpressionNode exp, {
    required bool atEntry,
  }) async {
    final result = <FhirBase>[];
    // Step 1: Resolve constants if at entry
    if (atEntry && context.appInfo != null && hostServices != null) {
      final temp = hostServices!
          .resolveConstant(this, context.appInfo, exp.name, true, false);

      if (temp.isNotEmpty) {
        result.addAll(temp);
        return result;
      }
    }

    // Step 2: Special case for type checks
    if (atEntry &&
        exp.name != null &&
        exp.name!.isNotEmpty &&
        exp.name![0].toUpperCase() == exp.name![0]) {
      // Handle constant items
      if (item is PrimitiveType) {
        final itemType = item.fhirType;

        if (itemType == exp.name) {
          result.add(item);
          return result;
        }
      }

      // Handle resources
      final sd = await _fetchTypeDefinition(item.fhirType);
      if (sd == null) {
        // Logical model case

        if (exp.name == item.fhirType) {
          result.add(item);
        }
      } else {
        StructureDefinition? current = sd;

        while (current != null) {
          if (current.type.toString() == exp.name) {
            result.add(item);
            break;
          }
          current = await worker.fetchResource<StructureDefinition>(
            uri: current.baseDefinition?.toString(),
          );
        }
      }
    } else {
      // Step 3: Default case - Get children by name
      getChildrenByName(item, exp.name!, result);
    }

    // Step 4: Fallback to resolve constants if result is empty
    if (atEntry &&
        context.appInfo != null &&
        hostServices != null &&
        result.isEmpty) {
      result.addAll(
        hostServices!
            .resolveConstant(this, context.appInfo, exp.name, false, false),
      );
    }
    return result;
  }

  Future<TypeDetails> executeType(
    dynamic contextOrType, // Can be String or ExecutionTypeContext
    dynamic focusOrExp, // Can be TypeDetails or ExpressionNode
    ExpressionNode exp,
    bool atEntry,
  ) async {
    // Determine whether the first parameter is a String or ExecutionTypeContext
    if (contextOrType is String && focusOrExp is ExpressionNode) {
      // Handle the first function's logic
      final type = contextOrType;
      final expression = focusOrExp;

      if (atEntry &&
          expression.name != null &&
          expression.name!.isNotEmpty &&
          expression.name![0].isUpperCase() &&
          type.hashTail() == expression.name) {
        // Special case for start up
        return TypeDetails(CollectionStatus.singleton, [type]);
      }

      final result = TypeDetails(null);
      await getChildTypesByName(type, expression.name!, result, expression);
      return result;
    } else if (contextOrType is ExecutionTypeContext &&
        focusOrExp is TypeDetails?) {
      // Handle the second function's logic
      var context = typeContextForParameter(contextOrType);
      final focus = focusOrExp;
      TypeDetails? result = TypeDetails(null);

      switch (exp.kind) {
        case ExpressionNodeKind.name:
          if (atEntry && exp.name == r'$this') {
            if (context.thisItem == null) {
              throw makeException(exp, 'FHIRPATH_NO_THIS', ['']);
            }
            result.update(context.thisItem!);
          } else if (atEntry && exp.name == r'$total') {
            result.update(anything(CollectionStatus.unordered));
          } else if (atEntry && exp.name == r'$index') {
            result.addType(TypeDetails.FP_Integer);
          } else if (atEntry && focus == null) {
            result.update(executeContextType(context, exp.name!, exp, false));
          } else {
            for (final s in focus?.types ?? <String>[]) {
              result.update(await executeType(s, null, exp, atEntry));
            }
            if (result.hasNoTypes()) {
              throw makeException(exp, 'FHIRPATH_UNKNOWN_NAME', [
                exp.name ?? '',
                focus?.describe() ?? '',
              ]);
            }
          }

        case ExpressionNodeKind.function:
          if (focus == null) {
            throw makeException(exp, 'FHIRPATH_NO_FOCUS', ['']);
          }
          result.update(await evaluateFunctionType(context, focus, exp));

        case ExpressionNodeKind.unary:
          result.addType(TypeDetails.FP_Integer);
          result.addType(TypeDetails.FP_Decimal);
          result.addType(TypeDetails.FP_Quantity);

        case ExpressionNodeKind.constant:
          result.update(resolveConstantType(context, exp.constant, exp, true));

        case ExpressionNodeKind.group:
          result.update(await executeType(context, focus, exp.group!, atEntry));
        case null:
          throw ArgumentError('Invalid arguments passed to executeType');
      }

      exp.types = result;

      if (exp.inner != null) {
        result = await executeType(context, result, exp.inner!, false);
      }

      if (exp.proximal && exp.operation != null) {
        var next = exp.opNext;
        var last = exp;
        while (next != null) {
          context = typeContextForParameter(contextOrType);
          TypeDetails work;

          if (last.operation == FpOperation.Is ||
              last.operation == FpOperation.As) {
            if (focus == null) {
              throw makeException(exp, 'FHIRPATH_NO_FOCUS', ['']);
            }
            work = executeTypeContextTypeName(context, focus, next, atEntry);
          } else {
            work = await executeType(context, focus, next, atEntry);
          }
          if (result == null) {
            throw ArgumentError('result is null');
          }
          result = await operateTypes(result, last.operation!, work, last);
          last = next;
          next = next.opNext;
        }
        exp.opTypes = result;
      }
      if (result == null) {
        throw ArgumentError('result is null');
      }
      return result;
    } else {
      throw ArgumentError('Invalid arguments passed to executeType');
    }
  }

  TypeDetails executeContextType(
    ExecutionTypeContext context,
    String name,
    ExpressionNode expr,
    bool explicitConstant,
  ) {
    if (hostServices == null) {
      throw makeException(
        expr,
        'FHIRPATH_NO_HOST_SERVICES',
        ['Context Reference'],
      );
    }
    return hostServices!
        .resolveConstantType(this, context.appInfo, name, explicitConstant);
  }

  Future<List<FhirBase>> executeContextTypeName(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode next,
    bool atEntry,
  ) async {
    final result = <FhirBase>[];

    if (next.inner != null) {
      // Handle inner nodes by constructing the fully qualified name
      result.add(FhirString('${next.name}.${next.inner!.name}'));
    } else if (next.name != null) {
      // Handle nodes with a name
      result.add(FhirString(next.name));
    } else if (next.kind == ExpressionNodeKind.group) {
      // Process group nodes recursively

      result.addAll(await execute(context, focus, next.group!, atEntry));
    }

    return result;
  }

  TypeDetails executeTypeContextTypeName(
    ExecutionTypeContext context,
    TypeDetails focus,
    ExpressionNode exp,
    bool atEntry,
  ) {
    return TypeDetails(
      CollectionStatus.singleton,
      exp.name == null ? <String>[] : [exp.name!],
    );
  }

  Future<TypeDetails> check(
    Object appContext, {
    String? resourceType,
    StructureDefinition? structureDefinition,
    String? context,
    ExpressionNode? expressionNode,
    String? expressionString,
  }) async {
    if (expressionString != null && resourceType != null && context != null) {
      // Case 4: resourceType, context, and expressionString provided
      return check(
        appContext,
        resourceType: resourceType,
        context: context,
        expressionNode: parse(expressionString),
      );
    } else if (structureDefinition != null && expressionNode != null) {
      if (context != null) {
        // Case 2: structureDefinition, context, and expressionNode provided
        TypeDetails types;
        if (!context.contains('.')) {
          types = TypeDetails(
            CollectionStatus.singleton,
            [structureDefinition.url!.toString()],
          );
        } else {
          final ed = await getElementDefinition(
            structureDefinition,
            context,
            true,
            expressionNode,
          );
          if (ed == null) {
            throw makeException(
              expressionNode,
              'FHIRPATH_UNKNOWN_CONTEXT_ELEMENT',
              [context],
            );
          }
          if (ed.fixedType != null) {
            types = TypeDetails(CollectionStatus.singleton, [ed.fixedType!]);
          } else if ((ed.definition?.type?.isEmpty ?? true) ||
              isAbstractType(ed.definition!.type!)) {
            types = TypeDetails(
              CollectionStatus.singleton,
              ['${structureDefinition.url!}#$context'],
            );
          } else {
            types = TypeDetails(CollectionStatus.singleton);
            for (final t in ed.definition?.type ?? <ElementDefinitionType>[]) {
              types.addType(t.code.toString());
            }
          }
        }
        return executeType(
          ExecutionTypeContext(
            appContext,
            structureDefinition.url!.toString(),
            types,
            types,
          ),
          types,
          expressionNode,
          true,
        );
      } else {
        // Case 3: structureDefinition and expressionNode provided
        return executeType(
          ExecutionTypeContext(
            appContext,
            structureDefinition.url!.toString(),
            null,
            null,
          ),
          null,
          expressionNode,
          true,
        );
      }
    } else if (resourceType != null &&
        context != null &&
        expressionNode != null) {
      // Case 1: resourceType, context, and expressionNode provided
      TypeDetails? types;
      if (!context.contains('.')) {
        final sd = await _fetchTypeDefinition(context);
        if (sd == null) {
          throw PathEngineException('Unknown type definition: $context');
        }
        types = TypeDetails(CollectionStatus.singleton, [sd.url!.toString()]);
      } else {
        var ctxt = context.substring(0, context.indexOf('.'));
        if (resourceType.isAbsoluteUrl()) {
          ctxt =
              '${resourceType.substring(0, resourceType.lastIndexOf('/') + 1)}'
              '$ctxt';
        }
        final sd = await worker.fetchResource<StructureDefinition>(uri: ctxt);
        if (sd == null) {
          throw makeException(expressionNode, 'Unknown context: $context', []);
        }
        final ed =
            await getElementDefinition(sd, context, true, expressionNode);
        if (ed == null) {
          throw makeException(
            expressionNode,
            'Unknown context element: ',
            [context],
          );
        }
        if (ed.fixedType != null) {
          types = TypeDetails(CollectionStatus.singleton, [ed.fixedType!]);
        } else if ((ed.definition?.type?.isEmpty ?? true) ||
            isAbstractType(ed.definition!.type!)) {
          types = TypeDetails(CollectionStatus.singleton, ['$ctxt#$context']);
        } else {
          types = TypeDetails(CollectionStatus.singleton);
          for (final t in ed.definition?.type ?? <ElementDefinitionType>[]) {
            types.addType(t.code.toString());
          }
        }
      }
      return executeType(
        ExecutionTypeContext(appContext, resourceType, types, types),
        types,
        expressionNode,
        true,
      );
    } else {
      throw ArgumentError(
        'Insufficient or incorrect arguments provided to the check method.',
      );
    }
  }

  TypeDetails resolveConstantType(
    ExecutionTypeContext context,
    dynamic constant,
    ExpressionNode expr,
    bool explicitConstant,
  ) {
    if (constant is FhirBoolean) {
      return TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_Boolean]);
    } else if (constant is FhirInteger) {
      return TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_Integer]);
    } else if (constant is FhirDecimal) {
      return TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_Decimal]);
    } else if (constant is Quantity) {
      return TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_Quantity]);
    } else if (constant is FHIRConstant) {
      return resolveConstantType(
        context,
        constant.value,
        expr,
        explicitConstant,
      );
    } else if (constant == null) {
      return TypeDetails(CollectionStatus.singleton);
    } else if (constant is String) {
      return resolveStringConstantType(
        context,
        constant,
        expr,
        explicitConstant,
      );
    } else {
      return TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_String]);
    }
  }

  TypeDetails resolveStringConstantType(
    ExecutionTypeContext context,
    String s,
    ExpressionNode expr,
    bool explicitConstant,
  ) {
    if (s.startsWith('@')) {
      if (s.startsWith('@T')) {
        return TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_Time]);
      } else {
        return TypeDetails(
          CollectionStatus.singleton,
          [TypeDetails.FP_DateTime],
        );
      }
    } else if (s == '%sct' ||
        s == '%loinc' ||
        s == '%ucum' ||
        s == '%map-codes' ||
        s == '%us-zip' ||
        s.startsWith('%`vs-') ||
        s.startsWith('%`cs-') ||
        s.startsWith('%`ext-')) {
      return TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_String]);
    } else if (s == '%resource') {
      if (context.resource == null) {
        throw makeException(
          expr,
          'FHIRPATH_CANNOT_USE',
          ['%resource', 'no focus resource'],
        );
      }
      return TypeDetails(
        CollectionStatus.singleton,
        context.resource == null ? <String>[] : [context.resource!],
      );
    } else if (s == '%rootResource') {
      if (context.resource == null) {
        throw makeException(
          expr,
          'FHIRPATH_CANNOT_USE',
          [
            '%rootResource',
            'no focus resource',
          ],
        );
      }
      return TypeDetails(
        CollectionStatus.singleton,
        context.resource == null ? <String>[] : [context.resource!],
      );
    } else if (s == '%context') {
      return context.context!;
    } else {
      return resolveVariableOrHostService(context, s, expr, explicitConstant);
    }
  }

  TypeDetails resolveVariableOrHostService(
    ExecutionTypeContext context,
    String s,
    ExpressionNode expr,
    bool explicitConstant,
  ) {
    final varName = s.substring(1);
    if (context.hasDefinedVariable(varName)) {
      return context.getDefinedVariable(varName)!;
    } else if (hostServices != null) {
      return hostServices!
          .resolveConstantType(this, context.appInfo, s, explicitConstant);
    } else {
      throw makeException(expr, 'FHIRPATH_UNKNOWN_CONSTANT', [s]);
    }
  }

  TypeDetails childTypes(
    TypeDetails focus,
    String mask,
    ExpressionNode expr,
  ) {
    final result = TypeDetails(CollectionStatus.unordered);
    for (final f in focus.getTypes()) {
      getChildTypesByName(f, mask, result, expr);
    }
    return result;
  }

  TypeDetails anything(CollectionStatus? status) {
    return TypeDetails(status, allTypes.keys.toList());
  }

  ///
  /// ***************************************
  /// CHILD AND CONTEXT HANDLING
  /// ***************************************
  ///
  void getChildrenByName(FhirBase item, String oldName, List<FhirBase> result) {
    if (oldName == '*') {
      for (final child in item.listChildrenNames()) {
        result.addAll(item.getChildrenByName(child));
      }
    } else {
      String? tn;
      var name = oldName;

      if (allowPolymorphicNames) {
        // we'll look to see whether we have a polymorphic name
        for (final p in item.listChildrenNames()) {
          if (p.endsWith('X')) {
            final n = p.substring(0, p.length - 1);
            if (name.startsWith(n)) {
              tn = name.substring(n.length);
              name = n;
              break;
            }
          }
        }
      }

      final list = item.getChildrenByName(name);
      if (list.isNotEmpty) {
        for (final v in list) {
          if (tn == null || tn.isEmpty || v.fhirType.equalsIgnoreCase(tn)) {
            result.add(v);
          }
        }
      }
    }
  }

  Future<void> getChildTypesByName(
    String? type,
    String name,
    TypeDetails result,
    ExpressionNode expr,
  ) async {
    if (type == null || type.isEmpty) {
      throw makeException(expr, 'FHIRPATH_NO_TYPE', ['getChildTypesByName']);
    }
    if (type == 'http://hl7.org/fhir/StructureDefinition/xhtml') {
      return;
    }
    if (type.startsWith(NS_SYSTEM_TYPE)) {
      return;
    }

    if (type == TypeDetails.FP_SimpleTypeInfo) {
      getSimpleTypeChildTypesByName(name, result);
    } else if (type == TypeDetails.FP_ClassInfo) {
      getClassInfoChildTypesByName(name, result);
    } else {
      String? url;
      if (type.contains('#')) {
        url = type.substring(0, type.indexOf('#'));
      } else {
        url = type;
      }
      var tail = '';
      final sd = await worker.fetchResource<StructureDefinition>(uri: url);
      if (sd == null) {
        throw makeException(
          expr,
          'FHIRPATH_NO_TYPE',
          [url, 'getChildTypesByName'],
        );
      }
      final sdl = <StructureDefinition>[];
      ElementDefinitionMatch? m;
      if (type.contains('#')) {
        m = await getElementDefinition(
          sd,
          type.substring(type.indexOf('#') + 1),
          false,
          expr,
        );
      }
      if (m?.definition != null && hasDataType(m!.definition!)) {
        if (m.fixedType != null) {
          final dt = await worker.fetchResource<StructureDefinition>(
            uri: m.fixedType!.sdNs(worker.getOverrideVersionNs()),
          );
          if (dt == null) {
            throw makeException(expr, 'FHIRPATH_NO_TYPE', [
              m.fixedType!.sdNs(worker.getOverrideVersionNs()),
              'getChildTypesByName',
            ]);
          }
          sdl.add(dt);
        } else {
          for (final t in m.definition!.type ?? <ElementDefinitionType>[]) {
            final dt = await worker.fetchResource<StructureDefinition>(
              uri: t.code.toString().sdNs(worker.getOverrideVersionNs()),
            );
            if (dt == null) {
              throw makeException(expr, 'FHIRPATH_NO_TYPE', [
                t.code.toString().sdNs(worker.getOverrideVersionNs()),
                'getChildTypesByName',
              ]);
            }
            addTypeAndDescendents(sdl, dt, await worker.allStructures());
          }
        }
      } else {
        addTypeAndDescendents(sdl, sd, await worker.allStructures());
        if (type.contains('#')) {
          tail = type.substring(type.indexOf('#') + 1);
          tail = tail.substring(tail.indexOf('.'));
        }
      }

      for (final sdi in sdl) {
        var path = '${sdi.snapshot?.element[0].path ?? ''}$tail.';
        if (name == '**') {
          assert(
            result.collectionStatus == CollectionStatus.unordered,
            'CollectionStatus.unordered',
          );
          for (final ed in sdi.snapshot?.element ?? <ElementDefinition>[]) {
            if (ed.path.valueString?.startsWith(path) ?? false) {
              for (final t in ed.type ?? <ElementDefinitionType>[]) {
                if (t.code.toString().isNotEmpty) {
                  String? tn;
                  if (t.code.toString() == 'Element' ||
                      t.code.toString() == 'BackboneElement') {
                    tn = '${sdi.type}#${ed.path}';
                  } else {
                    tn = t.code.toString();
                  }
                  if (t.code.toString() == 'Resource') {
                    for (final rn in await worker.getResourceNames()) {
                      if (!(await result.hasTypeFromWorker(worker, [rn]))) {
                        await getChildTypesByName(
                          result.addType(rn),
                          '**',
                          result,
                          expr,
                        );
                      }
                    }
                  } else if (!(await result.hasTypeFromWorker(worker, [tn]))) {
                    await getChildTypesByName(
                      result.addType(tn),
                      '**',
                      result,
                      expr,
                    );
                  }
                }
              }
            }
          }
        } else if (name == '*') {
          assert(
            result.collectionStatus == CollectionStatus.unordered,
            'CollectionStatus.unordered',
          );
          for (final ed in sdi.snapshot?.element ?? <ElementDefinition>[]) {
            if ((ed.path.valueString?.startsWith(path) ?? false) &&
                !(ed.path.valueString?.substring(path.length).contains('.') ??
                    false)) {
              for (final t in ed.type ?? <ElementDefinitionType>[]) {
                if (t.code.toString().isEmpty) {
                  result.addType('System.string');
                } else if (t.code.toString() == 'Element' ||
                    t.code.toString() == 'BackboneElement') {
                  result.addType('${sdi.type}#${ed.path}');
                } else if (t.code.toString() == 'Resource') {
                  result.addTypes(await worker.getResourceNames());
                } else {
                  result.addType(t.code.toString());
                }
              }
            }
          }
        } else {
          path = '${sdi.snapshot?.element[0].path ?? ''}$tail.$name';

          final ed = await getElementDefinition(
            sdi,
            path,
            allowPolymorphicNames,
            expr,
          );
          if (ed != null) {
            if (ed.fixedType?.isNotEmpty ?? false) {
              result.addType(ed.fixedType!);
            } else {
              for (final t
                  in ed.definition?.type ?? <ElementDefinitionType>[]) {
                if (t.code.toString().isEmpty) {
                  if ((ed.definition?.id?.valueString != null &&
                          [
                            'Element.id',
                            'Extension.url',
                          ].contains(ed.definition!.id!.valueString)) ||
                      (ed.definition?.base?.path.valueString != null &&
                          [
                            'Resource.id',
                            'Element.id',
                            'Extension.url',
                          ].contains(ed.definition!.base!.path.valueString))) {
                    result.addTypeWithProfile(TypeDetails.FP_NS, 'string');
                  }
                  break;
                }

                ProfiledType? pt;
                if (t.code.toString() == 'Element' ||
                    t.code.toString() == 'BackboneElement') {
                  pt = ProfiledType('${sdi.url}#$path');
                } else if (t.code.toString() == 'Resource') {
                  result.addTypes(await worker.getResourceNames());
                } else {
                  pt = ProfiledType(t.code.toString());
                }
                if (pt != null) {
                  if (t.profile?.isNotEmpty ?? false) {
                    pt.addProfiles(t.profile!);
                  }
                  if (ed.definition?.binding != null) {
                    pt.addBinding(ed.definition!.binding);
                  }
                  result.addProfiledType(pt);
                }
              }
            }
          }
        }
      }
    }
  }

  void getClassInfoChildTypesByName(String name, TypeDetails result) {
    if (name == 'namespace') {
      result.addType(TypeDetails.FP_String);
    }
    if (name == 'name') {
      result.addType(TypeDetails.FP_String);
    }
  }

  void getSimpleTypeChildTypesByName(String name, TypeDetails result) {
    if (name == 'namespace') {
      result.addType(TypeDetails.FP_String);
    }
    if (name == 'name') {
      result.addType(TypeDetails.FP_String);
    }
  }

  ExecutionContext contextForParameter(ExecutionContext context) {
    final newContext = ExecutionContext(
      appInfo: context.appInfo,
      focusResource: context.focusResource,
      rootResource: context.rootResource,
      context: context.context,
      thisItem: context.thisItem,
    )
      ..total = context.total
      ..index = context.index;

    // append all of the defined variables from the context into the new context
    if (context.definedVariables != null) {
      for (final s in context.definedVariables!.keys) {
        newContext.setDefinedVariable(s, context.definedVariables![s], worker);
      }
    }
    return newContext;
  }

  ExecutionTypeContext typeContextForParameter(ExecutionTypeContext context) {
    final newContext = ExecutionTypeContext(
      context.appInfo,
      context.resource,
      context.context,
      context.thisItem,
    );
    // append all of the defined variables from the context into the new context
    if (context.definedVariables != null) {
      for (final s in context.definedVariables!.keys) {
        newContext.setDefinedVariable(s, context.definedVariables![s]);
      }
    }
    return newContext;
  }

  ExecutionContext changeThisContext(
    ExecutionContext context,
    FhirBase newThis,
  ) {
    final newContext = context.copyWith(thisItem: newThis);
    // append all of the defined variables from the context into the new context
    if (context.definedVariables != null) {
      for (final s in context.definedVariables!.keys) {
        newContext.setDefinedVariable(s, context.definedVariables![s], worker);
      }
    }
    return newContext;
  }

  ExecutionTypeContext changeThisTypeContext(
    ExecutionTypeContext context,
    TypeDetails newThis,
  ) {
    final newContext = ExecutionTypeContext(
      context.appInfo,
      context.resource,
      context.context,
      newThis,
    );
    // append all of the defined variables from the context into the new context
    if (context.definedVariables != null) {
      for (final s in context.definedVariables!.keys) {
        newContext.setDefinedVariable(s, context.definedVariables![s]);
      }
    }
    return newContext;
  }

  ///
  /// ***************************************
  /// ELEMENT AND CLASS INFO HANDLING
  /// ***************************************
  ///
  Future<ElementDefinitionMatch?> getElementDefinition(
    StructureDefinition sd,
    String path,
    bool allowTypedName,
    ExpressionNode expr,
  ) async {
    for (final ed in sd.snapshot?.element ?? <ElementDefinition>[]) {
      if (ed.path.valueString == path) {
        if (ed.hasContentReference()) {
          return getElementDefinitionById(sd, ed.contentReference!.toString());
        } else {
          return ElementDefinitionMatch(ed, null);
        }
      }

      if ((ed.path.valueString?.endsWith('[x]') ?? false) &&
          path.startsWith(
            ed.path.valueString!.substring(0, ed.path.valueString!.length - 3),
          ) &&
          path.length == ed.path.valueString!.length - 3) {
        return ElementDefinitionMatch(ed, null);
      }

      if (allowTypedName &&
          (ed.path.valueString?.endsWith('[x]') ?? false) &&
          path.startsWith(
            ed.path.valueString!.substring(0, ed.path.valueString!.length - 3),
          ) &&
          path.length > ed.path.valueString!.length - 3) {
        final s = path
            .substring(ed.path.valueString!.length - 3)
            .uncapitalize(); // Assuming uncapitalize is implemented somewhere
        if (primitiveTypes.contains(s)) {
          return ElementDefinitionMatch(ed, s);
        } else {
          return ElementDefinitionMatch(
            ed,
            path.substring(ed.path.valueString!.length - 3),
          );
        }
      }

      if ((ed.path.valueString?.contains('.') ?? false) &&
          path.startsWith('${ed.path.valueString}.') &&
          ed.type != null &&
          ed.type!.isNotEmpty &&
          !isAbstractType(ed.type!)) {
        if (ed.type!.length > 1) {
          throw StateError('Internal typing issue...');
        }

        final nsd = await worker.fetchResource<StructureDefinition>(
          uri: ed.type![0].code.toString().sdNs(worker.getOverrideVersionNs()),
        );

        if (nsd == null) {
          throw makeException(expr, 'FHIRPATH_NO_TYPE', [
            ed.type![0].code.valueString ?? '',
            'getElementDefinition',
          ]);
        }

        return getElementDefinition(
          nsd,
          '${nsd.id?.valueString}'
          '${path.substring(ed.path.valueString!.length)}',
          allowTypedName,
          expr,
        );
      }

      if (ed.hasContentReference() &&
          path.startsWith('${ed.path.valueString}.')) {
        final m = getElementDefinitionById(sd, ed.contentReference!.toString());
        if (m?.definition?.path.valueString != null) {
          return getElementDefinition(
            sd,
            '${m!.definition!.path.valueString}'
            '${path.substring(ed.path.valueString!.length)}',
            allowTypedName,
            expr,
          );
        }
      }
    }
    return null;
  }

  ElementDefinitionMatch? getElementDefinitionById(
    StructureDefinition sd,
    String ref,
  ) {
    for (final ed in sd.snapshot?.element ?? <ElementDefinition>[]) {
      if (ref == '#${ed.id}') {
        return ElementDefinitionMatch(ed, null);
      }
    }
    return null;
  }

  ///
  /// ***************************************
  /// ERROR AND EXCEPTION HANDLING
  /// ***************************************
  ///
  FHIRException makeException(
    ExpressionNode? holder,
    String constName,
    List<Object> args,
  ) {
    var fmt = worker.formatMessage(constName, args);
    if (location != null) {
      fmt = '$fmt ${worker.formatMessage('FHIRPATH_LOCATION', [location])}';
    }
    if (holder != null) {
      return PathEngineException(
        fmt,
        location: holder.start,
        expression: holder.toString(),
      );
    } else {
      return PathEngineException(fmt);
    }
  }

  FHIRException makeExceptionPlural(
    int num,
    ExpressionNode? holder,
    String constName,
    List<Object> args,
  ) {
    var fmt = worker.formatMessagePlural(num, constName, args);
    if (location != null) {
      fmt = '$fmt ${worker.formatMessage('FHIRPATH_LOCATION', [location])}';
    }
    if (holder != null) {
      return PathEngineException(
        fmt,
        location: holder.start,
        expression: holder.toString(),
      );
    } else {
      return PathEngineException(fmt);
    }
  }

  ///
  /// ***************************************
  /// PROCESSING CONSTANTS
  /// ***************************************
  ///
  FhirBase? _processConstant(FHIRLexer lexer) {
    if (lexer.isStringConstant()) {
      return FhirString(processConstantString(lexer.take(), lexer))
          .noExtensions();
    } else if (lexer.current?.isInteger ?? false) {
      return FhirInteger(int.parse(lexer.take())).noExtensions();
    } else if (lexer.current?.isDecimal() ?? false) {
      return FhirDecimal(double.parse(lexer.take())).noExtensions();
    } else if (lexer.current?.existsInList({'true', 'false'}) ?? false) {
      return FhirBoolean(lexer.take() == 'true').noExtensions();
    } else if (lexer.current == '{}') {
      lexer.take();
      return null;
    } else if ((lexer.current?.startsWith('%') ?? false) ||
        (lexer.current?.startsWith('@') ?? false)) {
      return FHIRConstant(lexer.take());
    } else {
      throw lexer.error('Invalid Constant ${lexer.current}');
    }
  }

  String processConstantString(String s, FHIRLexer lexer) {
    final buffer = StringBuffer();
    var i = 1; // Start after the opening quote

    while (i < s.length - 1) {
      // Stop before the closing quote
      final ch = s[i];
      if (ch == r'\') {
        i++;
        if (i >= s.length - 1) {
          // Treat incomplete escape sequence as literal backslash
          buffer.write(r'\');
          break;
        }
        switch (s[i]) {
          case 't':
            buffer.write('\t');
          case 'r':
            buffer.write('\r');
          case 'n':
            buffer.write('\n');
          case 'f':
            buffer.write('\f');
          case "'":
            buffer.write("'");
          case '"':
            buffer.write('"');
          case '`':
            buffer.write('`');
          case r'\':
            buffer.write(r'\');
          case '/':
            buffer.write('/');
          case 'u':
            // Check for a complete Unicode sequence (\uXXXX)
            if (i + 4 < s.length - 1) {
              final unicodeValue =
                  int.tryParse(s.substring(i + 1, i + 5), radix: 16);
              if (unicodeValue != null) {
                buffer.write(String.fromCharCode(unicodeValue));
                i += 4; // Skip the Unicode sequence
              } else {
                // Ignore the backslash and the 'u' for invalid sequences
                buffer.write('u');
              }
            } else {
              // Ignore the backslash for incomplete sequences
              buffer.write('u');
            }
          default:
            // Ignore the backslash for unrecognized escape sequences
            buffer.write(s[i]);
        }
      } else {
        buffer.write(ch);
      }
      i++;
    }

    return buffer.toString();
  }

  ///
  /// ***************************************
  /// uTILITY AND HELPER METHODS
  /// ***************************************
  ///
  bool _checkParameters(
    FHIRLexer lexer,
    SourceLocation location,
    ExpressionNode exp,
    FunctionDetails? details,
  ) {
    switch (exp.function) {
      case FpFunction.Empty:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Not:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Exists:
        return checkParamCountBoundary(lexer, location, exp, 0, 1);
      case FpFunction.SubsetOf:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.SupersetOf:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.IsDistinct:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Distinct:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Count:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Where:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Select:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.All:
        return checkParamCountBoundary(lexer, location, exp, 0, 1);
      case FpFunction.Repeat:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Aggregate:
        return checkParamCountBoundary(lexer, location, exp, 1, 2);
      case FpFunction.Item:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.As:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.OfType:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Type:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Is:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Single:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.First:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Last:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Tail:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Skip:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Take:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Union:
        return checkParamCount(lexer, location, exp, 0, 1);
      case FpFunction.Combine:
        return checkParamCount(lexer, location, exp, 0, 1);
      case FpFunction.Intersect:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Exclude:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Iif:
        return checkParamCountBoundary(lexer, location, exp, 2, 3);
      case FpFunction.Lower:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Upper:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.ToChars:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.IndexOf:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Substring:
        return checkParamCountBoundary(lexer, location, exp, 1, 2);
      case FpFunction.StartsWith:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.EndsWith:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Matches:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.MatchesFull:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.ReplaceMatches:
        return checkParamCount(lexer, location, exp, 2);
      case FpFunction.Contains:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Replace:
        return checkParamCount(lexer, location, exp, 2);
      case FpFunction.Length:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Children:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Descendants:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.MemberOf:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Trace:
        return checkParamCountBoundary(lexer, location, exp, 1, 2);
      case FpFunction.DefineVariable:
        return checkParamCountBoundary(lexer, location, exp, 1, 2);
      case FpFunction.Check:
        return checkParamCount(lexer, location, exp, 2);
      case FpFunction.Today:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.TimeOfDay:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Now:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Resolve:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Extension:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.AllFalse:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.AnyFalse:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.AllTrue:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.AnyTrue:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.HasValue:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Encode:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Decode:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Escape:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Unescape:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Trim:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Split:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Join:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.HtmlChecks1:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.HtmlChecks2:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Comparable:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.ToInteger:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.ToDecimal:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.ToString:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.ToQuantity:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.ToBoolean:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.ToDateTime:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.ToDate:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.ToTime:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.IsInteger:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.ConvertsToInteger:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.IsDecimal:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.ConvertsToDecimal:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.IsString:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.ConvertsToString:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.IsQuantity:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.ConvertsToQuantity:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.IsBoolean:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.ConvertsToBoolean:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.IsDateTime:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.ConvertsToDateTime:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.IsDate:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.ConvertsToDate:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.IsTime:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.ConvertsToTime:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.ConformsTo:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Round:
        return checkParamCountBoundary(lexer, location, exp, 0, 1);
      case FpFunction.Sqrt:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Abs:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Ceiling:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Exp:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Floor:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Ln:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Log:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Power:
        return checkParamCount(lexer, location, exp, 1);
      case FpFunction.Sum:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Truncate:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.LowBoundary:
        return checkParamCountBoundary(lexer, location, exp, 0, 1);
      case FpFunction.HighBoundary:
        return checkParamCountBoundary(lexer, location, exp, 0, 1);
      case FpFunction.Precision:
        return checkParamCount(lexer, location, exp, 0);
      case FpFunction.Custom:
        return checkParamCountBoundary(
          lexer,
          location,
          exp,
          details?.getMinParameters(),
          details?.maxParameters,
        );
      case null:
      case FpFunction.HasTemplateIdOf:
        throw UnimplementedError();
    }
  }

  bool checkParamCount(
    FHIRLexer lexer,
    SourceLocation location,
    ExpressionNode exp,
    int count, [
    int? count2,
  ]) {
    if (exp.parameters.length == count ||
        (count2 != null && exp.parameters.length == count2)) {
      return true;
    } else {
      throw lexer
          .error('The function "${exp.name}" requires $count parameters');
    }
  }

  bool checkParamCountBoundary(
    FHIRLexer lexer,
    SourceLocation location,
    ExpressionNode exp,
    int? countMin,
    int? countMax,
  ) {
    if (countMin == null || countMax == null) {
      throw ArgumentError('countMin and countMax cannot be null');
    }
    if (exp.parameters.length < countMin || exp.parameters.length > countMax) {
      throw lexer
          .error('The function "${exp.name}" requires between $countMin and'
              ' $countMax parameters');
    }
    return true;
  }

  Future<void> checkParamTypes(
    ExpressionNode expr,
    String funcName,
    List<TypeDetails> paramTypes,
    List<TypeDetails> typeSet,
  ) async {
    var i = 0;
    for (final pt in typeSet) {
      if (i == paramTypes.length) {
        return;
      }
      final actual = paramTypes[i];
      i++;
      for (final a in actual.getTypes()) {
        if (!(await pt.hasTypeFromWorker(worker, [a]))) {
          throw makeException(
            expr,
            'FHIRPATH_WRONG_PARAM_TYPE',
            [funcName, i, a, pt.toString()],
          );
        }
      }
    }
  }

  void checkOrdered(TypeDetails focus, String name, ExpressionNode expr) {
    if (focus.collectionStatus == CollectionStatus.unordered) {
      throw makeException(expr, 'FHIRPATH_ORDERED_ONLY', [name]);
    }
  }

  void checkSingleton(TypeDetails focus, String name, ExpressionNode expr) {
    if (focus.collectionStatus != CollectionStatus.singleton) {
// ignore: lines_longer_than_80_chars
// typeWarnings.add(new IssueMessage(worker.formatMessage(I18nConstants.FHIRPATH_COLLECTION_STATUS_CONTEXT, name, expr.toString()), I18nConstants.FHIRPATH_COLLECTION_STATUS_CONTEXT));
    }
  }

  bool isExpressionParameter(ExpressionNode exp, int i) {
    switch (i) {
      case 0:
        return exp.function == FpFunction.Where ||
            exp.function == FpFunction.Exists ||
            exp.function == FpFunction.All ||
            exp.function == FpFunction.Select ||
            exp.function == FpFunction.Repeat ||
            exp.function == FpFunction.Aggregate;
      case 1:
        return exp.function == FpFunction.Trace ||
            exp.function == FpFunction.DefineVariable;
      default:
        return false;
    }
  }

  bool isAbstractType(List<ElementDefinitionType> list) {
    return list.length != 1 ||
        list.first.code.toString().existsInList(
          {'Element', 'BackboneElement', 'Resource', 'DomainResource'},
        );
  }

  Future<TypeDetails?> operateTypes(
    TypeDetails left,
    FpOperation operation,
    TypeDetails right,
    ExpressionNode expr,
  ) async {
    switch (operation) {
      case FpOperation.Equals:
      case FpOperation.Equivalent:
      case FpOperation.NotEquals:
      case FpOperation.NotEquivalent:
      case FpOperation.LessThan:
      case FpOperation.Greater:
      case FpOperation.LessOrEqual:
      case FpOperation.GreaterOrEqual:
      case FpOperation.Is:
      case FpOperation.Or:
      case FpOperation.And:
      case FpOperation.Xor:
      case FpOperation.Implies:
      case FpOperation.In:
      case FpOperation.MemberOf:
      case FpOperation.Contains:
        return TypeDetails(
          CollectionStatus.singleton,
          [TypeDetails.FP_Boolean],
        );
      case FpOperation.As:
        return TypeDetails.profiledTypes(
          CollectionStatus.singleton,
          right.types,
        );
      case FpOperation.Union:
        return left.union(right);
      case FpOperation.Times:
        final result = TypeDetails(CollectionStatus.singleton);
        if ((await left.hasTypeFromWorker(worker, ['integer'])) &&
            (await right.hasTypeFromWorker(worker, ['integer']))) {
          result.addType(TypeDetails.FP_Integer);
        } else if ((await left
                .hasTypeFromWorker(worker, ['integer', 'decimal'])) &&
            (await right.hasTypeFromWorker(worker, ['integer', 'decimal']))) {
          result.addType(TypeDetails.FP_Decimal);
        }
        return result;
      case FpOperation.DivideBy:
        final result = TypeDetails(CollectionStatus.singleton);
        if ((await left.hasTypeFromWorker(worker, ['integer'])) &&
            (await right.hasTypeFromWorker(worker, ['integer']))) {
          result.addType(TypeDetails.FP_Decimal);
        } else if ((await left
                .hasTypeFromWorker(worker, ['integer', 'decimal'])) &&
            (await right.hasTypeFromWorker(worker, ['integer', 'decimal']))) {
          result.addType(TypeDetails.FP_Decimal);
        }
        return result;
      case FpOperation.Concatenate:
        return TypeDetails(CollectionStatus.singleton, [TypeDetails.FP_String]);
      case FpOperation.Plus:
        final result = TypeDetails(CollectionStatus.singleton);
        if ((await left.hasTypeFromWorker(worker, ['integer'])) &&
            (await right.hasTypeFromWorker(worker, ['integer']))) {
          result.addType(TypeDetails.FP_Integer);
        } else if ((await left
                .hasTypeFromWorker(worker, ['integer', 'decimal'])) &&
            (await right.hasTypeFromWorker(worker, ['integer', 'decimal']))) {
          result.addType(TypeDetails.FP_Decimal);
        } else if ((await left.hasTypeFromWorker(
              worker,
              ['string', 'id', 'code', 'uri'],
            )) &&
            (await right
                .hasTypeFromWorker(worker, ['string', 'id', 'code', 'uri']))) {
          result.addType(TypeDetails.FP_String);
        } else if (await left
            .hasTypeFromWorker(worker, ['date', 'dateTime', 'instant'])) {
          if (await right.hasTypeFromWorker(worker, ['Quantity'])) {
            result.addType(left.getType());
          } else {
            throw PathEngineException(
              'Error in date arithmetic: Unable to add type '
              '${right.getType()} to ${left.getType()}',
            );
          }
        }
        return result;
      case FpOperation.Minus:
        final result = TypeDetails(CollectionStatus.singleton);
        if ((await left.hasTypeFromWorker(worker, ['integer'])) &&
            (await right.hasTypeFromWorker(worker, ['integer']))) {
          result.addType(TypeDetails.FP_Integer);
        } else if ((await left
                .hasTypeFromWorker(worker, ['integer', 'decimal'])) &&
            (await right.hasTypeFromWorker(worker, ['integer', 'decimal']))) {
          result.addType(TypeDetails.FP_Decimal);
        } else if ((await left.hasTypeFromWorker(worker, ['Quantity'])) &&
            (await right.hasTypeFromWorker(worker, ['Quantity']))) {
          result.addType(TypeDetails.FP_Quantity);
        } else if (await left
            .hasTypeFromWorker(worker, ['date', 'dateTime', 'instant'])) {
          if (await right.hasTypeFromWorker(worker, ['Quantity'])) {
            result.addType(left.getType());
          } else {
            throw PathEngineException(
              'Error in date arithmetic: Unable to subtract type '
              '${right.getType()} from ${left.getType()}',
            );
          }
        }
        return result;
      case FpOperation.Div:
      case FpOperation.Mod:
        final result = TypeDetails(CollectionStatus.singleton);
        if ((await left.hasTypeFromWorker(worker, ['integer'])) &&
            (await right.hasTypeFromWorker(worker, ['integer']))) {
          result.addType(TypeDetails.FP_Integer);
        } else if ((await left
                .hasTypeFromWorker(worker, ['integer', 'decimal'])) &&
            (await right.hasTypeFromWorker(worker, ['integer', 'decimal']))) {
          result.addType(TypeDetails.FP_Decimal);
        }
        return result;
    }
  }

  bool hasDataType(ElementDefinition ed) {
    return ed.hasType([]) &&
        !(ed.getType().first.code.toString() == 'Element' ||
            ed.getType().first.code.toString() == 'BackboneElement');
  }

  Future<void> checkContextString(
    TypeDetails focus,
    String name,
    ExpressionNode expr,
    bool sing,
  ) async {
    if (!focus.hasNoTypes() &&
        !(await focus.hasTypeFromWorker(worker, ['string'])) &&
        !(await focus.hasTypeFromWorker(worker, ['code'])) &&
        !(await focus.hasTypeFromWorker(worker, ['uri'])) &&
        !(await focus.hasTypeFromWorker(worker, ['canonical'])) &&
        !(await focus.hasTypeFromWorker(worker, ['id']))) {
      throw makeException(
        expr,
        sing ? 'FHIRPATH_STRING_SING_ONLY' : 'FHIRPATH_STRING_ORD_ONLY',
        [name, focus.describe()],
      );
    }
  }

  void checkContextPrimitive(
    TypeDetails focus,
    String name,
    bool canQty,
    ExpressionNode expr,
  ) {
    if (!focus.hasNoTypes()) {
      if (canQty) {
        if (!focus.hasTypes(primitiveTypes.toList()) &&
            !focus.hasType('Quantity')) {
          throw makeException(
            expr,
            'FHIRPATH_PRIMITIVE_ONLY',
            [
              name,
              focus.describe(),
              'Quantity, $primitiveTypes',
            ],
          );
        }
      } else if (!focus.hasTypes(primitiveTypes.toList())) {
        throw makeException(
          expr,
          'FHIRPATH_PRIMITIVE_ONLY',
          [name, focus.describe(), primitiveTypes.toString()],
        );
      }
    }
  }

  Future<void> checkContextCoded(
    TypeDetails focus,
    String name,
    ExpressionNode expr,
  ) async {
    if (!(await focus.hasTypeFromWorker(worker, ['string'])) &&
        !(await focus.hasTypeFromWorker(worker, ['code'])) &&
        !(await focus.hasTypeFromWorker(worker, ['uri'])) &&
        !(await focus.hasTypeFromWorker(worker, ['Coding'])) &&
        !(await focus.hasTypeFromWorker(worker, ['CodeableConcept']))) {
      throw makeException(
        expr,
        'FHIRPATH_CODED_ONLY',
        [name, focus.describe()],
      );
    }
  }

  Future<void> checkContextReference(
    TypeDetails focus,
    String name,
    ExpressionNode expr,
  ) async {
    if (!(await focus.hasTypeFromWorker(worker, ['string'])) &&
        !(await focus.hasTypeFromWorker(worker, ['uri'])) &&
        !(await focus.hasTypeFromWorker(worker, ['Reference'])) &&
        !(await focus.hasTypeFromWorker(worker, ['canonical']))) {
      throw makeException(
        expr,
        'FHIRPATH_REFERENCE_ONLY',
        [name, focus.describe()],
      );
    }
  }

  ///
  /// ***************************************
  /// OPERATIONS
  /// ***************************************
  ///
  List<FhirBase>? preOperate(
    List<FhirBase> left,
    FpOperation? operation,
    ExpressionNode expr,
  ) {
    if (left.isEmpty) return null;
    switch (operation) {
      case FpOperation.And:
        return isBoolean(left, false) ? makeBoolean(false) : null;
      case FpOperation.Or:
        return isBoolean(left, true) ? makeBoolean(true) : null;
      case FpOperation.Implies:
        final v = asBoolFromList(left, expr);
        return v == FpEquality.false_ ? makeBoolean(true) : null;
      // ignore: no_default_cases
      default:
        return null;
    }
  }

  Future<List<FhirBase>> operate(
    ExecutionContext context,
    List<FhirBase> left,
    FpOperation? operation,
    List<FhirBase> right,
    ExpressionNode holder,
  ) async {
    switch (operation) {
      case FpOperation.Equals:
        return opEquals(left, right, holder);
      case FpOperation.Equivalent:
        return opEquivalent(left, right, holder);
      case FpOperation.NotEquals:
        return opNotEquals(left, right, holder);
      case FpOperation.NotEquivalent:
        return opNotEquivalent(left, right, holder);
      case FpOperation.LessThan:
        return opLessThan(left, right, holder);
      case FpOperation.Greater:
        return opGreater(left, right, holder);
      case FpOperation.LessOrEqual:
        return opLessOrEqual(left, right, holder);
      case FpOperation.GreaterOrEqual:
        return opGreaterOrEqual(left, right, holder);
      case FpOperation.Union:
        return opUnion(left, right, holder);
      case FpOperation.In:
        return opIn(left, right, holder);
      case FpOperation.MemberOf:
        return opMemberOf(context, left, right, holder);
      case FpOperation.Contains:
        return opContains(left, right, holder);
      case FpOperation.Or:
        return opOr(left, right, holder);
      case FpOperation.And:
        return opAnd(left, right, holder);
      case FpOperation.Xor:
        return opXor(left, right, holder);
      case FpOperation.Implies:
        return opImplies(left, right, holder);
      case FpOperation.Plus:
        return opPlus(left, right, holder);
      case FpOperation.Times:
        return opTimes(left, right, holder);
      case FpOperation.Minus:
        return opMinus(left, right, holder);
      case FpOperation.Concatenate:
        return opConcatenate(left, right, holder);
      case FpOperation.DivideBy:
        return opDivideBy(left, right, holder);
      case FpOperation.Div:
        return opDiv(left, right, holder);
      case FpOperation.Mod:
        return opMod(left, right, holder);
      case FpOperation.Is:
        return opIs(left, right, holder);
      case FpOperation.As:
        return opAs(left, right, holder);
      case null:
        throw UnimplementedError();
    }
  }

  List<FhirBase> opEquals(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    if (left.isEmpty || right.isEmpty) {
      return [];
    }

    if (left.length != right.length) {
      return makeBoolean(false);
    }

    var res = true;
    var nil = false;

    for (var i = 0; i < left.length; i++) {
      final eq = doEquals(left[i], right[i]);

      if (eq == null) {
        nil = true;
      } else if (!eq) {
        res = false;
        break;
      }
    }

    if (!res) {
      return makeBoolean(false);
    } else if (nil) {
      return [];
    } else {
      return makeBoolean(true);
    }
  }

  List<FhirBase> opEquivalent(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    if (left.length != right.length) {
      return makeBoolean(false);
    }

    var res = true;

    for (var i = 0; i < left.length; i++) {
      var found = false;
      for (var j = 0; j < right.length; j++) {
        if (doEquivalent(left[i], right[j]) ?? false) {
          found = true;
          break;
        }
      }
      if (!found) {
        res = false;
        break;
      }
    }

    return makeBoolean(res);
  }

  List<FhirBase> opNotEquals(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    if (!legacyMode && (left.isEmpty || right.isEmpty)) {
      return [];
    }

    if (left.length != right.length) {
      return makeBoolean(true);
    }

    var res = true;
    var nil = false;
    for (var i = 0; i < left.length; i++) {
      final eq = doEquals(left[i], right[i]);
      if (eq == null) {
        nil = true;
      } else if (eq) {
        res = false;
        break;
      }
    }

    if (!res) {
      return makeBoolean(res);
    } else if (nil) {
      return [];
    } else {
      return makeBoolean(res);
    }
  }

  List<FhirBase> opNotEquivalent(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    if (left.length != right.length) {
      return makeBoolean(true);
    }

    var res = true;

    for (var i = 0; i < left.length; i++) {
      var found = false;
      for (var j = 0; j < right.length; j++) {
        if (doEquivalent(left[i], right[j]) ?? false) {
          found = true;
          break;
        }
      }
      if (!found) {
        res = false;
        break;
      }
    }

    return makeBoolean(!res);
  }

  List<FhirBase> opLessThan(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    if (left.isEmpty || right.isEmpty) {
      return [];
    }

    if (left.length == 1 && right.length == 1) {
      final l = left.first;
      final r = right.first;

      if (l is PrimitiveType && r is PrimitiveType) {
        if (FHIR_TYPES_STRING.contains(l.fhirType) &&
            FHIR_TYPES_STRING.contains(r.fhirType)) {
          return makeBoolean(l.toString().compareTo(r.toString()) < 0);
        } else if (l is FhirNumber && r is FhirNumber) {
          return makeBoolean(l < r);
        } else if (l is FhirDateTimeBase && r is FhirDateTimeBase) {
          final comparison = l < r;
          return comparison == null ? <FhirBase>[] : makeBoolean(comparison);
        } else if (l is FhirTime && r is FhirTime) {
          final comparison = l < r;
          return comparison == null ? <FhirBase>[] : makeBoolean(comparison);
        } else {
          throw makeException(
            expr,
            'FHIRPATH_CANT_COMPARE',
            [l.fhirType, r.fhirType],
          );
        }
      } else if (l.fhirType == 'Quantity' && r.fhirType == 'Quantity') {
        var lUnit = l.getChildrenByName('code');
        if (lUnit.isEmpty) {
          lUnit = l.getChildrenByName('unit');
        }
        var rUnit = r.getChildrenByName('code');
        if (rUnit.isEmpty) {
          rUnit = r.getChildrenByName('unit');
        }
        if (FhirBase.compareDeepLists(lUnit, rUnit, true)) {
          return opLessThan(
            l.getChildrenByName('value'),
            r.getChildrenByName('value'),
            expr,
          );
        } else {
          final lQuantity = qtyToCanonicalDecimal(l as Quantity);
          final rQuantity = qtyToCanonicalDecimal(r as Quantity);
          final dl = lQuantity == null ? <FhirDecimal>[] : [lQuantity];
          final dr = rQuantity == null ? <FhirDecimal>[] : [rQuantity];
          return opLessThan(dl, dr, expr);
        }
      }
    }
    return [];
  }

  List<FhirBase> opGreater(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    if (left.isEmpty || right.isEmpty) {
      return [];
    }

    if (left.length == 1 && right.length == 1) {
      final l = left.first;
      final r = right.first;

      if (l is PrimitiveType && r is PrimitiveType) {
        if (FHIR_TYPES_STRING.contains(l.fhirType) &&
            FHIR_TYPES_STRING.contains(r.fhirType)) {
          return makeBoolean(l.toString().compareTo(r.toString()) > 0);
        } else if (l is FhirNumber && r is FhirNumber) {
          return makeBoolean(l > r);
        } else if (l is FhirDateTimeBase && r is FhirDateTimeBase) {
          final comparison = l > r;
          return comparison == null ? <FhirBase>[] : makeBoolean(comparison);
        } else if (l is FhirTime && r is FhirTime) {
          final comparison = l > r;

          return comparison == null ? <FhirBase>[] : makeBoolean(comparison);
        } else {
          throw makeException(
            expr,
            'FHIRPATH_CANT_COMPARE',
            [l.fhirType, r.fhirType],
          );
        }
      } else if (l.fhirType == 'Quantity' && r.fhirType == 'Quantity') {
        var lUnit = l.getChildrenByName('code');
        if (lUnit.isEmpty) {
          lUnit = l.getChildrenByName('unit');
        }
        var rUnit = r.getChildrenByName('code');
        if (rUnit.isEmpty) {
          rUnit = r.getChildrenByName('unit');
        }
        if (FhirBase.compareDeepLists(lUnit, rUnit, true)) {
          return opGreater(
            l.getChildrenByName('value'),
            r.getChildrenByName('value'),
            expr,
          );
        } else {
          final lQuantity = qtyToCanonicalDecimal(l as Quantity);
          final rQuantity = qtyToCanonicalDecimal(r as Quantity);
          final dl = lQuantity == null ? <FhirDecimal>[] : [lQuantity];
          final dr = rQuantity == null ? <FhirDecimal>[] : [rQuantity];
          return opGreater(dl, dr, expr);
        }
      }
    }
    return [];
  }

  List<FhirBase> opLessOrEqual(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    if (left.isEmpty || right.isEmpty) {
      return [];
    }

    if (left.length == 1 && right.length == 1) {
      final l = left.first;
      final r = right.first;

      if (l is PrimitiveType && r is PrimitiveType) {
        if (FHIR_TYPES_STRING.contains(l.fhirType) &&
            FHIR_TYPES_STRING.contains(r.fhirType)) {
          return makeBoolean(l.toString().compareTo(r.toString()) <= 0);
        } else if (l is FhirNumber && r is FhirNumber) {
          return makeBoolean(l <= r);
        } else if (l is FhirDateTimeBase && r is FhirDateTimeBase) {
          final comparison = l <= r;
          return comparison == null ? <FhirBase>[] : makeBoolean(comparison);
        } else if (l is FhirTime && r is FhirTime) {
          final comparison = l <= r;
          return comparison == null ? <FhirBase>[] : makeBoolean(comparison);
        } else {
          throw makeException(
            expr,
            'FHIRPATH_CANT_COMPARE',
            [l.fhirType, r.fhirType],
          );
        }
      } else if (l.fhirType == 'Quantity' && r.fhirType == 'Quantity') {
        var lUnit = l.getChildrenByName('code');
        if (lUnit.isEmpty) {
          lUnit = l.getChildrenByName('unit');
        }
        var rUnit = r.getChildrenByName('code');
        if (rUnit.isEmpty) {
          rUnit = r.getChildrenByName('unit');
        }
        if (FhirBase.compareDeepLists(lUnit, rUnit, true)) {
          return opLessOrEqual(
            l.getChildrenByName('value'),
            r.getChildrenByName('value'),
            expr,
          );
        } else {
          final lQuantity = qtyToCanonicalDecimal(l as Quantity);
          final rQuantity = qtyToCanonicalDecimal(r as Quantity);
          final dl = lQuantity == null ? <FhirDecimal>[] : [lQuantity];
          final dr = rQuantity == null ? <FhirDecimal>[] : [rQuantity];
          return opLessOrEqual(dl, dr, expr);
        }
      }
    }
    return [];
  }

  List<FhirBase> opGreaterOrEqual(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    if (left.isEmpty || right.isEmpty) {
      return [];
    }

    if (left.length == 1 && right.length == 1) {
      final l = left.first;
      final r = right.first;

      if (l is PrimitiveType && r is PrimitiveType) {
        if (FHIR_TYPES_STRING.contains(l.fhirType) &&
            FHIR_TYPES_STRING.contains(r.fhirType)) {
          return makeBoolean(l.toString().compareTo(r.toString()) >= 0);
        } else if (l is FhirNumber && r is FhirNumber) {
          return makeBoolean(l >= r);
        } else if (l is FhirDateTimeBase && r is FhirDateTimeBase) {
          final comparison = l >= r;
          return comparison == null ? <FhirBase>[] : makeBoolean(comparison);
        } else if (l is FhirTime && r is FhirTime) {
          final comparison = l >= r;
          return comparison == null ? <FhirBase>[] : makeBoolean(comparison);
        } else {
          throw makeException(
            expr,
            'FHIRPATH_CANT_COMPARE',
            [l.fhirType, r.fhirType],
          );
        }
      } else if (l.fhirType == 'Quantity' && r.fhirType == 'Quantity') {
        var lUnit = l.getChildrenByName('code');
        if (lUnit.isEmpty) {
          lUnit = l.getChildrenByName('unit');
        }
        var rUnit = r.getChildrenByName('code');
        if (rUnit.isEmpty) {
          rUnit = r.getChildrenByName('unit');
        }
        if (FhirBase.compareDeepLists(lUnit, rUnit, true)) {
          return opGreaterOrEqual(
            l.getChildrenByName('value'),
            r.getChildrenByName('value'),
            expr,
          );
        } else {
          final lQuantity = qtyToCanonicalDecimal(l as Quantity);
          final rQuantity = qtyToCanonicalDecimal(r as Quantity);
          final dl = lQuantity == null ? <FhirDecimal>[] : [lQuantity];
          final dr = rQuantity == null ? <FhirDecimal>[] : [rQuantity];
          return opGreaterOrEqual(dl, dr, expr);
        }
      }
    }
    return [];
  }

  List<FhirBase> opUnion(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    final result = <FhirBase>[];
    for (final item in left) {
      if (!doContains(result, item)) {
        result.add(item);
      }
    }
    for (final item in right) {
      if (!doContains(result, item)) {
        result.add(item);
      }
    }
    return result;
  }

  List<FhirBase> opIn(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    if (left.isEmpty) {
      return [];
    }
    if (right.isEmpty) {
      return makeBoolean(false);
    }

    var ans = true;
    for (final l in left) {
      var found = false;
      for (final r in right) {
        final eq = doEquals(l, r);
        if (eq ?? false) {
          found = true;
          break;
        }
      }
      if (!found) {
        ans = false;
        break;
      }
    }
    return makeBoolean(ans);
  }

  Future<List<FhirBase>> opMemberOf(
    ExecutionContext context,
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) async {
    var ans = false;
    final url = right.first.primitiveValue.toString();
    final vs = hostServices != null
        ? hostServices!.resolveValueSet(this, context.appInfo, url)
        : await worker.fetchResource<ValueSet>(uri: url);

    if (vs != null) {
      for (final l in left) {
        if (['code', 'string', 'uri'].contains(l.fhirType)) {
          final result = await worker.validateCodeWithCoding(
            terminologyServiceOptions.withGuessSystem(),
            TypeConvertor.castToCoding(l)!,
            vs,
          );
          if (result.isOk) {
            ans = true;
          }
        } else if (l.fhirType == 'Coding') {
          final result = await worker.validateCodeWithCoding(
            terminologyServiceOptions,
            TypeConvertor.castToCoding(l)!,
            vs,
          );
          if (result.isOk) {
            ans = true;
          }
        } else if (l.fhirType == 'CodeableConcept') {
          final cc = TypeConvertor.castToCodeableConcept(l);
          final vr = await worker.validateCodeWithCodeableConcept(
            terminologyServiceOptions,
            cc!,
            vs,
          );
          if (vr.isOk) {
            ans = true;
          }
        }
      }
    }

    return makeBoolean(ans);
  }

  List<FhirBase> opContains(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    if (left.isEmpty || right.isEmpty) {
      return [];
    }

    var ans = true;
    for (final r in right) {
      var found = false;
      for (final l in left) {
        final eq = doEquals(l, r);
        if (eq ?? false) {
          found = true;
          break;
        }
      }
      if (!found) {
        ans = false;
        break;
      }
    }
    return makeBoolean(ans);
  }

  List<FhirBase> opOr(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    final l = asBoolList(left, expr);
    final r = asBoolList(right, expr);
    switch (l) {
      case FpEquality.true_:
        return makeBoolean(true);
      case FpEquality.null_:
        return r == FpEquality.true_ ? makeBoolean(true) : makeNull();
      case FpEquality.false_:
        switch (r) {
          case FpEquality.false_:
            return makeBoolean(false);
          case FpEquality.null_:
            return makeNull();
          case FpEquality.true_:
            return makeBoolean(true);
        }
    }
  }

  List<FhirBase> opAnd(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    final l = asBoolList(left, expr);
    final r = asBoolList(right, expr);
    switch (l) {
      case FpEquality.false_:
        return makeBoolean(false);
      case FpEquality.null_:
        return r == FpEquality.false_ ? makeBoolean(false) : makeNull();
      case FpEquality.true_:
        switch (r) {
          case FpEquality.false_:
            return makeBoolean(false);
          case FpEquality.null_:
            return makeNull();
          case FpEquality.true_:
            return makeBoolean(true);
        }
    }
  }

  List<FhirBase> opXor(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    final l = asBoolList(left, expr);
    final r = asBoolList(right, expr);
    switch (l) {
      case FpEquality.true_:
        switch (r) {
          case FpEquality.false_:
            return makeBoolean(true);
          case FpEquality.true_:
            return makeBoolean(false);
          case FpEquality.null_:
            return makeNull();
        }
      case FpEquality.null_:
        return makeNull();
      case FpEquality.false_:
        switch (r) {
          case FpEquality.false_:
            return makeBoolean(false);
          case FpEquality.true_:
            return makeBoolean(true);
          case FpEquality.null_:
            return makeNull();
        }
    }
  }

  List<FhirBase> opImplies(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    final eq = asBoolList(left, expr);
    if (eq == FpEquality.false_) {
      return makeBoolean(true);
    } else if (right.isEmpty) {
      return makeNull();
    } else {
      switch (asBoolList(right, expr)) {
        case FpEquality.false_:
          return eq == FpEquality.null_ ? makeNull() : makeBoolean(false);
        case FpEquality.null_:
          return makeNull();
        case FpEquality.true_:
          return makeBoolean(true);
      }
    }
  }

  List<FhirBase> opPlus(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    if (left.isEmpty || right.isEmpty) {
      return [];
    }
    if (left.length > 1) {
      throw makeExceptionPlural(
        left.length,
        expr,
        'FHIRPATH_LEFT_VALUE',
        ['+'],
      );
    }
    if (!left.first.isPrimitive) {
      throw makeException(
        expr,
        'FHIRPATH_LEFT_VALUE_WRONG_TYPE',
        ['+', left.first.fhirType],
      );
    }
    if (right.length > 1) {
      throw makeExceptionPlural(
        right.length,
        expr,
        'FHIRPATH_RIGHT_VALUE',
        ['+'],
      );
    }
    if (!right.first.isPrimitive &&
        !((left.first is Quantity && right.first is Quantity) ||
            (left.first is FhirDateTimeBase && right.first is Quantity))) {
      throw makeException(
        expr,
        'FHIRPATH_RIGHT_VALUE_WRONG_TYPE',
        ['+', right.first.fhirType],
      );
    }

    final result = <FhirBase>[];
    final l = left.first;
    final r = right.first;

    if (FHIR_TYPES_STRING.contains(l.fhirType) &&
        FHIR_TYPES_STRING.contains(r.fhirType)) {
      result.add(FhirString('${l.primitiveValue}${r.primitiveValue}'));
    } else if (l is FhirNumber && r is FhirNumber) {
      result.add((l + r)!);
    } else if (l is FhirDateTimeBase && r is Quantity) {
      result.add(dateAdd(l, r, false, expr));
    } else {
      throw makeException(
        expr,
        'FHIRPATH_OP_INCOMPATIBLE',
        ['+', l.fhirType, r.fhirType],
      );
    }

    return result;
  }

  List<FhirBase> opTimes(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    if (left.isEmpty || right.isEmpty) {
      return [];
    }
    if (left.length > 1) {
      throw makeExceptionPlural(
        left.length,
        expr,
        'FHIRPATH_LEFT_VALUE',
        ['*'],
      );
    }
    if (!left.first.isPrimitive && left.first.fhirType != 'Quantity') {
      throw makeException(
        expr,
        'FHIRPATH_LEFT_VALUE_WRONG_TYPE',
        ['*', left.first.fhirType],
      );
    }
    if (right.length > 1) {
      throw makeExceptionPlural(
        right.length,
        expr,
        'FHIRPATH_RIGHT_VALUE',
        ['*'],
      );
    }
    if (!right.first.isPrimitive && right.first.fhirType != 'Quantity') {
      throw makeException(
        expr,
        'FHIRPATH_RIGHT_VALUE_WRONG_TYPE',
        ['*', right.first.fhirType],
      );
    }

    final result = <FhirBase>[];
    final l = left.first;
    final r = right.first;

    if (l is FhirNumber && r is FhirNumber) {
      result.add((l * r)!);
    } else if (l is Quantity && r is Quantity) {
      final pl = qtyToPair(l);
      final pr = qtyToPair(r);
      if (pl != null && pr != null) {
        try {
          final p = worker.ucumService.multiply(pl, pr);
          result.add(pairToQty(p));
        } catch (e) {
          throw PathEngineException(
            e.toString(),
            location: expr.opStart,
            expression: expr.toString(),
          );
        }
      }
    } else {
      throw makeException(
        expr,
        'FHIRPATH_OP_INCOMPATIBLE',
        ['*', l.fhirType, r.fhirType],
      );
    }

    return result;
  }

  List<FhirBase> opMinus(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    if (left.isEmpty || right.isEmpty) {
      return [];
    }
    if (left.length > 1) {
      throw makeExceptionPlural(
        left.length,
        expr,
        'FHIRPATH_LEFT_VALUE',
        ['-'],
      );
    }
    if (!left.first.isPrimitive && left.first is! Quantity) {
      throw makeException(
        expr,
        'FHIRPATH_LEFT_VALUE_WRONG_TYPE',
        ['-', left.first.fhirType],
      );
    }
    if (right.length > 1) {
      throw makeExceptionPlural(
        right.length,
        expr,
        'FHIRPATH_RIGHT_VALUE',
        ['-'],
      );
    }
    if (!right.first.isPrimitive &&
        !((left.first is FhirDateTimeBase ||
                left.first.toString() == '0' ||
                left.first is Quantity) &&
            right.first is Quantity)) {
      throw makeException(
        expr,
        'FHIRPATH_RIGHT_VALUE_WRONG_TYPE',
        ['-', right.first.fhirType],
      );
    }

    final result = <FhirBase>[];
    final l = left.first;
    final r = right.first;

    if (l is FhirNumber && r is FhirNumber) {
      result.add((l - r)!);
    } else if ((l is FhirNumber || l is Quantity) && r is Quantity) {
      if (l.toString() == '0') {
        final qty = r;
        result.add(
          qty.copyWith(
            value: qty.value?.abs() == null
                ? null
                : qty.value!.abs().toFhirDecimal,
          ),
        );
      }
    } else if (l is FhirDateTimeBase && r is Quantity) {
      result.add(dateAdd(l, r, true, expr));
    } else {
      throw makeException(
        expr,
        'FHIRPATH_OP_INCOMPATIBLE',
        ['-', l.fhirType, r.fhirType],
      );
    }

    return result;
  }

  List<FhirBase> opConcatenate(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    if (left.length > 1) {
      throw makeExceptionPlural(
        left.length,
        expr,
        'FHIRPATH_LEFT_VALUE',
        ['&'],
      );
    }
    if (left.isNotEmpty && !FHIR_TYPES_STRING.contains(left.first.fhirType)) {
      throw makeException(
        expr,
        'FHIRPATH_LEFT_VALUE_WRONG_TYPE',
        ['&', left.first.fhirType],
      );
    }
    if (right.length > 1) {
      throw makeExceptionPlural(
        right.length,
        expr,
        'FHIRPATH_RIGHT_VALUE',
        ['&'],
      );
    }
    if (right.isNotEmpty && !FHIR_TYPES_STRING.contains(right.first.fhirType)) {
      throw makeException(
        expr,
        'FHIRPATH_RIGHT_VALUE_WRONG_TYPE',
        ['&', right.first.fhirType],
      );
    }

    final result = <FhirBase>[];
    final l = left.isEmpty ? '' : left.first.primitiveValue.toString();
    final r = right.isEmpty ? '' : right.first.primitiveValue.toString();
    result.add(FhirString('$l$r'));

    return result;
  }

  List<FhirBase> opDivideBy(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    if (left.isEmpty || right.isEmpty) {
      return [];
    }
    if (left.length > 1) {
      throw makeExceptionPlural(
        left.length,
        expr,
        'FHIRPATH_LEFT_VALUE',
        ['/'],
      );
    }
    if (!left.first.isPrimitive && left.first.fhirType != 'Quantity') {
      throw makeException(expr, 'FHIRPATH_LEFT_VALUE_WRONG_TYPE', [
        '/',
        left.first.fhirType,
      ]);
    }
    if (right.length > 1) {
      throw makeExceptionPlural(right.length, expr, 'FHIRPATH_RIGHT_VALUE', [
        '/',
      ]);
    }
    if (!right.first.isPrimitive && right.first.fhirType != 'Quantity') {
      throw makeException(expr, 'FHIRPATH_RIGHT_VALUE_WRONG_TYPE', [
        '/',
        right.first.fhirType,
      ]);
    }

    final result = <FhirBase>[];
    final l = left.first;
    final r = right.first;

    if (l is FhirNumber && r is FhirNumber) {
      try {
        final d1 = FhirDecimal(l.valueNum);
        final d2 = FhirDecimal(r.valueNum);
        if (d2.valueNum == 0) {
          return <FhirBase>[];
        }
        result.add((d1 / d2)! as FhirDecimal);
      } catch (e) {
        return <FhirBase>[];
      }
    } else if (l is Quantity && r is Quantity) {
      final pl = qtyToPair(l);
      final pr = qtyToPair(r);
      if (pl != null && pr != null) {
        final p = worker.ucumService.divideBy(pl, pr);

        result.add(pairToQty(p));
      }
    } else {
      throw makeException(expr, 'FHIRPATH_OP_INCOMPATIBLE', [
        '/',
        l.fhirType,
        r.fhirType,
      ]);
    }

    return result;
  }

  List<FhirBase> opDiv(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    if (left.isEmpty || right.isEmpty) {
      return [];
    }
    if (left.length > 1) {
      throw makeExceptionPlural(left.length, expr, 'FHIRPATH_LEFT_VALUE', [
        'div',
      ]);
    }
    if (!left.first.isPrimitive && left.first.fhirType != 'Quantity') {
      throw makeException(expr, 'FHIRPATH_LEFT_VALUE_WRONG_TYPE', [
        'div',
        left.first.fhirType,
      ]);
    }
    if (right.length > 1) {
      throw makeExceptionPlural(right.length, expr, 'FHIRPATH_RIGHT_VALUE', [
        'div',
      ]);
    }
    if (!right.first.isPrimitive && right.first.fhirType != 'Quantity') {
      throw makeException(expr, 'FHIRPATH_RIGHT_VALUE_WRONG_TYPE', [
        'div',
        right.first.fhirType,
      ]);
    }

    final result = <FhirBase>[];
    final l = left.first;
    final r = right.first;

    if (l is FhirInteger &&
        l.valueInt != null &&
        r is FhirInteger &&
        r.valueInt != null) {
      final divisor = r.valueInt!;
      if (divisor != 0) {
        result.add(FhirInteger(l.valueInt! ~/ divisor));
      }
    } else if ((l is FhirDecimal || l is FhirInteger) &&
        (r is FhirDecimal || r is FhirInteger)) {
      if ((r as FhirNumber).valueNum != 0) {
        result.add(((l as FhirNumber) ~/ r)!);
      }
    } else {
      throw makeException(expr, 'FHIRPATH_OP_INCOMPATIBLE', [
        'div',
        l.fhirType,
        r.fhirType,
      ]);
    }

    return result;
  }

  List<FhirBase> opMod(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    if (left.isEmpty || right.isEmpty) {
      return [];
    }
    if (left.length > 1) {
      throw makeExceptionPlural(left.length, expr, 'FHIRPATH_LEFT_VALUE', [
        'mod',
      ]);
    }
    if (!left.first.isPrimitive) {
      throw makeException(expr, 'FHIRPATH_LEFT_VALUE_WRONG_TYPE', [
        'mod',
        left.first.fhirType,
      ]);
    }
    if (right.length > 1) {
      throw makeExceptionPlural(right.length, expr, 'FHIRPATH_RIGHT_VALUE', [
        'mod',
      ]);
    }
    if (!right.first.isPrimitive) {
      throw makeException(expr, 'FHIRPATH_RIGHT_VALUE_WRONG_TYPE', [
        'mod',
        right.first.fhirType,
      ]);
    }

    final result = <FhirBase>[];
    final l = left.first;
    final r = right.first;
    if (l is FhirNumber && r is FhirNumber) {
      if (l is FhirDecimal || r is FhirDecimal) {
        try {
          final d1 = l;
          final d2 = r;
          if (d2.valueNum != 0) {
            result.add((d1 % d2)!);
          }
        } catch (e) {
          throw makeException(expr, 'FHIRPATH_OP_ERROR', ['mod', e.toString()]);
        }
      } else {
        final modulus = r.valueNum as int?;
        if (modulus != null && modulus != 0) {
          result.add(FhirInteger((l % modulus)!.valueNum));
        }
      }
    } else if ((l.fhirType == 'decimal' || l.fhirType == 'integer') &&
        (r.fhirType == 'decimal' || r.fhirType == 'integer')) {
    } else {
      throw makeException(expr, 'FHIRPATH_OP_INCOMPATIBLE', [
        'mod',
        l.fhirType,
        r.fhirType,
      ]);
    }

    return result;
  }

  List<FhirBase> opIs(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) {
    final result = <FhirBase>[];
    if (left.isEmpty || right.isEmpty) {
      // No operation needed for empty lists
    } else if (left.length != 1 || right.length != 1) {
      result.add(FhirBoolean(false).noExtensions());
    } else {
      final tn = convertListToString(right);

      if (left.first is Element) {
        final element = left.first as Element;

        if (element.disallowExtensions ?? false) {
          result.add(
            FhirBoolean(
              element.fhirType.capitalize() == tn ||
                  'System.${element.fhirType.capitalize()}' == tn,
            ).noExtensions(),
          );
        } else {
          final currentType = element.fhirType;

          return makeBoolean(
            currentType.toLowerCase() == tn.toLowerCase() ||
                currentType == tn.replaceFirst('FHIR.', ''),
          );
        }
      } else if (left.first.fhirType == tn) {
        result.add(FhirBoolean(true).noExtensions());
      } else if (left.first.fhirType == tn.replaceFirst('FHIR.', '')) {
        result.add(FhirBoolean(true).noExtensions());
      }
    }

    return result;
  }

  Future<List<FhirBase>> opAs(
    List<FhirBase> left,
    List<FhirBase> right,
    ExpressionNode expr,
  ) async {
    final result = <FhirBase>[];
    if (right.length != 1) {
      return result;
    }

    final tn = convertListToString(right);

    if (!(await isKnownType(tn))) {
      throw PathEngineException('The type $tn is not valid');
    }
    if (!doNotEnforceAsSingletonRule && left.length > 1) {
      throw PathEngineException(
        'Attempt to use "as" on more than one item (${left.length}, "$expr")',
      );
    }

    for (final nextLeft in left) {
      if (compareTypeNames(tn, nextLeft.fhirType)) {
        result.add(nextLeft);
      }
    }
    return result;
  }

  ///
  /// ***************************************
  /// FUNCTIONS
  /// ***************************************
  ///
  Future<List<FhirBase>> evaluateFunction(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    switch (exp.function) {
      case FpFunction.Empty:
        return funcEmpty(context, focus, exp);
      case FpFunction.Not:
        return funcNot(context, focus, exp);
      case FpFunction.Exists:
        return funcExists(context, focus, exp);
      case FpFunction.SubsetOf:
        return funcSubsetOf(context, focus, exp);
      case FpFunction.SupersetOf:
        return funcSupersetOf(context, focus, exp);
      case FpFunction.IsDistinct:
        return funcIsDistinct(context, focus, exp);
      case FpFunction.Distinct:
        return funcDistinct(context, focus, exp);
      case FpFunction.Count:
        return funcCount(context, focus, exp);
      case FpFunction.Where:
        return funcWhere(context, focus, exp);
      case FpFunction.Select:
        return funcSelect(context, focus, exp);
      case FpFunction.All:
        return funcAll(context, focus, exp);
      case FpFunction.Repeat:
        return funcRepeat(context, focus, exp);
      case FpFunction.Aggregate:
        return funcAggregate(context, focus, exp);
      case FpFunction.Item:
        return funcItem(context, focus, exp);
      case FpFunction.As:
        return funcAs(context, focus, exp);
      case FpFunction.OfType:
        return funcOfType(context, focus, exp);
      case FpFunction.Type:
        return funcType(context, focus, exp);
      case FpFunction.Is:
        return funcIs(context, focus, exp);
      case FpFunction.Single:
        return funcSingle(context, focus, exp);
      case FpFunction.First:
        return funcFirst(context, focus, exp);
      case FpFunction.Last:
        return funcLast(context, focus, exp);
      case FpFunction.Tail:
        return funcTail(context, focus, exp);
      case FpFunction.Skip:
        return funcSkip(context, focus, exp);
      case FpFunction.Take:
        return funcTake(context, focus, exp);
      case FpFunction.Union:
        return funcUnion(context, focus, exp);
      case FpFunction.Combine:
        return funcCombine(context, focus, exp);
      case FpFunction.Intersect:
        return funcIntersect(context, focus, exp);
      case FpFunction.Exclude:
        return funcExclude(context, focus, exp);
      case FpFunction.Iif:
        return funcIif(context, focus, exp);
      case FpFunction.Lower:
        return funcLower(context, focus, exp);
      case FpFunction.Upper:
        return funcUpper(context, focus, exp);
      case FpFunction.ToChars:
        return funcToChars(context, focus, exp);
      case FpFunction.IndexOf:
        return funcIndexOf(context, focus, exp);
      case FpFunction.Substring:
        return funcSubstring(context, focus, exp);
      case FpFunction.StartsWith:
        return funcStartsWith(context, focus, exp);
      case FpFunction.EndsWith:
        return funcEndsWith(context, focus, exp);
      case FpFunction.Matches:
        return funcMatches(context, focus, exp);
      case FpFunction.MatchesFull:
        return funcMatchesFull(context, focus, exp);
      case FpFunction.ReplaceMatches:
        return funcReplaceMatches(context, focus, exp);
      case FpFunction.Contains:
        return funcContains(context, focus, exp);
      case FpFunction.Replace:
        return funcReplace(context, focus, exp);
      case FpFunction.Length:
        return funcLength(context, focus, exp);
      case FpFunction.Children:
        return funcChildren(context, focus, exp);
      case FpFunction.Descendants:
        return funcDescendants(context, focus, exp);
      case FpFunction.MemberOf:
        return funcMemberOf(context, focus, exp);
      case FpFunction.Trace:
        return funcTrace(context, focus, exp);
      case FpFunction.DefineVariable:
        return funcDefineVariable(context, focus, exp);
      case FpFunction.Check:
        return funcCheck(context, focus, exp);
      case FpFunction.Today:
        return funcToday(context, focus, exp);
      case FpFunction.Now:
        return funcNow(context, focus, exp);
      case FpFunction.TimeOfDay:
        return funcTimeOfDay(context, focus, exp);
      case FpFunction.Resolve:
        return funcResolve(context, focus, exp);
      case FpFunction.Extension:
        return funcExtension(context, focus, exp);
      case FpFunction.AnyFalse:
        return funcAnyFalse(context, focus, exp);
      case FpFunction.AllFalse:
        return funcAllFalse(context, focus, exp);
      case FpFunction.AnyTrue:
        return funcAnyTrue(context, focus, exp);
      case FpFunction.AllTrue:
        return funcAllTrue(context, focus, exp);
      case FpFunction.HasValue:
        return funcHasValue(context, focus, exp);
      case FpFunction.Encode:
        return funcEncode(context, focus, exp);
      case FpFunction.Decode:
        return funcDecode(context, focus, exp);
      case FpFunction.Escape:
        return funcEscape(context, focus, exp);
      case FpFunction.Unescape:
        return funcUnescape(context, focus, exp);
      case FpFunction.Trim:
        return funcTrim(context, focus, exp);
      case FpFunction.Split:
        return funcSplit(context, focus, exp);
      case FpFunction.Join:
        return funcJoin(context, focus, exp);
      case FpFunction.HtmlChecks1:
        return funcHtmlChecks1(context, focus, exp);
      case FpFunction.HtmlChecks2:
        return funcHtmlChecks2(context, focus, exp);
      case FpFunction.Comparable:
        return funcComparable(context, focus, exp);
      case FpFunction.ToInteger:
        return funcToInteger(context, focus, exp);
      case FpFunction.ToDecimal:
        return funcToDecimal(context, focus, exp);
      case FpFunction.ToString:
        return funcToString(context, focus, exp);
      case FpFunction.ToBoolean:
        return funcToBoolean(context, focus, exp);
      case FpFunction.ToQuantity:
        return funcToQuantity(context, focus, exp);
      case FpFunction.ToDateTime:
        return funcToDateTime(context, focus, exp);
      case FpFunction.ToDate:
        return funcToDate(context, focus, exp);
      case FpFunction.ToTime:
        return funcToTime(context, focus, exp);
      case FpFunction.IsInteger:
        return opIs(focus, ['integer'.toFhirString], exp);
      case FpFunction.ConvertsToInteger:
        return funcIsInteger(focus);
      case FpFunction.IsDecimal:
        return opIs(focus, ['decimal'.toFhirString], exp);
      case FpFunction.ConvertsToDecimal:
        return funcIsDecimal(context, focus, exp);
      case FpFunction.IsString:
        return opIs(focus, ['string'.toFhirString], exp);
      case FpFunction.ConvertsToString:
        return funcIsString(focus);
      case FpFunction.IsBoolean:
        return opIs(focus, ['boolean'.toFhirString], exp);
      case FpFunction.ConvertsToBoolean:
        return funcIsBoolean(focus);
      case FpFunction.IsQuantity:
        return opIs(focus, ['Quantity'.toFhirString], exp);
      case FpFunction.ConvertsToQuantity:
        return funcIsQuantity(focus);
      case FpFunction.IsDateTime:
        return opIs(focus, ['dateTime'.toFhirString], exp);
      case FpFunction.ConvertsToDateTime:
        return funcIsDateTime(focus);
      case FpFunction.IsDate:
        return opIs(focus, ['date'.toFhirString], exp);
      case FpFunction.ConvertsToDate:
        return funcIsDate(focus);
      case FpFunction.IsTime:
        return opIs(focus, ['time'.toFhirString], exp);
      case FpFunction.ConvertsToTime:
        return funcIsTime(focus);
      case FpFunction.ConformsTo:
        return funcConformsTo(context, focus, exp);
      case FpFunction.Round:
        return funcRound(context, focus, exp);
      case FpFunction.Sqrt:
        return funcSqrt(context, focus, exp);
      case FpFunction.Abs:
        return funcAbs(context, focus, exp);
      case FpFunction.Ceiling:
        return funcCeiling(context, focus, exp);
      case FpFunction.Exp:
        return funcExp(context, focus, exp);
      case FpFunction.Floor:
        return funcFloor(context, focus, exp);
      case FpFunction.Ln:
        return funcLn(context, focus, exp);
      case FpFunction.Log:
        return funcLog(context, focus, exp);
      case FpFunction.Power:
        return funcPower(context, focus, exp);
      case FpFunction.Sum:
        return funcSum(context, focus, exp);
      case FpFunction.Truncate:
        return funcTruncate(context, focus, exp);
      case FpFunction.LowBoundary:
        return funcLowBoundary(context, focus, exp);
      case FpFunction.HighBoundary:
        return funcHighBoundary(context, focus, exp);
      case FpFunction.Precision:
        return funcPrecision(context, focus, exp);
      case FpFunction.Custom:
        {
          final params = <List<FhirBase>>[];
          for (final p in exp.parameters) {
            params.add(await execute(context, focus, p, true));
          }
          return hostServices?.executeFunction(
                this,
                context.appInfo,
                focus,
                exp.name,
                params,
              ) ??
              <FhirBase>[];
        }
      case null:
      case FpFunction.HasTemplateIdOf:
        throw UnimplementedError();
    }
  }

  List<FhirBase> funcEmpty(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    return [FhirBoolean(focus.isEmpty).noExtensions()];
  }

  List<FhirBase> funcNot(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final result = <FhirBase>[];
    final v = asBoolList(focus, exp);

    if (v != FpEquality.null_) {
      result.add(FhirBoolean(v != FpEquality.true_));
    }

    return result;
  }

  Future<List<FhirBase>> funcExists(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    var empty = true;
    final pc = <FhirBase>[];

    for (final f in focus) {
      if (exp.parameters.length == 1) {
        pc
          ..clear()
          ..add(f);
        final v = asBoolList(
          await execute(
            context.changeThis(f, worker),
            pc,
            exp.parameters[0],
            true,
          ),
          exp,
        );
        if (v == FpEquality.true_) {
          empty = false;
        }
      } else if (!f.isEmpty()) {
        empty = false;
      }
    }

    return [FhirBoolean(!empty).noExtensions()];
  }

  Future<List<FhirBase>> funcSubsetOf(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final target = await execute(
      context,
      context.focusResource == null ? focus : [context.focusResource!],
      exp.parameters[0],
      true,
    );
    var valid = true;
    for (final item in focus) {
      var found = false;
      for (final t in target) {
        if (FhirBase.compareDeep(item, t)) {
          found = true;
          break;
        }
      }
      if (!found) {
        valid = false;
        break;
      }
    }

    return [FhirBoolean(valid).noExtensions()];
  }

  List<FhirBase> funcIsDistinct(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    if (focus.isEmpty) {
      return makeBoolean(true);
    }
    if (focus.length == 1) {
      return makeBoolean(true);
    }

    var distinct = true;
    for (var i = 0; i < focus.length; i++) {
      for (var j = i + 1; j < focus.length; j++) {
        final eq = doEquals(focus[j], focus[i]);
        if (eq == null) {
          return [];
        } else if (eq) {
          distinct = false;
          break;
        }
      }
    }
    return makeBoolean(distinct);
  }

  List<FhirBase> funcDistinct(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    if (focus.length <= 1) {
      return focus;
    }

    final result = <FhirBase>[];

    for (var i = 0; i < focus.length; i++) {
      var found = false;

      for (var j = i + 1; j < focus.length; j++) {
        final eq = doEquals(focus[j], focus[i]);
        if (eq == null) return <FhirBase>[];
        if (eq) {
          found = true;
          break;
        }
      }

      if (!found) {
        result.add(focus[i]);
      }
    }
    return result;
  }

  List<FhirBase> funcCount(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    return [FhirInteger(focus.length).noExtensions()];
  }

  Future<List<FhirBase>> funcWhere(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    final pc = <FhirBase>[];
    for (final item in focus) {
      pc
        ..clear()
        ..add(item);
      if (exp.parameters.isEmpty) {
        throw PathEngineException(
          'Where function must have at least one parameter',
        );
      }
      final v = asBoolList(
        await execute(
          changeThisExecutionContext(context, item),
          pc,
          exp.parameters.first,
          true,
        ),
        exp,
      );
      if (v == FpEquality.true_) {
        result.add(item);
      }
    }
    return result;
  }

  Future<List<FhirBase>> funcSelect(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    final pc = <FhirBase>[];

    for (var i = 0; i < focus.length; i++) {
      final item = focus[i];
      pc
        ..clear()
        ..add(item);
      result.addAll(
        await execute(
          context.changeThis(item, worker)..index = i.toFhirInteger,
          pc,
          exp.parameters[0],
          true,
        ),
      );
    }
    return result;
  }

  Future<List<FhirBase>> funcAll(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    if (exp.parameters.length == 1) {
      final pc = <FhirBase>[];
      var all = true;
      for (final item in focus) {
        pc
          ..clear()
          ..add(item);
        final eq = asBoolList(
          await execute(
            context.changeThis(item, worker),
            pc,
            exp.parameters[0],
            true,
          ),
          exp,
        );
        if (eq != FpEquality.true_) {
          all = false;
          break;
        }
      }
      result.add(FhirBoolean(all).noExtensions());
    } else {
      var all = true;
      for (final item in focus) {
        final eq = asBool(item, true);
        if (eq != FpEquality.true_) {
          all = false;
          break;
        }
      }
      result.add(FhirBoolean(all).noExtensions());
    }
    return result;
  }

  Future<List<FhirBase>> funcRepeat(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    final current = <FhirBase>[...focus];
    final added = <FhirBase>[];
    var more = true;

    while (more) {
      added.clear();
      final pc = <FhirBase>[];

      for (final item in current) {
        pc
          ..clear()
          ..add(item);

        try {
          final ex = await execute(
            context.changeThis(item, worker),
            pc,
            exp.parameters.first,
            false,
          );

          added.addAll(ex);
        } catch (e) {
          if (e is PathEngineException) {
            rethrow;
          } else {
            throw PathEngineException(
              e.toString(),
              location: exp.opStart,
              expression: exp.toString(),
            );
          }
        }
      }

      more = false;
      current.clear();

      for (final b in added) {
        var isNew = true;

        for (final t in result) {
          if (b.equalsDeep(t)) {
            isNew = false;
            break;
          }
        }

        if (isNew) {
          result.add(b);
          current.add(b);
          more = true;
        }
      }
    }

    return result;
  }

  Future<List<FhirBase>> funcAggregate(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    var total = <FhirBase>[];
    if (exp.parameterCount > 1) {
      total = await execute(context, focus, exp.parameters[1], false);
    }

    final pc = <FhirBase>[];
    for (final item in focus) {
      final c = context.changeThis(item, worker)
        ..total = total
        ..next();
      total = await execute(c, pc, exp.parameters[0], true);
    }
    return total;
  }

  Future<List<FhirBase>> funcItem(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    final s = convertListToString(
      await execute(context, focus, exp.parameters[0], true),
    );
    if (Utilities.isInteger(s) && int.parse(s) < focus.length) {
      result.add(focus[int.parse(s)]);
    }
    return result;
  }

  List<FhirBase> funcAs(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) {
    throw FhirPathDeprecatedExpressionException(
      'The "as" function is deprecated',
      location: expr.opStart,
    );
    // final result = <FhirBase>[];
    // final parameter = expr.parameters[0];
    // final tn = parameter.inner != null
    //     ? '${parameter.name}.${parameter.inner!.name}'
    //     : 'FHIR.${parameter.name}';

    // if (!isKnownType(tn)) {
    //   throw PathEngineException('The type $tn is not valid');
    // }

    // if (!doNotEnforceAsSingletonRule && focus.length > 1) {
    //   throw PathEngineException(
    //     'Attempt to use as() on more than one item (${focus.length})',
    //   );
    // }

    // for (final b in focus) {
    //   if (tn.startsWith('System.')) {
    //     if (b is Element &&
    //         (b.disallowExtensions ?? false) &&
    //         b.hasType([tn.substring(7)])) {
    //       result.add(b);
    //     }
    //   } else if (tn.startsWith('FHIR.')) {
    //     final tnp = tn.substring(5);
    //     if (b.fhirType == tnp) {
    //       result.add(b);
    //     } else {
    //       var sd = _fetchTypeDefinition(b.fhirType);
    //       while (sd != null) {
    //         if (compareTypeNames(tnp, sd.type.toString())) {
    //           result.add(b);
    //           break;
    //         }
    //         sd = sd.kind == StructureDefinitionKind.primitive_type
    //             ? null
    //             : worker.fetchResource<StructureDefinition>(
    //                 uri: sd.baseDefinition?.toString(),
    //                 canonicalForSource: sd,
    //               );
    //       }
    //     }
    //   }
    // }

    // return result;
  }

  Future<List<FhirBase>> funcOfType(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) async {
    final result = <FhirBase>[];
    String? tn;
    if (expr.parameters.isNotEmpty && expr.parameters.first.inner != null) {
      tn = '${expr.parameters.first.name}.${expr.parameters.first.inner!.name}';
    } else if (expr.parameters.isNotEmpty) {
      tn = 'FHIR.${expr.parameters.first.name}';
    }

    if (!(await isKnownType(tn))) {
      throw PathEngineException('The type $tn is not valid');
    }

    for (final b in focus) {
      if (tn!.startsWith('System.')) {
        if (b is Element && (b.disallowExtensions ?? false)) {
          if (b.hasType([tn.substring(7)])) {
            result.add(b);
          }
        }
      } else if (tn.startsWith('FHIR.')) {
        final tnp = tn.substring(5);
        if (b.fhirType == tnp) {
          result.add(b);
        } else {
          var sd = await worker.fetchTypeDefinition(b.fhirType);
          while (sd != null) {
            if (tnp == sd.type.primitiveValue) {
              result.add(b);
              break;
            }
            sd = sd.kind == StructureDefinitionKind.primitiveType
                ? null
                : (await worker.fetchResource<StructureDefinition>(
                    uri: sd.baseDefinition?.primitiveValue,
                    canonicalForSource: sd,
                  ))!;
          }
        }
      }
    }

    return result;
  }

  Future<List<FhirBase>> funcIs(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) async {
    if (focus.isEmpty || focus.length > 1) {
      return makeNull();
    }

    String? ns;
    String? n;

    final texp = expr.parameters[0];
    if (texp.kind != ExpressionNodeKind.name) {
      throw makeException(
        expr,
        'FHIRPATH_PARAM_WRONG',
        [
          texp.kind!,
          '0',
          'is',
        ],
      );
    }

    if (texp.inner != null) {
      if (texp.inner!.kind != ExpressionNodeKind.name) {
        throw makeException(
          expr,
          'FHIRPATH_PARAM_WRONG',
          [
            texp.kind!,
            '1',
            'is',
          ],
        );
      }
      ns = texp.name;
      n = texp.inner!.name;
    } else if ([
      'Boolean',
      'Integer',
      'Decimal',
      'String',
      'DateTime',
      'Date',
      'Time',
      'SimpleTypeInfo',
      'ClassInfo',
    ].contains(texp.name)) {
      ns = 'System';
      n = texp.name;
    } else {
      ns = 'FHIR';
      n = texp.name;
    }

    if (ns == 'System') {
      if (focus.first is Resource) {
        return makeBoolean(false);
      }

      if (focus.first is! Element ||
          ((focus.first as Element).disallowExtensions ?? false)) {
        final t = focus.first.fhirType.capitalize();
        if (n == t) {
          return makeBoolean(true);
        }
        if (t == 'Date' && n == 'DateTime') {
          return makeBoolean(true);
        }
        return makeBoolean(false);
      } else {
        return makeBoolean(false);
      }
    } else if (ns == 'FHIR') {
      if (n == focus.first.fhirType) {
        return makeBoolean(true);
      } else {
        var sd = await _fetchTypeDefinition(focus.first.fhirType);
        while (sd != null) {
          if (n == sd.type.toString()) {
            return makeBoolean(true);
          }
          sd = await worker.fetchResource<StructureDefinition>(
            uri: sd.baseDefinition?.toString(),
          );
        }
        return makeBoolean(false);
      }
    } else {
      return makeBoolean(false);
    }
  }

  List<FhirBase> funcSingle(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) {
    if (focus.length == 1) {
      return focus;
    } else if (focus.isEmpty) {
      return [];
    } else {
      throw makeException(expr, 'FHIRPATH_NO_COLLECTION', [
        'single',
        focus.length,
      ]);
    }
  }

  List<FhirBase> funcFirst(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    return focus.isNotEmpty ? [focus.first] : [];
  }

  List<FhirBase> funcLast(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    return focus.isNotEmpty ? [focus.last] : [];
  }

  List<FhirBase> funcTail(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    return focus.length > 1 ? focus.sublist(1) : [];
  }

  Future<List<FhirBase>> funcSkip(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final n1 = await execute(context, focus, exp.parameters[0], true);
    final i1 = int.parse(n1.first.primitiveValue.toString());

    if (focus.length <= i1) {
      return [];
    }

    return focus.sublist(i1);
  }

  Future<List<FhirBase>> funcTake(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final n1 = await execute(context, focus, exp.parameters[0], true);
    final i1 = int.parse(n1.first.primitiveValue ?? '0');

    final result = <FhirBase>[];
    for (var i = 0; i < focus.length && i < i1; i++) {
      result.add(focus[i]);
    }
    return result;
  }

  Future<List<FhirBase>> funcUnion(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    for (final item in focus) {
      if (!doContains(result, item)) {
        result.add(item);
      }
    }

    if (context.thisItem == null) {
      throw PathEngineException('The context does not have a thisItem');
    }

    final other = exp.parameters.isEmpty
        ? <FhirBase>[]
        : await execute(
            context,
            baseToList(context.thisItem!),
            exp.parameters[0],
            true,
          );

    for (final item in other) {
      if (!doContains(result, item)) {
        result.add(item);
      }
    }
    return result;
  }

  Future<List<FhirBase>> funcCombine(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = List<FhirBase>.from(focus);
    if (context.thisItem == null) {
      throw PathEngineException('The context does not have a thisItem');
    }

    final other = exp.parameters.isEmpty
        ? <FhirBase>[]
        : await execute(
            context,
            baseToList(context.thisItem!),
            exp.parameters[0],
            true,
          );

    result.addAll(other);
    return result;
  }

  Future<List<FhirBase>> funcIntersect(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    final other = await execute(context, focus, exp.parameters[0], true);

    for (final item in focus) {
      if (!doContains(result, item) && doContains(other, item)) {
        result.add(item);
      }
    }
    return result;
  }

  Future<List<FhirBase>> funcExclude(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    final other = await execute(
      context,
      context.focusResource == null ? focus : [context.focusResource!],
      exp.parameters[0],
      true,
    );

    for (final item in focus) {
      if (!doContains(other, item)) {
        result.add(item);
      }
    }
    return result;
  }

  Future<List<FhirBase>> funcIif(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    if (focus.length > 1) {
      throw makeException(
        exp,
        'FHIRPATH_NO_COLLECTION',
        ['iif', focus.length],
      );
    }

    final n1 = await execute(
      focus.isEmpty ? context : context.changeThis(focus.first, worker),
      focus,
      exp.parameters[0],
      true,
    );

    final v = asBoolList(n1, exp);
    if (v == FpEquality.true_) {
      return execute(context, focus, exp.parameters[1], true);
    } else if (exp.parameters.length < 3) {
      return [];
    } else {
      return execute(context, focus, exp.parameters[2], true);
    }
  }

  List<FhirBase> funcLower(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final result = <FhirBase>[];
    if (focus.length == 1 &&
        (focus.first.hasType(FHIR_TYPES_STRING) ||
            doImplicitStringConversion)) {
      final s = convertToString(focus.first);
      if (s.isNotEmpty) {
        result.add(FhirString(s.toLowerCase()).noExtensions());
      }
    }
    return result;
  }

  List<FhirBase> funcUpper(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final result = <FhirBase>[];
    if (focus.length == 1 &&
        (focus.first.hasType(FHIR_TYPES_STRING) ||
            doImplicitStringConversion)) {
      final s = convertToString(focus.first);
      if (s.isNotEmpty) {
        result.add(FhirString(s.toUpperCase()).noExtensions());
      }
    }
    return result;
  }

  List<FhirBase> funcToChars(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final result = <FhirBase>[];
    if (focus.length == 1 &&
        (focus.first.hasType(FHIR_TYPES_STRING) ||
            doImplicitStringConversion)) {
      final s = convertToString(focus.first);
      for (final c in s.split('')) {
        result.add(FhirString(c).noExtensions());
      }
    }
    return result;
  }

  Future<List<FhirBase>> funcIndexOf(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    final swb = await execute(context, focus, exp.parameters[0], true);
    final sw = convertListToString(swb);

    if (focus.isEmpty || swb.isEmpty || sw.isEmpty) {
      result.add(FhirInteger(0).noExtensions());
    } else if (focus.first.hasType(FHIR_TYPES_STRING) ||
        doImplicitStringConversion) {
      final s = convertToString(focus.first);
      result.add(FhirInteger(s.indexOf(sw)).noExtensions());
    }
    return result;
  }

  Future<List<FhirBase>> funcSubstring(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    final n1 = await execute(context, focus, exp.parameters[0], true);
    final i1 = int.parse(n1.first.primitiveValue ?? '0');
    var i2 = -1;

    if (exp.parameterCount == 2) {
      final n2 = await execute(context, focus, exp.parameters[1], true);
      if (n2.isEmpty ||
          !n2.first.isPrimitive ||
          !n2.first.primitiveValue!.isInteger) {
        return [];
      }
      i2 = int.parse(n2.first.primitiveValue ?? '-1');
    }

    if (focus.length == 1 &&
        (focus.first.hasType(FHIR_TYPES_STRING) ||
            doImplicitStringConversion)) {
      final sw = convertToString(focus.first);
      if (i1 < 0 || i1 >= sw.length) {
        return [];
      }

      final s = (exp.parameterCount == 2)
          ? sw.substring(i1, (i1 + i2).clamp(0, sw.length))
          : sw.substring(i1);

      if (s.isNotEmpty) {
        result.add(FhirString(s).noExtensions());
      }
    }
    return result;
  }

  Future<List<FhirBase>> funcStartsWith(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    final swb = await execute(context, focus, exp.parameters[0], true);
    final sw = convertListToString(swb);

    if (focus.isEmpty || swb.isEmpty) {
      return result;
    }

    if (sw.isEmpty) {
      result.add(FhirBoolean(true).noExtensions());
    } else if (focus.first.hasType(FHIR_TYPES_STRING) ||
        doImplicitStringConversion) {
      final s = convertToString(focus.first);
      result.add(FhirBoolean(s.startsWith(sw)).noExtensions());
    }
    return result;
  }

  Future<List<FhirBase>> funcEndsWith(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    final swb = await execute(context, focus, exp.parameters[0], true);
    final sw = convertListToString(swb);

    if (focus.isEmpty || swb.isEmpty) {
      return result;
    }

    if (sw.isEmpty) {
      result.add(FhirBoolean(true).noExtensions());
    } else if (focus.first.hasType(FHIR_TYPES_STRING) ||
        doImplicitStringConversion) {
      final s = convertToString(focus.first);
      result.add(FhirBoolean(s.endsWith(sw)).noExtensions());
    }
    return result;
  }

  Future<List<FhirBase>> funcMatches(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    final swb = await execute(context, focus, exp.parameters[0], true);
    final sw = convertListToString(swb);

    if (focus.isEmpty || swb.isEmpty) {
      return result;
    } else if (focus.length == 1 && sw.isNotEmpty) {
      final st = convertToString(focus.first);
      if (st.isEmpty) {
        result.add(FhirBoolean(false).noExtensions());
      } else {
        final regExp = RegExp(sw, dotAll: true);
        final match = regExp.hasMatch(st);
        result.add(FhirBoolean(match).noExtensions());
      }
    } else {
      result.add(FhirBoolean(false).noExtensions());
    }
    return result;
  }

  Future<List<FhirBase>> funcMatchesFull(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    final sw = convertListToString(
      await execute(context, focus, exp.parameters[0], true),
    );

    if (focus.length == 1 && sw.isNotEmpty) {
      final st = convertToString(focus.first);
      if (st.isEmpty) {
        result.add(FhirBoolean(false).noExtensions());
      } else {
        final regExp = RegExp(sw, dotAll: true);
        final fullMatch = regExp.matchAsPrefix(st) != null;
        result.add(FhirBoolean(fullMatch).noExtensions());
      }
    } else {
      result.add(FhirBoolean(false).noExtensions());
    }
    return result;
  }

  Future<List<FhirBase>> funcReplaceMatches(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    final regexB = await execute(context, focus, exp.parameters[0], true);
    final regex = convertListToString(regexB);
    final replB = await execute(context, focus, exp.parameters[1], true);
    final repl = convertListToString(replB);

    if (focus.isEmpty || regexB.isEmpty || replB.isEmpty) {
      return result;
    }

    if (focus.length == 1 &&
        !Utilities.noString(regex) &&
        (focus.first.hasType(FHIR_TYPES_STRING) ||
            doImplicitStringConversion)) {
      final s = convertToString(focus.first);
      result.add(
        FhirString(s.replaceAll(RegExp(regex), repl)).noExtensions(),
      );
    }
    return result;
  }

  Future<List<FhirBase>> funcContains(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    if (context.thisItem == null) {
      throw PathEngineException('The context does not have a thisItem');
    }
    final swb = await execute(
      context,
      baseToList(context.thisItem!),
      exp.parameters[0],
      true,
    );
    final sw = convertListToString(swb);

    if (focus.length != 1 || swb.length != 1) {
      return result;
    } else if (sw.isEmpty) {
      result.add(FhirBoolean(true).noExtensions());
    } else if (focus.first is FhirString) {
      final st = convertToString(focus.first);
      result.add(FhirBoolean(st.contains(sw)).noExtensions());
    }
    return result;
  }

  Future<List<FhirBase>> funcReplace(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    final tB = await execute(context, focus, exp.parameters[0], true);
    final t = convertListToString(tB);
    final rB = await execute(context, focus, exp.parameters[1], true);
    final r = convertListToString(rB);

    if (focus.isEmpty || tB.isEmpty || rB.isEmpty) {
      return result;
    }

    if (focus.length == 1 &&
        (focus.first.hasType(FHIR_TYPES_STRING) ||
            doImplicitStringConversion)) {
      final f = convertToString(focus.first);
      if (f.isEmpty) {
        result.add(FhirString('').noExtensions());
      } else {
        result.add(FhirString(f.replaceAll(t, r)).noExtensions());
      }
    } else {
      throw makeException(
        exp,
        'FHIRPATH_NO_COLLECTION',
        ['replace', focus.length],
      );
    }
    return result;
  }

  List<FhirBase> funcLength(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final result = <FhirBase>[];
    if (focus.length == 1 &&
        (focus.first.hasType(FHIR_TYPES_STRING) ||
            doImplicitStringConversion)) {
      final s = convertToString(focus.first);
      result.add(FhirInteger(s.length).noExtensions());
    }
    return result;
  }

  List<FhirBase> funcChildren(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final result = <FhirBase>[];
    for (final b in focus) {
      getChildrenByName(b, '*', result);
    }
    return result;
  }

  List<FhirBase> funcDescendants(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final result = <FhirBase>[];
    final current = <FhirBase>[...focus];
    final added = <FhirBase>[];
    var more = true;
    while (more) {
      added.clear();
      for (final item in current) {
        getChildrenByName(item, '*', added);
      }
      more = added.isNotEmpty;
      result.addAll(added);
      current
        ..clear()
        ..addAll(added);
    }
    return result;
  }

  Future<List<FhirBase>> funcMemberOf(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final nl = await execute(context, focus, exp.parameters[0], true);

    if (nl.length != 1 || focus.length != 1) {
      return [];
    }

    final url = nl.first.primitiveValue;
    if (url == null) {
      return [];
    }
    final vs = hostServices != null
        ? hostServices!.resolveValueSet(this, context.appInfo, url)
        : await worker.fetchResource<ValueSet>(uri: url);

    if (vs == null) {
      return [];
    }

    final l = focus.first;
    if (['code', 'string', 'uri'].contains(l.fhirType)) {
      final result = await worker.validateCodeWithCoding(
        terminologyServiceOptions,
        TypeConvertor.castToCoding(l)!,
        vs,
      );
      return makeBoolean(
        result.isOk,
      );
    } else if (l.fhirType == 'Coding') {
      final result = await worker.validateCodeWithCoding(
        terminologyServiceOptions,
        TypeConvertor.castToCoding(l)!,
        vs,
      );
      return makeBoolean(
        result.isOk,
      );
    } else if (l.fhirType == 'CodeableConcept') {
      final result = await worker.validateCodeWithCodeableConcept(
        terminologyServiceOptions,
        TypeConvertor.castToCodeableConcept(l)!,
        vs,
      );
      return makeBoolean(result.isOk);
    }
    return [];
  }

  Future<List<FhirBase>> funcTrace(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final nl = await execute(context, focus, exp.parameters[0], true);
    final name = nl.first.primitiveValue.toString();

    if (exp.parameters.length == 2) {
      final n2 = await execute(context, focus, exp.parameters[1], true);
      writeToLog(name, n2);
    } else {
      writeToLog(name, focus);
    }
    return focus;
  }

  Future<List<FhirBase>> funcDefineVariable(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final nl = await execute(context, focus, exp.parameters[0], true);
    final name = nl.first.primitiveValue.toString();
    final value = exp.parameters.length == 2
        ? execute(context, focus, exp.parameters[1], true)
        : focus;

    context.setDefinedVariable(name, value, worker);
    return focus;
  }

  Future<List<FhirBase>> funcCheck(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) async {
    final n1 = await execute(context, focus, expr.parameters[0], true);

    if (!convertToBoolean(n1)) {
      final n2 = await execute(context, focus, expr.parameters[1], true);
      final name = n2.first.primitiveValue.toString();
      throw FhirPathException('Check failed for $name');
    }
    return focus;
  }

  List<FhirBase> funcToday(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final dateTime = DateTime.now();
    return <FhirBase>[
      FhirDate.fromUnits(
        year: dateTime.year,
        month: dateTime.month,
        day: dateTime.day,
      ),
    ];
  }

  List<FhirBase> funcNow(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    return <FhirBase>[FhirDateTime.fromDateTime(DateTime.now())];
  }

  List<FhirBase> funcTimeOfDay(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    return <FhirBase>[
      FhirTime.tryParse(DateTime.now().toIso8601String().split('T').last)!,
    ];
  }

  Future<List<FhirBase>> funcAllFalse(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    if (exp.parameters.length == 1) {
      var all = true;
      final pc = <FhirBase>[];
      for (final item in focus) {
        pc
          ..clear()
          ..add(item);
        final res = await execute(context, pc, exp.parameters.first, true);
        final v = asBoolList(res, exp);
        if (v != FpEquality.false_) {
          // Assuming FpEquality.falseValue corresponds to `FpEquality.False`
          all = false;
          break;
        }
      }
      result.add(FhirBoolean(all).noExtensions());
    } else {
      var all = true;
      for (final item in focus) {
        if (!canConvertToBoolean(item)) {
          throw FHIRException(
            message:
                "Unable to convert '${convertToString(item)}' to a boolean",
          );
        }

        final v = asBool(item, true);
        if (v != FpEquality.false_) {
          all = false;
          break;
        }
      }
      result.add(FhirBoolean(all).noExtensions());
    }
    return result;
  }

  Future<List<FhirBase>> funcAnyFalse(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    if (exp.parameters.length == 1) {
      var any = false;
      final pc = <FhirBase>[];
      for (final item in focus) {
        pc
          ..clear()
          ..add(item);
        final res = await execute(context, pc, exp.parameters.first, true);
        final v = asBoolList(res, exp);
        if (v == FpEquality.false_) {
          any = true;
          break;
        }
      }
      result.add(FhirBoolean(any).noExtensions());
    } else {
      var any = false;
      for (final item in focus) {
        if (!canConvertToBoolean(item)) {
          throw FHIRException(
            message:
                "Unable to convert '${convertToString(item)}' to a boolean",
          );
        }

        final v = asBool(item, true);
        if (v == FpEquality.false_) {
          any = true;
          break;
        }
      }
      result.add(FhirBoolean(any).noExtensions());
    }
    return result;
  }

  Future<List<FhirBase>> funcAnyTrue(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];

    if (exp.parameters.length == 1) {
      var any = false;
      final pc = <FhirBase>[];

      for (final item in focus) {
        pc
          ..clear()
          ..add(item);
        final res = await execute(context, pc, exp.parameters[0], true);
        final v = asBoolList(res, exp);
        if (v == FpEquality.true_) {
          any = true;
          break;
        }
      }
      result.add(FhirBoolean(any).noExtensions());
    } else {
      var any = false;
      for (final item in focus) {
        if (!canConvertToBoolean(item)) {
          throw FHIRException(
            message:
                "Unable to convert '${convertToString(item)}' to a boolean",
          );
        }
        final v = asBool(item, true);
        if (v == FpEquality.true_) {
          any = true;
          break;
        }
      }
      result.add(FhirBoolean(any).noExtensions());
    }
    return result;
  }

  Future<List<FhirBase>> funcAllTrue(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];

    if (exp.parameters.length == 1) {
      var any = false;
      final pc = <FhirBase>[];

      for (final item in focus) {
        pc
          ..clear()
          ..add(item);
        final res = await execute(context, pc, exp.parameters[0], true);
        final v = asBoolList(res, exp);
        if (v == FpEquality.true_) {
          any = true;
          break;
        }
      }
      result.add(FhirBoolean(any).noExtensions());
    } else {
      var any = false;
      for (final item in focus) {
        if (!canConvertToBoolean(item)) {
          throw FHIRException(
            message:
                "Unable to convert '${convertToString(item)}' to a boolean",
          );
        }
        final v = asBool(item, true);
        if (v == FpEquality.true_) {
          any = true;
          break;
        }
      }
      result.add(FhirBoolean(any).noExtensions());
    }
    return result;
  }

  List<FhirBase> funcResolve(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final result = <FhirBase>[];
    FhirBase? refContext;

    for (final item in focus) {
      String? s = convertToString(item);
      if (item.fhirType == 'Reference') {
        refContext = item;
        final property = item.getChildByName('reference');
        if (property != null && property.hasValues()) {
          for (final child in property.listChildrenNames()) {
            final prop = property.getChildByName(child);
            if (prop != null && prop is PrimitiveType) {
              s = prop.primitiveValue;
              break;
            }
          }
        } else {
          s = null;
        }
      }

      if (item.fhirType == 'canonical') {
        s = item.primitiveValue;
        refContext = item;
      }

      if (s != null) {
        FhirBase? res;
        if (s.startsWith('#')) {
          final property = context.rootResource?.getChildByName('contained');
          if (property != null) {
            for (final c in property.listChildrenNames()) {
              final val = property.getChildByName(c);
              final id = val is Element
                  ? val.id
                  : val is Resource
                      ? val.id
                      : null;
              if (id != null && chompHash(s) == chompHash(id.valueString)) {
                res = c.toFhirString;
                break;
              }
            }
          }
        } else if (hostServices != null && refContext != null) {
          try {
            res = hostServices?.resolveReference(
              this,
              context.appInfo ?? '',
              s,
              refContext,
            );
          } catch (e) {
            res = null;
          }
        }

        if (res != null) {
          result.add(res);
        }
      }
    }

    return result;
  }

  String? chompHash(String? theId) {
    var retVal = theId;
    while (retVal?.startsWith('#') ?? false) {
      retVal = retVal!.substring(1);
    }
    return retVal;
  }

  Future<List<FhirBase>> funcExtension(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final result = <FhirBase>[];
    final nl = await execute(context, focus, exp.parameters.first, true);
    final url = nl.first.primitiveValue;

    for (final item in focus) {
      final ext = <FhirBase>[];
      getChildrenByName(item, 'extension', ext);
      getChildrenByName(item, 'modifierExtension', ext);
      for (final ex in ext) {
        final vl = <FhirBase>[];
        getChildrenByName(ex, 'url', vl);
        if (convertListToString(vl) == url) {
          result.add(ex);
        }
      }
    }

    return result;
  }

  List<FhirBase> funcHasValue(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    if (focus.length == 1) {
      final s = convertToString(focus.first);
      return [FhirBoolean(!Utilities.noString(s))];
    } else {
      return [FhirBoolean(false)];
    }
  }

  Future<List<FhirBase>> funcEncode(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final nl = await execute(context, focus, exp.parameters.first, true);
    final param = nl.first.primitiveValue;

    if (focus.length == 1) {
      final cnt = focus.first.primitiveValue;
      if (cnt != null) {
        if (param == 'hex') {
          return [FhirString(bytesToHex(cnt.codeUnits))];
        } else if (param == 'base64') {
          return [FhirString(base64Encode(cnt.codeUnits))];
        } else if (param == 'urlbase64') {
          return [FhirString(base64UrlEncode(cnt.codeUnits))];
        }
      }
    }
    return [];
  }

  String bytesToHex(List<int> bytes) {
    const hexArray = '0123456789ABCDEF';
    final hexChars = List<String>.filled(bytes.length * 2, '');

    for (var j = 0; j < bytes.length; j++) {
      final v = bytes[j] & 0xFF;
      hexChars[j * 2] = hexArray[v >> 4];
      hexChars[j * 2 + 1] = hexArray[v & 0x0F];
    }

    return hexChars.join();
  }

  Future<List<FhirBase>> funcDecode(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final nl = await execute(context, focus, exp.parameters.first, true);
    final param = nl.first.primitiveValue;

    if (focus.length == 1) {
      final cnt = focus.first.primitiveValue;
      if (cnt != null) {
        if (param == 'hex') {
          return [FhirString(String.fromCharCodes(hexStringToByteArray(cnt)))];
        } else if (param == 'base64') {
          return [FhirString(utf8.decode(base64Decode(cnt)))];
        } else if (param == 'urlbase64') {
          return [FhirString(utf8.decode(base64Url.decode(cnt)))];
        }
      }
    }
    return [];
  }

  List<int> hexStringToByteArray(String s) {
    final len = s.length;
    if (len % 2 != 0) {
      throw ArgumentError('Hex string must have an even number of characters');
    }

    final data = List<int>.filled(len ~/ 2, 0);
    for (var i = 0; i < len; i += 2) {
      final high = int.parse(s[i], radix: 16);
      final low = int.parse(s[i + 1], radix: 16);
      data[i ~/ 2] = (high << 4) + low;
    }
    return data;
  }

  Future<List<FhirBase>> funcEscape(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final nl = await execute(context, focus, exp.parameters.first, true);
    final param = nl.first.primitiveValue;

    if (focus.length == 1) {
      final cnt = focus.first.primitiveValue;
      if (cnt != null) {
        if (param == 'html') {
          return [FhirString(cnt.escapeXml())];
        } else if (param == 'json') {
          return [FhirString(cnt.escapeJson())];
        }
      }
    }
    return [];
  }

  Future<List<FhirBase>> funcUnescape(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final nl = await execute(context, focus, exp.parameters.first, true);
    final param = nl.first.primitiveValue;

    if (focus.length == 1) {
      final cnt = focus.first.primitiveValue;
      if (cnt != null) {
        if (param == 'html') {
          return [FhirString(cnt.unescapeXml())];
        } else if (param == 'json') {
          return [FhirString(cnt.unescapeJson())];
        }
      }
    }
    return [];
  }

  List<FhirBase> funcTrim(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    if (focus.length == 1) {
      final cnt = focus.first.primitiveValue;
      if (cnt != null) return [FhirString(cnt.trim())];
    }
    return [];
  }

  Future<List<FhirBase>> funcSplit(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final nl = await execute(context, focus, exp.parameters.first, true);
    final param = nl.first.primitiveValue;

    if (focus.length == 1) {
      final cnt = focus.first.primitiveValue;
      if (cnt != null && param != null) {
        final parts = cnt.split(param);
        return parts.map(FhirString.new).toList();
      }
    }
    return [];
  }

  Future<List<FhirBase>> funcJoin(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final nl = await execute(context, focus, exp.parameters.first, true);
    final delimiter = nl.first.primitiveValue;

    final joined =
        focus.map((item) => item.primitiveValue).join(delimiter ?? '');
    return [FhirString(joined)];
  }

  List<FhirBase> funcHtmlChecks1(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    if (focus.length != 1) {
      return [FhirBoolean(false)];
    }
    return [FhirBoolean(false)];
    // final xhtml = focus.first.getXhtml();
    // if (xhtml == null) {
    //   return [FhirBoolean(false)];
    // }
    // return [FhirBoolean(checkHtmlNames(xhtml))];
  }

  List<FhirBase> funcHtmlChecks2(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    if (focus.length != 1) {
      return [FhirBoolean(false)];
    }
    return [FhirBoolean(false)];
    // final xhtml = focus.first.getXhtml();
    // if (xhtml == null) {
    //   return [FhirBoolean(false)];
    // }
    // return [FhirBoolean(checkForContent(xhtml))];
  }

  Future<List<FhirBase>> funcComparable(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    if (focus.length != 1 || focus.first.fhirType != 'Quantity') {
      return makeBoolean(false);
    }

    final nl = await execute(context, focus, exp.parameters[0], true);
    if (nl.length != 1 || nl.first.fhirType != 'Quantity') {
      return makeBoolean(false);
    }

    final s1 = getNamedValue(focus.first, 'system');
    final u1 = getNamedValue(focus.first, 'code');
    final s2 = getNamedValue(nl.first, 'system');
    final u2 = getNamedValue(nl.first, 'code');

    if (s1 == null || s2 == null || s1 != s2) {
      return makeBoolean(false);
    }
    if (u1 == null || u2 == null) {
      return makeBoolean(false);
    }
    if (u1 == u2) {
      return makeBoolean(true);
    }
    if (s1 == 'http://unitsofmeasure.org') {
      try {
        return makeBoolean(worker.ucumService.isComparable(u1, u2));
      } catch (e) {
        return makeBoolean(false);
      }
    } else {
      return makeBoolean(false);
    }
  }

  List<FhirBase> funcToInteger(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final s = convertListToString(focus);
    final result = <FhirBase>[];
    if (Utilities.isInteger(s)) {
      result.add(FhirInteger(int.parse(s)).noExtensions());
    } else if (s == 'true') {
      result.add(FhirInteger(1).noExtensions());
    } else if (s == 'false') {
      result.add(FhirInteger(0).noExtensions());
    }
    return result;
  }

  List<FhirBase> funcToString(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final result = <FhirBase>[];
    for (final item in focus) {
      final value = convertToString(item);
      result.add(FhirString(value).noExtensions());
    }

    if (result.length > 1) {
      throw makeException(
        exp,
        'FHIRPATH_NO_COLLECTION',
        ['toString', result.length],
      );
    }
    return result;
  }

  List<FhirBase> funcToBoolean(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final result = <FhirBase>[];
    if (focus.length == 1) {
      final item = focus.first;
      if (item is FhirBoolean) {
        result.add(item);
      } else if (item is FhirInteger) {
        final i = item.valueInt;
        if (i == 0) {
          result.add(FhirBoolean(false).noExtensions());
        } else if (i == 1) {
          result.add(FhirBoolean(true).noExtensions());
        }
      } else if (item is FhirDecimal) {
        final value = item.valueDouble;
        if (value == 0) {
          result.add(FhirBoolean(false).noExtensions());
        } else if (value == 1) {
          result.add(FhirBoolean(true).noExtensions());
        }
      } else if (item is FhirString) {
        final primitiveValue = item.primitiveValue?.toLowerCase();
        if (<String>['true', 't', 'yes', 'y', '1', '1.0']
            .contains(primitiveValue)) {
          result.add(FhirBoolean(true).noExtensions());
        } else if (<String>[
          'false',
          'f',
          'no',
          'n',
          '0',
          '0.0',
        ].contains(primitiveValue)) {
          result.add(FhirBoolean(false).noExtensions());
        }
      }
    }
    return result;
  }

  List<FhirBase> funcToQuantity(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final result = <FhirBase>[];
    if (focus.length == 1) {
      final item = focus.first;
      if (item is Quantity) {
        result.add(item);
      } else if (item is FhirString) {
        final q = parseQuantityString(item.primitiveValue);
        if (q != null) {
          result.add(q);
        }
      } else if (item is FhirNumber) {
        result.add(
          Quantity(
            value: FhirDecimal(item.valueNum),
            system: 'http://unitsofmeasure.org'.toFhirUri,
            code: '1'.toFhirCode,
          ),
        );
      }
    }
    return result;
  }

  Quantity? parseQuantityString(String? str) {
    if (str == null) {
      return null;
    }
    var s = str.trim();
    if (s.contains(' ')) {
      final v = s.substring(0, s.indexOf(' ')).trim();

      s = s.substring(s.indexOf(' ')).trim();

      if (!Utilities.isDecimal(v)) {
        return null;
      }

      if (s.startsWith("'") && s.endsWith("'")) {
        return quantityFromUcum(v, s.substring(1, s.length - 1));
      }

      switch (s) {
        case 'year':
        case 'years':
        case 'a':
          return quantityFromUcum(v, 'a');
        case 'month':
        case 'months':
        case 'mo_s':
          return quantityFromUcum(v, 'mo_s');
        case 'week':
        case 'weeks':
        case 'wk':
          return quantityFromUcum(v, 'wk');
        case 'day':
        case 'days':
        case 'd':
          return quantityFromUcum(v, 'd');
        case 'hour':
        case 'hours':
        case 'h':
          return quantityFromUcum(v, 'h');
        case 'minute':
        case 'minutes':
        case 'min':
          return quantityFromUcum(v, 'min');
        case 'second':
        case 'seconds':
        case 's':
          return quantityFromUcum(v, 's');
        case 'millisecond':
        case 'milliseconds':
        case 'ms':
          return quantityFromUcum(v, 'ms');
        default:
          return null;
      }
    } else {
      if (Utilities.isDecimal(s)) {
        return Quantity(
          value: FhirDecimal(int.tryParse(s) ?? double.parse(s)),
          system: FhirUri('http://unitsofmeasure.org'),
          code: FhirCode('1'),
        );
      } else {
        return null;
      }
    }
  }

  List<FhirBase> funcToDateTime(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) {
    if (focus.isEmpty) {
      return [];
    } else if (focus.length == 1) {
      if (focus.first is FhirDateTimeBase &&
          (focus.first as FhirDateTimeBase).valueString != null) {
        return [
          FhirDateTime.fromString(
            (focus.first as FhirDateTimeBase).valueString!,
          ),
        ];
      } else if (focus.first is FhirString) {
        final dateTime = (focus.first as FhirString).valueString == null
            ? null
            : FhirDateTime.tryParse((focus.first as FhirString).valueString);
        if (dateTime != null) {
          return [dateTime];
        }
        return [];
      }
    }

    throw makeException(
      expr,
      'FHIRPATH_NO_COLLECTION',
      ['toString'],
    );
  }

  List<FhirBase> funcToDate(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) {
    if (focus.isEmpty) {
      return [];
    } else if (focus.length == 1) {
      if (focus.first is FhirDateTimeBase) {
        final date =
            FhirDate.tryParse((focus.first as FhirDateTimeBase).valueString);
        if (date != null) {
          return [date];
        }
        return [];
      } else if (focus.first is FhirString) {
        final date = (focus.first as FhirString).valueString == null
            ? null
            : FhirDateTime.tryParse((focus.first as FhirString).valueString);
        if (date != null) {
          return [date];
        }
        return [];
      }
    }

    throw makeException(
      expr,
      'FHIRPATH_NO_COLLECTION',
      ['toString'],
    );
  }

  List<FhirBase> funcToTime(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) {
    if (focus.isEmpty) {
      return [];
    } else if (focus.length == 1) {
      if (focus.first is FhirTime) {
        return [focus.first];
      } else if (focus.first is FhirString) {
        final time = FhirTime.tryParse(focus.first.toString());
        if (time != null) {
          return [time];
        }
        return [];
      }
    }

    throw makeException(
      expr,
      'FHIRPATH_NO_COLLECTION',
      ['toString'],
    );
  }

  List<FhirBase> funcToDecimal(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) {
    final s = convertListToString(focus);
    final result = <FhirBase>[];
    if (Utilities.isDecimal(s)) {
      result
          .add(FhirDecimal(int.tryParse(s) ?? double.parse(s)).noExtensions());
    } else if (s == 'true') {
      result.add(FhirDecimal(1).noExtensions());
    } else if (s == 'false') {
      result.add(FhirDecimal(0).noExtensions());
    }
    return result;
  }

  List<FhirBase> funcIsDecimal(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    final result = <FhirBase>[];
    if (focus.length != 1) {
      result.add(FhirBoolean(false).noExtensions());
    } else if (focus.first is FhirInteger ||
        focus.first is FhirBoolean ||
        focus.first is FhirDecimal) {
      result.add(FhirBoolean(true).noExtensions());
    } else if (focus.first is FhirString) {
      result.add(
        FhirBoolean(Utilities.isDecimal(focus.first.toString())).noExtensions(),
      );
    } else {
      result.add(FhirBoolean(false).noExtensions());
    }
    return result;
  }

  List<FhirBoolean> funcIsInteger(List<FhirBase> focus) {
    if (focus.length != 1) {
      return [FhirBoolean(false)];
    } else if (focus.first is FhirInteger || focus.first is FhirBoolean) {
      return [FhirBoolean(true)];
    } else if (focus.first is FhirString) {
      return [FhirBoolean(Utilities.isInteger(focus.first.toString()))];
    } else {
      return [FhirBoolean(false)];
    }
  }

  List<FhirBoolean> funcIsBoolean(List<FhirBase> focus) {
    if (focus.length != 1) {
      return [FhirBoolean(false)];
    } else if (focus.first is FhirInteger) {
      final value = (focus.first as FhirInteger).valueInt;
      return [FhirBoolean(value != null && value >= 0 && value <= 1)];
    } else if (focus.first is FhirDecimal) {
      final value = (focus.first as FhirDecimal).valueDouble;
      return [FhirBoolean(value != null && (value == 0 || value == 1))];
    } else if (focus.first is FhirBoolean) {
      return [FhirBoolean(true)];
    } else if (focus.first is FhirString) {
      final value = focus.first.toString().toLowerCase();
      return [FhirBoolean(value == 'true' || value == 'false')];
    } else {
      return [FhirBoolean(false)];
    }
  }

  List<FhirBoolean> funcIsDateTime(List<FhirBase> focus) {
    if (focus.length != 1) {
      return [FhirBoolean(false)];
    } else if (focus.first is FhirDateTime || focus.first is FhirDate) {
      return [FhirBoolean(true)];
    } else if (focus.first is FhirString) {
      final regex = RegExp(
        r'(\d{4}(-\d{2}(-\d{2}(T\d{2}:\d{2}(:\d{2}(\.\d+)?)?(Z|([-+]\d{2}:\d{2})))?)?)?)',
      );
      return [FhirBoolean(regex.hasMatch(focus.first.toString()))];
    } else {
      return [FhirBoolean(false)];
    }
  }

  List<FhirBoolean> funcIsDate(List<FhirBase> focus) {
    if (focus.length != 1) {
      return [FhirBoolean(false)];
    } else if (focus.first is FhirDateTime || focus.first is FhirDate) {
      return [FhirBoolean(true)];
    } else if (focus.first is FhirString) {
      final regex = RegExp(
        r'\d{4}(-\d{2}(-\d{2})?)?',
      );
      return [FhirBoolean(regex.hasMatch(focus.first.toString()))];
    } else {
      return [FhirBoolean(false)];
    }
  }

  Future<List<FhirBase>> funcConformsTo(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) async {
    if (hostServices == null) {
      throw makeException(expr, 'FHIRPATH_HO_HOST_SERVICES', [
        'conformsTo',
      ]);
    }
    final result = <FhirBase>[];
    if (focus.length != 1) {
      result.add(FhirBoolean(false).noExtensions());
    } else {
      final url = convertListToString(
        await execute(context, focus, expr.parameters.first, true),
      );
      result.add(
        FhirBoolean(
          hostServices!.conformsToProfile(
            this,
            context.appInfo ?? '',
            focus.first,
            url,
          ),
        ).noExtensions(),
      );
    }
    return result;
  }

  List<FhirBoolean> funcIsTime(List<FhirBase> focus) {
    if (focus.length != 1) {
      return [FhirBoolean(false)];
    } else if (focus.first is FhirTime) {
      return [FhirBoolean(true)];
    } else if (focus.first is FhirString) {
      final regex = RegExp(
        r'(T)?([01]\d|2[0-3])(:[0-5]\d(:[0-5]\d(\.\d+)?)?)?(Z|([-+](0[0-9]|1[0-3]):[0-5]\d|14:00))?',
      );

      return [FhirBoolean(regex.hasMatch(focus.first.toString()))];
    } else {
      return [FhirBoolean(false)];
    }
  }

  List<FhirBoolean> funcIsString(List<FhirBase> focus) {
    if (focus.length != 1) {
      return [FhirBoolean(false)];
    } else if (focus.first is FhirString ||
        focus.first is FhirInteger ||
        focus.first is FhirDecimal ||
        focus.first is FhirDate ||
        focus.first is FhirDateTime ||
        focus.first is FhirTime ||
        focus.first is FhirBoolean ||
        focus.first is Quantity) {
      return [FhirBoolean(true)];
    } else {
      return [FhirBoolean(false)];
    }
  }

  List<FhirBoolean> funcIsQuantity(List<FhirBase> focus) {
    if (focus.length != 1) {
      return [FhirBoolean(false)];
    } else if (focus.first is FhirInteger ||
        focus.first is FhirDecimal ||
        focus.first is Quantity ||
        focus.first is FhirBoolean) {
      return [FhirBoolean(true)];
    } else if (focus.first is FhirString) {
      final quantity = parseQuantityString(focus.first.toString());
      return [FhirBoolean(quantity != null)];
    } else {
      return [FhirBoolean(false)];
    }
  }

  Future<List<FhirBase>> funcRound(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) async {
    if (focus.length != 1) {
      throw makeExceptionPlural(focus.length, expr, 'FHIRPATH_FOCUS', [
        'round',
        focus.length,
      ]);
    }

    final base = focus[0];
    final result = <FhirBase>[];

    if (base.hasType(['integer', 'decimal', 'unsignedInt', 'positiveInt'])) {
      int? precision = 0;

      if (expr.parameters.isNotEmpty) {
        final n1 = await execute(context, focus, expr.parameters[0], true);
        if (n1.length != 1) {
          throw makeException(expr, 'FHIRPATH_WRONG_PARAM_TYPE', [
            'round',
            '0',
            'Multiple Values',
            'integer',
          ]);
        }
        precision = int.tryParse(n1[0].toString());
      }

      final value =
          int.tryParse(base.toString()) ?? double.tryParse(base.toString());
      if (value == null) {
        throw makeException(expr, 'FHIRPATH_WRONG_PARAM_TYPE', [
          'round',
          '(focus)',
          base.fhirType,
          'integer or decimal',
        ]);
      }
      if (precision == null) {
        throw makeException(expr, 'FHIRPATH_WRONG_PARAM_TYPE', [
          'round',
          '(focus)',
          base.fhirType,
          'integer',
        ]);
      }
      final valueString = value.toStringAsFixed(precision);
      result.add(
        FhirDecimal(int.tryParse(valueString) ?? double.parse(valueString)),
      );
    } else {
      throw makeException(expr, 'FHIRPATH_WRONG_PARAM_TYPE', [
        'round',
        '(focus)',
        base.fhirType,
        'integer or decimal',
      ]);
    }

    return result;
  }

  List<FhirBase> funcSqrt(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) {
    if (focus.length != 1) {
      throw makeExceptionPlural(
        focus.length,
        expr,
        'FHIRPATH_FOCUS',
        ['sqrt', focus.length],
      );
    }

    final base = focus[0];
    final result = <FhirBase>[];

    if (base is FhirNumber) {
      final value = int.tryParse(base.primitiveValue ?? '') ??
          double.tryParse(base.primitiveValue ?? '');
      if (value != null) {
        try {
          final val = sqrt(value);
          if (!val.isNaN) {
            result.add(FhirDecimal(val).noExtensions());
          }
        } catch (e) {
          // Do nothing on error
        }
      }
    } else {
      throw makeException(expr, 'FHIRPATH_WRONG_PARAM_TYPE', [
        'sqrt',
        '(focus)',
        base.fhirType,
        'integer or decimal',
      ]);
    }

    return result;
  }

  List<FhirBase> funcAbs(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) {
    if (focus.length != 1) {
      throw makeExceptionPlural(
        focus.length,
        expr,
        'FHIRPATH_FOCUS',
        ['abs', focus.length],
      );
    }

    final base = focus[0];
    final result = <FhirBase>[];

    if (base is FhirNumber && base.valueNum != null) {
      if (base is FhirDecimal) {
        result.add(FhirDecimal(base.abs()).noExtensions());
      } else if (base is FhirInteger) {
        result.add(FhirInteger(base.abs()).noExtensions());
      } else if (base is FhirUnsignedInt) {
        result.add(base.noExtensions());
      } else {
        result.add((base as FhirPositiveInt).noExtensions());
      }
    } else if (base.fhirType == 'Quantity') {
      final qty = base as Quantity;
      final n = qty.value?.abs();
      if (n != null) {
        result.add(qty.copyWith(value: FhirDecimal(n)));
      }
    } else {
      throw makeException(expr, 'FHIRPATH_WRONG_PARAM_TYPE', [
        'abs',
        '(focus)',
        base.fhirType,
        'integer or decimal',
      ]);
    }

    return result;
  }

  List<FhirBase> funcCeiling(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) {
    if (focus.length != 1) {
      throw makeExceptionPlural(
        focus.length,
        expr,
        'FHIRPATH_FOCUS',
        ['ceiling', focus.length],
      );
    }

    final base = focus[0];
    final result = <FhirBase>[];

    if (base is FhirNumber) {
      final value = base.valueNum;
      if (value != null) {
        try {
          result.add(FhirInteger(value.ceil()).noExtensions());
        } catch (e) {
          // Do nothing on error
        }
      }
    } else {
      throw makeException(expr, 'FHIRPATH_WRONG_PARAM_TYPE', [
        'ceiling',
        '(focus)',
        base.fhirType,
        'integer or decimal',
      ]);
    }

    return result;
  }

  List<FhirBase> funcFloor(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) {
    if (focus.length != 1) {
      throw makeExceptionPlural(
        focus.length,
        expr,
        'FHIRPATH_FOCUS',
        ['floor', focus.length],
      );
    }

    final base = focus[0];
    final result = <FhirBase>[];

    if (base is FhirNumber) {
      final value = base.valueNum;
      if (value != null) {
        try {
          result.add(FhirInteger(value.floor()).noExtensions());
        } catch (e) {
          // Do nothing on error
        }
      }
    } else {
      throw makeException(expr, 'FHIRPATH_WRONG_PARAM_TYPE', [
        'floor',
        '(focus)',
        base.fhirType,
        'integer or decimal',
      ]);
    }

    return result;
  }

  List<FhirBase> funcLn(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) {
    if (focus.length != 1) {
      throw makeExceptionPlural(
        focus.length,
        expr,
        'FHIRPATH_FOCUS',
        ['ln', focus.length],
      );
    }

    final base = focus[0];
    final result = <FhirBase>[];

    if (base is FhirNumber) {
      final value = int.tryParse(base.primitiveValue ?? '') ??
          double.tryParse(base.primitiveValue ?? '');
      if (value != null) {
        try {
          result.add(FhirDecimal(log(value)).noExtensions());
        } catch (e) {
          // Do nothing on error
        }
      }
    } else {
      throw makeException(expr, 'FHIRPATH_WRONG_PARAM_TYPE', [
        'ln',
        '(focus)',
        base.fhirType,
        'integer or decimal',
      ]);
    }

    return result;
  }

  Future<List<FhirBase>> funcPower(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) async {
    if (focus.length != 1) {
      throw makeExceptionPlural(
        focus.length,
        expr,
        'FHIRPATH_FOCUS',
        ['power', focus.length],
      );
    }

    final base = focus[0];
    final result = <FhirBase>[];

    if (base.hasType(['integer', 'decimal', 'unsignedInt', 'positiveInt'])) {
      final n1 = await execute(context, focus, expr.parameters.first, true);
      if (n1.length != 1) {
        throw makeException(expr, 'FHIRPATH_WRONG_PARAM_TYPE', [
          'power',
          '0',
          'Multiple Values',
          'integer or decimal',
        ]);
      }

      final exponent = int.tryParse(n1[0].primitiveValue ?? '') ??
          double.tryParse(n1[0].primitiveValue ?? '');
      final value = int.tryParse(base.primitiveValue ?? '') ??
          double.tryParse(base.primitiveValue ?? '');
      if (exponent != null && value != null) {
        try {
          final res = pow(value, exponent);
          if (!res.isNaN) {
            result.add(FhirDecimal(res).noExtensions());
          }
        } catch (e) {
          // Do nothing on error
        }
      }
    } else {
      throw makeException(expr, 'FHIRPATH_WRONG_PARAM_TYPE', [
        'power',
        '(focus)',
        base.fhirType,
        'integer or decimal',
      ]);
    }

    return result;
  }

  List<FhirBase> funcSum(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) {
    FhirNumber? sum;

    for (final item in focus) {
      if (item is FhirNumber) {
        if (sum == null) {
          sum = item;
        } else {
          sum = sum + item;
        }
      } else {
        throw makeException(expr, 'FHIRPATH_WRONG_PARAM_TYPE', [
          'sum',
          '(focus)',
          item.fhirType,
          'integer or decimal',
        ]);
      }
    }

    return sum == null ? [] : [sum];
  }

  List<FhirBase> funcExp(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) {
    if (focus.isEmpty) {
      return [];
    }
    if (focus.length > 1) {
      throw makeExceptionPlural(
        focus.length,
        expr,
        'FHIRPATH_FOCUS',
        ['exp', focus.length],
      );
    }

    final base = focus.first;
    final result = <FhirBase>[];
    if (base is FhirNumber) {
      final d = int.tryParse(base.primitiveValue ?? '') ??
          double.tryParse(base.primitiveValue ?? '');
      if (d != null) {
        try {
          result.add(FhirDecimal(exp(d)).noExtensions());
        } catch (e) {
          // Do nothing on error
        }
      }
    } else {
      throw makeException(expr, 'FHIRPATH_WRONG_PARAM_TYPE', [
        'exp',
        '(focus)',
        base.fhirType,
        'integer or decimal',
      ]);
    }

    return result;
  }

  Future<List<FhirBase>> funcLog(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) async {
    if (focus.length != 1) {
      throw makeExceptionPlural(
        focus.length,
        expr,
        'FHIRPATH_FOCUS',
        ['log', focus.length],
      );
    }

    final base = focus.first;
    final result = <FhirBase>[];
    if (base.hasType(['integer', 'decimal', 'unsignedInt', 'positiveInt'])) {
      final n1 = await execute(context, focus, expr.parameters[0], true);
      if (n1.length != 1) {
        throw makeException(expr, 'FHIRPATH_WRONG_PARAM_TYPE', [
          'log',
          '0',
          'Multiple Values',
          'integer or decimal',
        ]);
      }
      final e = int.tryParse(n1.first.primitiveValue ?? '') ??
          double.tryParse(n1.first.primitiveValue ?? '');
      final d = int.tryParse(base.primitiveValue ?? '') ??
          double.tryParse(base.primitiveValue ?? '');
      if (e != null && d != null) {
        try {
          result.add(FhirDecimal(log(d) / log(e)).noExtensions());
        } catch (e) {
          // Do nothing on error
        }
      }
    } else {
      throw makeException(expr, 'FHIRPATH_WRONG_PARAM_TYPE', [
        'log',
        '(focus)',
        base.fhirType,
        'integer or decimal',
      ]);
    }

    return result;
  }

  List<FhirBase> funcTruncate(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) {
    if (focus.length != 1) {
      throw makeExceptionPlural(
        focus.length,
        expr,
        'FHIRPATH_FOCUS',
        ['truncate', focus.length],
      );
    }

    final base = focus.first;
    final result = <FhirBase>[];
    if (base.hasType(['integer', 'decimal', 'unsignedInt', 'positiveInt'])) {
      var s = base.primitiveValue ?? '';
      if (s.contains('.')) {
        s = s.split('.').first;
      }
      result.add(FhirInteger(int.parse(s)).noExtensions());
    } else {
      throw makeException(expr, 'FHIRPATH_WRONG_PARAM_TYPE', [
        'truncate',
        '(focus)',
        base.fhirType,
        'integer or decimal',
      ]);
    }

    return result;
  }

  Future<List<FhirBase>> funcLowBoundary(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) async {
    if (focus.isEmpty) {
      return makeNull();
    }
    if (focus.length > 1) {
      throw makeExceptionPlural(
        focus.length,
        expr,
        'FHIRPATH_FOCUS',
        ['lowBoundary', focus.length],
      );
    }

    int? precision;
    if (expr.parameters.isNotEmpty) {
      final n1 = await execute(context, focus, expr.parameters[0], true);
      if (n1.length != 1) {
        throw makeException(
          expr,
          'FHIRPATH_WRONG_PARAM_TYPE',
          ['lowBoundary', '0', 'Multiple Values', 'integer'],
        );
      }
      precision = int.tryParse(n1.first.primitiveValue ?? '');
    }

    final base = focus.first;
    final result = <FhirBase>[];

    if (base.hasType(['decimal', 'integer'])) {
      if (precision == null || (precision >= 0 && precision < 17)) {
        result.add(
          FhirDecimal(
            double.parse(
              (base.primitiveValue ?? '').lowBoundaryForDecimal(
                precision ?? 8,
              ),
            ),
          ).noExtensions(),
        );
      }
    } else if (base.hasType(['date'])) {
      result.add(
        FhirDateTime.fromString(
          (base.primitiveValue ?? '').lowBoundaryForDate(
            precision ?? 10,
          ),
        ).noExtensions(),
      );
    } else if (base.hasType(['dateTime'])) {
      result.add(
        FhirDateTime.fromString(
          (base.primitiveValue ?? '').lowBoundaryForDate(
            precision ?? 17,
          ),
        ).noExtensions(),
      );
    } else if (base.hasType(['time'])) {
      result.add(
        FhirTime(
          (base.primitiveValue ?? '').lowBoundaryForTime(
            precision ?? 9,
          ),
        ).noExtensions(),
      );
    } else if (base.hasType(['Quantity'])) {
      final value = getNamedValue(base, 'value');
      final copied = (base as Quantity).copyWith(
        value: FhirDecimal(
          double.parse((value ?? '').lowBoundaryForDecimal(precision ?? 8)),
        ),
      );
      result.add(copied);
    } else {
      throw makeException(
        expr,
        'FHIRPATH_WRONG_PARAM_TYPE',
        ['lowBoundary', '(focus)', base.fhirType, 'decimal or date'],
      );
    }

    return result;
  }

  Future<List<FhirBase>> funcHighBoundary(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) async {
    if (focus.isEmpty) {
      return makeNull();
    }
    if (focus.length > 1) {
      throw makeExceptionPlural(
        focus.length,
        expr,
        'FHIRPATH_FOCUS',
        ['highBoundary', focus.length],
      );
    }

    int? precision;
    if (expr.parameters.isNotEmpty) {
      final n1 = await execute(context, focus, expr.parameters[0], true);
      if (n1.length != 1) {
        throw makeException(
          expr,
          'FHIRPATH_WRONG_PARAM_TYPE',
          ['highBoundary', '0', 'Multiple Values', 'integer'],
        );
      }
      precision = int.tryParse(n1.first.primitiveValue ?? '');
    }

    final base = focus.first;
    final result = <FhirBase>[];

    if (base.hasType(['decimal', 'integer'])) {
      if (precision == null || (precision >= 0 && precision < 17)) {
        result.add(
          FhirDecimal(
            double.parse(
              (base.primitiveValue ?? '').highBoundaryForDecimal(
                precision ?? 8,
              ),
            ),
          ).noExtensions(),
        );
      }
    } else if (base.hasType(['date'])) {
      result.add(
        FhirDateTime.fromString(
          (base.primitiveValue ?? '').highBoundaryForDate(
            precision ?? 10,
          ),
        ).noExtensions(),
      );
    } else if (base.hasType(['dateTime'])) {
      result.add(
        FhirDateTime.fromString(
          (base.primitiveValue ?? '').highBoundaryForDate(
            precision ?? 17,
          ),
        ).noExtensions(),
      );
    } else if (base.hasType(['time'])) {
      result.add(
        FhirTime(
          (base.primitiveValue ?? '').highBoundaryForTime(
            precision ?? 9,
          ),
        ).noExtensions(),
      );
    } else if (base.hasType(['Quantity'])) {
      final value = getNamedValue(base, 'value');
      final copied = (base as Quantity).copyWith(
        value: FhirDecimal(
          double.parse((value ?? '').highBoundaryForDecimal(precision ?? 8)),
        ),
      );
      result.add(copied);
    } else {
      throw makeException(
        expr,
        'FHIRPATH_WRONG_PARAM_TYPE',
        ['highBoundary', '(focus)', base.fhirType, 'decimal or date'],
      );
    }

    return result;
  }

  List<FhirBase> funcPrecision(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode expr,
  ) {
    if (focus.length != 1) {
      throw makeExceptionPlural(
        focus.length,
        expr,
        'FHIRPATH_FOCUS',
        ['highBoundary', focus.length],
      );
    }

    final base = focus.first;
    final result = <FhirBase>[];

    if (base.hasType(['decimal'])) {
      result.add(
        FhirInteger(
          (base.primitiveValue ?? '').getDecimalPrecision(),
        ),
      );
    } else if (base.hasType(['date', 'dateTime'])) {
      result.add(
        FhirInteger((base.primitiveValue ?? '').getDatePrecision()),
      );
    } else if (base.hasType(['time'])) {
      result.add(
        FhirInteger((base.primitiveValue ?? '').getTimePrecision()),
      );
    } else {
      throw makeException(
        expr,
        'FHIRPATH_WRONG_PARAM_TYPE',
        ['highBoundary', '(focus)', base.fhirType, 'decimal or date'],
      );
    }

    return result;
  }

  String? getNamedValue(FhirBase base, String name) {
    final property = base.getChildByName(name);
    final propertyChildren = property?.listChildrenNames();
    if (property != null && propertyChildren!.length == 1) {
      return property.getChildByName(propertyChildren.first)?.primitiveValue;
    }
    return null;
  }

  Future<List<FhirBase>> funcSupersetOf(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) async {
    final target = await execute(
      context,
      context.focusResource == null ? focus : [context.focusResource!],
      exp.parameters[0],
      true,
    );

    var valid = true;
    for (final item in target) {
      var found = false;
      for (final t in focus) {
        if (FhirBase.compareDeep(item, t)) {
          found = true;
          break;
        }
      }
      if (!found) {
        valid = false;
        break;
      }
    }

    return [FhirBoolean(valid).noExtensions()];
  }

  List<FhirBase> funcType(
    ExecutionContext context,
    List<FhirBase> focus,
    ExpressionNode exp,
  ) {
    return focus.map(ClassTypeInfo.new).toList();
  }

  ///
  /// ***************************************
  /// UTILITIES
  /// ***************************************
  ///
  List<FhirBase> makeBoolean(bool value) {
    return <FhirBase>[FhirBoolean(value).noExtensions()];
  }

  bool isBoolean(List<FhirBase> list, bool value) {
    return list.length == 1 &&
        list.first is FhirBoolean &&
        (list.first as FhirBoolean).valueBoolean == value;
  }

  FpEquality asBool(FhirBase item, [bool narrow = false]) {
    if (item is FhirBoolean && item.valueBoolean != null) {
      return item.valueBoolean! ? FpEquality.true_ : FpEquality.false_;
    }

    if (!narrow) {
      if ((item is FhirInteger ||
              item is FhirPositiveInt ||
              item is FhirUnsignedInt) &&
          (item as FhirNumber).valueString != null) {
        return asBoolFromInt(item.valueString!);
      } else if (item is FhirDecimal && item.valueString != null) {
        return asBoolFromDec(item.valueString!);
      } else if (item is FhirString) {
        final lowerValue = (item.valueString ?? '').toLowerCase();
        if (['true', 't', 'yes', 'y', '1', '1.0'].contains(lowerValue)) {
          return FpEquality.true_;
        } else if (['false', 'f', 'no', 'n', '0', '0.0'].contains(lowerValue)) {
          return FpEquality.false_;
        }
      }
    }
    return FpEquality.null_;
  }

  FpEquality asBoolFromList(List<FhirBase> items, ExpressionNode expr) {
    if (items.isEmpty) return FpEquality.null_;

    if (items.length == 1) {
      if (items.first is FhirBoolean) {
        return asBool(items.first, true);
      }
      return FpEquality.true_;
    }

    throw makeException(
      expr,
      'FHIRPATH_UNABLE_BOOLEAN',
      items.map((e) => e.toString()).toList(),
    );
  }

  FpEquality asBoolFromInt(String value) {
    final parsedValue = int.tryParse(value);

    if (parsedValue == null) return FpEquality.null_;
    if (parsedValue == 0) return FpEquality.false_;
    if (parsedValue == 1) return FpEquality.true_;
    return FpEquality.null_;
  }

  FpEquality asBoolFromDec(String value) {
    try {
      final parsedValue = BigInt.parse(value);
      if (parsedValue == BigInt.zero) return FpEquality.false_;
      if (parsedValue == BigInt.one) return FpEquality.true_;
      return FpEquality.null_;
    } catch (e) {
      return FpEquality.null_;
    }
  }

  bool canConvertToBoolean(FhirBase item) {
    if (item is FhirBoolean) return true;

    if (item is PrimitiveType) {
      final value = item.toString().toLowerCase();
      return [
        'true',
        't',
        'yes',
        'y',
        '1',
        '1.0',
        'false',
        'f',
        'no',
        'n',
        '0',
        '0.0',
      ].contains(value);
    }

    return false;
  }

  bool convertToBoolean(List<FhirBase>? items) {
    if (items == null || items.isEmpty) return false;

    if (items.length == 1) {
      final first = items.first;
      if (first is FhirBoolean) {
        return first.valueBoolean ?? false;
      }

      final lowerValue = first.toString().toLowerCase();
      if (['true', 't', 'yes', 'y', '1', '1.0'].contains(lowerValue)) {
        return true;
      } else if (['false', 'f', 'no', 'n', '0', '0.0'].contains(lowerValue)) {
        return false;
      }
    }

    return items.isNotEmpty;
  }

  FpEquality asBoolList(List<FhirBase> items, ExpressionNode expr) {
    if (items.isEmpty) {
      return FpEquality.null_;
    } else if (items.length == 1) {
      final eqBool = asBool(items.first);
      return eqBool == FpEquality.null_ ? FpEquality.true_ : eqBool;
    } else {
      throw makeException(
        expr,
        'FHIRPATH_UNABLE_BOOLEAN',
        [convertListToString(items)],
      );
    }
  }

  FpEquality boolToTriState(bool b) {
    return b ? FpEquality.true_ : FpEquality.false_;
  }

  void addTypeAndDescendents(
    List<StructureDefinition> sdl,
    StructureDefinition dt,
    List<StructureDefinition> types,
  ) {
    sdl.add(dt);
    for (final sd in types) {
      if (sd.baseDefinition != null &&
          sd.baseDefinition.toString() == dt.url.toString() &&
          sd.derivation == TypeDerivationRule.specialization) {
        addTypeAndDescendents(sdl, sd, types);
      }
    }
  }

  List<FhirBase> resolveConstantWithBase(
    ExecutionContext context,
    FhirBase? constant,
    bool beforeContext,
    ExpressionNode expr,
    bool explicitConstant,
  ) {
    if (constant == null) {
      return [];
    }

    if (constant is! FHIRConstant) {
      return [constant];
    }

    final c = constant;
    if (c.value.startsWith('%')) {
      final varName = c.value.substring(1);
      if (context.hasDefinedVariable(varName)) {
        return context.getDefinedVariable(varName);
      }
      final resolved = resolveConstantWithString(
        context,
        c.value,
        beforeContext,
        expr,
        explicitConstant,
      );
      return resolved;
    } else if (c.value.startsWith('@')) {
      return [
        processDateConstant(context.appInfo, c.value.substring(1), expr),
      ];
    } else {
      throw makeException(expr, 'FHIRPATH_UNKNOWN_CONSTANT', [c.value]);
    }
  }

  List<FhirBase> resolveConstantWithString(
    ExecutionContext context,
    String s,
    bool beforeContext,
    ExpressionNode expr,
    bool explicitConstant,
  ) {
    switch (s) {
      case '%sct':
        return [FhirString('http://snomed.info/sct')..noExtensions()];
      case '%loinc':
        return [FhirString('http://loinc.org')..noExtensions()];
      case '%ucum':
        return [FhirString('http://unitsofmeasure.org')..noExtensions()];
      case '%resource':
        if (context.focusResource == null) {
          throw makeException(
            expr,
            'FHIRPATH_CANNOT_USE',
            ['%resource', 'no focus resource'],
          );
        }
        return [context.focusResource!];
      case '%rootResource':
        if (context.rootResource == null) {
          throw makeException(
            expr,
            'FHIRPATH_CANNOT_USE',
            ['%rootResource', 'no focus resource'],
          );
        }
        return [context.rootResource!];
      case '%context':
        return context.context == null ? [] : [context.context!];
      case '%us-zip':
        return [FhirString('[0-9]{5}(-[0-9]{4}){0,1}')..noExtensions()];
      default:
        if (s.startsWith('%`vs-')) {
          return [
            FhirString(
              'http://hl7.org/fhir/ValueSet/${s.substring(5, s.length - 1)}',
            )..noExtensions(),
          ];
        } else if (s.startsWith('%`cs-')) {
          return [
            FhirString('http://hl7.org/fhir/${s.substring(5, s.length - 1)}')
              ..noExtensions(),
          ];
        } else if (s.startsWith('%`ext-')) {
          return [
            FhirString(
              'http://hl7.org/fhir/StructureDefinition/${s.substring(6, s.length - 1)}',
            )..noExtensions(),
          ];
        } else if (hostServices == null) {
          throw makeException(expr, 'FHIRPATH_UNKNOWN_CONSTANT', [s]);
        } else {
          return hostServices!.resolveConstant(
            this,
            context.appInfo,
            s.substring(1),
            beforeContext,
            explicitConstant,
          );
        }
    }
  }

  FhirBase processDateConstant(
    Object? appInfo,
    String value,
    ExpressionNode expr,
  ) {
    FhirBase? result;

    if (value.startsWith('T')) {
      result = FhirTime.tryParse(value.replaceFirst('T', ''));
    } else if (value.contains('T')) {
      result = FhirDateTime.tryParse(value) ?? FhirTime.tryParse(value);
    } else {
      result = FhirDate.tryParse(value) ??
          FhirDateTime.tryParse(value) ??
          FhirTime.tryParse(value);
    }
    if (result != null) return result;
    throw makeException(
      expr,
      'FHIRPATH_INVALID_DATE',
      [value],
    );
  }

  String removeTrailingZeros(String s) {
    if (s.noString()) {
      return '';
    }

    var i = s.length - 1;
    var done = false;
    var dot = false;

    // Traverse the string from the end
    while (i > 0 && !done) {
      if (s[i] == '.') {
        dot = true;
        i--;
        done = true; // Stop if a dot is encountered
      } else if (!dot && s[i] == '0') {
        i--;
      } else {
        done = true;
      }
    }

    // If no dot is encountered, return the original string
    if (!dot) {
      return s;
    }

    // Otherwise, return the processed substring
    return s.substring(0, i + 1);
  }

  bool decEqual(String left, String right) {
    return removeTrailingZeros(left) == removeTrailingZeros(right);
  }

  bool? datesEqual(FhirDateTimeBase left, FhirDateTimeBase right) {
    return left.isEqual(right);
  }

  bool? doEquals(FhirBase left, FhirBase right) {
    if (left is Quantity && right is Quantity) {
      return qtyEqual(left, right);
    } else if (left is Quantity &&
        right is FhirNumber &&
        right.valueNum != null) {
      return qtyEqual(
        left,
        Quantity(
          value: FhirDecimal(right.valueNum),
          system: 'http://unitsofmeasure.org'.toFhirUri,
          code: '1'.toFhirCode,
        ),
      );
    } else if (left is FhirDateTimeBase && right is FhirDateTimeBase) {
      return datesEqual(left, right);
    } else if (left is FhirDecimal || right is FhirDecimal) {
      return decEqual(left.toString(), right.toString());
    } else if (left.isPrimitive && right.isPrimitive) {
      return left.primitiveValue == right.primitiveValue;
    } else {
      return FhirBase.compareDeep(left, right);
    }
  }

  bool? qtyEqual(Quantity left, Quantity right) {
    if (left.value == null && right.value == null) {
      return true;
    }
    if (left.value == null || right.value == null) {
      return null;
    }
    final dl = qtyToCanonicalPair(left);
    final dr = qtyToCanonicalPair(right);

    if (dl != null && dr != null) {
      if (dl.unit == dr.unit) {
        return doEquals(
          FhirDecimal(dl.value.asDouble),
          FhirDecimal(dr.value.asDouble),
        );
      } else {
        return false;
      }
    }
    if (left.code != null || right.code != null) {
      if (!(left.code != null && right.code != null) ||
          left.code != right.code) {
        return null;
      }
    } else if (left.unit == null || right.unit == null) {
      if (!(left.unit != null && right.unit != null) ||
          left.unit != right.unit) {
        return null;
      }
    }
    return doEquals(left, right);
  }

  Pair? qtyToCanonicalPair(Quantity q) {
    String? ucum;
    switch (q.unit?.valueString) {
      case 'year':
      case 'years':
        ucum = 'a';
      case 'month':
      case 'months':
        ucum = 'mo';
      case 'week':
      case 'weeks':
        ucum = 'wk';
      case 'day':
      case 'days':
        ucum = 'd';
      case 'hour':
      case 'hours':
        ucum = 'h';
      case 'minute':
      case 'minutes':
        ucum = 'min';
      case 'second':
      case 'seconds':
        ucum = 's';
      case 'millisecond':
      case 'milliseconds':
        ucum = 'ms';
    }

    if (q.system?.toString() != 'http://unitsofmeasure.org' && ucum == null) {
      return null;
    }
    try {
      final p = Pair(
        value: UcumDecimal.fromNum(q.value!.valueDouble!),
        unit: q.code?.toString() ?? ucum ?? '1',
      );
      return worker.ucumService.getCanonicalForm(p);
    } catch (e) {
      return null;
    }
  }

  FhirDecimal? qtyToCanonicalDecimal(Quantity q) {
    if (q.system?.toString() != 'http://unitsofmeasure.org') {
      return null;
    }
    try {
      final pair = Pair(
        value: UcumDecimal.fromNum(q.value!.valueDouble!),
        unit: q.code?.toString() ?? '1',
      );
      final canonicalPair = worker.ucumService.getCanonicalForm(pair);
      return FhirDecimal(canonicalPair.value.asDouble);
    } catch (e) {
      return null;
    }
  }

  Quantity pairToQty(Pair pair) {
    return Quantity(
      value: FhirDecimal(pair.value.asDouble),
      system: FhirUri('http://unitsofmeasure.org'),
      code: pair.unit.isEmpty ? null : pair.unit.toFhirCode,
      disallowExtensions: true,
    );
  }

  Pair? qtyToPair(Quantity q) {
    if (q.system?.toString() != 'http://unitsofmeasure.org') {
      return null;
    }
    try {
      return Pair(
        value: UcumDecimal.fromNum(q.value!.valueDouble!),
        unit: q.code?.toString() ?? '1',
      );
    } catch (e) {
      return null;
    }
  }

  bool? qtyEquivalent(Quantity left, Quantity right) {
    if (left.value == null && right.value == null) {
      return true;
    }
    if (left.value == null || right.value == null) {
      return null;
    }
    final dl = qtyToCanonicalPair(left);
    final dr = qtyToCanonicalPair(right);

    if (dl != null && dr != null) {
      if (dl.unit == dr.unit) {
        return doEquivalent(
          FhirDecimal(dl.value.asDouble),
          FhirDecimal(dr.value.asDouble),
        );
      } else {
        return false;
      }
    }
    if (left.code != null || right.code != null) {
      if (!(left.code != null && right.code != null) ||
          left.code != right.code) {
        return null;
      }
    } else if (left.unit == null || right.unit == null) {
      if (!(left.unit != null && right.unit != null) ||
          left.unit != right.unit) {
        return null;
      }
    }
    return doEquivalent(left.value!, right.value!);
  }

  String convertListToString(List<FhirBase> items) {
    final b = StringBuffer();
    var first = true;
    for (final item in items) {
      if (first) {
        first = false;
      } else {
        b.write(',');
      }

      b.write(convertToString(item));
    }
    return b.toString();
  }

  String convertToString(FhirBase item) {
    if (item is PrimitiveType) {
      return item.valueString ?? '';
    } else if (item is Quantity) {
      final q = item.copyWith();
      if (q.unit != null &&
          [
            'year',
            'years',
            'month',
            'months',
            'week',
            'weeks',
            'day',
            'days',
            'hour',
            'hours',
            'minute',
            'minutes',
            'second',
            'seconds',
            'millisecond',
            'milliseconds',
          ].contains(q.unit?.valueString) &&
          (q.system == null ||
              q.system.toString() == 'http://unitsofmeasure.org')) {
        return '${q.value} ${q.unit}';
      }
      if (q.system.toString() == 'http://unitsofmeasure.org') {
        final u = "'${q.code}'";
        return '${q.value} $u';
      } else {
        return item.toString();
      }
    } else {
      return item.toString();
    }
  }

  List<FhirBase> makeNull() => <FhirBase>[];

  bool? doEquivalent(FhirBase left, FhirBase right) {
    if (left is Quantity && right is Quantity) {
      return qtyEquivalent(left, right);
    }
    if (left is Quantity && right is FhirNumber) {
      return qtyEquivalent(
        left,
        Quantity(
          value: FhirDecimal(right.valueNum),
          system: 'http://unitsofmeasure.org'.toFhirUri,
          code: '1'.toFhirCode,
        ),
      );
    }
    if (left is FhirBoolean && right is FhirBoolean) {
      return doEquals(left, right);
    }
    if (left is FhirNumber && right is FhirNumber) {
      return equivalentNumber(left.valueNum, right.valueNum);
    }
    if (left is FhirDateTimeBase && right is FhirDateTimeBase) {
      return left.isEquivalent(right);
    }
    if (FHIR_TYPES_STRING.contains(left.fhirType) &&
        FHIR_TYPES_STRING.contains(right.fhirType)) {
      return equivalentString(
        convertToString(left),
        convertToString(right),
      );
    }
    if (left is PrimitiveType && right is PrimitiveType) {
      return equivalentString(
        left.toString(),
        right.toString(),
      );
    }
    if (!left.isPrimitive && !right.isPrimitive) {
      return equalsDeepWithNull(left, right);
    } else {
      return false;
    }
  }

  bool equivalentNumber(num? lhsNum, num? rhsNum) {
    if (lhsNum == null && rhsNum == null) {
      return true;
    } else if (lhsNum == null || rhsNum == null) {
      return false;
    }
    final sigDigsLhs = lhsNum
        .toStringAsExponential()
        .split('e')
        .first
        .replaceAll('.', '')
        .length;
    final sigDigsRhs = rhsNum
        .toStringAsExponential()
        .split('e')
        .first
        .replaceAll('.', '')
        .length;
    if (sigDigsLhs < sigDigsRhs) {
      return lhsNum.toStringAsPrecision(sigDigsLhs) ==
          rhsNum.toStringAsPrecision(sigDigsLhs);
    } else {
      return lhsNum.toStringAsPrecision(sigDigsRhs) ==
          rhsNum.toStringAsPrecision(sigDigsRhs);
    }
  }

  bool equivalentNumberAsString(String? l, String? r) {
    if ((l == null || l.isEmpty) && (r == null || r.isEmpty)) {
      return true;
    }
    if ((l == null || l.isEmpty) || (r == null || r.isEmpty)) {
      return false;
    }
    if (!l.isDecimal() || !r.isDecimal()) {
      return false;
    }

    final dl = int.tryParse(l) ?? double.parse(l);
    final dr = int.tryParse(r) ?? double.parse(r);

    return dl == dr;
  }

  bool equivalentString(String l, String r) {
    if (Utilities.noString(l) && Utilities.noString(r)) return true;
    if (Utilities.noString(l) || Utilities.noString(r)) return false;
    return l.toLowerCase() == r.toLowerCase();
  }

  FhirDateTimeBase dateAdd(
    FhirDateTimeBase d,
    Quantity q,
    bool negate,
    ExpressionNode holder,
  ) {
    var result = d.copyWith() as FhirDateTimeBase;

    final value =
        negate ? -q.value!.valueNum!.toInt() : q.value!.valueNum!.toInt();
    final unit = q.code?.valueString ?? q.unit?.valueString;

    switch (unit) {
      case 'years':
      case 'year':
        result = (result + ExtendedDuration(years: value))!;
      case 'a':
        throw PathEngineException(
          'Error in date arithmetic: attempt to add a definite quantity '
          'duration time unit $unit',
        );
      case 'months':
      case 'month':
        result = (result + ExtendedDuration(months: value))!;
      case 'mo':
        throw PathEngineException(
          'Error in date arithmetic: attempt to add a definite quantity '
          'duration time unit $unit',
          location: holder.opStart,
          expression: holder.toString(),
        );
      case 'weeks':
      case 'week':
      case 'wk':
        result = (result + ExtendedDuration(weeks: value))!;
      case 'days':
      case 'day':
      case 'd':
        result = (result + ExtendedDuration(days: value))!;
      case 'hours':
      case 'hour':
      case 'h':
        result = (result + ExtendedDuration(hours: value))!;
      case 'minutes':
      case 'minute':
      case 'min':
        result = (result + ExtendedDuration(minutes: value))!;
      case 'seconds':
      case 'second':
      case 's':
        result = (result + ExtendedDuration(seconds: value))!;
      case 'milliseconds':
      case 'millisecond':
      case 'ms':
        result = (result + ExtendedDuration(milliseconds: value))!;
      default:
        throw PathEngineException(
          'Error in date arithmetic: unrecognized time unit $unit',
        );
    }

    return result;
  }

  int? compareDateTimeElements(
    FhirBase theL,
    FhirBase theR,
    bool theEquivalenceTest,
  ) {
    final left =
        theL is FhirDateTime ? theL : FhirDateTime.tryParse(theL.toString());
    final right =
        theR is FhirDateTime ? theR : FhirDateTime.tryParse(theR.toString());

    if (left == null || right == null) {
      return null;
    }

    return left.compareTo(right);
  }

  int? compareTimeElements(
    FhirBase theL,
    FhirBase theR,
    bool theEquivalenceTest,
  ) {
    final left = theL is FhirTime ? theL : FhirTime.tryParse(theL.toString());
    final right = theR is FhirTime ? theR : FhirTime.tryParse(theR.toString());

    if (left == null || right == null) {
      return null;
    }

    return left.compareTo(right);
  }

  bool doContains(List<FhirBase> list, FhirBase item) {
    for (final test in list) {
      final eq = doEquals(test, item);
      if (eq != null && eq == true) {
        return true;
      }
    }
    return false;
  }

  Future<bool> isKnownType(String? tn) async {
    if (tn == null) {
      return false;
    } else if (!tn.contains('.')) {
      if ([
            'SimpleTypeInfo',
            'ClassInfo',
          ].contains(tn) ||
          tn.isFhirPrimitive ||
          tn.isBackboneElement ||
          tn.isFhirBackboneType ||
          tn.isFhirDataType ||
          tn.isFhirQuantity ||
          tn.isFhirResourceType) {
        return true;
      }
      try {
        return ((await _fetchTypeDefinition(tn)) != null);
      } catch (e) {
        return false;
      }
    }
    final t = tn.split('.');
    if (t.length != 2) {
      return false;
    }
    if ('System' == t[0]) {
      return [
        'String',
        'Boolean',
        'Integer',
        'Decimal',
        'Quantity',
        'DateTime',
        'Time',
        'SimpleTypeInfo',
        'ClassInfo',
      ].contains(t[1]);
    } else if ('FHIR' == t[0]) {
      if (tn.startsWith('FHIR.')) {
        final newTn = tn.substring(5);
        if ([
              'SimpleTypeInfo',
              'ClassInfo',
            ].contains(newTn) ||
            newTn.isFhirPrimitive ||
            newTn.isBackboneElement ||
            newTn.isFhirBackboneType ||
            newTn.isFhirDataType ||
            newTn.isFhirQuantity ||
            newTn.isFhirResourceType) {
          return true;
        }
      }

      try {
        return ((await _fetchTypeDefinition(t[1])) != null);
      } catch (e) {
        return false;
      }
    } else {
      return false;
    }
  }

  bool compareTypeNames(String left, String right) {
    if (doNotEnforceAsCaseSensitive) {
      return left.equalsIgnoreCase(right);
    } else {
      return left == right;
    }
  }

  ExecutionContext changeThisExecutionContext(
    ExecutionContext context,
    FhirBase newThis,
  ) {
    final newContext = ExecutionContext(
      appInfo: context.appInfo,
      focusResource: context.focusResource,
      rootResource: context.rootResource,
      context: context.context,
      thisItem: newThis,
    );
    // append all of the defined variables from the context into the new context
    if (context.definedVariables != null) {
      for (final s in context.definedVariables?.keys ?? <String>[]) {
        newContext.setDefinedVariable(s, context.definedVariables![s], worker);
      }
    }
    return newContext;
  }

  ExecutionTypeContext changeThisExecutionTypeContext(
    ExecutionTypeContext context,
    TypeDetails newThis,
  ) {
    final newContext = ExecutionTypeContext(
      context.appInfo,
      context.resource,
      context.context,
      newThis,
    );
    // append all of the defined variables from the context into the new context
    if (context.definedVariables != null) {
      for (final s in context.definedVariables?.keys ?? <String>[]) {
        newContext.setDefinedVariable(s, context.definedVariables![s]);
      }
    }
    return newContext;
  }

  List<FhirBase> baseToList(FhirBase b) {
    return [b];
  }

  void writeToLog(String name, List<FhirBase> contents) {
    if (hostServices == null || !hostServices!.fpLog(name, contents)) {
      if (fpLog.length > 0) {
        fpLog.write('; ');
      }
      fpLog
        ..write(name)
        ..write(': ');
      var first = true;
      for (final b in contents) {
        if (first) {
          first = false;
        } else {
          fpLog.write(',');
        }
        fpLog.write(convertToString(b));
      }
    }
  }

  String forLog() {
    if (fpLog.length > 0) {
      return ' ($fpLog)';
    } else {
      return '';
    }
  }

  bool hasType(FhirBase b, List<String> names) {
    final t = b.fhirType;
    for (final n in names) {
      if (n.equalsIgnoreCase(t)) return true;
    }
    return false;
  }

  Quantity quantityFromUcum(String v, String code) {
    return Quantity(
      value: FhirDecimal(int.tryParse(v) ?? double.parse(v)),
      system: FhirUri('http://unitsofmeasure.org'),
      code: FhirCode(code),
    );
  }
}
