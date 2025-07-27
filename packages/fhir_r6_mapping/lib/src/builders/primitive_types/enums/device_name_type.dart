// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for DeviceNameType
enum DeviceNameTypeBuilderEnum {
  /// registered-name
  registeredName,

  /// user-friendly-name
  userFriendlyName,

  /// patient-reported-name
  patientReportedName,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case DeviceNameTypeBuilderEnum.registeredName:
        return 'registered-name';
      case DeviceNameTypeBuilderEnum.userFriendlyName:
        return 'user-friendly-name';
      case DeviceNameTypeBuilderEnum.patientReportedName:
        return 'patient-reported-name';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DeviceNameTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return DeviceNameTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DeviceNameTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'registered-name':
        return DeviceNameTypeBuilderEnum.registeredName;
      case 'user-friendly-name':
        return DeviceNameTypeBuilderEnum.userFriendlyName;
      case 'patient-reported-name':
        return DeviceNameTypeBuilderEnum.patientReportedName;
    }
    return null;
  }
}

/// The type of name the device is referred by.
class DeviceNameTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  DeviceNameTypeBuilder._({
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
  factory DeviceNameTypeBuilder(
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
    final valueEnum = DeviceNameTypeBuilderEnum.fromString(
      valueString,
    );
    return DeviceNameTypeBuilder._(
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

  /// Create empty [DeviceNameTypeBuilder]
  /// with element only
  factory DeviceNameTypeBuilder.empty() =>
      DeviceNameTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [DeviceNameTypeBuilder] from JSON.
  factory DeviceNameTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceNameTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceNameTypeBuilder cannot be constructed from JSON.',
      );
    }
    return DeviceNameTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for DeviceNameTypeBuilder
  final DeviceNameTypeBuilderEnum? valueEnum;

  /// registered_name
  static DeviceNameTypeBuilder registeredName = DeviceNameTypeBuilder._(
    valueString: 'registered-name',
    valueEnum: DeviceNameTypeBuilderEnum.registeredName,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-nametype',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Registered name',
    ),
  );

  /// user_friendly_name
  static DeviceNameTypeBuilder userFriendlyName = DeviceNameTypeBuilder._(
    valueString: 'user-friendly-name',
    valueEnum: DeviceNameTypeBuilderEnum.userFriendlyName,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-nametype',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'User Friendly name',
    ),
  );

  /// patient_reported_name
  static DeviceNameTypeBuilder patientReportedName = DeviceNameTypeBuilder._(
    valueString: 'patient-reported-name',
    valueEnum: DeviceNameTypeBuilderEnum.patientReportedName,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-nametype',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Patient Reported name',
    ),
  );

  /// For instances where an Element is present but not value
  static DeviceNameTypeBuilder elementOnly = DeviceNameTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<DeviceNameTypeBuilder> values = [
    registeredName,
    userFriendlyName,
    patientReportedName,
  ];

  /// Returns the enum value with an element attached
  DeviceNameTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return DeviceNameTypeBuilder._(
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
