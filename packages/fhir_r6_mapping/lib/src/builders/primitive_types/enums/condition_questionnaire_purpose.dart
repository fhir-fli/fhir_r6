// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ConditionQuestionnairePurpose
enum ConditionQuestionnairePurposeBuilderEnum {
  /// preadmit
  preadmit,

  /// diff-diagnosis
  diffDiagnosis,

  /// outcome
  outcome,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ConditionQuestionnairePurposeBuilderEnum.preadmit:
        return 'preadmit';
      case ConditionQuestionnairePurposeBuilderEnum.diffDiagnosis:
        return 'diff-diagnosis';
      case ConditionQuestionnairePurposeBuilderEnum.outcome:
        return 'outcome';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ConditionQuestionnairePurposeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ConditionQuestionnairePurposeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ConditionQuestionnairePurposeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'preadmit':
        return ConditionQuestionnairePurposeBuilderEnum.preadmit;
      case 'diff-diagnosis':
        return ConditionQuestionnairePurposeBuilderEnum.diffDiagnosis;
      case 'outcome':
        return ConditionQuestionnairePurposeBuilderEnum.outcome;
    }
    return null;
  }
}

/// The use of a questionnaire.
class ConditionQuestionnairePurposeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ConditionQuestionnairePurposeBuilder._({
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
  factory ConditionQuestionnairePurposeBuilder(
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
    final valueEnum = ConditionQuestionnairePurposeBuilderEnum.fromString(
      valueString,
    );
    return ConditionQuestionnairePurposeBuilder._(
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

  /// Create empty [ConditionQuestionnairePurposeBuilder]
  /// with element only
  factory ConditionQuestionnairePurposeBuilder.empty() =>
      ConditionQuestionnairePurposeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ConditionQuestionnairePurposeBuilder] from JSON.
  factory ConditionQuestionnairePurposeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionQuestionnairePurposeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConditionQuestionnairePurposeBuilder cannot be constructed from JSON.',
      );
    }
    return ConditionQuestionnairePurposeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ConditionQuestionnairePurposeBuilder
  final ConditionQuestionnairePurposeBuilderEnum? valueEnum;

  /// preadmit
  static ConditionQuestionnairePurposeBuilder preadmit =
      ConditionQuestionnairePurposeBuilder._(
    valueString: 'preadmit',
    valueEnum: ConditionQuestionnairePurposeBuilderEnum.preadmit,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/condition-questionnaire-purpose',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Pre-admit',
    ),
  );

  /// diff_diagnosis
  static ConditionQuestionnairePurposeBuilder diffDiagnosis =
      ConditionQuestionnairePurposeBuilder._(
    valueString: 'diff-diagnosis',
    valueEnum: ConditionQuestionnairePurposeBuilderEnum.diffDiagnosis,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/condition-questionnaire-purpose',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Diff Diagnosis',
    ),
  );

  /// outcome
  static ConditionQuestionnairePurposeBuilder outcome =
      ConditionQuestionnairePurposeBuilder._(
    valueString: 'outcome',
    valueEnum: ConditionQuestionnairePurposeBuilderEnum.outcome,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/condition-questionnaire-purpose',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Outcome',
    ),
  );

  /// For instances where an Element is present but not value
  static ConditionQuestionnairePurposeBuilder elementOnly =
      ConditionQuestionnairePurposeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ConditionQuestionnairePurposeBuilder> values = [
    preadmit,
    diffDiagnosis,
    outcome,
  ];

  /// Returns the enum value with an element attached
  ConditionQuestionnairePurposeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ConditionQuestionnairePurposeBuilder._(
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
