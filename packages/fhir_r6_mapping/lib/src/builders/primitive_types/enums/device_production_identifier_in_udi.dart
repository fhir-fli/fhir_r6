// ignore_for_file: unused_element_parameter, non_constant_identifier_names, lines_longer_than_80_chars
part of '../primitive_types.dart';

/// Actual enum for DeviceProductionIdentifierInUDI
enum DeviceProductionIdentifierInUDIBuilderEnum {
  /// lot-number
  lotNumber,

  /// manufactured-date
  manufacturedDate,

  /// serial-number
  serialNumber,

  /// expiration-date
  expirationDate,

  /// biological-source
  biologicalSource,

  /// software-version
  softwareVersion,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case DeviceProductionIdentifierInUDIBuilderEnum.lotNumber:
        return 'lot-number';
      case DeviceProductionIdentifierInUDIBuilderEnum.manufacturedDate:
        return 'manufactured-date';
      case DeviceProductionIdentifierInUDIBuilderEnum.serialNumber:
        return 'serial-number';
      case DeviceProductionIdentifierInUDIBuilderEnum.expirationDate:
        return 'expiration-date';
      case DeviceProductionIdentifierInUDIBuilderEnum.biologicalSource:
        return 'biological-source';
      case DeviceProductionIdentifierInUDIBuilderEnum.softwareVersion:
        return 'software-version';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DeviceProductionIdentifierInUDIBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return DeviceProductionIdentifierInUDIBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DeviceProductionIdentifierInUDIBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'lot-number':
        return DeviceProductionIdentifierInUDIBuilderEnum.lotNumber;
      case 'manufactured-date':
        return DeviceProductionIdentifierInUDIBuilderEnum.manufacturedDate;
      case 'serial-number':
        return DeviceProductionIdentifierInUDIBuilderEnum.serialNumber;
      case 'expiration-date':
        return DeviceProductionIdentifierInUDIBuilderEnum.expirationDate;
      case 'biological-source':
        return DeviceProductionIdentifierInUDIBuilderEnum.biologicalSource;
      case 'software-version':
        return DeviceProductionIdentifierInUDIBuilderEnum.softwareVersion;
    }
    return null;
  }
}

/// Device Production Identifier in UDI
class DeviceProductionIdentifierInUDIBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  DeviceProductionIdentifierInUDIBuilder._({
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
  factory DeviceProductionIdentifierInUDIBuilder(
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
    final valueEnum = DeviceProductionIdentifierInUDIBuilderEnum.fromString(
      valueString,
    );
    return DeviceProductionIdentifierInUDIBuilder._(
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

  /// Create empty [DeviceProductionIdentifierInUDIBuilder]
  /// with element only
  factory DeviceProductionIdentifierInUDIBuilder.empty() =>
      DeviceProductionIdentifierInUDIBuilder._(valueString: null);

  /// Factory constructor to create
  /// [DeviceProductionIdentifierInUDIBuilder] from JSON.
  factory DeviceProductionIdentifierInUDIBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceProductionIdentifierInUDIBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceProductionIdentifierInUDIBuilder cannot be constructed from JSON.',
      );
    }
    return DeviceProductionIdentifierInUDIBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for DeviceProductionIdentifierInUDIBuilder
  final DeviceProductionIdentifierInUDIBuilderEnum? valueEnum;

  /// lot_number
  static DeviceProductionIdentifierInUDIBuilder lotNumber =
      DeviceProductionIdentifierInUDIBuilder._(
    valueString: 'lot-number',
    valueEnum: DeviceProductionIdentifierInUDIBuilderEnum.lotNumber,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-productidentifierinudi',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Lot Number',
    ),
  );

  /// manufactured_date
  static DeviceProductionIdentifierInUDIBuilder manufacturedDate =
      DeviceProductionIdentifierInUDIBuilder._(
    valueString: 'manufactured-date',
    valueEnum: DeviceProductionIdentifierInUDIBuilderEnum.manufacturedDate,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-productidentifierinudi',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Manufactured date',
    ),
  );

  /// serial_number
  static DeviceProductionIdentifierInUDIBuilder serialNumber =
      DeviceProductionIdentifierInUDIBuilder._(
    valueString: 'serial-number',
    valueEnum: DeviceProductionIdentifierInUDIBuilderEnum.serialNumber,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-productidentifierinudi',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Serial Number',
    ),
  );

  /// expiration_date
  static DeviceProductionIdentifierInUDIBuilder expirationDate =
      DeviceProductionIdentifierInUDIBuilder._(
    valueString: 'expiration-date',
    valueEnum: DeviceProductionIdentifierInUDIBuilderEnum.expirationDate,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-productidentifierinudi',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Expiration date',
    ),
  );

  /// biological_source
  static DeviceProductionIdentifierInUDIBuilder biologicalSource =
      DeviceProductionIdentifierInUDIBuilder._(
    valueString: 'biological-source',
    valueEnum: DeviceProductionIdentifierInUDIBuilderEnum.biologicalSource,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-productidentifierinudi',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Biological source',
    ),
  );

  /// software_version
  static DeviceProductionIdentifierInUDIBuilder softwareVersion =
      DeviceProductionIdentifierInUDIBuilder._(
    valueString: 'software-version',
    valueEnum: DeviceProductionIdentifierInUDIBuilderEnum.softwareVersion,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-productidentifierinudi',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Software Version',
    ),
  );

  /// For instances where an Element is present but not value
  static DeviceProductionIdentifierInUDIBuilder elementOnly =
      DeviceProductionIdentifierInUDIBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<DeviceProductionIdentifierInUDIBuilder> values = [
    lotNumber,
    manufacturedDate,
    serialNumber,
    expirationDate,
    biologicalSource,
    softwareVersion,
  ];

  /// Returns the enum value with an element attached
  DeviceProductionIdentifierInUDIBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return DeviceProductionIdentifierInUDIBuilder._(
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
