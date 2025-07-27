// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: avoid_equals_and_hash_code_on_mutable_classes,
// ignore_for_file: constant_identifier_names

import 'dart:collection';

import 'package:collection/collection.dart';
import 'package:fhir_r5/fhir_r5.dart';
import 'package:fhir_r5_path/fhir_r5_path.dart';

/// The result of a ValueSet expansion
class ValueSetExpansionOutcome {
  /// Create a new value set expansion outcome with expanded ValueSet
  ValueSetExpansionOutcome(this.valueSet)
      : error = null,
        errorClass = null;

  /// Create a new value set expansion outcome with an error
  ValueSetExpansionOutcome.withError(
    this.valueSet,
    this.error,
    this.errorClass,
  ) {
    if (error != null) allErrors.add(error!);
  }

  /// Create a new value set expansion outcome from a service error
  ValueSetExpansionOutcome.fromService(
    this.error,
    this.errorClass,
  ) : valueSet = null {
    if (error != null) allErrors.add(error!);
  }

  /// Create a new value set expansion outcome from a service error list
  ValueSetExpansionOutcome.fromErrorList(
    this.error,
    this.errorClass,
    List<String> errors,
  ) : valueSet = null {
    allErrors.addAll(errors);
    if (error != null && !allErrors.contains(error)) {
      allErrors.add(error!);
    }
  }

  /// The expanded value set
  final ValueSet? valueSet;

  /// The error message
  final String? error;

  /// The error class
  final TerminologyServiceErrorClass? errorClass;

  /// The link to the transaction (for external terminology services)
  String? txLink;

  /// The list of all errors
  final List<String> allErrors = [];

  /// Check if the outcome is ok
  bool get isOk => allErrors.isEmpty && error == null;
}

/// A token to identify a cached expansion
class ValueSetCacheToken {
  /// Create a new cache token
  const ValueSetCacheToken(
    this.valueSetUrl,
    this.valueSetVersion,
    this.hierarchical,
  );

  /// The value set URL
  final String? valueSetUrl;

  /// The value set version
  final String? valueSetVersion;

  /// Whether the expansion is hierarchical
  final bool hierarchical;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ValueSetCacheToken &&
          runtimeType == other.runtimeType &&
          valueSetUrl == other.valueSetUrl &&
          valueSetVersion == other.valueSetVersion &&
          hierarchical == other.hierarchical;

  @override
  int get hashCode => Object.hash(valueSetUrl, valueSetVersion, hierarchical);
}

/// Interface for a value set expander
// ignore: one_member_abstracts
abstract class ValueSetExpander {
  /// Expand a value set
  Future<ValueSetExpansionOutcome> expand(
    ValueSet source,
    Parameters? parameters,
  );
}

/// A simple in-memory ValueSet expander
class ValueSetExpanderSimple implements ValueSetExpander {
  /// Create a new ValueSet expander
  ValueSetExpanderSimple(this.context, [this.logger]);

  /// The worker context
  final WorkerContext context;

  /// Optional logger
  final LoggingService? logger;

  /// List of all errors encountered during expansion
  final List<String> _allErrors = [];

  /// Get all errors from the expansion
  List<String> getAllErrors() => List.unmodifiable(_allErrors);

