// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ArtifactAssessmentDisposition
enum ArtifactAssessmentDispositionBuilderEnum {
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
      case ArtifactAssessmentDispositionBuilderEnum.unresolved:
        return 'unresolved';
      case ArtifactAssessmentDispositionBuilderEnum.notPersuasive:
        return 'not-persuasive';
      case ArtifactAssessmentDispositionBuilderEnum.persuasive:
        return 'persuasive';
      case ArtifactAssessmentDispositionBuilderEnum.persuasiveWithModification:
        return 'persuasive-with-modification';
      case ArtifactAssessmentDispositionBuilderEnum
            .notPersuasiveWithModification:
        return 'not-persuasive-with-modification';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ArtifactAssessmentDispositionBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ArtifactAssessmentDispositionBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ArtifactAssessmentDispositionBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'unresolved':
        return ArtifactAssessmentDispositionBuilderEnum.unresolved;
      case 'not-persuasive':
        return ArtifactAssessmentDispositionBuilderEnum.notPersuasive;
      case 'persuasive':
        return ArtifactAssessmentDispositionBuilderEnum.persuasive;
      case 'persuasive-with-modification':
        return ArtifactAssessmentDispositionBuilderEnum
            .persuasiveWithModification;
      case 'not-persuasive-with-modification':
        return ArtifactAssessmentDispositionBuilderEnum
            .notPersuasiveWithModification;
    }
    return null;
  }
}

/// Possible values for the disposition of a comment or change request,
/// typically used for comments and change requests, to indicate the
/// disposition of the responsible party towards the changes suggested by
/// the comment or change request.
class ArtifactAssessmentDispositionBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ArtifactAssessmentDispositionBuilder._({
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
  factory ArtifactAssessmentDispositionBuilder(
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
    final valueEnum = ArtifactAssessmentDispositionBuilderEnum.fromString(
      valueString,
    );
    return ArtifactAssessmentDispositionBuilder._(
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

  /// Create empty [ArtifactAssessmentDispositionBuilder]
  /// with element only
  factory ArtifactAssessmentDispositionBuilder.empty() =>
      ArtifactAssessmentDispositionBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ArtifactAssessmentDispositionBuilder] from JSON.
  factory ArtifactAssessmentDispositionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ArtifactAssessmentDispositionBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ArtifactAssessmentDispositionBuilder cannot be constructed from JSON.',
      );
    }
    return ArtifactAssessmentDispositionBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ArtifactAssessmentDispositionBuilder
  final ArtifactAssessmentDispositionBuilderEnum? valueEnum;

  /// unresolved
  static ArtifactAssessmentDispositionBuilder unresolved =
      ArtifactAssessmentDispositionBuilder._(
    valueString: 'unresolved',
    valueEnum: ArtifactAssessmentDispositionBuilderEnum.unresolved,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-disposition',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Unresolved',
    ),
  );

  /// not_persuasive
  static ArtifactAssessmentDispositionBuilder notPersuasive =
      ArtifactAssessmentDispositionBuilder._(
    valueString: 'not-persuasive',
    valueEnum: ArtifactAssessmentDispositionBuilderEnum.notPersuasive,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-disposition',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Not Persuasive',
    ),
  );

  /// persuasive
  static ArtifactAssessmentDispositionBuilder persuasive =
      ArtifactAssessmentDispositionBuilder._(
    valueString: 'persuasive',
    valueEnum: ArtifactAssessmentDispositionBuilderEnum.persuasive,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-disposition',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Persuasive',
    ),
  );

  /// persuasive_with_modification
  static ArtifactAssessmentDispositionBuilder persuasiveWithModification =
      ArtifactAssessmentDispositionBuilder._(
    valueString: 'persuasive-with-modification',
    valueEnum:
        ArtifactAssessmentDispositionBuilderEnum.persuasiveWithModification,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-disposition',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Persuasive with Modification',
    ),
  );

  /// not_persuasive_with_modification
  static ArtifactAssessmentDispositionBuilder notPersuasiveWithModification =
      ArtifactAssessmentDispositionBuilder._(
    valueString: 'not-persuasive-with-modification',
    valueEnum:
        ArtifactAssessmentDispositionBuilderEnum.notPersuasiveWithModification,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-disposition',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Not Persuasive with Modification',
    ),
  );

  /// For instances where an Element is present but not value
  static ArtifactAssessmentDispositionBuilder elementOnly =
      ArtifactAssessmentDispositionBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ArtifactAssessmentDispositionBuilder> values = [
    unresolved,
    notPersuasive,
    persuasive,
    persuasiveWithModification,
    notPersuasiveWithModification,
  ];

  /// Returns the enum value with an element attached
  ArtifactAssessmentDispositionBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ArtifactAssessmentDispositionBuilder._(
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
