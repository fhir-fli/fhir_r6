// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ArtifactAssessmentWorkflowStatus
enum ArtifactAssessmentWorkflowStatusEnum {
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
      case ArtifactAssessmentWorkflowStatusEnum.submitted:
        return 'submitted';
      case ArtifactAssessmentWorkflowStatusEnum.triaged:
        return 'triaged';
      case ArtifactAssessmentWorkflowStatusEnum.waitingForInput:
        return 'waiting-for-input';
      case ArtifactAssessmentWorkflowStatusEnum.resolvedNoChange:
        return 'resolved-no-change';
      case ArtifactAssessmentWorkflowStatusEnum.resolvedChangeRequired:
        return 'resolved-change-required';
      case ArtifactAssessmentWorkflowStatusEnum.deferred_:
        return 'deferred';
      case ArtifactAssessmentWorkflowStatusEnum.duplicate:
        return 'duplicate';
      case ArtifactAssessmentWorkflowStatusEnum.applied:
        return 'applied';
      case ArtifactAssessmentWorkflowStatusEnum.published:
        return 'published';
      case ArtifactAssessmentWorkflowStatusEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ArtifactAssessmentWorkflowStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ArtifactAssessmentWorkflowStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ArtifactAssessmentWorkflowStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'submitted':
        return ArtifactAssessmentWorkflowStatusEnum.submitted;
      case 'triaged':
        return ArtifactAssessmentWorkflowStatusEnum.triaged;
      case 'waiting-for-input':
        return ArtifactAssessmentWorkflowStatusEnum.waitingForInput;
      case 'resolved-no-change':
        return ArtifactAssessmentWorkflowStatusEnum.resolvedNoChange;
      case 'resolved-change-required':
        return ArtifactAssessmentWorkflowStatusEnum.resolvedChangeRequired;
      case 'deferred':
        return ArtifactAssessmentWorkflowStatusEnum.deferred_;
      case 'duplicate':
        return ArtifactAssessmentWorkflowStatusEnum.duplicate;
      case 'applied':
        return ArtifactAssessmentWorkflowStatusEnum.applied;
      case 'published':
        return ArtifactAssessmentWorkflowStatusEnum.published;
      case 'entered-in-error':
        return ArtifactAssessmentWorkflowStatusEnum.enteredInError;
    }
    return null;
  }
}

/// Possible values for the workflow status of the comment or assessment,
/// typically used to coordinate workflow around the process of accepting
/// and rejecting changes and comments on the artifact.
class ArtifactAssessmentWorkflowStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ArtifactAssessmentWorkflowStatus._({
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
  factory ArtifactAssessmentWorkflowStatus(
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
        ArtifactAssessmentWorkflowStatusEnum.fromString(valueString);
    return ArtifactAssessmentWorkflowStatus._(
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

  /// Factory constructor to create [ArtifactAssessmentWorkflowStatus]
  /// from JSON.
  factory ArtifactAssessmentWorkflowStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ArtifactAssessmentWorkflowStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ArtifactAssessmentWorkflowStatus._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ArtifactAssessmentWorkflowStatus cannot be constructed from JSON.',
      );
    }
    return ArtifactAssessmentWorkflowStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ArtifactAssessmentWorkflowStatus
  final ArtifactAssessmentWorkflowStatusEnum? valueEnum;

  /// submitted
  static const ArtifactAssessmentWorkflowStatus submitted =
      ArtifactAssessmentWorkflowStatus._(
    valueString: 'submitted',
    valueEnum: ArtifactAssessmentWorkflowStatusEnum.submitted,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-workflow-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Submitted',
    ),
  );

  /// triaged
  static const ArtifactAssessmentWorkflowStatus triaged =
      ArtifactAssessmentWorkflowStatus._(
    valueString: 'triaged',
    valueEnum: ArtifactAssessmentWorkflowStatusEnum.triaged,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-workflow-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Triaged',
    ),
  );

  /// waiting_for_input
  static const ArtifactAssessmentWorkflowStatus waitingForInput =
      ArtifactAssessmentWorkflowStatus._(
    valueString: 'waiting-for-input',
    valueEnum: ArtifactAssessmentWorkflowStatusEnum.waitingForInput,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-workflow-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Waiting for Input',
    ),
  );

  /// resolved_no_change
  static const ArtifactAssessmentWorkflowStatus resolvedNoChange =
      ArtifactAssessmentWorkflowStatus._(
    valueString: 'resolved-no-change',
    valueEnum: ArtifactAssessmentWorkflowStatusEnum.resolvedNoChange,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-workflow-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Resolved - No Change',
    ),
  );

  /// resolved_change_required
  static const ArtifactAssessmentWorkflowStatus resolvedChangeRequired =
      ArtifactAssessmentWorkflowStatus._(
    valueString: 'resolved-change-required',
    valueEnum: ArtifactAssessmentWorkflowStatusEnum.resolvedChangeRequired,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-workflow-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Resolved - Change Required',
    ),
  );

  /// deferred_
  static const ArtifactAssessmentWorkflowStatus deferred_ =
      ArtifactAssessmentWorkflowStatus._(
    valueString: 'deferred',
    valueEnum: ArtifactAssessmentWorkflowStatusEnum.deferred_,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-workflow-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Deferred',
    ),
  );

  /// duplicate
  static const ArtifactAssessmentWorkflowStatus duplicate =
      ArtifactAssessmentWorkflowStatus._(
    valueString: 'duplicate',
    valueEnum: ArtifactAssessmentWorkflowStatusEnum.duplicate,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-workflow-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Duplicate',
    ),
  );

  /// applied
  static const ArtifactAssessmentWorkflowStatus applied =
      ArtifactAssessmentWorkflowStatus._(
    valueString: 'applied',
    valueEnum: ArtifactAssessmentWorkflowStatusEnum.applied,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-workflow-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Applied',
    ),
  );

  /// published
  static const ArtifactAssessmentWorkflowStatus published =
      ArtifactAssessmentWorkflowStatus._(
    valueString: 'published',
    valueEnum: ArtifactAssessmentWorkflowStatusEnum.published,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-workflow-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Published',
    ),
  );

  /// entered_in_error
  static const ArtifactAssessmentWorkflowStatus enteredInError =
      ArtifactAssessmentWorkflowStatus._(
    valueString: 'entered-in-error',
    valueEnum: ArtifactAssessmentWorkflowStatusEnum.enteredInError,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/artifactassessment-workflow-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// List of all enum-like values
  static final List<ArtifactAssessmentWorkflowStatus> values = [
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
  ArtifactAssessmentWorkflowStatus withElement(Element? newElement) {
    return ArtifactAssessmentWorkflowStatus._(
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
  ArtifactAssessmentWorkflowStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ArtifactAssessmentWorkflowStatusCopyWithImpl<ArtifactAssessmentWorkflowStatus>
      get copyWith => ArtifactAssessmentWorkflowStatusCopyWithImpl<
              ArtifactAssessmentWorkflowStatus>(
            this,
            (v) => v as ArtifactAssessmentWorkflowStatus,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ArtifactAssessmentWorkflowStatusCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ArtifactAssessmentWorkflowStatusCopyWithImpl(super._value, super._then);

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
      ArtifactAssessmentWorkflowStatus(
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
