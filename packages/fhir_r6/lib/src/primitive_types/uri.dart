part of 'primitive_types.dart';

/// Extension methods on [String] to easily convert to [FhirUri].
extension FhirUriExtension on String {
  /// Returns a new [FhirUri] from this [String].
  FhirUri get toFhirUri => FhirUri(this);
}

/// Extension methods on [Uri] to easily convert to [FhirUri].
extension FhirUriUriExtension on Uri {
  /// Returns a new [FhirUri] from this [Uri].
  FhirUri get toFhirUri => FhirUri.fromUri(this);
}

/// A FHIR primitive type representing `uri`.
///
/// Internally stores the raw string plus optional metadata, but can also
/// parse to a Dart [Uri] via [valueUri].
class FhirUri extends PrimitiveType
    implements
        NetworkXAuditEventAgent,
        ValueXContractAnswer,
        SourceXMedicationKnowledgeMedicineClassification,
        ValueXParametersParameter,
        ValueXQuestionnaireInitial,
        ValueXQuestionnaireResponseAnswer,
        ValueXTaskInput,
        ValueXTaskOutput,
        ValueXTransportInput,
        ValueXTransportOutput,
        ValueXValueSetParameter,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension,
        ValueXDocumentReferenceProfile,
        EventXMessageDefinition,
        ModuleXGuidanceResponse,
        ArtifactXArtifactAssessment,
        SourceScopeXConceptMap,
        TargetScopeXConceptMap,
        StructureProfileXExampleScenarioInstance,
        DefinitionXPlanDefinitionAction,
        DefinitionXRequestOrchestrationAction,
        LinkXTestReportRequirement,
        LinkXTestScriptRequirement {
  // --------------------------------------------------------------------------
  // Private Internal Constructor
  // --------------------------------------------------------------------------

  /// Private underscore constructor that sets [valueString] and calls
  /// [super._].
  const FhirUri._({
    required super.valueString,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  // --------------------------------------------------------------------------
  // Public Factories
  // --------------------------------------------------------------------------

  /// Creates a [FhirUri] by parsing [rawValue] as [String] or [Uri].
  ///
  /// - If [rawValue] is `null`, [element] must be non-null
  /// (element-only usage).
  /// - If [rawValue] is a [String], it must be parseable by [Uri.parse].
  /// - If [rawValue] is a [Uri], we store its `.toString()`.
  // ignore: sort_unnamed_constructors_first
  factory FhirUri(
    dynamic rawValue, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    String? parsedValue;
    if (rawValue == null && element == null) {
      throw ArgumentError('A value or element is required for FhirUri.');
    } else if (rawValue is String) {
      parsedValue = validateUri(rawValue);
    } else if (rawValue is Uri) {
      parsedValue = rawValue.toString();
    } else if (rawValue != null) {
      throw ArgumentError(
        'FhirUri only supports a String or Uri. Got: $rawValue',
      );
    }

    return FhirUri._(
      valueString: parsedValue,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Creates a [FhirUri] from a [Uri] instance.
  factory FhirUri.fromUri(
    Uri input, [
    Element? element,
  ]) {
    return FhirUri(
      input,
      element: element,
    );
  }

  // --------------------------------------------------------------------------
  // JSON / YAML Constructors
  // --------------------------------------------------------------------------

  /// Constructs a [FhirUri] from a JSON [Map].
  factory FhirUri.fromJson(Map<String, dynamic> json) {
    final rawValue = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final parsedElement =
        elementJson == null ? null : Element.fromJson(elementJson);

    return FhirUri(
      rawValue,
      element: parsedElement,
    );
  }

  /// Constructs a [FhirUri] from a YAML input.
  ///
  /// Accepts [String] or [YamlMap].
  static FhirUri fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirUri.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirUri.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw ArgumentError(
        'FhirUri cannot be constructed from the provided input. '
        'It is neither a YAML string nor a YAML map.',
      );
    }
  }

  /// Attempts to parse [input] as a [FhirUri]. Returns `null` if parsing fails.
  static FhirUri? tryParse(dynamic input) {
    try {
      return FhirUri(input);
    } catch (_) {
      return null;
    }
  }

  // --------------------------------------------------------------------------
  // Validation
  // --------------------------------------------------------------------------

  /// Validates that [raw] is a valid URI string (parsable by [Uri.parse]).
  static String validateUri(String raw) {
    final parsed = Uri.tryParse(raw);
    if (parsed != null) {
      return raw;
    }
    throw FormatException('Invalid URI string: $raw');
  }

  // --------------------------------------------------------------------------
  // Getters / Properties
  // --------------------------------------------------------------------------

  /// Returns the [valueString] parsed as a Dart [Uri], or `null` if
  /// [valueString] is `null`.
  Uri? get valueUri => valueString == null ? null : Uri.parse(valueString!);

  // --------------------------------------------------------------------------
  // Booleans
  // --------------------------------------------------------------------------

  /// Returns `true` if there is a [valueString] but no [element].
  bool get valueOnly => valueString != null && element == null;

  /// Returns `true` if there is an [element] but no [valueString].
  bool get hasElementOnly => valueString == null && element != null;

  /// Returns `true` if both [valueString] and [element] are non-null.
  bool get valueAndElement => valueString != null && element != null;

  // --------------------------------------------------------------------------
  // JSON Serialization
  // --------------------------------------------------------------------------

  /// Converts this [FhirUri] into a JSON [Map].
  @override
  Map<String, dynamic> toJson() => {
        if (valueString != null && valueString!.isNotEmpty)
          'value': valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a parallel list of [values] and [elements] into a list of
  /// [FhirUri].
  static List<FhirUri> fromJsonList(
    List<dynamic> values,
    List<dynamic>? elements,
  ) {
    if (elements != null && elements.length != values.length) {
      throw const FormatException(
        'Values and elements must have the same length.',
      );
    }
    return List.generate(values.length, (i) {
      final val = values[i] as String?;
      final elem = elements?[i] != null
          ? Element.fromJson(elements![i] as Map<String, dynamic>)
          : null;
      return FhirUri(val, element: elem);
    });
  }

  /// Converts a list of [FhirUri] into a JSON map with `'value'` and
  /// `'_value'` arrays.
  static Map<String, dynamic> toJsonList(List<FhirUri> items) => {
        'value': items.map((val) => val.valueString).toList(),
        '_value': items.map((val) => val.element?.toJson()).toList(),
      };

  // --------------------------------------------------------------------------
  // Overrides
  // --------------------------------------------------------------------------

  /// Returns the FHIR type `"uri"`.
  @override
  String get fhirType => 'uri';

  /// Returns a string representation or `"null"`.
  @override
  String toString() => valueString ?? 'null';

  /// The primitive value as a string.
  @override
  String? get primitiveValue => valueString;

  /// Deep equality check for [FhirUri].
  @override
  bool equalsDeep(FhirBase? other) =>
      other is FhirUri &&
      other.valueString == valueString &&
      ((element == null && other.element == null) ||
          (element != null && element!.equalsDeep(other.element)));

  /// Checks equality with [FhirUri], [Uri], or [String].
  @override
  bool equals(Object other) =>
      identical(this, other) ||
      (other is FhirUri && other.valueString == valueString) ||
      (other is Uri && other == valueUri) ||
      (other is String && other == valueString);

  /// Operator `==` override.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  /// Hash code override.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(valueString, element);

  /// Returns `true` if the Type is considered string-based, otherwise `false`
  @override
  bool get stringBased => true;

  // --------------------------------------------------------------------------
  // Clone / Copy
  // --------------------------------------------------------------------------

  /// Clones this [FhirUri].
  @override
  FhirUri clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  $FhirUriCopyWithImpl<FhirUri> get copyWith =>
      $FhirUriCopyWithImpl<FhirUri>(this, (value) => value);

  /// Returns a copy that disallows further extensions.
  FhirUri noExtensions() => copyWith(disallowExtensions: true);

  // --------------------------------------------------------------------------
  // Additional Convenience Getters
  // --------------------------------------------------------------------------

  /// Returns the list of path segments in the URI.
  List<String>? get pathSegments => valueUri?.pathSegments;

  /// Converts the URI to a file path, respecting [windows] if needed.
  String? toFilePath({bool? windows}) => valueUri?.toFilePath(windows: windows);

  /// Returns the host portion of the URI, if any.
  String? get host => valueUri?.host;

  /// Returns the userInfo portion of the URI, if any.
  String? get userInfo => valueUri?.userInfo;

  /// Returns the port of the URI, if any.
  int? get port => valueUri?.port;

  /// Returns the authority portion of the URI, if any.
  String? get authority => valueUri?.authority;

  /// Returns the query string portion of the URI, if any.
  String? get query => valueUri?.query;

  /// Splits [query] into a map, with each key mapping to a list of
  /// decoded values.
  static Map<String, List<String>> splitQueryStringAll(
    String query, {
    Encoding encoding = utf8,
  }) {
    return Uri.splitQueryString(query, encoding: encoding).map(
      (key, value) => MapEntry<String, List<String>>(
        key,
        value.isEmpty ? <String>[] : <String>[value],
      ),
    );
  }

  /// Encodes [text] as a query component using the HTML 4.01 rules.
  static String encodeQueryComponent(String text, {Encoding encoding = utf8}) {
    return Uri.encodeQueryComponent(text, encoding: encoding);
  }

  /// Decodes a query component [text] from its percent-encoded form.
  static String decodeQueryComponent(String text, {Encoding encoding = utf8}) {
    return Uri.decodeQueryComponent(text, encoding: encoding);
  }
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class $FhirUriCopyWithImpl<T> implements $PrimitiveTypeCopyWith<T> {
  /// Constructor for the copyWith implementation.
  $FhirUriCopyWithImpl(this._value, this._then);

  final FhirUri _value;
  final T Function(FhirUri) _then;

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      FhirUri(
        identical(newValue, fhirSentinel) ? _value.valueString : newValue,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
