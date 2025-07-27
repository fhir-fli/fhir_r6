// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for InventoryCountType
enum InventoryCountTypeBuilderEnum {
  /// snapshot
  snapshot,

  /// difference
  difference,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case InventoryCountTypeBuilderEnum.snapshot:
        return 'snapshot';
      case InventoryCountTypeBuilderEnum.difference:
        return 'difference';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static InventoryCountTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return InventoryCountTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static InventoryCountTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'snapshot':
        return InventoryCountTypeBuilderEnum.snapshot;
      case 'difference':
        return InventoryCountTypeBuilderEnum.difference;
    }
    return null;
  }
}

/// The type of count.
class InventoryCountTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  InventoryCountTypeBuilder._({
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
  factory InventoryCountTypeBuilder(
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
    final valueEnum = InventoryCountTypeBuilderEnum.fromString(
      valueString,
    );
    return InventoryCountTypeBuilder._(
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

  /// Create empty [InventoryCountTypeBuilder]
  /// with element only
  factory InventoryCountTypeBuilder.empty() =>
      InventoryCountTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [InventoryCountTypeBuilder] from JSON.
  factory InventoryCountTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InventoryCountTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'InventoryCountTypeBuilder cannot be constructed from JSON.',
      );
    }
    return InventoryCountTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for InventoryCountTypeBuilder
  final InventoryCountTypeBuilderEnum? valueEnum;

  /// snapshot
  static InventoryCountTypeBuilder snapshot = InventoryCountTypeBuilder._(
    valueString: 'snapshot',
    valueEnum: InventoryCountTypeBuilderEnum.snapshot,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/inventoryreport-counttype',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Snapshot',
    ),
  );

  /// difference
  static InventoryCountTypeBuilder difference = InventoryCountTypeBuilder._(
    valueString: 'difference',
    valueEnum: InventoryCountTypeBuilderEnum.difference,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/inventoryreport-counttype',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Difference',
    ),
  );

  /// For instances where an Element is present but not value
  static InventoryCountTypeBuilder elementOnly = InventoryCountTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<InventoryCountTypeBuilder> values = [
    snapshot,
    difference,
  ];

  /// Returns the enum value with an element attached
  InventoryCountTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return InventoryCountTypeBuilder._(
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
