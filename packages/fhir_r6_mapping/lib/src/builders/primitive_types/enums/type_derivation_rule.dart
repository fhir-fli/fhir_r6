// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for TypeDerivationRule
enum TypeDerivationRuleBuilderEnum {
  /// specialization
  specialization,

  /// constraint
  constraint,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case TypeDerivationRuleBuilderEnum.specialization:
        return 'specialization';
      case TypeDerivationRuleBuilderEnum.constraint:
        return 'constraint';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static TypeDerivationRuleBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return TypeDerivationRuleBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static TypeDerivationRuleBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'specialization':
        return TypeDerivationRuleBuilderEnum.specialization;
      case 'constraint':
        return TypeDerivationRuleBuilderEnum.constraint;
    }
    return null;
  }
}

/// How a type relates to its baseDefinition.
class TypeDerivationRuleBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  TypeDerivationRuleBuilder._({
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
  factory TypeDerivationRuleBuilder(
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
    final valueEnum = TypeDerivationRuleBuilderEnum.fromString(
      valueString,
    );
    return TypeDerivationRuleBuilder._(
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

  /// Create empty [TypeDerivationRuleBuilder]
  /// with element only
  factory TypeDerivationRuleBuilder.empty() =>
      TypeDerivationRuleBuilder._(valueString: null);

  /// Factory constructor to create
  /// [TypeDerivationRuleBuilder] from JSON.
  factory TypeDerivationRuleBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TypeDerivationRuleBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TypeDerivationRuleBuilder cannot be constructed from JSON.',
      );
    }
    return TypeDerivationRuleBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for TypeDerivationRuleBuilder
  final TypeDerivationRuleBuilderEnum? valueEnum;

  /// specialization
  static TypeDerivationRuleBuilder specialization = TypeDerivationRuleBuilder._(
    valueString: 'specialization',
    valueEnum: TypeDerivationRuleBuilderEnum.specialization,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/type-derivation-rule',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Specialization',
    ),
  );

  /// constraint
  static TypeDerivationRuleBuilder constraint = TypeDerivationRuleBuilder._(
    valueString: 'constraint',
    valueEnum: TypeDerivationRuleBuilderEnum.constraint,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/type-derivation-rule',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Constraint',
    ),
  );

  /// For instances where an Element is present but not value
  static TypeDerivationRuleBuilder elementOnly = TypeDerivationRuleBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<TypeDerivationRuleBuilder> values = [
    specialization,
    constraint,
  ];

  /// Returns the enum value with an element attached
  TypeDerivationRuleBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return TypeDerivationRuleBuilder._(
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
