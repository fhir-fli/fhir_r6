// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ConceptMapAttributeType
enum ConceptMapAttributeTypeBuilderEnum {
  /// code
  code,

  /// Coding
  coding,

  /// string
  string,

  /// boolean
  boolean,

  /// Quantity
  quantity,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ConceptMapAttributeTypeBuilderEnum.code:
        return 'code';
      case ConceptMapAttributeTypeBuilderEnum.coding:
        return 'Coding';
      case ConceptMapAttributeTypeBuilderEnum.string:
        return 'string';
      case ConceptMapAttributeTypeBuilderEnum.boolean:
        return 'boolean';
      case ConceptMapAttributeTypeBuilderEnum.quantity:
        return 'Quantity';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ConceptMapAttributeTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ConceptMapAttributeTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ConceptMapAttributeTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'code':
        return ConceptMapAttributeTypeBuilderEnum.code;
      case 'Coding':
        return ConceptMapAttributeTypeBuilderEnum.coding;
      case 'string':
        return ConceptMapAttributeTypeBuilderEnum.string;
      case 'boolean':
        return ConceptMapAttributeTypeBuilderEnum.boolean;
      case 'Quantity':
        return ConceptMapAttributeTypeBuilderEnum.quantity;
    }
    return null;
  }
}

/// The type of a ConceptMap mapping attribute value.
class ConceptMapAttributeTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ConceptMapAttributeTypeBuilder._({
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
  factory ConceptMapAttributeTypeBuilder(
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
    final valueEnum = ConceptMapAttributeTypeBuilderEnum.fromString(
      valueString,
    );
    return ConceptMapAttributeTypeBuilder._(
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

  /// Create empty [ConceptMapAttributeTypeBuilder]
  /// with element only
  factory ConceptMapAttributeTypeBuilder.empty() =>
      ConceptMapAttributeTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ConceptMapAttributeTypeBuilder] from JSON.
  factory ConceptMapAttributeTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConceptMapAttributeTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConceptMapAttributeTypeBuilder cannot be constructed from JSON.',
      );
    }
    return ConceptMapAttributeTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ConceptMapAttributeTypeBuilder
  final ConceptMapAttributeTypeBuilderEnum? valueEnum;

  /// code
  static ConceptMapAttributeTypeBuilder code = ConceptMapAttributeTypeBuilder._(
    valueString: 'code',
    valueEnum: ConceptMapAttributeTypeBuilderEnum.code,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/conceptmap-attribute-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'code',
    ),
  );

  /// Coding
  static ConceptMapAttributeTypeBuilder coding =
      ConceptMapAttributeTypeBuilder._(
    valueString: 'Coding',
    valueEnum: ConceptMapAttributeTypeBuilderEnum.coding,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/conceptmap-attribute-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Coding',
    ),
  );

  /// string
  static ConceptMapAttributeTypeBuilder string =
      ConceptMapAttributeTypeBuilder._(
    valueString: 'string',
    valueEnum: ConceptMapAttributeTypeBuilderEnum.string,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/conceptmap-attribute-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'string',
    ),
  );

  /// boolean
  static ConceptMapAttributeTypeBuilder boolean =
      ConceptMapAttributeTypeBuilder._(
    valueString: 'boolean',
    valueEnum: ConceptMapAttributeTypeBuilderEnum.boolean,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/conceptmap-attribute-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'boolean',
    ),
  );

  /// Quantity
  static ConceptMapAttributeTypeBuilder quantity =
      ConceptMapAttributeTypeBuilder._(
    valueString: 'Quantity',
    valueEnum: ConceptMapAttributeTypeBuilderEnum.quantity,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/conceptmap-attribute-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Quantity',
    ),
  );

  /// For instances where an Element is present but not value
  static ConceptMapAttributeTypeBuilder elementOnly =
      ConceptMapAttributeTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ConceptMapAttributeTypeBuilder> values = [
    code,
    coding,
    string,
    boolean,
    quantity,
  ];

  /// Returns the enum value with an element attached
  ConceptMapAttributeTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ConceptMapAttributeTypeBuilder._(
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
