// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for Kind
enum KindEnum {
  /// insurance
  insurance,

  /// self-pay
  selfPay,

  /// other
  other,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case KindEnum.insurance:
        return 'insurance';
      case KindEnum.selfPay:
        return 'self-pay';
      case KindEnum.other:
        return 'other';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static KindEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return KindEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static KindEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'insurance':
        return KindEnum.insurance;
      case 'self-pay':
        return KindEnum.selfPay;
      case 'other':
        return KindEnum.other;
    }
    return null;
  }
}

/// The kind of coverage: insurance, selfpay or other.
class Kind extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const Kind._({
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
  factory Kind(
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
    final valueEnum = KindEnum.fromString(valueString);
    return Kind._(
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

  /// Factory constructor to create [Kind]
  /// from JSON.
  factory Kind.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = KindEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return Kind._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'Kind cannot be constructed from JSON.',
      );
    }
    return Kind._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for Kind
  final KindEnum? valueEnum;

  /// insurance
  static const Kind insurance = Kind._(
    valueString: 'insurance',
    valueEnum: KindEnum.insurance,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/coverage-kind',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Insurance',
    ),
  );

  /// self_pay
  static const Kind selfPay = Kind._(
    valueString: 'self-pay',
    valueEnum: KindEnum.selfPay,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/coverage-kind',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Self-pay',
    ),
  );

  /// other
  static const Kind other = Kind._(
    valueString: 'other',
    valueEnum: KindEnum.other,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/coverage-kind',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Other',
    ),
  );

  /// List of all enum-like values
  static final List<Kind> values = [
    insurance,
    selfPay,
    other,
  ];

  /// Returns the enum value with an element attached
  Kind withElement(Element? newElement) {
    return Kind._(
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
  Kind clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  KindCopyWithImpl<Kind> get copyWith => KindCopyWithImpl<Kind>(
        this,
        (v) => v as Kind,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class KindCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  KindCopyWithImpl(super._value, super._then);

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
      Kind(
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
