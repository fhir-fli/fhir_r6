// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for PaymentOutcome
enum PaymentOutcomeEnum {
  /// queued
  queued,

  /// complete
  complete,

  /// error
  error,

  /// partial
  partial,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case PaymentOutcomeEnum.queued:
        return 'queued';
      case PaymentOutcomeEnum.complete:
        return 'complete';
      case PaymentOutcomeEnum.error:
        return 'error';
      case PaymentOutcomeEnum.partial:
        return 'partial';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static PaymentOutcomeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return PaymentOutcomeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static PaymentOutcomeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'queued':
        return PaymentOutcomeEnum.queued;
      case 'complete':
        return PaymentOutcomeEnum.complete;
      case 'error':
        return PaymentOutcomeEnum.error;
      case 'partial':
        return PaymentOutcomeEnum.partial;
    }
    return null;
  }
}

/// The outcome of the processing.
class PaymentOutcome extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const PaymentOutcome._({
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
  factory PaymentOutcome(
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
    final valueEnum = PaymentOutcomeEnum.fromString(valueString);
    return PaymentOutcome._(
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

  /// Factory constructor to create [PaymentOutcome]
  /// from JSON.
  factory PaymentOutcome.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = PaymentOutcomeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PaymentOutcome._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'PaymentOutcome cannot be constructed from JSON.',
      );
    }
    return PaymentOutcome._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for PaymentOutcome
  final PaymentOutcomeEnum? valueEnum;

  /// queued
  static const PaymentOutcome queued = PaymentOutcome._(
    valueString: 'queued',
    valueEnum: PaymentOutcomeEnum.queued,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/payment-outcome',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Queued',
    ),
  );

  /// complete
  static const PaymentOutcome complete = PaymentOutcome._(
    valueString: 'complete',
    valueEnum: PaymentOutcomeEnum.complete,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/payment-outcome',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Processing Complete',
    ),
  );

  /// error
  static const PaymentOutcome error = PaymentOutcome._(
    valueString: 'error',
    valueEnum: PaymentOutcomeEnum.error,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/payment-outcome',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Error',
    ),
  );

  /// partial
  static const PaymentOutcome partial = PaymentOutcome._(
    valueString: 'partial',
    valueEnum: PaymentOutcomeEnum.partial,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/payment-outcome',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Partial Processing',
    ),
  );

  /// List of all enum-like values
  static final List<PaymentOutcome> values = [
    queued,
    complete,
    error,
    partial,
  ];

  /// Returns the enum value with an element attached
  PaymentOutcome withElement(Element? newElement) {
    return PaymentOutcome._(
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
  PaymentOutcome clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  PaymentOutcomeCopyWithImpl<PaymentOutcome> get copyWith =>
      PaymentOutcomeCopyWithImpl<PaymentOutcome>(
        this,
        (v) => v as PaymentOutcome,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class PaymentOutcomeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  PaymentOutcomeCopyWithImpl(super._value, super._then);

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
      PaymentOutcome(
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
