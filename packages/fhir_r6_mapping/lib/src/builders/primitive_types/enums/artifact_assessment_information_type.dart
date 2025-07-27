// ignore_for_file: unused_element_parameter, non_constant_identifier_names, lines_longer_than_80_chars
part of '../primitive_types.dart';

/// Actual enum for ArtifactAssessmentInformationType
enum ArtifactAssessmentInformationTypeBuilderEnum {
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
      case ArtifactAssessmentInformationTypeBuilderEnum.comment:
        return 'comment';
      case ArtifactAssessmentInformationTypeBuilderEnum.classifier:
        return 'classifier';
      case ArtifactAssessmentInformationTypeBuilderEnum.rating:
        return 'rating';
      case ArtifactAssessmentInformationTypeBuilderEnum.container:
        return 'container';
      case ArtifactAssessmentInformationTypeBuilderEnum.response:
        return 'response';
      case ArtifactAssessmentInformationTypeBuilderEnum.changeRequest:
        return 'change-request';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ArtifactAssessmentInformationTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ArtifactAssessmentInformationTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ArtifactAssessmentInformationTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'comment':
        return ArtifactAssessmentInformationTypeBuilderEnum.comment;
      case 'classifier':
        return ArtifactAssessmentInformationTypeBuilderEnum.classifier;
      case 'rating':
        return ArtifactAssessmentInformationTypeBuilderEnum.rating;
      case 'container':
        return ArtifactAssessmentInformationTypeBuilderEnum.container;
      case 'response':
        return ArtifactAssessmentInformationTypeBuilderEnum.response;
      case 'change-request':
        return ArtifactAssessmentInformationTypeBuilderEnum.changeRequest;
    }
    return null;
  }
}

/// The type of information contained in a component of an artifact
/// assessment.
class ArtifactAssessmentInformationTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ArtifactAssessmentInformationTypeBuilder._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory ArtifactAssessmentInformationTypeBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    final valueEnum = ArtifactAssessmentInformationTypeBuilderEnum.fromString(
      valueString,
    );
    return ArtifactAssessmentInformationTypeBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [ArtifactAssessmentInformationTypeBuilder]
  /// with element only
  factory ArtifactAssessmentInformationTypeBuilder.empty() =>
      ArtifactAssessmentInformationTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ArtifactAssessmentInformationTypeBuilder] from JSON.
  factory ArtifactAssessmentInformationTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ArtifactAssessmentInformationTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ArtifactAssessmentInformationTypeBuilder cannot be constructed from JSON.',
      );
    }
    return ArtifactAssessmentInformationTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ArtifactAssessmentInformationTypeBuilder
  final ArtifactAssessmentInformationTypeBuilderEnum? valueEnum;

  /// comment
  static ArtifactAssessmentInformationTypeBuilder comment =
      ArtifactAssessmentInformationTypeBuilder._(
    valueString: 'comment',
    valueEnum: ArtifactAssessmentInformationTypeBuilderEnum.comment,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-information-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Comment',
    ),
  );

  /// classifier
  static ArtifactAssessmentInformationTypeBuilder classifier =
      ArtifactAssessmentInformationTypeBuilder._(
    valueString: 'classifier',
    valueEnum: ArtifactAssessmentInformationTypeBuilderEnum.classifier,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-information-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Classifier',
    ),
  );

  /// rating
  static ArtifactAssessmentInformationTypeBuilder rating =
      ArtifactAssessmentInformationTypeBuilder._(
    valueString: 'rating',
    valueEnum: ArtifactAssessmentInformationTypeBuilderEnum.rating,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-information-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Rating',
    ),
  );

  /// container
  static ArtifactAssessmentInformationTypeBuilder container =
      ArtifactAssessmentInformationTypeBuilder._(
    valueString: 'container',
    valueEnum: ArtifactAssessmentInformationTypeBuilderEnum.container,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-information-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Container',
    ),
  );

  /// response
  static ArtifactAssessmentInformationTypeBuilder response =
      ArtifactAssessmentInformationTypeBuilder._(
    valueString: 'response',
    valueEnum: ArtifactAssessmentInformationTypeBuilderEnum.response,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-information-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Response',
    ),
  );

  /// change_request
  static ArtifactAssessmentInformationTypeBuilder changeRequest =
      ArtifactAssessmentInformationTypeBuilder._(
    valueString: 'change-request',
    valueEnum: ArtifactAssessmentInformationTypeBuilderEnum.changeRequest,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-information-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Change Request',
    ),
  );

  /// For instances where an Element is present but not value
  static ArtifactAssessmentInformationTypeBuilder elementOnly =
      ArtifactAssessmentInformationTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ArtifactAssessmentInformationTypeBuilder> values = [
    comment,
    classifier,
    rating,
    container,
    response,
    changeRequest,
  ];

  /// Returns the enum value with an element attached
  ArtifactAssessmentInformationTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ArtifactAssessmentInformationTypeBuilder._(
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
}
