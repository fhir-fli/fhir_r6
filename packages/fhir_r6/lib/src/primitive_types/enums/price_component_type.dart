// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for PriceComponentType
enum PriceComponentTypeEnum {
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
      case PriceComponentTypeEnum.base:
        return 'base';
      case PriceComponentTypeEnum.surcharge:
        return 'surcharge';
      case PriceComponentTypeEnum.deduction:
        return 'deduction';
      case PriceComponentTypeEnum.discount:
        return 'discount';
      case PriceComponentTypeEnum.tax:
        return 'tax';
      case PriceComponentTypeEnum.informational:
        return 'informational';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static PriceComponentTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return PriceComponentTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static PriceComponentTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'base':
        return PriceComponentTypeEnum.base;
      case 'surcharge':
        return PriceComponentTypeEnum.surcharge;
      case 'deduction':
        return PriceComponentTypeEnum.deduction;
      case 'discount':
        return PriceComponentTypeEnum.discount;
      case 'tax':
        return PriceComponentTypeEnum.tax;
      case 'informational':
        return PriceComponentTypeEnum.informational;
    }
    return null;
  }
}

/// Codes indicating the kind of the price component.
class PriceComponentType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const PriceComponentType._({
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
  factory PriceComponentType(
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
    final valueEnum = PriceComponentTypeEnum.fromString(valueString);
    return PriceComponentType._(
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

  /// Factory constructor to create [PriceComponentType]
  /// from JSON.
  factory PriceComponentType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = PriceComponentTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PriceComponentType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'PriceComponentType cannot be constructed from JSON.',
      );
    }
    return PriceComponentType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for PriceComponentType
  final PriceComponentTypeEnum? valueEnum;

  /// base
  static const PriceComponentType base = PriceComponentType._(
    valueString: 'base',
    valueEnum: PriceComponentTypeEnum.base,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/price-component-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'base price',
    ),
  );

  /// surcharge
  static const PriceComponentType surcharge = PriceComponentType._(
    valueString: 'surcharge',
    valueEnum: PriceComponentTypeEnum.surcharge,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/price-component-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'surcharge',
    ),
  );

  /// deduction
  static const PriceComponentType deduction = PriceComponentType._(
    valueString: 'deduction',
    valueEnum: PriceComponentTypeEnum.deduction,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/price-component-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'deduction',
    ),
  );

  /// discount
  static const PriceComponentType discount = PriceComponentType._(
    valueString: 'discount',
    valueEnum: PriceComponentTypeEnum.discount,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/price-component-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'discount',
    ),
  );

  /// tax
  static const PriceComponentType tax = PriceComponentType._(
    valueString: 'tax',
    valueEnum: PriceComponentTypeEnum.tax,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/price-component-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'tax',
    ),
  );

  /// informational
  static const PriceComponentType informational = PriceComponentType._(
    valueString: 'informational',
    valueEnum: PriceComponentTypeEnum.informational,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/price-component-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'informational',
    ),
  );

  /// List of all enum-like values
  static final List<PriceComponentType> values = [
    base,
    surcharge,
    deduction,
    discount,
    tax,
    informational,
  ];

  /// Returns the enum value with an element attached
  PriceComponentType withElement(Element? newElement) {
    return PriceComponentType._(
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
  PriceComponentType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  PriceComponentTypeCopyWithImpl<PriceComponentType> get copyWith =>
      PriceComponentTypeCopyWithImpl<PriceComponentType>(
        this,
        (v) => v as PriceComponentType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class PriceComponentTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  PriceComponentTypeCopyWithImpl(super._value, super._then);

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
      PriceComponentType(
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
