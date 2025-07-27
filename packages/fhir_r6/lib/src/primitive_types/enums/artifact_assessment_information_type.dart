// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ArtifactAssessmentInformationType
enum ArtifactAssessmentInformationTypeEnum {
  /// comment
  comment,

  /// classifier
  classifier,

  /// rating
  rating,

  /// container
  container,

  /// response
  response,

  /// change-request
  changeRequest,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ArtifactAssessmentInformationTypeEnum.comment:
        return 'comment';
      case ArtifactAssessmentInformationTypeEnum.classifier:
        return 'classifier';
      case ArtifactAssessmentInformationTypeEnum.rating:
        return 'rating';
      case ArtifactAssessmentInformationTypeEnum.container:
        return 'container';
      case ArtifactAssessmentInformationTypeEnum.response:
        return 'response';
      case ArtifactAssessmentInformationTypeEnum.changeRequest:
        return 'change-request';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ArtifactAssessmentInformationTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ArtifactAssessmentInformationTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ArtifactAssessmentInformationTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'comment':
        return ArtifactAssessmentInformationTypeEnum.comment;
      case 'classifier':
        return ArtifactAssessmentInformationTypeEnum.classifier;
      case 'rating':
        return ArtifactAssessmentInformationTypeEnum.rating;
      case 'container':
        return ArtifactAssessmentInformationTypeEnum.container;
      case 'response':
        return ArtifactAssessmentInformationTypeEnum.response;
      case 'change-request':
        return ArtifactAssessmentInformationTypeEnum.changeRequest;
    }
    return null;
  }
}

/// The type of information contained in a component of an artifact
/// assessment.
class ArtifactAssessmentInformationType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ArtifactAssessmentInformationType._({
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
  factory ArtifactAssessmentInformationType(
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
    final valueEnum =
        ArtifactAssessmentInformationTypeEnum.fromString(valueString);
    return ArtifactAssessmentInformationType._(
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

  /// Factory constructor to create [ArtifactAssessmentInformationType]
  /// from JSON.
  factory ArtifactAssessmentInformationType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ArtifactAssessmentInformationTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ArtifactAssessmentInformationType._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ArtifactAssessmentInformationType cannot be constructed from JSON.',
      );
    }
    return ArtifactAssessmentInformationType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ArtifactAssessmentInformationType
  final ArtifactAssessmentInformationTypeEnum? valueEnum;

  /// comment
  static const ArtifactAssessmentInformationType comment =
      ArtifactAssessmentInformationType._(
    valueString: 'comment',
    valueEnum: ArtifactAssessmentInformationTypeEnum.comment,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-information-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Comment',
    ),
  );

  /// classifier
  static const ArtifactAssessmentInformationType classifier =
      ArtifactAssessmentInformationType._(
    valueString: 'classifier',
    valueEnum: ArtifactAssessmentInformationTypeEnum.classifier,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-information-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Classifier',
    ),
  );

  /// rating
  static const ArtifactAssessmentInformationType rating =
      ArtifactAssessmentInformationType._(
    valueString: 'rating',
    valueEnum: ArtifactAssessmentInformationTypeEnum.rating,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-information-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Rating',
    ),
  );

  /// container
  static const ArtifactAssessmentInformationType container =
      ArtifactAssessmentInformationType._(
    valueString: 'container',
    valueEnum: ArtifactAssessmentInformationTypeEnum.container,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-information-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Container',
    ),
  );

  /// response
  static const ArtifactAssessmentInformationType response =
      ArtifactAssessmentInformationType._(
    valueString: 'response',
    valueEnum: ArtifactAssessmentInformationTypeEnum.response,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-information-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Response',
    ),
  );

  /// change_request
  static const ArtifactAssessmentInformationType changeRequest =
      ArtifactAssessmentInformationType._(
    valueString: 'change-request',
    valueEnum: ArtifactAssessmentInformationTypeEnum.changeRequest,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-information-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Change Request',
    ),
  );

  /// List of all enum-like values
  static final List<ArtifactAssessmentInformationType> values = [
    comment,
    classifier,
    rating,
    container,
    response,
    changeRequest,
  ];

  /// Returns the enum value with an element attached
  ArtifactAssessmentInformationType withElement(Element? newElement) {
    return ArtifactAssessmentInformationType._(
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
  ArtifactAssessmentInformationType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ArtifactAssessmentInformationTypeCopyWithImpl<
          ArtifactAssessmentInformationType>
      get copyWith => ArtifactAssessmentInformationTypeCopyWithImpl<
              ArtifactAssessmentInformationType>(
            this,
            (v) => v as ArtifactAssessmentInformationType,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ArtifactAssessmentInformationTypeCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ArtifactAssessmentInformationTypeCopyWithImpl(super._value, super._then);

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
      ArtifactAssessmentInformationType(
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
