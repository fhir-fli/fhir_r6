// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for DeviceProductionIdentifierInUDI
enum DeviceProductionIdentifierInUDIEnum {
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
      case DeviceProductionIdentifierInUDIEnum.lotNumber:
        return 'lot-number';
      case DeviceProductionIdentifierInUDIEnum.manufacturedDate:
        return 'manufactured-date';
      case DeviceProductionIdentifierInUDIEnum.serialNumber:
        return 'serial-number';
      case DeviceProductionIdentifierInUDIEnum.expirationDate:
        return 'expiration-date';
      case DeviceProductionIdentifierInUDIEnum.biologicalSource:
        return 'biological-source';
      case DeviceProductionIdentifierInUDIEnum.softwareVersion:
        return 'software-version';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DeviceProductionIdentifierInUDIEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return DeviceProductionIdentifierInUDIEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DeviceProductionIdentifierInUDIEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'lot-number':
        return DeviceProductionIdentifierInUDIEnum.lotNumber;
      case 'manufactured-date':
        return DeviceProductionIdentifierInUDIEnum.manufacturedDate;
      case 'serial-number':
        return DeviceProductionIdentifierInUDIEnum.serialNumber;
      case 'expiration-date':
        return DeviceProductionIdentifierInUDIEnum.expirationDate;
      case 'biological-source':
        return DeviceProductionIdentifierInUDIEnum.biologicalSource;
      case 'software-version':
        return DeviceProductionIdentifierInUDIEnum.softwareVersion;
    }
    return null;
  }
}

/// Device Production Identifier in UDI
class DeviceProductionIdentifierInUDI extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const DeviceProductionIdentifierInUDI._({
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
  factory DeviceProductionIdentifierInUDI(
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
        DeviceProductionIdentifierInUDIEnum.fromString(valueString);
    return DeviceProductionIdentifierInUDI._(
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

  /// Factory constructor to create [DeviceProductionIdentifierInUDI]
  /// from JSON.
  factory DeviceProductionIdentifierInUDI.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = DeviceProductionIdentifierInUDIEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceProductionIdentifierInUDI._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceProductionIdentifierInUDI cannot be constructed from JSON.',
      );
    }
    return DeviceProductionIdentifierInUDI._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for DeviceProductionIdentifierInUDI
  final DeviceProductionIdentifierInUDIEnum? valueEnum;

  /// lot_number
  static const DeviceProductionIdentifierInUDI lotNumber =
      DeviceProductionIdentifierInUDI._(
    valueString: 'lot-number',
    valueEnum: DeviceProductionIdentifierInUDIEnum.lotNumber,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-productidentifierinudi',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Lot Number',
    ),
  );

  /// manufactured_date
  static const DeviceProductionIdentifierInUDI manufacturedDate =
      DeviceProductionIdentifierInUDI._(
    valueString: 'manufactured-date',
    valueEnum: DeviceProductionIdentifierInUDIEnum.manufacturedDate,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-productidentifierinudi',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Manufactured date',
    ),
  );

  /// serial_number
  static const DeviceProductionIdentifierInUDI serialNumber =
      DeviceProductionIdentifierInUDI._(
    valueString: 'serial-number',
    valueEnum: DeviceProductionIdentifierInUDIEnum.serialNumber,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-productidentifierinudi',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Serial Number',
    ),
  );

  /// expiration_date
  static const DeviceProductionIdentifierInUDI expirationDate =
      DeviceProductionIdentifierInUDI._(
    valueString: 'expiration-date',
    valueEnum: DeviceProductionIdentifierInUDIEnum.expirationDate,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-productidentifierinudi',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Expiration date',
    ),
  );

  /// biological_source
  static const DeviceProductionIdentifierInUDI biologicalSource =
      DeviceProductionIdentifierInUDI._(
    valueString: 'biological-source',
    valueEnum: DeviceProductionIdentifierInUDIEnum.biologicalSource,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-productidentifierinudi',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Biological source',
    ),
  );

  /// software_version
  static const DeviceProductionIdentifierInUDI softwareVersion =
      DeviceProductionIdentifierInUDI._(
    valueString: 'software-version',
    valueEnum: DeviceProductionIdentifierInUDIEnum.softwareVersion,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-productidentifierinudi',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Software Version',
    ),
  );

  /// List of all enum-like values
  static final List<DeviceProductionIdentifierInUDI> values = [
    lotNumber,
    manufacturedDate,
    serialNumber,
    expirationDate,
    biologicalSource,
    softwareVersion,
  ];

  /// Returns the enum value with an element attached
  DeviceProductionIdentifierInUDI withElement(Element? newElement) {
    return DeviceProductionIdentifierInUDI._(
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
  DeviceProductionIdentifierInUDI clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  DeviceProductionIdentifierInUDICopyWithImpl<DeviceProductionIdentifierInUDI>
      get copyWith => DeviceProductionIdentifierInUDICopyWithImpl<
              DeviceProductionIdentifierInUDI>(
            this,
            (v) => v as DeviceProductionIdentifierInUDI,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class DeviceProductionIdentifierInUDICopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  DeviceProductionIdentifierInUDICopyWithImpl(super._value, super._then);

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
      DeviceProductionIdentifierInUDI(
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
