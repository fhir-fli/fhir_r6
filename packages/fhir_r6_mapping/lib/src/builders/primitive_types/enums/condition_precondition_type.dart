// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ConditionPreconditionType
enum ConditionPreconditionTypeBuilderEnum {
  /// sensitive
  sensitive,

  /// specific
  specific,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ConditionPreconditionTypeBuilderEnum.sensitive:
        return 'sensitive';
      case ConditionPreconditionTypeBuilderEnum.specific:
        return 'specific';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ConditionPreconditionTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ConditionPreconditionTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ConditionPreconditionTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'sensitive':
        return ConditionPreconditionTypeBuilderEnum.sensitive;
      case 'specific':
        return ConditionPreconditionTypeBuilderEnum.specific;
    }
    return null;
  }
}

/// Kind of precondition for the condition.
class ConditionPreconditionTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ConditionPreconditionTypeBuilder._({
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
  factory ConditionPreconditionTypeBuilder(
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
    final valueEnum = ConditionPreconditionTypeBuilderEnum.fromString(
      valueString,
    );
    return ConditionPreconditionTypeBuilder._(
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

  /// Create empty [ConditionPreconditionTypeBuilder]
  /// with element only
  factory ConditionPreconditionTypeBuilder.empty() =>
      ConditionPreconditionTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ConditionPreconditionTypeBuilder] from JSON.
  factory ConditionPreconditionTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionPreconditionTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConditionPreconditionTypeBuilder cannot be constructed from JSON.',
      );
    }
    return ConditionPreconditionTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ConditionPreconditionTypeBuilder
  final ConditionPreconditionTypeBuilderEnum? valueEnum;

  /// sensitive
  static ConditionPreconditionTypeBuilder sensitive =
      ConditionPreconditionTypeBuilder._(
    valueString: 'sensitive',
    valueEnum: ConditionPreconditionTypeBuilderEnum.sensitive,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/condition-precondition-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Sensitive',
    ),
  );

  /// specific
  static ConditionPreconditionTypeBuilder specific =
      ConditionPreconditionTypeBuilder._(
    valueString: 'specific',
    valueEnum: ConditionPreconditionTypeBuilderEnum.specific,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/condition-precondition-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Specific',
    ),
  );

  /// For instances where an Element is present but not value
  static ConditionPreconditionTypeBuilder elementOnly =
      ConditionPreconditionTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ConditionPreconditionTypeBuilder> values = [
    sensitive,
    specific,
  ];

  /// Returns the enum value with an element attached
  ConditionPreconditionTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ConditionPreconditionTypeBuilder._(
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
