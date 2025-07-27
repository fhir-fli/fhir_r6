// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for AggregationMode
enum AggregationModeBuilderEnum {
  /// contained
  contained,

  /// referenced
  referenced,

  /// bundled
  bundled,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case AggregationModeBuilderEnum.contained:
        return 'contained';
      case AggregationModeBuilderEnum.referenced:
        return 'referenced';
      case AggregationModeBuilderEnum.bundled:
        return 'bundled';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AggregationModeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return AggregationModeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AggregationModeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'contained':
        return AggregationModeBuilderEnum.contained;
      case 'referenced':
        return AggregationModeBuilderEnum.referenced;
      case 'bundled':
        return AggregationModeBuilderEnum.bundled;
    }
    return null;
  }
}

/// How resource references can be aggregated.
class AggregationModeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  AggregationModeBuilder._({
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
  factory AggregationModeBuilder(
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
    final valueEnum = AggregationModeBuilderEnum.fromString(
      valueString,
    );
    return AggregationModeBuilder._(
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

  /// Create empty [AggregationModeBuilder]
  /// with element only
  factory AggregationModeBuilder.empty() =>
      AggregationModeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [AggregationModeBuilder] from JSON.
  factory AggregationModeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AggregationModeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AggregationModeBuilder cannot be constructed from JSON.',
      );
    }
    return AggregationModeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for AggregationModeBuilder
  final AggregationModeBuilderEnum? valueEnum;

  /// contained
  static AggregationModeBuilder contained = AggregationModeBuilder._(
    valueString: 'contained',
    valueEnum: AggregationModeBuilderEnum.contained,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/resource-aggregation-mode',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Contained',
    ),
  );

  /// referenced
  static AggregationModeBuilder referenced = AggregationModeBuilder._(
    valueString: 'referenced',
    valueEnum: AggregationModeBuilderEnum.referenced,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/resource-aggregation-mode',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Referenced',
    ),
  );

  /// bundled
  static AggregationModeBuilder bundled = AggregationModeBuilder._(
    valueString: 'bundled',
    valueEnum: AggregationModeBuilderEnum.bundled,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/resource-aggregation-mode',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Bundled',
    ),
  );

  /// For instances where an Element is present but not value
  static AggregationModeBuilder elementOnly = AggregationModeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<AggregationModeBuilder> values = [
    contained,
    referenced,
    bundled,
  ];

  /// Returns the enum value with an element attached
  AggregationModeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return AggregationModeBuilder._(
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