  @override
  Future<ValueSetExpansionOutcome> expand(
    ValueSet source,
    Parameters? parameters,
  ) async {
    _allErrors.clear();

    // Check if the ValueSet is already expanded
    if (source.expansion != null) {
      return ValueSetExpansionOutcome(source);
    }

    // Check that the ValueSet has a composition
    if (source.compose == null ||
        (source.compose!.include.isEmpty &&
            (source.compose!.exclude == null ||
                source.compose!.exclude!.isEmpty))) {
      _allErrors.add('ValueSet has no compose element, or the compose element '
          'has no include or exclude element');
      return ValueSetExpansionOutcome.withError(
        null,
        'ValueSet has no compose element, or the compose element '
        'has no include or exclude element',
        TerminologyServiceErrorClass.valueSetUnsupported,
      );
    }

    try {
      // Create a copy of the ValueSet to expand
      final result = source.toJson();
      var expansion = ValueSet.fromJson(result);

      // Clear any existing expansion
      // ignore: avoid_redundant_argument_values
      expansion = expansion.copyWith(expansion: null);

      // Extract parameters
      final excludeNested = getParameterBool(parameters, 'excludeNested', true);
      final includeDefinition =
          getParameterBool(parameters, 'includeDefinition', false);

      // Set up the expansion
      var vsExpansion = ValueSetExpansion(
        identifier: FhirUri(DateTime.now().millisecondsSinceEpoch.toString()),
        timestamp: FhirDateTime.fromDateTime(DateTime.now()),
      );

      expansion = expansion.copyWith(expansion: vsExpansion);

      // Process includes
      for (final include in source.compose!.include) {
        vsExpansion = await processIncludeExclude(
          include,
          vsExpansion,
          true,
          excludeNested,
          includeDefinition,
        );
      }

      // Process excludes
      if (source.compose!.exclude != null) {
        for (final exclude in source.compose!.exclude!) {
          vsExpansion = await processIncludeExclude(
            exclude,
            vsExpansion,
            false,
            excludeNested,
            includeDefinition,
          );
        }
      }

      // Return the expanded ValueSet
      return ValueSetExpansionOutcome(expansion);
    } catch (e) {
      _allErrors.add('Error expanding ValueSet: $e');
      return ValueSetExpansionOutcome.withError(
        null,
        'Error expanding ValueSet: $e',
        TerminologyServiceErrorClass.unknown,
      );
    }
  }

  /// Process an include or exclude component
  Future<ValueSetExpansion> processIncludeExclude(
    ValueSetInclude component,
    ValueSetExpansion expansion,
    bool include,
    bool excludeNested,
    bool includeDefinition,
  ) async {
    if (component.system == null) {
      _allErrors.add(
        'ValueSet compose ${include ? 'include' : 'exclude'} has no system',
      );
      return expansion;
    }

    final system = component.system!.valueString!;
    var newExpansion = expansion;

    // Handle concept lists (direct list of included codes)
    if (component.concept != null && component.concept!.isNotEmpty) {
      for (final concept in component.concept!) {
        if (include) {
          newExpansion = addCodeToExpansion(
            system,
            concept,
            newExpansion,
            includeDefinition,
          );
        } else {
          newExpansion = removeCodeFromExpansion(
            system,
            concept.code.valueString!,
            newExpansion,
          );
        }
      }
    }

    // Handle filters (rules for including codes)
    if (component.filter != null && component.filter!.isNotEmpty) {
      newExpansion = await processFilters(
        component,
        system,
        expansion,
        include,
        excludeNested,
        includeDefinition,
      );
    }

    // Handle valueSet references
    // (includes all codes from the referenced ValueSet)
    if (component.valueSet != null && component.valueSet!.isNotEmpty) {
      for (final vsRef in component.valueSet!) {
        newExpansion = await processValueSetReference(
          vsRef.valueString!,
          expansion,
          include,
          excludeNested,
          includeDefinition,
        );
      }
    }
    return newExpansion;
  }

  /// Process filters in a component
  Future<ValueSetExpansion> processFilters(
    ValueSetInclude component,
    String system,
    ValueSetExpansion expansion,
    bool include,
    bool excludeNested,
    bool includeDefinition,
  ) async {
    // Get the CodeSystem
    final cs = await context.fetchCodeSystem(system);
    if (cs == null) {
      _allErrors.add('Code system $system not found');
      return expansion;
    }

    // We can only process filters for code systems
    // that we have complete content for
    if (cs.content != CodeSystemContentMode.complete) {
      _allErrors.add('Cannot process filters for code system '
          '$system with content mode ${cs.content}');
      return expansion;
    }

    var newExpansion = expansion;

    // Process each filter
    for (final filter in component.filter!) {
      final property = filter.property.valueString!;
      final op = filter.op;
      final value = filter.value.valueString!;

      // Find all concepts that match the filter
      final matchingConcepts =
          findConceptsMatchingFilter(cs.concept!, property, op, value);

      for (final concept in matchingConcepts) {
        if (include) {
          newExpansion = addCodeToExpansion(
            system,
            ValueSetConcept(
              code: concept.code,
              display: concept.display,
            ),
            newExpansion,
            includeDefinition,
          );

          // Add child concepts for hierarchical expansions if needed
          if (!excludeNested) {
            newExpansion = addChildConcepts(
              concept,
              system,
              newExpansion,
              includeDefinition,
            );
          }
        } else {
          newExpansion = removeCodeFromExpansion(
            system,
            concept.code.valueString!,
            newExpansion,
          );

          // Remove child concepts too
          if (!excludeNested) {
            newExpansion =
                await removeChildConcepts(concept, system, newExpansion);
          }
        }
      }
    }
    return newExpansion;
  }

