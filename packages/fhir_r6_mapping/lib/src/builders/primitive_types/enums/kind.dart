// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for Kind
enum KindBuilderEnum {
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
      case KindBuilderEnum.insurance:
        return 'insurance';
      case KindBuilderEnum.selfPay:
        return 'self-pay';
      case KindBuilderEnum.other:
        return 'other';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static KindBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return KindBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static KindBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'insurance':
        return KindBuilderEnum.insurance;
      case 'self-pay':
        return KindBuilderEnum.selfPay;
      case 'other':
        return KindBuilderEnum.other;
    }
    return null;
  }
}

/// The kind of coverage: insurance, selfpay or other.
class KindBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  KindBuilder._({
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
  factory KindBuilder(
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
    final valueEnum = KindBuilderEnum.fromString(
      valueString,
    );
    return KindBuilder._(
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

  /// Create empty [KindBuilder]
  /// with element only
  factory KindBuilder.empty() => KindBuilder._(valueString: null);

  /// Factory constructor to create
  /// [KindBuilder] from JSON.
  factory KindBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return KindBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'KindBuilder cannot be constructed from JSON.',
      );
    }
    return KindBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for KindBuilder
  final KindBuilderEnum? valueEnum;

  /// insurance
  static KindBuilder insurance = KindBuilder._(
    valueString: 'insurance',
    valueEnum: KindBuilderEnum.insurance,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/coverage-kind',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Insurance',
    ),
  );

  /// self_pay
  static KindBuilder selfPay = KindBuilder._(
    valueString: 'self-pay',
    valueEnum: KindBuilderEnum.selfPay,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/coverage-kind',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Self-pay',
    ),
  );

  /// other
  static KindBuilder other = KindBuilder._(
    valueString: 'other',
    valueEnum: KindBuilderEnum.other,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/coverage-kind',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Other',
    ),
  );

  /// For instances where an Element is present but not value
  static KindBuilder elementOnly = KindBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<KindBuilder> values = [
    insurance,
    selfPay,
    other,
  ];

  /// Returns the enum value with an element attached
  KindBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return KindBuilder._(
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
