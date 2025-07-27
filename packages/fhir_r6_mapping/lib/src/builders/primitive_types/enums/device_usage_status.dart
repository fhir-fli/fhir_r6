// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for DeviceUsageStatus
enum DeviceUsageStatusBuilderEnum {
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
      case DeviceUsageStatusBuilderEnum.active:
        return 'active';
      case DeviceUsageStatusBuilderEnum.completed:
        return 'completed';
      case DeviceUsageStatusBuilderEnum.notDone:
        return 'not-done';
      case DeviceUsageStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
      case DeviceUsageStatusBuilderEnum.intended:
        return 'intended';
      case DeviceUsageStatusBuilderEnum.stopped:
        return 'stopped';
      case DeviceUsageStatusBuilderEnum.onHold:
        return 'on-hold';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DeviceUsageStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return DeviceUsageStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DeviceUsageStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'active':
        return DeviceUsageStatusBuilderEnum.active;
      case 'completed':
        return DeviceUsageStatusBuilderEnum.completed;
      case 'not-done':
        return DeviceUsageStatusBuilderEnum.notDone;
      case 'entered-in-error':
        return DeviceUsageStatusBuilderEnum.enteredInError;
      case 'intended':
        return DeviceUsageStatusBuilderEnum.intended;
      case 'stopped':
        return DeviceUsageStatusBuilderEnum.stopped;
      case 'on-hold':
        return DeviceUsageStatusBuilderEnum.onHold;
    }
    return null;
  }
}

/// A coded concept indicating the current status of the Device Usage.
class DeviceUsageStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  DeviceUsageStatusBuilder._({
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
  factory DeviceUsageStatusBuilder(
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
    final valueEnum = DeviceUsageStatusBuilderEnum.fromString(
      valueString,
    );
    return DeviceUsageStatusBuilder._(
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

  /// Create empty [DeviceUsageStatusBuilder]
  /// with element only
  factory DeviceUsageStatusBuilder.empty() =>
      DeviceUsageStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [DeviceUsageStatusBuilder] from JSON.
  factory DeviceUsageStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceUsageStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceUsageStatusBuilder cannot be constructed from JSON.',
      );
    }
    return DeviceUsageStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for DeviceUsageStatusBuilder
  final DeviceUsageStatusBuilderEnum? valueEnum;

  /// active
  static DeviceUsageStatusBuilder active = DeviceUsageStatusBuilder._(
    valueString: 'active',
    valueEnum: DeviceUsageStatusBuilderEnum.active,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/deviceusage-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Active',
    ),
  );

  /// completed
  static DeviceUsageStatusBuilder completed = DeviceUsageStatusBuilder._(
    valueString: 'completed',
    valueEnum: DeviceUsageStatusBuilderEnum.completed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/deviceusage-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Completed',
    ),
  );

  /// not_done
  static DeviceUsageStatusBuilder notDone = DeviceUsageStatusBuilder._(
    valueString: 'not-done',
    valueEnum: DeviceUsageStatusBuilderEnum.notDone,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/deviceusage-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Not done',
    ),
  );

  /// entered_in_error
  static DeviceUsageStatusBuilder enteredInError = DeviceUsageStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: DeviceUsageStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/deviceusage-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// intended
  static DeviceUsageStatusBuilder intended = DeviceUsageStatusBuilder._(
    valueString: 'intended',
    valueEnum: DeviceUsageStatusBuilderEnum.intended,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/deviceusage-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Intended',
    ),
  );

  /// stopped
  static DeviceUsageStatusBuilder stopped = DeviceUsageStatusBuilder._(
    valueString: 'stopped',
    valueEnum: DeviceUsageStatusBuilderEnum.stopped,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/deviceusage-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Stopped',
    ),
  );

  /// on_hold
  static DeviceUsageStatusBuilder onHold = DeviceUsageStatusBuilder._(
    valueString: 'on-hold',
    valueEnum: DeviceUsageStatusBuilderEnum.onHold,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/deviceusage-status',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'On Hold',
    ),
  );

  /// For instances where an Element is present but not value
  static DeviceUsageStatusBuilder elementOnly = DeviceUsageStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<DeviceUsageStatusBuilder> values = [
    active,
    completed,
    notDone,
    enteredInError,
    intended,
    stopped,
    onHold,
  ];

  /// Returns the enum value with an element attached
  DeviceUsageStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return DeviceUsageStatusBuilder._(
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
