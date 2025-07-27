// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for PaymentOutcome
enum PaymentOutcomeBuilderEnum {
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
      case PaymentOutcomeBuilderEnum.queued:
        return 'queued';
      case PaymentOutcomeBuilderEnum.complete:
        return 'complete';
      case PaymentOutcomeBuilderEnum.error:
        return 'error';
      case PaymentOutcomeBuilderEnum.partial:
        return 'partial';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static PaymentOutcomeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return PaymentOutcomeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static PaymentOutcomeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'queued':
        return PaymentOutcomeBuilderEnum.queued;
      case 'complete':
        return PaymentOutcomeBuilderEnum.complete;
      case 'error':
        return PaymentOutcomeBuilderEnum.error;
      case 'partial':
        return PaymentOutcomeBuilderEnum.partial;
    }
    return null;
  }
}

/// The outcome of the processing.
class PaymentOutcomeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  PaymentOutcomeBuilder._({
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
  factory PaymentOutcomeBuilder(
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
    final valueEnum = PaymentOutcomeBuilderEnum.fromString(
      valueString,
    );
    return PaymentOutcomeBuilder._(
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

  /// Create empty [PaymentOutcomeBuilder]
  /// with element only
  factory PaymentOutcomeBuilder.empty() =>
      PaymentOutcomeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [PaymentOutcomeBuilder] from JSON.
  factory PaymentOutcomeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PaymentOutcomeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'PaymentOutcomeBuilder cannot be constructed from JSON.',
      );
    }
    return PaymentOutcomeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for PaymentOutcomeBuilder
  final PaymentOutcomeBuilderEnum? valueEnum;

  /// queued
  static PaymentOutcomeBuilder queued = PaymentOutcomeBuilder._(
    valueString: 'queued',
    valueEnum: PaymentOutcomeBuilderEnum.queued,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/payment-outcome',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Queued',
    ),
  );

  /// complete
  static PaymentOutcomeBuilder complete = PaymentOutcomeBuilder._(
    valueString: 'complete',
    valueEnum: PaymentOutcomeBuilderEnum.complete,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/payment-outcome',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Processing Complete',
    ),
  );

  /// error
  static PaymentOutcomeBuilder error = PaymentOutcomeBuilder._(
    valueString: 'error',
    valueEnum: PaymentOutcomeBuilderEnum.error,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/payment-outcome',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Error',
    ),
  );

  /// partial
  static PaymentOutcomeBuilder partial = PaymentOutcomeBuilder._(
    valueString: 'partial',
    valueEnum: PaymentOutcomeBuilderEnum.partial,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/payment-outcome',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Partial Processing',
    ),
  );

  /// For instances where an Element is present but not value
  static PaymentOutcomeBuilder elementOnly = PaymentOutcomeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<PaymentOutcomeBuilder> values = [
    queued,
    complete,
    error,
    partial,
  ];

  /// Returns the enum value with an element attached
  PaymentOutcomeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return PaymentOutcomeBuilder._(
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
