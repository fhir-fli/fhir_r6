// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for DeviceAlertStatusCodes
enum DeviceAlertStatusCodesBuilderEnum {
  /// in-progress
  inProgress,

  /// completed
  completed,

  /// entered-in-error
  enteredInError,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case DeviceAlertStatusCodesBuilderEnum.inProgress:
        return 'in-progress';
      case DeviceAlertStatusCodesBuilderEnum.completed:
        return 'completed';
      case DeviceAlertStatusCodesBuilderEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DeviceAlertStatusCodesBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return DeviceAlertStatusCodesBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DeviceAlertStatusCodesBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'in-progress':
        return DeviceAlertStatusCodesBuilderEnum.inProgress;
      case 'completed':
        return DeviceAlertStatusCodesBuilderEnum.completed;
      case 'entered-in-error':
        return DeviceAlertStatusCodesBuilderEnum.enteredInError;
    }
    return null;
  }
}

/// DeviceAlert Status Codes
class DeviceAlertStatusCodesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  DeviceAlertStatusCodesBuilder._({
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
  factory DeviceAlertStatusCodesBuilder(
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
    final valueEnum = DeviceAlertStatusCodesBuilderEnum.fromString(
      valueString,
    );
    return DeviceAlertStatusCodesBuilder._(
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

  /// Create empty [DeviceAlertStatusCodesBuilder]
  /// with element only
  factory DeviceAlertStatusCodesBuilder.empty() =>
      DeviceAlertStatusCodesBuilder._(valueString: null);

  /// Factory constructor to create
  /// [DeviceAlertStatusCodesBuilder] from JSON.
  factory DeviceAlertStatusCodesBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceAlertStatusCodesBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceAlertStatusCodesBuilder cannot be constructed from JSON.',
      );
    }
    return DeviceAlertStatusCodesBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for DeviceAlertStatusCodesBuilder
  final DeviceAlertStatusCodesBuilderEnum? valueEnum;

  /// in_progress
  static DeviceAlertStatusCodesBuilder inProgress =
      DeviceAlertStatusCodesBuilder._(
    valueString: 'in-progress',
    valueEnum: DeviceAlertStatusCodesBuilderEnum.inProgress,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicealert-status',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'In Progress',
    ),
  );

  /// completed
  static DeviceAlertStatusCodesBuilder completed =
      DeviceAlertStatusCodesBuilder._(
    valueString: 'completed',
    valueEnum: DeviceAlertStatusCodesBuilderEnum.completed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicealert-status',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Completed',
    ),
  );

  /// entered_in_error
  static DeviceAlertStatusCodesBuilder enteredInError =
      DeviceAlertStatusCodesBuilder._(
    valueString: 'entered-in-error',
    valueEnum: DeviceAlertStatusCodesBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicealert-status',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// For instances where an Element is present but not value
  static DeviceAlertStatusCodesBuilder elementOnly =
      DeviceAlertStatusCodesBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<DeviceAlertStatusCodesBuilder> values = [
    inProgress,
    completed,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  DeviceAlertStatusCodesBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return DeviceAlertStatusCodesBuilder._(
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