  /// Find concepts matching a filter
  List<CodeSystemConcept> findConceptsMatchingFilter(
    List<CodeSystemConcept> concepts,
    String property,
    FilterOperator op,
    String value,
  ) {
    final matches = <CodeSystemConcept>[];

    for (final concept in concepts) {
      if (matchesFilter(concept, property, op, value)) {
        matches.add(concept);
      }

      // Check child concepts
      if (concept.concept != null && concept.concept!.isNotEmpty) {
        matches.addAll(
          findConceptsMatchingFilter(
            concept.concept!,
            property,
            op,
            value,
          ),
        );
      }
    }

    return matches;
  }

  /// Check if a concept matches a filter
  bool matchesFilter(
    CodeSystemConcept concept,
    String property,
    FilterOperator op,
    String value,
  ) {
    // Handle special property for code
    if (property == 'code') {
      final code = concept.code.valueString!;

      switch (op.toString()) {
        case '=':
          return code == value;
        case 'is-a':
          return code == value || isChildOf(concept, value);
        case 'descendent-of':
          return isChildOf(concept, value);
        case 'is-not-a':
          return code != value && !isChildOf(concept, value);
        case 'regex':
          return RegExp(value).hasMatch(code);
        case 'in':
          return value.split(',').contains(code);
        case 'not-in':
          return !value.split(',').contains(code);
        case 'generalizes':
          return false; // Not implemented for 'code'
        case 'exists':
          return true; // Code always exists
        default:
          return false;
      }
    }

    // Handle special property for display
    if (property == 'display') {
      final display = concept.display?.valueString ?? '';

      switch (op.toString()) {
        case '=':
          return display == value;
        case 'regex':
          return RegExp(value).hasMatch(display);
        case 'in':
          return value.split(',').contains(display);
        case 'not-in':
          return !value.split(',').contains(display);
        case 'exists':
          return concept.display != null;
        default:
          return false;
      }
    }

    // Check concept properties
    if (concept.property != null) {
      for (final prop in concept.property!) {
        if (prop.code.valueString! == property) {
          return matchesPropertyValue(prop.valueX, op, value);
        }
      }
    }

    // Property not found
    return op == FilterOperator.exists && value.toLowerCase() == 'false';
  }

  /// Check if a property value matches a filter
  bool matchesPropertyValue(
    DataType? propValue,
    FilterOperator op,
    String value,
  ) {
    if (propValue == null) {
      return op == FilterOperator.exists && value.toLowerCase() == 'false';
    }

    // Convert the property value to a string for comparison
    String strValue;
    if (propValue is FhirCode) {
      strValue = propValue.valueString ?? '';
    } else if (propValue is Coding) {
      strValue = propValue.code?.valueString ?? '';
    } else if (propValue is CodeableConcept) {
      strValue = propValue.coding?.firstOrNull?.code?.valueString ?? '';
    } else if (propValue is FhirBoolean) {
      strValue = propValue.valueString ?? '';
    } else if (propValue is FhirString) {
      strValue = propValue.valueString ?? '';
    } else if (propValue is FhirUri) {
      strValue = propValue.valueString ?? '';
    } else if (propValue is FhirDateTime) {
      strValue = propValue.valueString ?? '';
    } else {
      strValue = propValue.toJson().toString();
    }

    switch (op.toString()) {
      case '=':
        return strValue == value;
      case 'regex':
        return RegExp(value).hasMatch(strValue);
      case 'in':
        return value.split(',').contains(strValue);
      case 'not-in':
        return !value.split(',').contains(strValue);
      case 'exists':
        return value.toLowerCase() == 'true';
      default:
        return false;
    }
  }

