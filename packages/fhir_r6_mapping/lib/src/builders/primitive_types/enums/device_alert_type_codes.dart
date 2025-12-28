part of '../primitive_types.dart';

/// Actual enum for DeviceAlertTypeCodes
enum DeviceAlertTypeCodesBuilderEnum {
  /// physiological
  physiological,

  /// technical
  technical,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case DeviceAlertTypeCodesBuilderEnum.physiological:
        return 'physiological';
      case DeviceAlertTypeCodesBuilderEnum.technical:
        return 'technical';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DeviceAlertTypeCodesBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return DeviceAlertTypeCodesBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DeviceAlertTypeCodesBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'physiological':
        return DeviceAlertTypeCodesBuilderEnum.physiological;
      case 'technical':
        return DeviceAlertTypeCodesBuilderEnum.technical;
    }
    return null;
  }
}

/// DeviceAlert Type Codes
class DeviceAlertTypeCodesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  DeviceAlertTypeCodesBuilder._({
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
  factory DeviceAlertTypeCodesBuilder(
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
    final valueEnum = DeviceAlertTypeCodesBuilderEnum.fromString(
      valueString,
    );
    return DeviceAlertTypeCodesBuilder._(
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

  /// Create empty [DeviceAlertTypeCodesBuilder]
  /// with element only
  factory DeviceAlertTypeCodesBuilder.empty() =>
      DeviceAlertTypeCodesBuilder._(valueString: null);

  /// Factory constructor to create
  /// [DeviceAlertTypeCodesBuilder] from JSON.
  factory DeviceAlertTypeCodesBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceAlertTypeCodesBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceAlertTypeCodesBuilder cannot be constructed from JSON.',
      );
    }
    return DeviceAlertTypeCodesBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for DeviceAlertTypeCodesBuilder
  final DeviceAlertTypeCodesBuilderEnum? valueEnum;

  /// physiological
  static DeviceAlertTypeCodesBuilder physiological =
      DeviceAlertTypeCodesBuilder._(
    valueString: 'physiological',
    valueEnum: DeviceAlertTypeCodesBuilderEnum.physiological,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicealert-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Physiological',
    ),
  );

  /// technical
  static DeviceAlertTypeCodesBuilder technical = DeviceAlertTypeCodesBuilder._(
    valueString: 'technical',
    valueEnum: DeviceAlertTypeCodesBuilderEnum.technical,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicealert-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Technical',
    ),
  );

  /// For instances where an Element is present but not value
  static DeviceAlertTypeCodesBuilder elementOnly =
      DeviceAlertTypeCodesBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<DeviceAlertTypeCodesBuilder> values = [
    physiological,
    technical,
  ];

  /// Returns the enum value with an element attached
  DeviceAlertTypeCodesBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return DeviceAlertTypeCodesBuilder._(
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
