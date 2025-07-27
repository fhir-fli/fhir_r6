// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for DeviceCorrectiveActionScope
enum DeviceCorrectiveActionScopeBuilderEnum {
  /// model
  model,

  /// lot-numbers
  lotNumbers,

  /// serial-numbers
  serialNumbers,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case DeviceCorrectiveActionScopeBuilderEnum.model:
        return 'model';
      case DeviceCorrectiveActionScopeBuilderEnum.lotNumbers:
        return 'lot-numbers';
      case DeviceCorrectiveActionScopeBuilderEnum.serialNumbers:
        return 'serial-numbers';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DeviceCorrectiveActionScopeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return DeviceCorrectiveActionScopeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DeviceCorrectiveActionScopeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'model':
        return DeviceCorrectiveActionScopeBuilderEnum.model;
      case 'lot-numbers':
        return DeviceCorrectiveActionScopeBuilderEnum.lotNumbers;
      case 'serial-numbers':
        return DeviceCorrectiveActionScopeBuilderEnum.serialNumbers;
    }
    return null;
  }
}

/// Device - Corrective action scope
class DeviceCorrectiveActionScopeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  DeviceCorrectiveActionScopeBuilder._({
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
  factory DeviceCorrectiveActionScopeBuilder(
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
    final valueEnum = DeviceCorrectiveActionScopeBuilderEnum.fromString(
      valueString,
    );
    return DeviceCorrectiveActionScopeBuilder._(
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

  /// Create empty [DeviceCorrectiveActionScopeBuilder]
  /// with element only
  factory DeviceCorrectiveActionScopeBuilder.empty() =>
      DeviceCorrectiveActionScopeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [DeviceCorrectiveActionScopeBuilder] from JSON.
  factory DeviceCorrectiveActionScopeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceCorrectiveActionScopeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceCorrectiveActionScopeBuilder cannot be constructed from JSON.',
      );
    }
    return DeviceCorrectiveActionScopeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for DeviceCorrectiveActionScopeBuilder
  final DeviceCorrectiveActionScopeBuilderEnum? valueEnum;

  /// model
  static DeviceCorrectiveActionScopeBuilder model =
      DeviceCorrectiveActionScopeBuilder._(
    valueString: 'model',
    valueEnum: DeviceCorrectiveActionScopeBuilderEnum.model,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-correctiveactionscope',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Model',
    ),
  );

  /// lot_numbers
  static DeviceCorrectiveActionScopeBuilder lotNumbers =
      DeviceCorrectiveActionScopeBuilder._(
    valueString: 'lot-numbers',
    valueEnum: DeviceCorrectiveActionScopeBuilderEnum.lotNumbers,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-correctiveactionscope',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Lot Numbers',
    ),
  );

  /// serial_numbers
  static DeviceCorrectiveActionScopeBuilder serialNumbers =
      DeviceCorrectiveActionScopeBuilder._(
    valueString: 'serial-numbers',
    valueEnum: DeviceCorrectiveActionScopeBuilderEnum.serialNumbers,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-correctiveactionscope',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Serial Numbers',
    ),
  );

  /// For instances where an Element is present but not value
  static DeviceCorrectiveActionScopeBuilder elementOnly =
      DeviceCorrectiveActionScopeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<DeviceCorrectiveActionScopeBuilder> values = [
    model,
    lotNumbers,
    serialNumbers,
  ];

  /// Returns the enum value with an element attached
  DeviceCorrectiveActionScopeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return DeviceCorrectiveActionScopeBuilder._(
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
