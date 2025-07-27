// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for InventoryItemStatusCodes
enum InventoryItemStatusCodesEnum {
  /// active
  active,

  /// inactive
  inactive,

  /// entered-in-error
  enteredInError,

  /// unknown
  unknown,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case InventoryItemStatusCodesEnum.active:
        return 'active';
      case InventoryItemStatusCodesEnum.inactive:
        return 'inactive';
      case InventoryItemStatusCodesEnum.enteredInError:
        return 'entered-in-error';
      case InventoryItemStatusCodesEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static InventoryItemStatusCodesEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return InventoryItemStatusCodesEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static InventoryItemStatusCodesEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'active':
        return InventoryItemStatusCodesEnum.active;
      case 'inactive':
        return InventoryItemStatusCodesEnum.inactive;
      case 'entered-in-error':
        return InventoryItemStatusCodesEnum.enteredInError;
      case 'unknown':
        return InventoryItemStatusCodesEnum.unknown;
    }
    return null;
  }
}

/// InventoryItem Status Codes
class InventoryItemStatusCodes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const InventoryItemStatusCodes._({
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
  factory InventoryItemStatusCodes(
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
    final valueEnum = InventoryItemStatusCodesEnum.fromString(valueString);
    return InventoryItemStatusCodes._(
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

  /// Factory constructor to create [InventoryItemStatusCodes]
  /// from JSON.
  factory InventoryItemStatusCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = InventoryItemStatusCodesEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InventoryItemStatusCodes._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'InventoryItemStatusCodes cannot be constructed from JSON.',
      );
    }
    return InventoryItemStatusCodes._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for InventoryItemStatusCodes
  final InventoryItemStatusCodesEnum? valueEnum;

  /// active
  static const InventoryItemStatusCodes active = InventoryItemStatusCodes._(
    valueString: 'active',
    valueEnum: InventoryItemStatusCodesEnum.active,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/inventoryitem-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Active',
    ),
  );

  /// inactive
  static const InventoryItemStatusCodes inactive = InventoryItemStatusCodes._(
    valueString: 'inactive',
    valueEnum: InventoryItemStatusCodesEnum.inactive,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/inventoryitem-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Inactive',
    ),
  );

  /// entered_in_error
  static const InventoryItemStatusCodes enteredInError =
      InventoryItemStatusCodes._(
    valueString: 'entered-in-error',
    valueEnum: InventoryItemStatusCodesEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/inventoryitem-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// unknown
  static const InventoryItemStatusCodes unknown = InventoryItemStatusCodes._(
    valueString: 'unknown',
    valueEnum: InventoryItemStatusCodesEnum.unknown,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/inventoryitem-status',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Unknown',
    ),
  );

  /// List of all enum-like values
  static final List<InventoryItemStatusCodes> values = [
    active,
    inactive,
    enteredInError,
    unknown,
  ];

  /// Returns the enum value with an element attached
  InventoryItemStatusCodes withElement(Element? newElement) {
    return InventoryItemStatusCodes._(
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
  InventoryItemStatusCodes clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  InventoryItemStatusCodesCopyWithImpl<InventoryItemStatusCodes> get copyWith =>
      InventoryItemStatusCodesCopyWithImpl<InventoryItemStatusCodes>(
        this,
        (v) => v as InventoryItemStatusCodes,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class InventoryItemStatusCodesCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  InventoryItemStatusCodesCopyWithImpl(super._value, super._then);

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
      InventoryItemStatusCodes(
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
