// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ConformanceExpectation
enum ConformanceExpectationBuilderEnum {
  /// SHALL
  sHALL,

  /// SHOULD
  sHOULD,

  /// MAY
  mAY,

  /// SHOULD-NOT
  shouldNot,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ConformanceExpectationBuilderEnum.sHALL:
        return 'SHALL';
      case ConformanceExpectationBuilderEnum.sHOULD:
        return 'SHOULD';
      case ConformanceExpectationBuilderEnum.mAY:
        return 'MAY';
      case ConformanceExpectationBuilderEnum.shouldNot:
        return 'SHOULD-NOT';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ConformanceExpectationBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ConformanceExpectationBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ConformanceExpectationBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'SHALL':
        return ConformanceExpectationBuilderEnum.sHALL;
      case 'SHOULD':
        return ConformanceExpectationBuilderEnum.sHOULD;
      case 'MAY':
        return ConformanceExpectationBuilderEnum.mAY;
      case 'SHOULD-NOT':
        return ConformanceExpectationBuilderEnum.shouldNot;
    }
    return null;
  }
}

/// Description Needed Here
class ConformanceExpectationBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ConformanceExpectationBuilder._({
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
  factory ConformanceExpectationBuilder(
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
    final valueEnum = ConformanceExpectationBuilderEnum.fromString(
      valueString,
    );
    return ConformanceExpectationBuilder._(
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

  /// Create empty [ConformanceExpectationBuilder]
  /// with element only
  factory ConformanceExpectationBuilder.empty() =>
      ConformanceExpectationBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ConformanceExpectationBuilder] from JSON.
  factory ConformanceExpectationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConformanceExpectationBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConformanceExpectationBuilder cannot be constructed from JSON.',
      );
    }
    return ConformanceExpectationBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ConformanceExpectationBuilder
  final ConformanceExpectationBuilderEnum? valueEnum;

  /// SHALL
  static ConformanceExpectationBuilder sHALL = ConformanceExpectationBuilder._(
    valueString: 'SHALL',
    valueEnum: ConformanceExpectationBuilderEnum.sHALL,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/conformance-expectation',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'SHALL',
    ),
  );

  /// SHOULD
  static ConformanceExpectationBuilder sHOULD = ConformanceExpectationBuilder._(
    valueString: 'SHOULD',
    valueEnum: ConformanceExpectationBuilderEnum.sHOULD,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/conformance-expectation',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'SHOULD',
    ),
  );

  /// MAY
  static ConformanceExpectationBuilder mAY = ConformanceExpectationBuilder._(
    valueString: 'MAY',
    valueEnum: ConformanceExpectationBuilderEnum.mAY,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/conformance-expectation',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'MAY',
    ),
  );

  /// SHOULD_NOT
  static ConformanceExpectationBuilder shouldNot =
      ConformanceExpectationBuilder._(
    valueString: 'SHOULD-NOT',
    valueEnum: ConformanceExpectationBuilderEnum.shouldNot,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/conformance-expectation',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'SHOULD-NOT',
    ),
  );

  /// For instances where an Element is present but not value
  static ConformanceExpectationBuilder elementOnly =
      ConformanceExpectationBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ConformanceExpectationBuilder> values = [
    sHALL,
    sHOULD,
    mAY,
    shouldNot,
  ];

  /// Returns the enum value with an element attached
  ConformanceExpectationBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ConformanceExpectationBuilder._(
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
