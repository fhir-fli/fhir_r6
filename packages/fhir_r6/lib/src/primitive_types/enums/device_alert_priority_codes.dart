// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for DeviceAlertPriorityCodes
enum DeviceAlertPriorityCodesEnum {
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
      case DeviceAlertPriorityCodesEnum.high:
        return 'high';
      case DeviceAlertPriorityCodesEnum.medium:
        return 'medium';
      case DeviceAlertPriorityCodesEnum.low:
        return 'low';
      case DeviceAlertPriorityCodesEnum.info:
        return 'info';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DeviceAlertPriorityCodesEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return DeviceAlertPriorityCodesEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DeviceAlertPriorityCodesEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'high':
        return DeviceAlertPriorityCodesEnum.high;
      case 'medium':
        return DeviceAlertPriorityCodesEnum.medium;
      case 'low':
        return DeviceAlertPriorityCodesEnum.low;
      case 'info':
        return DeviceAlertPriorityCodesEnum.info;
    }
    return null;
  }
}

/// DeviceAlert Priority Codes
class DeviceAlertPriorityCodes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const DeviceAlertPriorityCodes._({
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
  factory DeviceAlertPriorityCodes(
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
    final valueEnum = DeviceAlertPriorityCodesEnum.fromString(valueString);
    return DeviceAlertPriorityCodes._(
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

  /// Factory constructor to create [DeviceAlertPriorityCodes]
  /// from JSON.
  factory DeviceAlertPriorityCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = DeviceAlertPriorityCodesEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceAlertPriorityCodes._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceAlertPriorityCodes cannot be constructed from JSON.',
      );
    }
    return DeviceAlertPriorityCodes._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for DeviceAlertPriorityCodes
  final DeviceAlertPriorityCodesEnum? valueEnum;

  /// high
  static const DeviceAlertPriorityCodes high = DeviceAlertPriorityCodes._(
    valueString: 'high',
    valueEnum: DeviceAlertPriorityCodesEnum.high,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicealert-priority',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'High Priority',
    ),
  );

  /// medium
  static const DeviceAlertPriorityCodes medium = DeviceAlertPriorityCodes._(
    valueString: 'medium',
    valueEnum: DeviceAlertPriorityCodesEnum.medium,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicealert-priority',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Medium Priority',
    ),
  );

  /// low
  static const DeviceAlertPriorityCodes low = DeviceAlertPriorityCodes._(
    valueString: 'low',
    valueEnum: DeviceAlertPriorityCodesEnum.low,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicealert-priority',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Low Priority',
    ),
  );

  /// info
  static const DeviceAlertPriorityCodes info = DeviceAlertPriorityCodes._(
    valueString: 'info',
    valueEnum: DeviceAlertPriorityCodesEnum.info,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicealert-priority',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Information Only',
    ),
  );

  /// List of all enum-like values
  static final List<DeviceAlertPriorityCodes> values = [
    high,
    medium,
    low,
    info,
  ];

  /// Returns the enum value with an element attached
  DeviceAlertPriorityCodes withElement(Element? newElement) {
    return DeviceAlertPriorityCodes._(
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
  DeviceAlertPriorityCodes clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  DeviceAlertPriorityCodesCopyWithImpl<DeviceAlertPriorityCodes> get copyWith =>
      DeviceAlertPriorityCodesCopyWithImpl<DeviceAlertPriorityCodes>(
        this,
        (v) => v as DeviceAlertPriorityCodes,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class DeviceAlertPriorityCodesCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  DeviceAlertPriorityCodesCopyWithImpl(super._value, super._then);

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
      DeviceAlertPriorityCodes(
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
