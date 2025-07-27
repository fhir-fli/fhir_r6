// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for DeviceDispenseStatusCodes
enum DeviceDispenseStatusCodesBuilderEnum {
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
      case DeviceDispenseStatusCodesBuilderEnum.preparation:
        return 'preparation';
      case DeviceDispenseStatusCodesBuilderEnum.inProgress:
        return 'in-progress';
      case DeviceDispenseStatusCodesBuilderEnum.cancelled:
        return 'cancelled';
      case DeviceDispenseStatusCodesBuilderEnum.onHold:
        return 'on-hold';
      case DeviceDispenseStatusCodesBuilderEnum.completed:
        return 'completed';
      case DeviceDispenseStatusCodesBuilderEnum.enteredInError:
        return 'entered-in-error';
      case DeviceDispenseStatusCodesBuilderEnum.stopped:
        return 'stopped';
      case DeviceDispenseStatusCodesBuilderEnum.declined:
        return 'declined';
      case DeviceDispenseStatusCodesBuilderEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DeviceDispenseStatusCodesBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return DeviceDispenseStatusCodesBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DeviceDispenseStatusCodesBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'preparation':
        return DeviceDispenseStatusCodesBuilderEnum.preparation;
      case 'in-progress':
        return DeviceDispenseStatusCodesBuilderEnum.inProgress;
      case 'cancelled':
        return DeviceDispenseStatusCodesBuilderEnum.cancelled;
      case 'on-hold':
        return DeviceDispenseStatusCodesBuilderEnum.onHold;
      case 'completed':
        return DeviceDispenseStatusCodesBuilderEnum.completed;
      case 'entered-in-error':
        return DeviceDispenseStatusCodesBuilderEnum.enteredInError;
      case 'stopped':
        return DeviceDispenseStatusCodesBuilderEnum.stopped;
      case 'declined':
        return DeviceDispenseStatusCodesBuilderEnum.declined;
      case 'unknown':
        return DeviceDispenseStatusCodesBuilderEnum.unknown;
    }
    return null;
  }
}

/// DeviceDispense Status Codes
class DeviceDispenseStatusCodesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  DeviceDispenseStatusCodesBuilder._({
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
  factory DeviceDispenseStatusCodesBuilder(
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
    final valueEnum = DeviceDispenseStatusCodesBuilderEnum.fromString(
      valueString,
    );
    return DeviceDispenseStatusCodesBuilder._(
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

  /// Create empty [DeviceDispenseStatusCodesBuilder]
  /// with element only
  factory DeviceDispenseStatusCodesBuilder.empty() =>
      DeviceDispenseStatusCodesBuilder._(valueString: null);

  /// Factory constructor to create
  /// [DeviceDispenseStatusCodesBuilder] from JSON.
  factory DeviceDispenseStatusCodesBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceDispenseStatusCodesBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceDispenseStatusCodesBuilder cannot be constructed from JSON.',
      );
    }
    return DeviceDispenseStatusCodesBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for DeviceDispenseStatusCodesBuilder
  final DeviceDispenseStatusCodesBuilderEnum? valueEnum;

  /// preparation
  static DeviceDispenseStatusCodesBuilder preparation =
      DeviceDispenseStatusCodesBuilder._(
    valueString: 'preparation',
    valueEnum: DeviceDispenseStatusCodesBuilderEnum.preparation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicedispense-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Preparation',
    ),
  );

  /// in_progress
  static DeviceDispenseStatusCodesBuilder inProgress =
      DeviceDispenseStatusCodesBuilder._(
    valueString: 'in-progress',
    valueEnum: DeviceDispenseStatusCodesBuilderEnum.inProgress,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicedispense-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'In Progress',
    ),
  );

  /// cancelled
  static DeviceDispenseStatusCodesBuilder cancelled =
      DeviceDispenseStatusCodesBuilder._(
    valueString: 'cancelled',
    valueEnum: DeviceDispenseStatusCodesBuilderEnum.cancelled,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicedispense-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Cancelled',
    ),
  );

  /// on_hold
  static DeviceDispenseStatusCodesBuilder onHold =
      DeviceDispenseStatusCodesBuilder._(
    valueString: 'on-hold',
    valueEnum: DeviceDispenseStatusCodesBuilderEnum.onHold,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicedispense-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'On Hold',
    ),
  );

  /// completed
  static DeviceDispenseStatusCodesBuilder completed =
      DeviceDispenseStatusCodesBuilder._(
    valueString: 'completed',
    valueEnum: DeviceDispenseStatusCodesBuilderEnum.completed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicedispense-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Completed',
    ),
  );

  /// entered_in_error
  static DeviceDispenseStatusCodesBuilder enteredInError =
      DeviceDispenseStatusCodesBuilder._(
    valueString: 'entered-in-error',
    valueEnum: DeviceDispenseStatusCodesBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicedispense-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// stopped
  static DeviceDispenseStatusCodesBuilder stopped =
      DeviceDispenseStatusCodesBuilder._(
    valueString: 'stopped',
    valueEnum: DeviceDispenseStatusCodesBuilderEnum.stopped,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicedispense-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Stopped',
    ),
  );

  /// declined
  static DeviceDispenseStatusCodesBuilder declined =
      DeviceDispenseStatusCodesBuilder._(
    valueString: 'declined',
    valueEnum: DeviceDispenseStatusCodesBuilderEnum.declined,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicedispense-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Declined',
    ),
  );

  /// unknown
  static DeviceDispenseStatusCodesBuilder unknown =
      DeviceDispenseStatusCodesBuilder._(
    valueString: 'unknown',
    valueEnum: DeviceDispenseStatusCodesBuilderEnum.unknown,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicedispense-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Unknown',
    ),
  );

  /// For instances where an Element is present but not value
  static DeviceDispenseStatusCodesBuilder elementOnly =
      DeviceDispenseStatusCodesBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<DeviceDispenseStatusCodesBuilder> values = [
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
  DeviceDispenseStatusCodesBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return DeviceDispenseStatusCodesBuilder._(
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
