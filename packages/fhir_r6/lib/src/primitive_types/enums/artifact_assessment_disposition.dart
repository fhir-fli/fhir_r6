// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ArtifactAssessmentDisposition
enum ArtifactAssessmentDispositionEnum {
  /// unresolved
  unresolved,

  /// not-persuasive
  notPersuasive,

  /// persuasive
  persuasive,

  /// persuasive-with-modification
  persuasiveWithModification,

  /// not-persuasive-with-modification
  notPersuasiveWithModification,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ArtifactAssessmentDispositionEnum.unresolved:
        return 'unresolved';
      case ArtifactAssessmentDispositionEnum.notPersuasive:
        return 'not-persuasive';
      case ArtifactAssessmentDispositionEnum.persuasive:
        return 'persuasive';
      case ArtifactAssessmentDispositionEnum.persuasiveWithModification:
        return 'persuasive-with-modification';
      case ArtifactAssessmentDispositionEnum.notPersuasiveWithModification:
        return 'not-persuasive-with-modification';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ArtifactAssessmentDispositionEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ArtifactAssessmentDispositionEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ArtifactAssessmentDispositionEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'unresolved':
        return ArtifactAssessmentDispositionEnum.unresolved;
      case 'not-persuasive':
        return ArtifactAssessmentDispositionEnum.notPersuasive;
      case 'persuasive':
        return ArtifactAssessmentDispositionEnum.persuasive;
      case 'persuasive-with-modification':
        return ArtifactAssessmentDispositionEnum.persuasiveWithModification;
      case 'not-persuasive-with-modification':
        return ArtifactAssessmentDispositionEnum.notPersuasiveWithModification;
    }
    return null;
  }
}

/// Possible values for the disposition of a comment or change request,
/// typically used for comments and change requests, to indicate the
/// disposition of the responsible party towards the changes suggested by
/// the comment or change request.
class ArtifactAssessmentDisposition extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ArtifactAssessmentDisposition._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory ArtifactAssessmentDisposition(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = ArtifactAssessmentDispositionEnum.fromString(valueString);
    return ArtifactAssessmentDisposition._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [ArtifactAssessmentDisposition]
  /// from JSON.
  factory ArtifactAssessmentDisposition.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ArtifactAssessmentDispositionEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ArtifactAssessmentDisposition._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ArtifactAssessmentDisposition cannot be constructed from JSON.',
      );
    }
    return ArtifactAssessmentDisposition._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ArtifactAssessmentDisposition
  final ArtifactAssessmentDispositionEnum? valueEnum;

  /// unresolved
  static const ArtifactAssessmentDisposition unresolved =
      ArtifactAssessmentDisposition._(
    valueString: 'unresolved',
    valueEnum: ArtifactAssessmentDispositionEnum.unresolved,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-disposition',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Unresolved',
    ),
  );

  /// not_persuasive
  static const ArtifactAssessmentDisposition notPersuasive =
      ArtifactAssessmentDisposition._(
    valueString: 'not-persuasive',
    valueEnum: ArtifactAssessmentDispositionEnum.notPersuasive,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-disposition',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Not Persuasive',
    ),
  );

  /// persuasive
  static const ArtifactAssessmentDisposition persuasive =
      ArtifactAssessmentDisposition._(
    valueString: 'persuasive',
    valueEnum: ArtifactAssessmentDispositionEnum.persuasive,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-disposition',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Persuasive',
    ),
  );

  /// persuasive_with_modification
  static const ArtifactAssessmentDisposition persuasiveWithModification =
      ArtifactAssessmentDisposition._(
    valueString: 'persuasive-with-modification',
    valueEnum: ArtifactAssessmentDispositionEnum.persuasiveWithModification,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-disposition',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Persuasive with Modification',
    ),
  );

  /// not_persuasive_with_modification
  static const ArtifactAssessmentDisposition notPersuasiveWithModification =
      ArtifactAssessmentDisposition._(
    valueString: 'not-persuasive-with-modification',
    valueEnum: ArtifactAssessmentDispositionEnum.notPersuasiveWithModification,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-disposition',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Not Persuasive with Modification',
    ),
  );

  /// List of all enum-like values
  static final List<ArtifactAssessmentDisposition> values = [
    unresolved,
    notPersuasive,
    persuasive,
    persuasiveWithModification,
    notPersuasiveWithModification,
  ];

  /// Returns the enum value with an element attached
  ArtifactAssessmentDisposition withElement(Element? newElement) {
    return ArtifactAssessmentDisposition._(
      valueString: valueString,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => valueString ?? '';

  @override
  ArtifactAssessmentDisposition clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ArtifactAssessmentDispositionCopyWithImpl<ArtifactAssessmentDisposition>
      get copyWith => ArtifactAssessmentDispositionCopyWithImpl<
              ArtifactAssessmentDisposition>(
            this,
            (v) => v as ArtifactAssessmentDisposition,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ArtifactAssessmentDispositionCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ArtifactAssessmentDispositionCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      ArtifactAssessmentDisposition(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
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
