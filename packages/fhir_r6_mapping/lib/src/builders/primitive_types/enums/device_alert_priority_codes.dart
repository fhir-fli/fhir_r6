part of '../primitive_types.dart';

/// Actual enum for DeviceAlertPriorityCodes
enum DeviceAlertPriorityCodesBuilderEnum {
  /// high
  high,

  /// medium
  medium,

  /// low
  low,

  /// info
  info,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case DeviceAlertPriorityCodesBuilderEnum.high:
        return 'high';
      case DeviceAlertPriorityCodesBuilderEnum.medium:
        return 'medium';
      case DeviceAlertPriorityCodesBuilderEnum.low:
        return 'low';
      case DeviceAlertPriorityCodesBuilderEnum.info:
        return 'info';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DeviceAlertPriorityCodesBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return DeviceAlertPriorityCodesBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DeviceAlertPriorityCodesBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'high':
        return DeviceAlertPriorityCodesBuilderEnum.high;
      case 'medium':
        return DeviceAlertPriorityCodesBuilderEnum.medium;
      case 'low':
        return DeviceAlertPriorityCodesBuilderEnum.low;
      case 'info':
        return DeviceAlertPriorityCodesBuilderEnum.info;
    }
    return null;
  }
}

/// DeviceAlert Priority Codes
class DeviceAlertPriorityCodesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  DeviceAlertPriorityCodesBuilder._({
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
  factory DeviceAlertPriorityCodesBuilder(
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
    final valueEnum = DeviceAlertPriorityCodesBuilderEnum.fromString(
      valueString,
    );
    return DeviceAlertPriorityCodesBuilder._(
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

  /// Create empty [DeviceAlertPriorityCodesBuilder]
  /// with element only
  factory DeviceAlertPriorityCodesBuilder.empty() =>
      DeviceAlertPriorityCodesBuilder._(valueString: null);

  /// Factory constructor to create
  /// [DeviceAlertPriorityCodesBuilder] from JSON.
  factory DeviceAlertPriorityCodesBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceAlertPriorityCodesBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceAlertPriorityCodesBuilder cannot be constructed from JSON.',
      );
    }
    return DeviceAlertPriorityCodesBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for DeviceAlertPriorityCodesBuilder
  final DeviceAlertPriorityCodesBuilderEnum? valueEnum;

  /// high
  static DeviceAlertPriorityCodesBuilder high =
      DeviceAlertPriorityCodesBuilder._(
    valueString: 'high',
    valueEnum: DeviceAlertPriorityCodesBuilderEnum.high,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicealert-priority',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'High Priority',
    ),
  );

  /// medium
  static DeviceAlertPriorityCodesBuilder medium =
      DeviceAlertPriorityCodesBuilder._(
    valueString: 'medium',
    valueEnum: DeviceAlertPriorityCodesBuilderEnum.medium,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicealert-priority',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Medium Priority',
    ),
  );

  /// low
  static DeviceAlertPriorityCodesBuilder low =
      DeviceAlertPriorityCodesBuilder._(
    valueString: 'low',
    valueEnum: DeviceAlertPriorityCodesBuilderEnum.low,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicealert-priority',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Low Priority',
    ),
  );

  /// info
  static DeviceAlertPriorityCodesBuilder info =
      DeviceAlertPriorityCodesBuilder._(
    valueString: 'info',
    valueEnum: DeviceAlertPriorityCodesBuilderEnum.info,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicealert-priority',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Information Only',
    ),
  );

  /// For instances where an Element is present but not value
  static DeviceAlertPriorityCodesBuilder elementOnly =
      DeviceAlertPriorityCodesBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<DeviceAlertPriorityCodesBuilder> values = [
    high,
    medium,
    low,
    info,
  ];

  /// Returns the enum value with an element attached
  DeviceAlertPriorityCodesBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return DeviceAlertPriorityCodesBuilder._(
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