  /// Check if a concept is a child of another concept
  bool isChildOf(CodeSystemConcept concept, String parentCode) {
    if (concept.concept == null) {
      return false;
    }

    for (final child in concept.concept!) {
      if (child.code.valueString! == parentCode) {
        return true;
      }

      if (isChildOf(child, parentCode)) {
        return true;
      }
    }

    return false;
  }

  /// Process a ValueSet reference in include/exclude
  Future<ValueSetExpansion> processValueSetReference(
    String vsRef,
    ValueSetExpansion expansion,
    bool include,
    bool excludeNested,
    bool includeDefinition,
  ) async {
    // Fetch the referenced ValueSet
    final vs = await context.fetchResource<ValueSet>(uri: vsRef);
    if (vs == null) {
      _allErrors.add('Referenced ValueSet $vsRef not found');
      return expansion;
    }

    var newExpansion = expansion;

    // If the ValueSet is already expanded, use its expansion
    if (vs.expansion != null && vs.expansion!.contains != null) {
      for (final item in vs.expansion!.contains!) {
        if (include) {
          newExpansion = newExpansion.copyWith(
            contains: [
              ...newExpansion.contains ?? <ValueSetContains>[],
              item,
            ],
          );
        } else {
          newExpansion = removeCodeFromExpansion(
            item.system!.valueString!,
            item.code!.valueString!,
            newExpansion,
          );
        }
      }
      return newExpansion;
    }

    // If not expanded, we need to expand it first
    // This would typically call the expand method,
    // but to avoid circular references
    // we'll handle it directly for the referenced ValueSet
    if (vs.compose != null) {
      for (final inc in vs.compose!.include) {
        newExpansion = await processIncludeExclude(
          inc,
          newExpansion,
          include,
          excludeNested,
          includeDefinition,
        );
      }

      if (vs.compose!.exclude != null) {
        for (final exc in vs.compose!.exclude!) {
          newExpansion = await processIncludeExclude(
            exc,
            newExpansion,
            !include,
            excludeNested,
            includeDefinition,
          );
        }
      }
    }
    return newExpansion;
  }

  /// Add a code to the expansion
  ValueSetExpansion addCodeToExpansion(
    String system,
    ValueSetConcept concept,
    ValueSetExpansion expansion,
    bool includeDefinition,
  ) {
    // Check if the code is already in the expansion
    if (isCodeInExpansion(system, concept.code.valueString!, expansion)) {
      return expansion;
    }

    // Create the contains item
    var item = ValueSetContains(
      system: FhirUri(system),
      code: concept.code,
      display: concept.display,
    );

    // Add definition if requested
    if (includeDefinition && concept.designation != null) {
      item = item.copyWith(designation: concept.designation);
    }

    return expansion.copyWith(
      contains: [...(expansion.contains ?? <ValueSetContains>[]), item],
    );
  }

  /// Check if a code is already in the expansion
  bool isCodeInExpansion(
    String system,
    String code,
    ValueSetExpansion expansion,
  ) {
    if (expansion.contains == null) {
      return false;
    }

    return _findCodeInContainsList(expansion.contains!, system, code) != null;
  }

  /// Find a code in a contains list
  ValueSetContains? _findCodeInContainsList(
    List<ValueSetContains> items,
    String system,
    String code,
  ) {
    for (final item in items) {
      if (item.system?.toString() == system && item.code?.valueString == code) {
        return item;
      }

      if (item.contains != null) {
        final found = _findCodeInContainsList(item.contains!, system, code);
        if (found != null) {
          return found;
        }
      }
    }

    return null;
  }

  /// Remove a code from the expansion
  ValueSetExpansion removeCodeFromExpansion(
    String system,
    String code,
    ValueSetExpansion expansion,
  ) {
    if (expansion.contains == null) {
      return expansion;
    }

    return expansion.copyWith(
      contains: _removeCodeFromContainsList(
        expansion.contains!.toList(),
        system,
        code,
      ),
    );
  }

