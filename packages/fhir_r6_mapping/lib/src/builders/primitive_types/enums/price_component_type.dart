// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for PriceComponentType
enum PriceComponentTypeBuilderEnum {
  /// base
  base,

  /// surcharge
  surcharge,

  /// deduction
  deduction,

  /// discount
  discount,

  /// tax
  tax,

  /// informational
  informational,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case PriceComponentTypeBuilderEnum.base:
        return 'base';
      case PriceComponentTypeBuilderEnum.surcharge:
        return 'surcharge';
      case PriceComponentTypeBuilderEnum.deduction:
        return 'deduction';
      case PriceComponentTypeBuilderEnum.discount:
        return 'discount';
      case PriceComponentTypeBuilderEnum.tax:
        return 'tax';
      case PriceComponentTypeBuilderEnum.informational:
        return 'informational';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static PriceComponentTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return PriceComponentTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static PriceComponentTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'base':
        return PriceComponentTypeBuilderEnum.base;
      case 'surcharge':
        return PriceComponentTypeBuilderEnum.surcharge;
      case 'deduction':
        return PriceComponentTypeBuilderEnum.deduction;
      case 'discount':
        return PriceComponentTypeBuilderEnum.discount;
      case 'tax':
        return PriceComponentTypeBuilderEnum.tax;
      case 'informational':
        return PriceComponentTypeBuilderEnum.informational;
    }
    return null;
  }
}

/// Codes indicating the kind of the price component.
class PriceComponentTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  PriceComponentTypeBuilder._({
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
  factory PriceComponentTypeBuilder(
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
    final valueEnum = PriceComponentTypeBuilderEnum.fromString(
      valueString,
    );
    return PriceComponentTypeBuilder._(
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

  /// Create empty [PriceComponentTypeBuilder]
  /// with element only
  factory PriceComponentTypeBuilder.empty() =>
      PriceComponentTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [PriceComponentTypeBuilder] from JSON.
  factory PriceComponentTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PriceComponentTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'PriceComponentTypeBuilder cannot be constructed from JSON.',
      );
    }
    return PriceComponentTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for PriceComponentTypeBuilder
  final PriceComponentTypeBuilderEnum? valueEnum;

  /// base
  static PriceComponentTypeBuilder base = PriceComponentTypeBuilder._(
    valueString: 'base',
    valueEnum: PriceComponentTypeBuilderEnum.base,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/price-component-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'base price',
    ),
  );

  /// surcharge
  static PriceComponentTypeBuilder surcharge = PriceComponentTypeBuilder._(
    valueString: 'surcharge',
    valueEnum: PriceComponentTypeBuilderEnum.surcharge,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/price-component-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'surcharge',
    ),
  );

  /// deduction
  static PriceComponentTypeBuilder deduction = PriceComponentTypeBuilder._(
    valueString: 'deduction',
    valueEnum: PriceComponentTypeBuilderEnum.deduction,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/price-component-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'deduction',
    ),
  );

  /// discount
  static PriceComponentTypeBuilder discount = PriceComponentTypeBuilder._(
    valueString: 'discount',
    valueEnum: PriceComponentTypeBuilderEnum.discount,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/price-component-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'discount',
    ),
  );

  /// tax
  static PriceComponentTypeBuilder tax = PriceComponentTypeBuilder._(
    valueString: 'tax',
    valueEnum: PriceComponentTypeBuilderEnum.tax,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/price-component-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'tax',
    ),
  );

  /// informational
  static PriceComponentTypeBuilder informational = PriceComponentTypeBuilder._(
    valueString: 'informational',
    valueEnum: PriceComponentTypeBuilderEnum.informational,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/price-component-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'informational',
    ),
  );

  /// For instances where an Element is present but not value
  static PriceComponentTypeBuilder elementOnly = PriceComponentTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<PriceComponentTypeBuilder> values = [
    base,
    surcharge,
    deduction,
    discount,
    tax,
    informational,
  ];

  /// Returns the enum value with an element attached
  PriceComponentTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return PriceComponentTypeBuilder._(
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
