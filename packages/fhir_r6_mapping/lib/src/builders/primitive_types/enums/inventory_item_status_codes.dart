// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for InventoryItemStatusCodes
enum InventoryItemStatusCodesBuilderEnum {
  /// active
  active,

  /// inactive
  inactive,

  /// entered-in-error
  enteredInError,

  /// unknown
  unknown,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case InventoryItemStatusCodesBuilderEnum.active:
        return 'active';
      case InventoryItemStatusCodesBuilderEnum.inactive:
        return 'inactive';
      case InventoryItemStatusCodesBuilderEnum.enteredInError:
        return 'entered-in-error';
      case InventoryItemStatusCodesBuilderEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static InventoryItemStatusCodesBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return InventoryItemStatusCodesBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static InventoryItemStatusCodesBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'active':
        return InventoryItemStatusCodesBuilderEnum.active;
      case 'inactive':
        return InventoryItemStatusCodesBuilderEnum.inactive;
      case 'entered-in-error':
        return InventoryItemStatusCodesBuilderEnum.enteredInError;
      case 'unknown':
        return InventoryItemStatusCodesBuilderEnum.unknown;
    }
    return null;
  }
}

/// InventoryItem Status Codes
class InventoryItemStatusCodesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  InventoryItemStatusCodesBuilder._({
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
  factory InventoryItemStatusCodesBuilder(
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
    final valueEnum = InventoryItemStatusCodesBuilderEnum.fromString(
      valueString,
    );
    return InventoryItemStatusCodesBuilder._(
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

  /// Create empty [InventoryItemStatusCodesBuilder]
  /// with element only
  factory InventoryItemStatusCodesBuilder.empty() =>
      InventoryItemStatusCodesBuilder._(valueString: null);

  /// Factory constructor to create
  /// [InventoryItemStatusCodesBuilder] from JSON.
  factory InventoryItemStatusCodesBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InventoryItemStatusCodesBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'InventoryItemStatusCodesBuilder cannot be constructed from JSON.',
      );
    }
    return InventoryItemStatusCodesBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for InventoryItemStatusCodesBuilder
  final InventoryItemStatusCodesBuilderEnum? valueEnum;

  /// active
  static InventoryItemStatusCodesBuilder active =
      InventoryItemStatusCodesBuilder._(
    valueString: 'active',
    valueEnum: InventoryItemStatusCodesBuilderEnum.active,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/inventoryitem-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Active',
    ),
  );

  /// inactive
  static InventoryItemStatusCodesBuilder inactive =
      InventoryItemStatusCodesBuilder._(
    valueString: 'inactive',
    valueEnum: InventoryItemStatusCodesBuilderEnum.inactive,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/inventoryitem-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Inactive',
    ),
  );

  /// entered_in_error
  static InventoryItemStatusCodesBuilder enteredInError =
      InventoryItemStatusCodesBuilder._(
    valueString: 'entered-in-error',
    valueEnum: InventoryItemStatusCodesBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/inventoryitem-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// unknown
  static InventoryItemStatusCodesBuilder unknown =
      InventoryItemStatusCodesBuilder._(
    valueString: 'unknown',
    valueEnum: InventoryItemStatusCodesBuilderEnum.unknown,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/inventoryitem-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Unknown',
    ),
  );

  /// For instances where an Element is present but not value
  static InventoryItemStatusCodesBuilder elementOnly =
      InventoryItemStatusCodesBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<InventoryItemStatusCodesBuilder> values = [
    active,
    inactive,
    enteredInError,
    unknown,
  ];

  /// Returns the enum value with an element attached
  InventoryItemStatusCodesBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return InventoryItemStatusCodesBuilder._(
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
