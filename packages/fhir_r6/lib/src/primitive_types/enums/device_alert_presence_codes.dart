part of '../primitive_types.dart';

/// Actual enum for DeviceAlertPresenceCodes
enum DeviceAlertPresenceCodesEnum {
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
      case DeviceAlertPresenceCodesEnum.on_:
        return 'on';
      case DeviceAlertPresenceCodesEnum.latched:
        return 'latched';
      case DeviceAlertPresenceCodesEnum.off:
        return 'off';
      case DeviceAlertPresenceCodesEnum.ack:
        return 'ack';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DeviceAlertPresenceCodesEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return DeviceAlertPresenceCodesEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DeviceAlertPresenceCodesEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'on':
        return DeviceAlertPresenceCodesEnum.on_;
      case 'latched':
        return DeviceAlertPresenceCodesEnum.latched;
      case 'off':
        return DeviceAlertPresenceCodesEnum.off;
      case 'ack':
        return DeviceAlertPresenceCodesEnum.ack;
    }
    return null;
  }
}

/// DeviceAlert Presence Codes
class DeviceAlertPresenceCodes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const DeviceAlertPresenceCodes._({
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
  factory DeviceAlertPresenceCodes(
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
    final valueEnum = DeviceAlertPresenceCodesEnum.fromString(valueString);
    return DeviceAlertPresenceCodes._(
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

  /// Factory constructor to create [DeviceAlertPresenceCodes]
  /// from JSON.
  factory DeviceAlertPresenceCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = DeviceAlertPresenceCodesEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceAlertPresenceCodes._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceAlertPresenceCodes cannot be constructed from JSON.',
      );
    }
    return DeviceAlertPresenceCodes._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for DeviceAlertPresenceCodes
  final DeviceAlertPresenceCodesEnum? valueEnum;

  /// on_
  static const DeviceAlertPresenceCodes on_ = DeviceAlertPresenceCodes._(
    valueString: 'on',
    valueEnum: DeviceAlertPresenceCodesEnum.on_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicealert-presence',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'On',
    ),
  );

  /// latched
  static const DeviceAlertPresenceCodes latched = DeviceAlertPresenceCodes._(
    valueString: 'latched',
    valueEnum: DeviceAlertPresenceCodesEnum.latched,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicealert-presence',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Latched',
    ),
  );

  /// off
  static const DeviceAlertPresenceCodes off = DeviceAlertPresenceCodes._(
    valueString: 'off',
    valueEnum: DeviceAlertPresenceCodesEnum.off,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicealert-presence',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Off',
    ),
  );

  /// ack
  static const DeviceAlertPresenceCodes ack = DeviceAlertPresenceCodes._(
    valueString: 'ack',
    valueEnum: DeviceAlertPresenceCodesEnum.ack,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicealert-presence',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Acknowledged',
    ),
  );

  /// List of all enum-like values
  static final List<DeviceAlertPresenceCodes> values = [
    on_,
    latched,
    off,
    ack,
  ];

  /// Returns the enum value with an element attached
  DeviceAlertPresenceCodes withElement(Element? newElement) {
    return DeviceAlertPresenceCodes._(
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
  DeviceAlertPresenceCodes clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  DeviceAlertPresenceCodesCopyWithImpl<DeviceAlertPresenceCodes> get copyWith =>
      DeviceAlertPresenceCodesCopyWithImpl<DeviceAlertPresenceCodes>(
        this,
        (v) => v as DeviceAlertPresenceCodes,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class DeviceAlertPresenceCodesCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  DeviceAlertPresenceCodesCopyWithImpl(super._value, super._then);

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
      DeviceAlertPresenceCodes(
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
