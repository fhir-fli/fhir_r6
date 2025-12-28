part of '../primitive_types.dart';

/// Actual enum for DeviceAlertTypeCodes
enum DeviceAlertTypeCodesEnum {
  /// physiological
  physiological,

  /// technical
  technical,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case DeviceAlertTypeCodesEnum.physiological:
        return 'physiological';
      case DeviceAlertTypeCodesEnum.technical:
        return 'technical';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DeviceAlertTypeCodesEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return DeviceAlertTypeCodesEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DeviceAlertTypeCodesEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'physiological':
        return DeviceAlertTypeCodesEnum.physiological;
      case 'technical':
        return DeviceAlertTypeCodesEnum.technical;
    }
    return null;
  }
}

/// DeviceAlert Type Codes
class DeviceAlertTypeCodes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const DeviceAlertTypeCodes._({
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
  factory DeviceAlertTypeCodes(
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
    final valueEnum = DeviceAlertTypeCodesEnum.fromString(valueString);
    return DeviceAlertTypeCodes._(
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

  /// Factory constructor to create [DeviceAlertTypeCodes]
  /// from JSON.
  factory DeviceAlertTypeCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = DeviceAlertTypeCodesEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceAlertTypeCodes._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceAlertTypeCodes cannot be constructed from JSON.',
      );
    }
    return DeviceAlertTypeCodes._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for DeviceAlertTypeCodes
  final DeviceAlertTypeCodesEnum? valueEnum;

  /// physiological
  static const DeviceAlertTypeCodes physiological = DeviceAlertTypeCodes._(
    valueString: 'physiological',
    valueEnum: DeviceAlertTypeCodesEnum.physiological,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicealert-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Physiological',
    ),
  );

  /// technical
  static const DeviceAlertTypeCodes technical = DeviceAlertTypeCodes._(
    valueString: 'technical',
    valueEnum: DeviceAlertTypeCodesEnum.technical,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/devicealert-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Technical',
    ),
  );

  /// List of all enum-like values
  static final List<DeviceAlertTypeCodes> values = [
    physiological,
    technical,
  ];

  /// Returns the enum value with an element attached
  DeviceAlertTypeCodes withElement(Element? newElement) {
    return DeviceAlertTypeCodes._(
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
  DeviceAlertTypeCodes clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  DeviceAlertTypeCodesCopyWithImpl<DeviceAlertTypeCodes> get copyWith =>
      DeviceAlertTypeCodesCopyWithImpl<DeviceAlertTypeCodes>(
        this,
        (v) => v as DeviceAlertTypeCodes,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class DeviceAlertTypeCodesCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  DeviceAlertTypeCodesCopyWithImpl(super._value, super._then);

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
      DeviceAlertTypeCodes(
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
