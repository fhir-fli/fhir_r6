part of 'primitive_types.dart';

/// Extension methods on [String] to easily convert to [FhirCode].
extension FhirCodeExtension on String {
  /// Returns a new [FhirCode] constructed from this [String].
  FhirCode get toFhirCode => FhirCode(this);
}

/// A FHIR primitive type `code` (a restricted string).
///
/// Typically must match certain minimal constraints (non-whitespace).
class FhirCode extends FhirString
    implements
        ValueXCodeSystemProperty,
        ValueXConceptMapProperty,
        ValueXConceptMapDependsOn,
        ValueXParametersParameter,
        ValueXTaskInput,
        ValueXTaskOutput,
        ValueXTransportInput,
        ValueXTransportOutput,
        ValueXValueSetParameter,
        ValueXValueSetProperty,
        ValueXValueSetSubProperty,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  // --------------------------------------------------------------------------
  // Private Internal Constructor
  // --------------------------------------------------------------------------

  /// Private underscore constructor passing validated code to [super._].
  const FhirCode._({
    required super.valueString,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  // --------------------------------------------------------------------------
  // Public Factories
  // --------------------------------------------------------------------------

  /// Creates a [FhirCode], validating [rawValue] as a `String` that meets
  /// minimal code rules.
  // ignore: sort_unnamed_constructors_first
  factory FhirCode(
    dynamic rawValue, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    final validated =
        rawValue != null ? _validateCode(rawValue.toString()) : null;
    return FhirCode._(
      valueString: validated,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  // --------------------------------------------------------------------------
  // JSON / YAML Constructors
  // --------------------------------------------------------------------------

  /// Constructs a [FhirCode] from JSON.
  factory FhirCode.fromJson(Map<String, dynamic> json) {
    final rawValue = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final parsedElement =
        elementJson == null ? null : Element.fromJson(elementJson);
    return FhirCode(
      rawValue,
      element: parsedElement,
    );
  }

  /// Constructs a [FhirCode] from YAML ([String] or [YamlMap]).
  static FhirCode fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirCode.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirCode.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw ArgumentError(
        'FhirCode cannot be constructed from provided input, '
        'it is neither a YAML string nor a YAML map.',
      );
    }
  }

  /// Attempts to parse [input] as a [FhirCode]. Returns `null` if it fails.
  static FhirCode? tryParse(dynamic input) {
    if (input is String) {
      try {
        return FhirCode(input);
      } catch (_) {
        return null;
      }
    }
    return null;
  }

  // --------------------------------------------------------------------------
  // Validation
  // --------------------------------------------------------------------------

  /// Minimal validation for a "FHIR code": cannot contain whitespace only.
  static String? _validateCode(String? raw) {
    if (raw == null) return null;
    // Basic check that there's at least one non-whitespace character
    // and it doesn't contain forbidden whitespace patterns, etc.
    if (RegExp(r'^[^\s]+(\s[^\s]+)*$').hasMatch(raw)) {
      return raw;
    }
    throw FormatException('Invalid FHIR code: $raw');
  }

  // --------------------------------------------------------------------------
  // FHIR Overrides
  // --------------------------------------------------------------------------

  /// Returns `"code"`.
  @override
  String get fhirType => 'code';

  /// Returns the code as a string or `''`.
  @override
  String toString() => valueString ?? '';

  /// Returns `true` if the Type is considered string-based, otherwise `false`
  @override
  bool get stringBased => true;

  // --------------------------------------------------------------------------
  // Clone / Copy
  // --------------------------------------------------------------------------

  @override
  FhirCode clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  $FhirCodeCopyWithImpl<FhirCode> get copyWith =>
      $FhirCodeCopyWithImpl<FhirCode>(
        this,
        (value) => value as FhirCode,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class $FhirCodeCopyWithImpl<T> extends $FhirStringCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  $FhirCodeCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      FhirCode(
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