  /// Remove a code from a contains list
  List<ValueSetContains> _removeCodeFromContainsList(
    List<ValueSetContains> items,
    String system,
    String code,
  ) {
    // Find and remove direct matches
    items.removeWhere(
      (item) =>
          item.system?.toString() == system && item.code?.valueString == code,
    );

    final newItems = <ValueSetContains>[];

    // Check nested items
    for (final item in items) {
      if (item.contains != null) {
        newItems.add(
          item.copyWith(
            contains: _removeCodeFromContainsList(item.contains!, system, code),
          ),
        );
      } else {
        newItems.add(item);
      }
    }
    return newItems;
  }

  /// Add child concepts to the expansion
  ValueSetExpansion addChildConcepts(
    CodeSystemConcept parent,
    String system,
    ValueSetExpansion expansion,
    bool includeDefinition,
  ) {
    if (parent.concept == null) {
      return expansion;
    }
    var newExpansion = expansion;

    for (final child in parent.concept!) {
      newExpansion = addCodeToExpansion(
        system,
        ValueSetConcept(
          code: child.code,
          display: child.display,
        ),
        newExpansion,
        includeDefinition,
      );

      // Recursively add the child's children
      newExpansion =
          addChildConcepts(child, system, newExpansion, includeDefinition);
    }
    return newExpansion;
  }

  /// Remove child concepts from the expansion
  Future<ValueSetExpansion> removeChildConcepts(
    CodeSystemConcept parent,
    String system,
    ValueSetExpansion expansion,
  ) async {
    if (parent.concept == null) {
      return expansion;
    }

    var newExpansion = expansion;

    for (final child in parent.concept!) {
      newExpansion = removeCodeFromExpansion(
        system,
        child.code.valueString!,
        newExpansion,
      );

      // Recursively remove the child's children
      newExpansion = await removeChildConcepts(child, system, newExpansion);
    }
    return newExpansion;
  }

  /// Check if code system needs to be handled on the server side
  Future<bool> isServerSide(String? system) async {
    if (system == null) {
      return false;
    }

    final cs = await context.fetchCodeSystem(system);
    if (cs == null) {
      // If we don't have the code system locally,
      // it needs server-side processing
      return true;
    }

    // If we have the code system but it's not a complete one, needs server-side
    return cs.content != CodeSystemContentMode.complete;
  }

  /// Get a boolean parameter from Parameters
  bool getParameterBool(
    Parameters? parameters,
    String name,
    bool defaultValue,
  ) {
    if (parameters == null) {
      return defaultValue;
    }

    for (final param in parameters.parameter ?? <ParametersParameter>[]) {
      if (param.name.valueString == name && param.valueX is FhirBoolean) {
        return (param.valueX! as FhirBoolean).valueBoolean ?? defaultValue;
      }
    }

    return defaultValue;
  }
}

/// A simple value set checker that only checks for membership
class ValueSetChecker {
  /// Create a new value set checker
  ValueSetChecker({
    required this.context,
    required this.options,
    this.valueSet,
    this.localContext,
  }) {
    if (localContext != null) {
      analyseValueSet();
    }
  }

  /// The value set to check against
  final ValueSet? valueSet;

  /// The worker context
  final WorkerContext context;

  /// The validation options
  final ValidationOptions options;

  /// The local context
  final ValidationContextCarrier? localContext;

  /// The local systems
  final List<CodeSystem> localSystems = [];

  /// The inner value set checkers
  final Map<String, ValueSetChecker> inner = HashMap();

  /// Analyse a component of a value set
  void analyseValueSet() {
    if (valueSet != null) {
      for (final include in valueSet!.compose?.include ?? <ValueSetInclude>[]) {
        analyseComponent(include);
      }
      for (final exclude in valueSet!.compose?.exclude ?? <ValueSetInclude>[]) {
        analyseComponent(exclude);
      }
    }
  }

