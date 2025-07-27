// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ConceptMapPropertyType
enum ConceptMapPropertyTypeBuilderEnum {
  /// Coding
  coding,

  /// string
  string,

  /// integer
  integer,

  /// boolean
  boolean,

  /// dateTime
  dateTime,

  /// decimal
  decimal,

  /// code
  code,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ConceptMapPropertyTypeBuilderEnum.coding:
        return 'Coding';
      case ConceptMapPropertyTypeBuilderEnum.string:
        return 'string';
      case ConceptMapPropertyTypeBuilderEnum.integer:
        return 'integer';
      case ConceptMapPropertyTypeBuilderEnum.boolean:
        return 'boolean';
      case ConceptMapPropertyTypeBuilderEnum.dateTime:
        return 'dateTime';
      case ConceptMapPropertyTypeBuilderEnum.decimal:
        return 'decimal';
      case ConceptMapPropertyTypeBuilderEnum.code:
        return 'code';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ConceptMapPropertyTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ConceptMapPropertyTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ConceptMapPropertyTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'Coding':
        return ConceptMapPropertyTypeBuilderEnum.coding;
      case 'string':
        return ConceptMapPropertyTypeBuilderEnum.string;
      case 'integer':
        return ConceptMapPropertyTypeBuilderEnum.integer;
      case 'boolean':
        return ConceptMapPropertyTypeBuilderEnum.boolean;
      case 'dateTime':
        return ConceptMapPropertyTypeBuilderEnum.dateTime;
      case 'decimal':
        return ConceptMapPropertyTypeBuilderEnum.decimal;
      case 'code':
        return ConceptMapPropertyTypeBuilderEnum.code;
    }
    return null;
  }
}

/// The type of a ConceptMap mapping property value.
class ConceptMapPropertyTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ConceptMapPropertyTypeBuilder._({
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
  factory ConceptMapPropertyTypeBuilder(
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
    final valueEnum = ConceptMapPropertyTypeBuilderEnum.fromString(
      valueString,
    );
    return ConceptMapPropertyTypeBuilder._(
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

  /// Create empty [ConceptMapPropertyTypeBuilder]
  /// with element only
  factory ConceptMapPropertyTypeBuilder.empty() =>
      ConceptMapPropertyTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ConceptMapPropertyTypeBuilder] from JSON.
  factory ConceptMapPropertyTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConceptMapPropertyTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConceptMapPropertyTypeBuilder cannot be constructed from JSON.',
      );
    }
    return ConceptMapPropertyTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ConceptMapPropertyTypeBuilder
  final ConceptMapPropertyTypeBuilderEnum? valueEnum;

  /// Coding
  static ConceptMapPropertyTypeBuilder coding = ConceptMapPropertyTypeBuilder._(
    valueString: 'Coding',
    valueEnum: ConceptMapPropertyTypeBuilderEnum.coding,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/conceptmap-property-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Coding (external reference)',
    ),
  );

  /// string
  static ConceptMapPropertyTypeBuilder string = ConceptMapPropertyTypeBuilder._(
    valueString: 'string',
    valueEnum: ConceptMapPropertyTypeBuilderEnum.string,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/conceptmap-property-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'string',
    ),
  );

  /// integer
  static ConceptMapPropertyTypeBuilder integer =
      ConceptMapPropertyTypeBuilder._(
    valueString: 'integer',
    valueEnum: ConceptMapPropertyTypeBuilderEnum.integer,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/conceptmap-property-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'integer',
    ),
  );

  /// boolean
  static ConceptMapPropertyTypeBuilder boolean =
      ConceptMapPropertyTypeBuilder._(
    valueString: 'boolean',
    valueEnum: ConceptMapPropertyTypeBuilderEnum.boolean,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/conceptmap-property-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'boolean',
    ),
  );

  /// dateTime
  static ConceptMapPropertyTypeBuilder dateTime =
      ConceptMapPropertyTypeBuilder._(
    valueString: 'dateTime',
    valueEnum: ConceptMapPropertyTypeBuilderEnum.dateTime,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/conceptmap-property-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'dateTime',
    ),
  );

  /// decimal
  static ConceptMapPropertyTypeBuilder decimal =
      ConceptMapPropertyTypeBuilder._(
    valueString: 'decimal',
    valueEnum: ConceptMapPropertyTypeBuilderEnum.decimal,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/conceptmap-property-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'decimal',
    ),
  );

  /// code
  static ConceptMapPropertyTypeBuilder code = ConceptMapPropertyTypeBuilder._(
    valueString: 'code',
    valueEnum: ConceptMapPropertyTypeBuilderEnum.code,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/conceptmap-property-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'code',
    ),
  );

  /// For instances where an Element is present but not value
  static ConceptMapPropertyTypeBuilder elementOnly =
      ConceptMapPropertyTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ConceptMapPropertyTypeBuilder> values = [
    coding,
    string,
    integer,
    boolean,
    dateTime,
    decimal,
    code,
  ];

  /// Returns the enum value with an element attached
  ConceptMapPropertyTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ConceptMapPropertyTypeBuilder._(
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
