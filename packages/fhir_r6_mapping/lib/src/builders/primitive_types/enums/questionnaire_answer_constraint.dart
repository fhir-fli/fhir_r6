// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for QuestionnaireAnswerConstraint
enum QuestionnaireAnswerConstraintBuilderEnum {
  /// optionsOnly
  optionsOnly,

  /// optionsOrType
  optionsOrType,

  /// optionsOrString
  optionsOrString,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case QuestionnaireAnswerConstraintBuilderEnum.optionsOnly:
        return 'optionsOnly';
      case QuestionnaireAnswerConstraintBuilderEnum.optionsOrType:
        return 'optionsOrType';
      case QuestionnaireAnswerConstraintBuilderEnum.optionsOrString:
        return 'optionsOrString';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static QuestionnaireAnswerConstraintBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return QuestionnaireAnswerConstraintBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static QuestionnaireAnswerConstraintBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'optionsOnly':
        return QuestionnaireAnswerConstraintBuilderEnum.optionsOnly;
      case 'optionsOrType':
        return QuestionnaireAnswerConstraintBuilderEnum.optionsOrType;
      case 'optionsOrString':
        return QuestionnaireAnswerConstraintBuilderEnum.optionsOrString;
    }
    return null;
  }
}

/// Codes that describe the types of constraints possible on a question
/// item that has a list of permitted answers
class QuestionnaireAnswerConstraintBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  QuestionnaireAnswerConstraintBuilder._({
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
  factory QuestionnaireAnswerConstraintBuilder(
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
    final valueEnum = QuestionnaireAnswerConstraintBuilderEnum.fromString(
      valueString,
    );
    return QuestionnaireAnswerConstraintBuilder._(
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

  /// Create empty [QuestionnaireAnswerConstraintBuilder]
  /// with element only
  factory QuestionnaireAnswerConstraintBuilder.empty() =>
      QuestionnaireAnswerConstraintBuilder._(valueString: null);

  /// Factory constructor to create
  /// [QuestionnaireAnswerConstraintBuilder] from JSON.
  factory QuestionnaireAnswerConstraintBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuestionnaireAnswerConstraintBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'QuestionnaireAnswerConstraintBuilder cannot be constructed from JSON.',
      );
    }
    return QuestionnaireAnswerConstraintBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for QuestionnaireAnswerConstraintBuilder
  final QuestionnaireAnswerConstraintBuilderEnum? valueEnum;

  /// optionsOnly
  static QuestionnaireAnswerConstraintBuilder optionsOnly =
      QuestionnaireAnswerConstraintBuilder._(
    valueString: 'optionsOnly',
    valueEnum: QuestionnaireAnswerConstraintBuilderEnum.optionsOnly,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/questionnaire-answer-constraint',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Options only',
    ),
  );

  /// optionsOrType
  static QuestionnaireAnswerConstraintBuilder optionsOrType =
      QuestionnaireAnswerConstraintBuilder._(
    valueString: 'optionsOrType',
    valueEnum: QuestionnaireAnswerConstraintBuilderEnum.optionsOrType,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/questionnaire-answer-constraint',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: "Options or 'type'",
    ),
  );

  /// optionsOrString
  static QuestionnaireAnswerConstraintBuilder optionsOrString =
      QuestionnaireAnswerConstraintBuilder._(
    valueString: 'optionsOrString',
    valueEnum: QuestionnaireAnswerConstraintBuilderEnum.optionsOrString,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/questionnaire-answer-constraint',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Options or string',
    ),
  );

  /// For instances where an Element is present but not value
  static QuestionnaireAnswerConstraintBuilder elementOnly =
      QuestionnaireAnswerConstraintBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<QuestionnaireAnswerConstraintBuilder> values = [
    optionsOnly,
    optionsOrType,
    optionsOrString,
  ];

  /// Returns the enum value with an element attached
  QuestionnaireAnswerConstraintBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return QuestionnaireAnswerConstraintBuilder._(
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