  /// Analyse a component of a value set
  Future<ValidationResult> validateCode(CodeableConcept code) async {
    final errors = <String>[];
    final warnings = <String>[];

    if (!options.membershipOnly) {
      for (final coding in code.coding ?? <Coding>[]) {
        if (coding.system == null) {
          warnings.add('Coding has no system, cannot validate');
        }

        final cs = await resolveCodeSystem(coding.system?.primitiveValue);
        ValidationResult? res;

        if (cs?.content != CodeSystemContentMode.complete) {
          // Adjusted to call the new method
          res = await context.validateCodeWithCoding(
            options.withNoClient(),
            coding,
            null,
          );
        } else {
          if (cs == null) {
            return ValidationResult.error(
              message: 'Code system not found',
            );
          }
          res = validateCodeAgainstCodeSystem(coding, cs);
        }

        if (res.isOk != true) {
          errors.add(res.message ?? 'Unknown error');
        } else if (res.message != null) {
          warnings.add(res.message!);
        }
      }
    }

    if (valueSet != null) {
      final result = await _validateCodeInValueSet(code, warnings);
      if (result.errors.isNotEmpty) {
        errors.insertAll(0, result.errors);
      }
      if (result.warnings.isNotEmpty) {
        warnings.insertAll(0, result.warnings);
      }
    }

    if (errors.isNotEmpty) {
      return ValidationResult.error(message: errors.join(', '));
    } else if (warnings.isNotEmpty) {
      return ValidationResult(
        severity: IssueSeverity.warning,
        message: warnings.join(', '),
      );
    } else {
      return ValidationResult(severity: IssueSeverity.information);
    }
  }

  /// Analyse a component of a value set
  Future<CodeSystem?> resolveCodeSystem(String? system) async {
    if (system == null) return null;
    for (final cs in localSystems) {
      if (cs.url?.primitiveValue == system) {
        return cs;
      }
    }
    return context.fetchCodeSystem(system);
  }

  /// Analyse a component of a ValueSet
  void analyseComponent(ValueSetInclude component) {
    if (component.system?.extension_ != null) {
      final extensions = component.system?.extension_?.where(
            (ext) =>
                ext.url.valueString ==
                'http://hl7.org/fhir/StructureDefinition/valueSet-system',
          ) ??
          [];

      for (final ext in extensions) {
        final ref = (ext.valueX as FhirString?)?.valueString;
        if (ref != null) {
          if (ref.startsWith('#')) {
            // Handle contained resources
            final id = ref.substring(1);
            final containedResource = localContext?.resources
                .expand(
                  (proxy) =>
                      (proxy.resource as DomainResource?)?.contained ??
                      <DomainResource>[],
                )
                .firstWhereOrNull((r) => r.id?.valueString == id);

            if (containedResource is CodeSystem) {
              localSystems.add(containedResource);
            }
          } else {
            throw UnsupportedError(
              'External references are not supported yet: $ref',
            );
          }
        }
      }
    }
  }

  /// Analyse a component of a value set
  ValidationResult validateCodeAgainstCodeSystem(Coding coding, CodeSystem cs) {
    if (cs.content != CodeSystemContentMode.complete) {
      return ValidationResult(
        severity: IssueSeverity.warning,
        message: 'Code system is incomplete: ${cs.url}',
      );
    }

    final concept = findCodeInConceptList(
      cs.concept ?? <CodeSystemConcept>[],
      coding.code?.primitiveValue ?? '',
    );

    if (concept == null) {
      return ValidationResult.error(
        message: 'Code not found in code system: ${coding.code}',
      );
    }

    return ValidationResult.success(
      system: coding.system?.primitiveValue,
      definition: concept,
    )..display = coding.display?.valueString ?? concept.display?.valueString;
  }

  /// Analyse a component of a value set
  CodeSystemConcept? findCodeInConceptList(
    List<CodeSystemConcept> concepts,
    String code,
  ) {
    for (final concept in concepts) {
      if (concept.code.primitiveValue == code) {
        return concept;
      }
      final subConcept =
          findCodeInConceptList(concept.concept ?? <CodeSystemConcept>[], code);
      if (subConcept != null) {
        return subConcept;
      }
    }
    return null;
  }

  Future<CodeInValueSetResult> _validateCodeInValueSet(
    CodeableConcept code,
    List<String> warnings,
  ) async {
    final errors = <String>[];
    final matchedCodes = <bool?>[];

    for (final coding in code.coding ?? <Coding>[]) {
      final matched = await codeInValueSet(
        coding.system?.primitiveValue,
        coding.code?.primitiveValue,
        warnings,
      );
      matchedCodes.add(matched);
      if (matched == null) {
        errors.add('Unable to validate ${coding.code} in value set');
      } else if (!matched) {
        errors.add('Code ${coding.code} not in value set');
      }
    }

    return CodeInValueSetResult(errors: errors, warnings: warnings);
  }

