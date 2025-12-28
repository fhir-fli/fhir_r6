part of '../primitive_types.dart';

/// Actual enum for DeviceAlertPresenceCodes
enum DeviceAlertPresenceCodesBuilderEnum {
  /// on
  on_,

  /// latched
  latched,

  /// off
  off,

  /// ack
  ack,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case DeviceAlertPresenceCodesBuilderEnum.on_:
        return 'on';
      case DeviceAlertPresenceCodesBuilderEnum.latched:
        return 'latched';
      case DeviceAlertPresenceCodesBuilderEnum.off:
        return 'off';
      case DeviceAlertPresenceCodesBuilderEnum.ack:
        return 'ack';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DeviceAlertPresenceCodesBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return DeviceAlertPresenceCodesBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DeviceAlertPresenceCodesBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'on':
        return DeviceAlertPresenceCodesBuilderEnum.on_;
      case 'latched':
        return DeviceAlertPresenceCodesBuilderEnum.latched;
      case 'off':
        return DeviceAlertPresenceCodesBuilderEnum.off;
      case 'ack':
        return DeviceAlertPresenceCodesBuilderEnum.ack;
    }
    return null;
  }
}

/// DeviceAlert Presence Codes
class DeviceAlertPresenceCodesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  DeviceAlertPresenceCodesBuilder._({
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
  factory DeviceAlertPresenceCodesBuilder(
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
    final valueEnum = DeviceAlertPresenceCodesBuilderEnum.fromString(
      valueString,
    );
    return DeviceAlertPresenceCodesBuilder._(
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

  /// Create empty [DeviceAlertPresenceCodesBuilder]
  /// with element only
  factory DeviceAlertPresenceCodesBuilder.empty() =>
      DeviceAlertPresenceCodesBuilder._(valueString: null);

  /// Factory constructor to create
  /// [DeviceAlertPresenceCodesBuilder] from JSON.
  factory DeviceAlertPresenceCodesBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceAlertPresenceCodesBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceAlertPresenceCodesBuilder cannot be constructed from JSON.',
      );
    }
    return DeviceAlertPresenceCodesBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for DeviceAlertPresenceCodesBuilder
  final DeviceAlertPresenceCodesBuilderEnum? valueEnum;

  /// on_
  static DeviceAlertPresenceCodesBuilder on_ =
      DeviceAlertPresenceCodesBuilder._(
    valueString: 'on',
    valueEnum: DeviceAlertPresenceCodesBuilderEnum.on_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicealert-presence',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'On',
    ),
  );

  /// latched
  static DeviceAlertPresenceCodesBuilder latched =
      DeviceAlertPresenceCodesBuilder._(
    valueString: 'latched',
    valueEnum: DeviceAlertPresenceCodesBuilderEnum.latched,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicealert-presence',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Latched',
    ),
  );

  /// off
  static DeviceAlertPresenceCodesBuilder off =
      DeviceAlertPresenceCodesBuilder._(
    valueString: 'off',
    valueEnum: DeviceAlertPresenceCodesBuilderEnum.off,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicealert-presence',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Off',
    ),
  );

  /// ack
  static DeviceAlertPresenceCodesBuilder ack =
      DeviceAlertPresenceCodesBuilder._(
    valueString: 'ack',
    valueEnum: DeviceAlertPresenceCodesBuilderEnum.ack,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicealert-presence',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Acknowledged',
    ),
  );

  /// For instances where an Element is present but not value
  static DeviceAlertPresenceCodesBuilder elementOnly =
      DeviceAlertPresenceCodesBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<DeviceAlertPresenceCodesBuilder> values = [
    on_,
    latched,
    off,
    ack,
  ];

  /// Returns the enum value with an element attached
  DeviceAlertPresenceCodesBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return DeviceAlertPresenceCodesBuilder._(
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
