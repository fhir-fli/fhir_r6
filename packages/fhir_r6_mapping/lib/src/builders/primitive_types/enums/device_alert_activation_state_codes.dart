part of '../primitive_types.dart';

/// Actual enum for DeviceAlertActivationStateCodes
enum DeviceAlertActivationStateCodesBuilderEnum {
  /// on
  on_,

  /// off
  off,

  /// paused
  paused,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case DeviceAlertActivationStateCodesBuilderEnum.on_:
        return 'on';
      case DeviceAlertActivationStateCodesBuilderEnum.off:
        return 'off';
      case DeviceAlertActivationStateCodesBuilderEnum.paused:
        return 'paused';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DeviceAlertActivationStateCodesBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return DeviceAlertActivationStateCodesBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DeviceAlertActivationStateCodesBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'on':
        return DeviceAlertActivationStateCodesBuilderEnum.on_;
      case 'off':
        return DeviceAlertActivationStateCodesBuilderEnum.off;
      case 'paused':
        return DeviceAlertActivationStateCodesBuilderEnum.paused;
    }
    return null;
  }
}

/// DeviceAlert Activation State Codes
class DeviceAlertActivationStateCodesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  DeviceAlertActivationStateCodesBuilder._({
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
  factory DeviceAlertActivationStateCodesBuilder(
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
    final valueEnum = DeviceAlertActivationStateCodesBuilderEnum.fromString(
      valueString,
    );
    return DeviceAlertActivationStateCodesBuilder._(
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

  /// Create empty [DeviceAlertActivationStateCodesBuilder]
  /// with element only
  factory DeviceAlertActivationStateCodesBuilder.empty() =>
      DeviceAlertActivationStateCodesBuilder._(valueString: null);

  /// Factory constructor to create
  /// [DeviceAlertActivationStateCodesBuilder] from JSON.
  factory DeviceAlertActivationStateCodesBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceAlertActivationStateCodesBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceAlertActivationStateCodesBuilder cannot be constructed from JSON.',
      );
    }
    return DeviceAlertActivationStateCodesBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for DeviceAlertActivationStateCodesBuilder
  final DeviceAlertActivationStateCodesBuilderEnum? valueEnum;

  /// on_
  static DeviceAlertActivationStateCodesBuilder on_ =
      DeviceAlertActivationStateCodesBuilder._(
    valueString: 'on',
    valueEnum: DeviceAlertActivationStateCodesBuilderEnum.on_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicealert-activationState',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'On',
    ),
  );

  /// off
  static DeviceAlertActivationStateCodesBuilder off =
      DeviceAlertActivationStateCodesBuilder._(
    valueString: 'off',
    valueEnum: DeviceAlertActivationStateCodesBuilderEnum.off,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicealert-activationState',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Off',
    ),
  );

  /// paused
  static DeviceAlertActivationStateCodesBuilder paused =
      DeviceAlertActivationStateCodesBuilder._(
    valueString: 'paused',
    valueEnum: DeviceAlertActivationStateCodesBuilderEnum.paused,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicealert-activationState',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Paused',
    ),
  );

  /// For instances where an Element is present but not value
  static DeviceAlertActivationStateCodesBuilder elementOnly =
      DeviceAlertActivationStateCodesBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<DeviceAlertActivationStateCodesBuilder> values = [
    on_,
    off,
    paused,
  ];

  /// Returns the enum value with an element attached
  DeviceAlertActivationStateCodesBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return DeviceAlertActivationStateCodesBuilder._(
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
