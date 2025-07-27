// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for DeviceUsageStatus
enum DeviceUsageStatusEnum {
  /// active
  active,

  /// completed
  completed,

  /// not-done
  notDone,

  /// entered-in-error
  enteredInError,

  /// intended
  intended,

  /// stopped
  stopped,

  /// on-hold
  onHold,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case DeviceUsageStatusEnum.active:
        return 'active';
      case DeviceUsageStatusEnum.completed:
        return 'completed';
      case DeviceUsageStatusEnum.notDone:
        return 'not-done';
      case DeviceUsageStatusEnum.enteredInError:
        return 'entered-in-error';
      case DeviceUsageStatusEnum.intended:
        return 'intended';
      case DeviceUsageStatusEnum.stopped:
        return 'stopped';
      case DeviceUsageStatusEnum.onHold:
        return 'on-hold';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DeviceUsageStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return DeviceUsageStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DeviceUsageStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'active':
        return DeviceUsageStatusEnum.active;
      case 'completed':
        return DeviceUsageStatusEnum.completed;
      case 'not-done':
        return DeviceUsageStatusEnum.notDone;
      case 'entered-in-error':
        return DeviceUsageStatusEnum.enteredInError;
      case 'intended':
        return DeviceUsageStatusEnum.intended;
      case 'stopped':
        return DeviceUsageStatusEnum.stopped;
      case 'on-hold':
        return DeviceUsageStatusEnum.onHold;
    }
    return null;
  }
}

/// A coded concept indicating the current status of the Device Usage.
class DeviceUsageStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const DeviceUsageStatus._({
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
  factory DeviceUsageStatus(
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
    final valueEnum = DeviceUsageStatusEnum.fromString(valueString);
    return DeviceUsageStatus._(
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

  /// Factory constructor to create [DeviceUsageStatus]
  /// from JSON.
  factory DeviceUsageStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = DeviceUsageStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceUsageStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceUsageStatus cannot be constructed from JSON.',
      );
    }
    return DeviceUsageStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for DeviceUsageStatus
  final DeviceUsageStatusEnum? valueEnum;

  /// active
  static const DeviceUsageStatus active = DeviceUsageStatus._(
    valueString: 'active',
    valueEnum: DeviceUsageStatusEnum.active,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/deviceusage-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Active',
    ),
  );

  /// completed
  static const DeviceUsageStatus completed = DeviceUsageStatus._(
    valueString: 'completed',
    valueEnum: DeviceUsageStatusEnum.completed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/deviceusage-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Completed',
    ),
  );

  /// not_done
  static const DeviceUsageStatus notDone = DeviceUsageStatus._(
    valueString: 'not-done',
    valueEnum: DeviceUsageStatusEnum.notDone,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/deviceusage-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Not done',
    ),
  );

  /// entered_in_error
  static const DeviceUsageStatus enteredInError = DeviceUsageStatus._(
    valueString: 'entered-in-error',
    valueEnum: DeviceUsageStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/deviceusage-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// intended
  static const DeviceUsageStatus intended = DeviceUsageStatus._(
    valueString: 'intended',
    valueEnum: DeviceUsageStatusEnum.intended,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/deviceusage-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Intended',
    ),
  );

  /// stopped
  static const DeviceUsageStatus stopped = DeviceUsageStatus._(
    valueString: 'stopped',
    valueEnum: DeviceUsageStatusEnum.stopped,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/deviceusage-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Stopped',
    ),
  );

  /// on_hold
  static const DeviceUsageStatus onHold = DeviceUsageStatus._(
    valueString: 'on-hold',
    valueEnum: DeviceUsageStatusEnum.onHold,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/deviceusage-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'On Hold',
    ),
  );

  /// List of all enum-like values
  static final List<DeviceUsageStatus> values = [
    active,
    completed,
    notDone,
    enteredInError,
    intended,
    stopped,
    onHold,
  ];

  /// Returns the enum value with an element attached
  DeviceUsageStatus withElement(Element? newElement) {
    return DeviceUsageStatus._(
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
  DeviceUsageStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  DeviceUsageStatusCopyWithImpl<DeviceUsageStatus> get copyWith =>
      DeviceUsageStatusCopyWithImpl<DeviceUsageStatus>(
        this,
        (v) => v as DeviceUsageStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class DeviceUsageStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  DeviceUsageStatusCopyWithImpl(super._value, super._then);

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
      DeviceUsageStatus(
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
