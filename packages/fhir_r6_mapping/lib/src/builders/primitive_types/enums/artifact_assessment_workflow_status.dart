// ignore_for_file: unused_element_parameter, non_constant_identifier_names, lines_longer_than_80_chars
part of '../primitive_types.dart';

/// Actual enum for ArtifactAssessmentWorkflowStatus
enum ArtifactAssessmentWorkflowStatusBuilderEnum {
  /// submitted
  submitted,

  /// triaged
  triaged,

  /// waiting-for-input
  waitingForInput,

  /// resolved-no-change
  resolvedNoChange,

  /// resolved-change-required
  resolvedChangeRequired,

  /// deferred
  deferred_,

  /// duplicate
  duplicate,

  /// applied
  applied,

  /// published
  published,

  /// entered-in-error
  enteredInError,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ArtifactAssessmentWorkflowStatusBuilderEnum.submitted:
        return 'submitted';
      case ArtifactAssessmentWorkflowStatusBuilderEnum.triaged:
        return 'triaged';
      case ArtifactAssessmentWorkflowStatusBuilderEnum.waitingForInput:
        return 'waiting-for-input';
      case ArtifactAssessmentWorkflowStatusBuilderEnum.resolvedNoChange:
        return 'resolved-no-change';
      case ArtifactAssessmentWorkflowStatusBuilderEnum.resolvedChangeRequired:
        return 'resolved-change-required';
      case ArtifactAssessmentWorkflowStatusBuilderEnum.deferred_:
        return 'deferred';
      case ArtifactAssessmentWorkflowStatusBuilderEnum.duplicate:
        return 'duplicate';
      case ArtifactAssessmentWorkflowStatusBuilderEnum.applied:
        return 'applied';
      case ArtifactAssessmentWorkflowStatusBuilderEnum.published:
        return 'published';
      case ArtifactAssessmentWorkflowStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ArtifactAssessmentWorkflowStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ArtifactAssessmentWorkflowStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ArtifactAssessmentWorkflowStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'submitted':
        return ArtifactAssessmentWorkflowStatusBuilderEnum.submitted;
      case 'triaged':
        return ArtifactAssessmentWorkflowStatusBuilderEnum.triaged;
      case 'waiting-for-input':
        return ArtifactAssessmentWorkflowStatusBuilderEnum.waitingForInput;
      case 'resolved-no-change':
        return ArtifactAssessmentWorkflowStatusBuilderEnum.resolvedNoChange;
      case 'resolved-change-required':
        return ArtifactAssessmentWorkflowStatusBuilderEnum
            .resolvedChangeRequired;
      case 'deferred':
        return ArtifactAssessmentWorkflowStatusBuilderEnum.deferred_;
      case 'duplicate':
        return ArtifactAssessmentWorkflowStatusBuilderEnum.duplicate;
      case 'applied':
        return ArtifactAssessmentWorkflowStatusBuilderEnum.applied;
      case 'published':
        return ArtifactAssessmentWorkflowStatusBuilderEnum.published;
      case 'entered-in-error':
        return ArtifactAssessmentWorkflowStatusBuilderEnum.enteredInError;
    }
    return null;
  }
}

