// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for DeviceDispenseStatusCodes
enum DeviceDispenseStatusCodesEnum {
  /// preparation
  preparation,

  /// in-progress
  inProgress,

  /// cancelled
  cancelled,

  /// on-hold
  onHold,

  /// completed
  completed,

  /// entered-in-error
  enteredInError,

  /// stopped
  stopped,

  /// declined
  declined,

  /// unknown
  unknown,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case DeviceDispenseStatusCodesEnum.preparation:
        return 'preparation';
      case DeviceDispenseStatusCodesEnum.inProgress:
        return 'in-progress';
      case DeviceDispenseStatusCodesEnum.cancelled:
        return 'cancelled';
      case DeviceDispenseStatusCodesEnum.onHold:
        return 'on-hold';
      case DeviceDispenseStatusCodesEnum.completed:
        return 'completed';
      case DeviceDispenseStatusCodesEnum.enteredInError:
        return 'entered-in-error';
      case DeviceDispenseStatusCodesEnum.stopped:
        return 'stopped';
      case DeviceDispenseStatusCodesEnum.declined:
        return 'declined';
      case DeviceDispenseStatusCodesEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DeviceDispenseStatusCodesEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return DeviceDispenseStatusCodesEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DeviceDispenseStatusCodesEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'preparation':
        return DeviceDispenseStatusCodesEnum.preparation;
      case 'in-progress':
        return DeviceDispenseStatusCodesEnum.inProgress;
      case 'cancelled':
        return DeviceDispenseStatusCodesEnum.cancelled;
      case 'on-hold':
        return DeviceDispenseStatusCodesEnum.onHold;
      case 'completed':
        return DeviceDispenseStatusCodesEnum.completed;
      case 'entered-in-error':
        return DeviceDispenseStatusCodesEnum.enteredInError;
      case 'stopped':
        return DeviceDispenseStatusCodesEnum.stopped;
      case 'declined':
        return DeviceDispenseStatusCodesEnum.declined;
      case 'unknown':
        return DeviceDispenseStatusCodesEnum.unknown;
    }
    return null;
  }
}

/// DeviceDispense Status Codes
class DeviceDispenseStatusCodes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const DeviceDispenseStatusCodes._({
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
  factory DeviceDispenseStatusCodes(
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
    final valueEnum = DeviceDispenseStatusCodesEnum.fromString(valueString);
    return DeviceDispenseStatusCodes._(
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

  /// Factory constructor to create [DeviceDispenseStatusCodes]
  /// from JSON.
  factory DeviceDispenseStatusCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = DeviceDispenseStatusCodesEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceDispenseStatusCodes._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceDispenseStatusCodes cannot be constructed from JSON.',
      );
    }
    return DeviceDispenseStatusCodes._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for DeviceDispenseStatusCodes
  final DeviceDispenseStatusCodesEnum? valueEnum;

  /// preparation
  static const DeviceDispenseStatusCodes preparation =
      DeviceDispenseStatusCodes._(
    valueString: 'preparation',
    valueEnum: DeviceDispenseStatusCodesEnum.preparation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicedispense-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Preparation',
    ),
  );

  /// in_progress
  static const DeviceDispenseStatusCodes inProgress =
      DeviceDispenseStatusCodes._(
    valueString: 'in-progress',
    valueEnum: DeviceDispenseStatusCodesEnum.inProgress,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicedispense-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'In Progress',
    ),
  );

  /// cancelled
  static const DeviceDispenseStatusCodes cancelled =
      DeviceDispenseStatusCodes._(
    valueString: 'cancelled',
    valueEnum: DeviceDispenseStatusCodesEnum.cancelled,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicedispense-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Cancelled',
    ),
  );

  /// on_hold
  static const DeviceDispenseStatusCodes onHold = DeviceDispenseStatusCodes._(
    valueString: 'on-hold',
    valueEnum: DeviceDispenseStatusCodesEnum.onHold,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicedispense-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'On Hold',
    ),
  );

  /// completed
  static const DeviceDispenseStatusCodes completed =
      DeviceDispenseStatusCodes._(
    valueString: 'completed',
    valueEnum: DeviceDispenseStatusCodesEnum.completed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicedispense-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Completed',
    ),
  );

  /// entered_in_error
  static const DeviceDispenseStatusCodes enteredInError =
      DeviceDispenseStatusCodes._(
    valueString: 'entered-in-error',
    valueEnum: DeviceDispenseStatusCodesEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicedispense-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// stopped
  static const DeviceDispenseStatusCodes stopped = DeviceDispenseStatusCodes._(
    valueString: 'stopped',
    valueEnum: DeviceDispenseStatusCodesEnum.stopped,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicedispense-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Stopped',
    ),
  );

  /// declined
  static const DeviceDispenseStatusCodes declined = DeviceDispenseStatusCodes._(
    valueString: 'declined',
    valueEnum: DeviceDispenseStatusCodesEnum.declined,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicedispense-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Declined',
    ),
  );

  /// unknown
  static const DeviceDispenseStatusCodes unknown = DeviceDispenseStatusCodes._(
    valueString: 'unknown',
    valueEnum: DeviceDispenseStatusCodesEnum.unknown,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicedispense-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Unknown',
    ),
  );

  /// List of all enum-like values
  static final List<DeviceDispenseStatusCodes> values = [
    preparation,
    inProgress,
    cancelled,
    onHold,
    completed,
    enteredInError,
    stopped,
    declined,
    unknown,
  ];

  /// Returns the enum value with an element attached
  DeviceDispenseStatusCodes withElement(Element? newElement) {
    return DeviceDispenseStatusCodes._(
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
  DeviceDispenseStatusCodes clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  DeviceDispenseStatusCodesCopyWithImpl<DeviceDispenseStatusCodes>
      get copyWith =>
          DeviceDispenseStatusCodesCopyWithImpl<DeviceDispenseStatusCodes>(
            this,
            (v) => v as DeviceDispenseStatusCodes,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class DeviceDispenseStatusCodesCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  DeviceDispenseStatusCodesCopyWithImpl(super._value, super._then);

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
      DeviceDispenseStatusCodes(
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
