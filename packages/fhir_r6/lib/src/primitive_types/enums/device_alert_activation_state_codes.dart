part of '../primitive_types.dart';

/// Actual enum for DeviceAlertActivationStateCodes
enum DeviceAlertActivationStateCodesEnum {
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
      case DeviceAlertActivationStateCodesEnum.on_:
        return 'on';
      case DeviceAlertActivationStateCodesEnum.off:
        return 'off';
      case DeviceAlertActivationStateCodesEnum.paused:
        return 'paused';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DeviceAlertActivationStateCodesEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return DeviceAlertActivationStateCodesEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DeviceAlertActivationStateCodesEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'on':
        return DeviceAlertActivationStateCodesEnum.on_;
      case 'off':
        return DeviceAlertActivationStateCodesEnum.off;
      case 'paused':
        return DeviceAlertActivationStateCodesEnum.paused;
    }
    return null;
  }
}

/// DeviceAlert Activation State Codes
class DeviceAlertActivationStateCodes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const DeviceAlertActivationStateCodes._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory DeviceAlertActivationStateCodes(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum =
        DeviceAlertActivationStateCodesEnum.fromString(valueString);
    return DeviceAlertActivationStateCodes._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [DeviceAlertActivationStateCodes]
  /// from JSON.
  factory DeviceAlertActivationStateCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = DeviceAlertActivationStateCodesEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceAlertActivationStateCodes._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceAlertActivationStateCodes cannot be constructed from JSON.',
      );
    }
    return DeviceAlertActivationStateCodes._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for DeviceAlertActivationStateCodes
  final DeviceAlertActivationStateCodesEnum? valueEnum;

  /// on_
  static const DeviceAlertActivationStateCodes on_ =
      DeviceAlertActivationStateCodes._(
    valueString: 'on',
    valueEnum: DeviceAlertActivationStateCodesEnum.on_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicealert-activationState',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'On',
    ),
  );

  /// off
  static const DeviceAlertActivationStateCodes off =
      DeviceAlertActivationStateCodes._(
    valueString: 'off',
    valueEnum: DeviceAlertActivationStateCodesEnum.off,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicealert-activationState',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Off',
    ),
  );

  /// paused
  static const DeviceAlertActivationStateCodes paused =
      DeviceAlertActivationStateCodes._(
    valueString: 'paused',
    valueEnum: DeviceAlertActivationStateCodesEnum.paused,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicealert-activationState',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Paused',
    ),
  );

  /// List of all enum-like values
  static final List<DeviceAlertActivationStateCodes> values = [
    on_,
    off,
    paused,
  ];

  /// Returns the enum value with an element attached
  DeviceAlertActivationStateCodes withElement(Element? newElement) {
    return DeviceAlertActivationStateCodes._(
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

  @override
  DeviceAlertActivationStateCodes clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  DeviceAlertActivationStateCodesCopyWithImpl<DeviceAlertActivationStateCodes>
      get copyWith => DeviceAlertActivationStateCodesCopyWithImpl<
              DeviceAlertActivationStateCodes>(
            this,
            (v) => v as DeviceAlertActivationStateCodes,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class DeviceAlertActivationStateCodesCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  DeviceAlertActivationStateCodesCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      DeviceAlertActivationStateCodes(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