  /// Check if a code is in the value set
  Future<bool?> codeInValueSet(
    String? system,
    String? code,
    List<String>? warnings,
  ) async {
    if (valueSet == null) return false;

    if (valueSet!.expansion != null) {
      return _checkExpansion(
        Coding(system: system?.toFhirUri, code: code?.toFhirCode),
      );
    }

    if (valueSet!.compose != null) {
      bool? result = false;
      for (final include in valueSet!.compose!.include) {
        final match = await _inComponent(include, system, code);
        if (match ?? false) return true;
        if (match == null) result = null;
      }

      for (final exclude in valueSet!.compose!.exclude ?? <ValueSetInclude>[]) {
        final match = await _inComponent(exclude, system, code);
        if (match ?? false) return false;
      }

      return result;
    }

    return false;
  }

  Future<bool?> _inComponent(
    ValueSetInclude component,
    String? system,
    String? code,
  ) async {
    if (system == null) return false;
    if (code == null) return null;
    if (component.system?.primitiveValue != system) return false;

    if (component.concept == null && component.system?.valueString != null) {
      final codeSystem = await resolveCodeSystem(component.system?.valueString);
      final codeSystemConcept = findCodeInConceptList(
        codeSystem?.concept ?? <CodeSystemConcept>[],
        code,
      );
      return codeSystemConcept != null;
    } else {
      for (final concept in component.concept ?? <ValueSetConcept>[]) {
        if (concept.code.primitiveValue == code) {
          return true;
        }
      }
    }

    return null;
  }

  bool _checkExpansion(Coding coding) {
    for (final item in valueSet!.expansion!.contains ?? <ValueSetContains>[]) {
      if (item.system?.valueString == coding.system?.valueString &&
          item.code?.valueString == coding.code?.valueString) {
        return true;
      }
      if ((item.contains?.isNotEmpty ?? false) &&
          _checkExpansionRecursive(
            coding,
            item.contains ?? <ValueSetContains>[],
          )) {
        return true;
      }
    }
    return false;
  }

  bool _checkExpansionRecursive(
    Coding coding,
    List<ValueSetContains> items,
  ) {
    for (final item in items) {
      if (item.system?.valueString == coding.system?.valueString &&
          item.code?.valueString == coding.code?.valueString) {
        return true;
      }
      if ((item.contains?.isNotEmpty ?? false) &&
          _checkExpansionRecursive(
            coding,
            item.contains ?? <ValueSetContains>[],
          )) {
        return true;
      }
    }
    return false;
  }
}

/// The result of checking a code against a value set
class CodeInValueSetResult {
  /// Create a new code in value set result
  CodeInValueSetResult({required this.errors, required this.warnings});

  /// The errors
  final List<String> errors;

  /// The warnings
  final List<String> warnings;
}

