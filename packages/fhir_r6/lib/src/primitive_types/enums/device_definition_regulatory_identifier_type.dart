// ignore_for_file: unused_element_parameter, non_constant_identifier_names, lines_longer_than_80_chars
part of '../primitive_types.dart';

/// Actual enum for DeviceDefinitionRegulatoryIdentifierType
enum DeviceDefinitionRegulatoryIdentifierTypeEnum {
  /// basic
  basic,

  /// master
  master,

  /// license
  license,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case DeviceDefinitionRegulatoryIdentifierTypeEnum.basic:
        return 'basic';
      case DeviceDefinitionRegulatoryIdentifierTypeEnum.master:
        return 'master';
      case DeviceDefinitionRegulatoryIdentifierTypeEnum.license:
        return 'license';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DeviceDefinitionRegulatoryIdentifierTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return DeviceDefinitionRegulatoryIdentifierTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DeviceDefinitionRegulatoryIdentifierTypeEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'basic':
        return DeviceDefinitionRegulatoryIdentifierTypeEnum.basic;
      case 'master':
        return DeviceDefinitionRegulatoryIdentifierTypeEnum.master;
      case 'license':
        return DeviceDefinitionRegulatoryIdentifierTypeEnum.license;
    }
    return null;
  }
}

/// Regulatory Identifier type
class DeviceDefinitionRegulatoryIdentifierType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const DeviceDefinitionRegulatoryIdentifierType._({
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
  factory DeviceDefinitionRegulatoryIdentifierType(
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
        DeviceDefinitionRegulatoryIdentifierTypeEnum.fromString(valueString);
    return DeviceDefinitionRegulatoryIdentifierType._(
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

  /// Factory constructor to create [DeviceDefinitionRegulatoryIdentifierType]
  /// from JSON.
  factory DeviceDefinitionRegulatoryIdentifierType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum =
        DeviceDefinitionRegulatoryIdentifierTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceDefinitionRegulatoryIdentifierType._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceDefinitionRegulatoryIdentifierType cannot be constructed from JSON.',
      );
    }
    return DeviceDefinitionRegulatoryIdentifierType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for DeviceDefinitionRegulatoryIdentifierType
  final DeviceDefinitionRegulatoryIdentifierTypeEnum? valueEnum;

  /// basic
  static const DeviceDefinitionRegulatoryIdentifierType basic =
      DeviceDefinitionRegulatoryIdentifierType._(
    valueString: 'basic',
    valueEnum: DeviceDefinitionRegulatoryIdentifierTypeEnum.basic,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/devicedefinition-regulatory-identifier-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Basic',
    ),
  );

  /// master
  static const DeviceDefinitionRegulatoryIdentifierType master =
      DeviceDefinitionRegulatoryIdentifierType._(
    valueString: 'master',
    valueEnum: DeviceDefinitionRegulatoryIdentifierTypeEnum.master,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/devicedefinition-regulatory-identifier-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Master',
    ),
  );

  /// license
  static const DeviceDefinitionRegulatoryIdentifierType license =
      DeviceDefinitionRegulatoryIdentifierType._(
    valueString: 'license',
    valueEnum: DeviceDefinitionRegulatoryIdentifierTypeEnum.license,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/devicedefinition-regulatory-identifier-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'License',
    ),
  );

  /// List of all enum-like values
  static final List<DeviceDefinitionRegulatoryIdentifierType> values = [
    basic,
    master,
    license,
  ];

  /// Returns the enum value with an element attached
  DeviceDefinitionRegulatoryIdentifierType withElement(Element? newElement) {
    return DeviceDefinitionRegulatoryIdentifierType._(
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
  DeviceDefinitionRegulatoryIdentifierType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  DeviceDefinitionRegulatoryIdentifierTypeCopyWithImpl<
          DeviceDefinitionRegulatoryIdentifierType>
      get copyWith => DeviceDefinitionRegulatoryIdentifierTypeCopyWithImpl<
              DeviceDefinitionRegulatoryIdentifierType>(
            this,
            (v) => v as DeviceDefinitionRegulatoryIdentifierType,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class DeviceDefinitionRegulatoryIdentifierTypeCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  DeviceDefinitionRegulatoryIdentifierTypeCopyWithImpl(
    super._value,
    super._then,
  );

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
      DeviceDefinitionRegulatoryIdentifierType(
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
