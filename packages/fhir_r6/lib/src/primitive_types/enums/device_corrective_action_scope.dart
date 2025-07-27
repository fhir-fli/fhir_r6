// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for DeviceCorrectiveActionScope
enum DeviceCorrectiveActionScopeEnum {
  /// model
  model,

  /// lot-numbers
  lotNumbers,

  /// serial-numbers
  serialNumbers,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case DeviceCorrectiveActionScopeEnum.model:
        return 'model';
      case DeviceCorrectiveActionScopeEnum.lotNumbers:
        return 'lot-numbers';
      case DeviceCorrectiveActionScopeEnum.serialNumbers:
        return 'serial-numbers';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DeviceCorrectiveActionScopeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return DeviceCorrectiveActionScopeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DeviceCorrectiveActionScopeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'model':
        return DeviceCorrectiveActionScopeEnum.model;
      case 'lot-numbers':
        return DeviceCorrectiveActionScopeEnum.lotNumbers;
      case 'serial-numbers':
        return DeviceCorrectiveActionScopeEnum.serialNumbers;
    }
    return null;
  }
}

/// Device - Corrective action scope
class DeviceCorrectiveActionScope extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const DeviceCorrectiveActionScope._({
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
  factory DeviceCorrectiveActionScope(
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
    final valueEnum = DeviceCorrectiveActionScopeEnum.fromString(valueString);
    return DeviceCorrectiveActionScope._(
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

  /// Factory constructor to create [DeviceCorrectiveActionScope]
  /// from JSON.
  factory DeviceCorrectiveActionScope.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = DeviceCorrectiveActionScopeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceCorrectiveActionScope._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceCorrectiveActionScope cannot be constructed from JSON.',
      );
    }
    return DeviceCorrectiveActionScope._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for DeviceCorrectiveActionScope
  final DeviceCorrectiveActionScopeEnum? valueEnum;

  /// model
  static const DeviceCorrectiveActionScope model =
      DeviceCorrectiveActionScope._(
    valueString: 'model',
    valueEnum: DeviceCorrectiveActionScopeEnum.model,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-correctiveactionscope',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Model',
    ),
  );

  /// lot_numbers
  static const DeviceCorrectiveActionScope lotNumbers =
      DeviceCorrectiveActionScope._(
    valueString: 'lot-numbers',
    valueEnum: DeviceCorrectiveActionScopeEnum.lotNumbers,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-correctiveactionscope',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Lot Numbers',
    ),
  );

  /// serial_numbers
  static const DeviceCorrectiveActionScope serialNumbers =
      DeviceCorrectiveActionScope._(
    valueString: 'serial-numbers',
    valueEnum: DeviceCorrectiveActionScopeEnum.serialNumbers,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-correctiveactionscope',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Serial Numbers',
    ),
  );

  /// List of all enum-like values
  static final List<DeviceCorrectiveActionScope> values = [
    model,
    lotNumbers,
    serialNumbers,
  ];

  /// Returns the enum value with an element attached
  DeviceCorrectiveActionScope withElement(Element? newElement) {
    return DeviceCorrectiveActionScope._(
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
  DeviceCorrectiveActionScope clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  DeviceCorrectiveActionScopeCopyWithImpl<DeviceCorrectiveActionScope>
      get copyWith =>
          DeviceCorrectiveActionScopeCopyWithImpl<DeviceCorrectiveActionScope>(
            this,
            (v) => v as DeviceCorrectiveActionScope,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class DeviceCorrectiveActionScopeCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  DeviceCorrectiveActionScopeCopyWithImpl(super._value, super._then);

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
      DeviceCorrectiveActionScope(
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