/// Extension for WorkerContext to handle ValueSet expansion
extension ValueSetExpansionExtensions on WorkerContext {
  /// Expand a ValueSet using parameters
  Future<ValueSetExpansionOutcome> expandValueSet(
    ValueSet valueSet,
    Parameters? parameters,
    bool cacheOk,
    bool hierarchical,
  ) async {
    // Check if we have a cache system
    final cache =
        this is BaseWorkerContext ? (this as BaseWorkerContext).txCache : null;
    ValueSetCacheToken? cacheToken;

    if (cache != null) {
      cacheToken = cache.generateExpandToken(valueSet, hierarchical);
      if (cacheOk) {
        final cachedResult = cache.getExpansion(cacheToken);
        if (cachedResult != null) {
          return cachedResult;
        }
      }
    }

    // Set defaults for parameters if null
    var params = parameters ?? const Parameters();

    // Setup parameter defaults if not present
    bool hasParam(String name) {
      return params.parameter?.any((p) => p.name.valueString == name) ?? false;
    }

    if (!hasParam('includeDefinition')) {
      params = params.copyWith(
        parameter: <ParametersParameter>[
          ...params.parameter ?? [],
          ParametersParameter(
            name: 'includeDefinition'.toFhirString,
            valueX: FhirBoolean(false),
          ),
        ],
      );
    }

    if (!hasParam('excludeNested')) {
      params = params.copyWith(
        parameter: <ParametersParameter>[
          ...params.parameter ?? [],
          ParametersParameter(
            name: 'excludeNested'.toFhirString,
            valueX: FhirBoolean(!hierarchical),
          ),
        ],
      );
    }

    // First try to expand locally
    final expander = ValueSetExpanderSimple(this);
    try {
      final result = await expander.expand(valueSet, params);
      if (result.valueSet != null) {
        if (cache != null) {
          cache.cacheExpansion(
            cacheToken!,
            result,
            TerminologyCache.transient ? 1 : 0,
          );
        }
        return result;
      }
    } catch (e) {
      // Local expansion failed, continue to external service
    }

    // If local expansion failed, try with terminology service if available
    if (this is BaseWorkerContext) {
      final base = this as BaseWorkerContext;
      if (base.txClient != null && !base.noTerminologyServer) {
        try {
          final result = await base.txClient!.expandValueset(valueSet, params);
          final outcome = ValueSetExpansionOutcome(result);
          if (cache != null) {
            cache.cacheExpansion(
              cacheToken!,
              outcome,
              TerminologyCache.permanent ? 1 : 0,
            );
          }
          return outcome;
        } catch (e) {
          final outcome = ValueSetExpansionOutcome.withError(
            null,
            'Error expanding ValueSet with terminology service: $e',
            TerminologyServiceErrorClass.serverError,
          );
          if (cache != null) {
            cache.cacheExpansion(
              cacheToken!,
              outcome,
              TerminologyCache.permanent ? 1 : 0,
            );
          }
          return outcome;
        }
      } else {
        return ValueSetExpansionOutcome.withError(
          null,
          'No terminology service available for expansion',
          TerminologyServiceErrorClass.noservice,
        );
      }
    }

    // If we get here, expansion failed both locally and remotely
    return ValueSetExpansionOutcome.withError(
      null,
      'Failed to expand ValueSet',
      TerminologyServiceErrorClass.unknown,
    );
  }
}

/// A stub for terminology client for external services
abstract class TerminologyClient extends FhirToolingClient {
  /// Expand a value set
  Future<ValueSet> expandValueset(ValueSet vs, Parameters parameters);

  /// Validate a code in a code system
  @override
  Future<Parameters> validateCS(Parameters parameters);

  /// Validate a code in a value set
  @override
  Future<Parameters> validateVS(Parameters parameters);

  /// Validate multiple codes in a batch
  Future<Bundle> validateBatch(Bundle batch);

  /// Get the terminology capabilities
  Future<TerminologyCapabilities> getTerminologyCapabilities();

  /// Get the address of this terminology server
  String get address;

  /// Get the retry count
  int get retryCount;

  /// Set the retry count
  set retryCount(int value);

  /// Set the user agent
  set userAgent(String value);
}

/// A base implementation for worker context with caching
abstract class BaseWorkerContext implements WorkerContext {
  /// The terminology cache
  @override
  late TerminologyCache txCache;

  /// The terminology client
  @override
  TerminologyClient? txClient;

  /// The logging service
  @override
  LoggingService? logger;

  /// Whether to run without a terminology server
  @override
  bool noTerminologyServer = false;

  /// Whether to try running without terminology services
  bool canRunWithoutTerminology = false;

  /// Parameters for expansion
  @override
  Parameters? expParameters;

  /// Maximum number of codes to expand
  int expandCodesLimit = 1000;

  /// Terminology capabilities
  TerminologyCapabilities? txcaps;

  /// Validate a code in a code system
  @override
  Future<ValidationResult> validateCodeWithCoding(
    ValidationOptions options,
    Coding coding,
    dynamic unused,
  ) async {
    // Implementations will vary, but this provides the method signature
    // needed by the ValueSetChecker
    throw UnimplementedError('validateCodeWithCoding not implemented');
  }
}