/// Possible values for the workflow status of the comment or assessment,
/// typically used to coordinate workflow around the process of accepting
/// and rejecting changes and comments on the artifact.
class ArtifactAssessmentWorkflowStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ArtifactAssessmentWorkflowStatusBuilder._({
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
  factory ArtifactAssessmentWorkflowStatusBuilder(
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
    final valueEnum = ArtifactAssessmentWorkflowStatusBuilderEnum.fromString(
      valueString,
    );
    return ArtifactAssessmentWorkflowStatusBuilder._(
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

  /// Create empty [ArtifactAssessmentWorkflowStatusBuilder]
  /// with element only
  factory ArtifactAssessmentWorkflowStatusBuilder.empty() =>
      ArtifactAssessmentWorkflowStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ArtifactAssessmentWorkflowStatusBuilder] from JSON.
  factory ArtifactAssessmentWorkflowStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ArtifactAssessmentWorkflowStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ArtifactAssessmentWorkflowStatusBuilder cannot be constructed from JSON.',
      );
    }
    return ArtifactAssessmentWorkflowStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ArtifactAssessmentWorkflowStatusBuilder
  final ArtifactAssessmentWorkflowStatusBuilderEnum? valueEnum;

  /// submitted
  static ArtifactAssessmentWorkflowStatusBuilder submitted =
      ArtifactAssessmentWorkflowStatusBuilder._(
    valueString: 'submitted',
    valueEnum: ArtifactAssessmentWorkflowStatusBuilderEnum.submitted,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-workflow-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Submitted',
    ),
  );

  /// triaged
  static ArtifactAssessmentWorkflowStatusBuilder triaged =
      ArtifactAssessmentWorkflowStatusBuilder._(
    valueString: 'triaged',
    valueEnum: ArtifactAssessmentWorkflowStatusBuilderEnum.triaged,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-workflow-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Triaged',
    ),
  );

  /// waiting_for_input
  static ArtifactAssessmentWorkflowStatusBuilder waitingForInput =
      ArtifactAssessmentWorkflowStatusBuilder._(
    valueString: 'waiting-for-input',
    valueEnum: ArtifactAssessmentWorkflowStatusBuilderEnum.waitingForInput,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-workflow-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Waiting for Input',
    ),
  );

  /// resolved_no_change
  static ArtifactAssessmentWorkflowStatusBuilder resolvedNoChange =
      ArtifactAssessmentWorkflowStatusBuilder._(
    valueString: 'resolved-no-change',
    valueEnum: ArtifactAssessmentWorkflowStatusBuilderEnum.resolvedNoChange,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-workflow-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Resolved - No Change',
    ),
  );

  /// resolved_change_required
  static ArtifactAssessmentWorkflowStatusBuilder resolvedChangeRequired =
      ArtifactAssessmentWorkflowStatusBuilder._(
    valueString: 'resolved-change-required',
    valueEnum:
        ArtifactAssessmentWorkflowStatusBuilderEnum.resolvedChangeRequired,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-workflow-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Resolved - Change Required',
    ),
  );

  /// deferred_
  static ArtifactAssessmentWorkflowStatusBuilder deferred_ =
      ArtifactAssessmentWorkflowStatusBuilder._(
    valueString: 'deferred',
    valueEnum: ArtifactAssessmentWorkflowStatusBuilderEnum.deferred_,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-workflow-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Deferred',
    ),
  );

  /// duplicate
  static ArtifactAssessmentWorkflowStatusBuilder duplicate =
      ArtifactAssessmentWorkflowStatusBuilder._(
    valueString: 'duplicate',
    valueEnum: ArtifactAssessmentWorkflowStatusBuilderEnum.duplicate,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-workflow-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Duplicate',
    ),
  );

  /// applied
  static ArtifactAssessmentWorkflowStatusBuilder applied =
      ArtifactAssessmentWorkflowStatusBuilder._(
    valueString: 'applied',
    valueEnum: ArtifactAssessmentWorkflowStatusBuilderEnum.applied,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-workflow-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Applied',
    ),
  );

  /// published
  static ArtifactAssessmentWorkflowStatusBuilder published =
      ArtifactAssessmentWorkflowStatusBuilder._(
    valueString: 'published',
    valueEnum: ArtifactAssessmentWorkflowStatusBuilderEnum.published,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-workflow-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Published',
    ),
  );

  /// entered_in_error
  static ArtifactAssessmentWorkflowStatusBuilder enteredInError =
      ArtifactAssessmentWorkflowStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: ArtifactAssessmentWorkflowStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-workflow-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// For instances where an Element is present but not value
  static ArtifactAssessmentWorkflowStatusBuilder elementOnly =
      ArtifactAssessmentWorkflowStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ArtifactAssessmentWorkflowStatusBuilder> values = [
    submitted,
    triaged,
    waitingForInput,
    resolvedNoChange,
    resolvedChangeRequired,
    deferred_,
    duplicate,
    applied,
    published,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  ArtifactAssessmentWorkflowStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ArtifactAssessmentWorkflowStatusBuilder._(
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
