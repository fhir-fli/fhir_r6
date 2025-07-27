// ignore_for_file: unused_element_parameter, non_constant_identifier_names, lines_longer_than_80_chars
part of '../primitive_types.dart';

/// Actual enum for QuestionnaireItemDisabledDisplay
enum QuestionnaireItemDisabledDisplayBuilderEnum {
  /// hidden
  hidden,

  /// protected
  protected,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case QuestionnaireItemDisabledDisplayBuilderEnum.hidden:
        return 'hidden';
      case QuestionnaireItemDisabledDisplayBuilderEnum.protected:
        return 'protected';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static QuestionnaireItemDisabledDisplayBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return QuestionnaireItemDisabledDisplayBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static QuestionnaireItemDisabledDisplayBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'hidden':
        return QuestionnaireItemDisabledDisplayBuilderEnum.hidden;
      case 'protected':
        return QuestionnaireItemDisabledDisplayBuilderEnum.protected;
    }
    return null;
  }
}

/// Codes that guide the display of disabled questionnaire items
class QuestionnaireItemDisabledDisplayBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  QuestionnaireItemDisabledDisplayBuilder._({
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
  factory QuestionnaireItemDisabledDisplayBuilder(
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
    final valueEnum = QuestionnaireItemDisabledDisplayBuilderEnum.fromString(
      valueString,
    );
    return QuestionnaireItemDisabledDisplayBuilder._(
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

  /// Create empty [QuestionnaireItemDisabledDisplayBuilder]
  /// with element only
  factory QuestionnaireItemDisabledDisplayBuilder.empty() =>
      QuestionnaireItemDisabledDisplayBuilder._(valueString: null);

  /// Factory constructor to create
  /// [QuestionnaireItemDisabledDisplayBuilder] from JSON.
  factory QuestionnaireItemDisabledDisplayBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuestionnaireItemDisabledDisplayBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'QuestionnaireItemDisabledDisplayBuilder cannot be constructed from JSON.',
      );
    }
    return QuestionnaireItemDisabledDisplayBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for QuestionnaireItemDisabledDisplayBuilder
  final QuestionnaireItemDisabledDisplayBuilderEnum? valueEnum;

  /// hidden
  static QuestionnaireItemDisabledDisplayBuilder hidden =
      QuestionnaireItemDisabledDisplayBuilder._(
    valueString: 'hidden',
    valueEnum: QuestionnaireItemDisabledDisplayBuilderEnum.hidden,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/questionnaire-disabled-display',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Hidden',
    ),
  );

  /// protected
  static QuestionnaireItemDisabledDisplayBuilder protected =
      QuestionnaireItemDisabledDisplayBuilder._(
    valueString: 'protected',
    valueEnum: QuestionnaireItemDisabledDisplayBuilderEnum.protected,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/questionnaire-disabled-display',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Protected',
    ),
  );

  /// For instances where an Element is present but not value
  static QuestionnaireItemDisabledDisplayBuilder elementOnly =
      QuestionnaireItemDisabledDisplayBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<QuestionnaireItemDisabledDisplayBuilder> values = [
    hidden,
    protected,
  ];

  /// Returns the enum value with an element attached
  QuestionnaireItemDisabledDisplayBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return QuestionnaireItemDisabledDisplayBuilder._(
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
