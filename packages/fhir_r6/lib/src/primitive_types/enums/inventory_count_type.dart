// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for InventoryCountType
enum InventoryCountTypeEnum {
  /// snapshot
  snapshot,

  /// difference
  difference,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case InventoryCountTypeEnum.snapshot:
        return 'snapshot';
      case InventoryCountTypeEnum.difference:
        return 'difference';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static InventoryCountTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return InventoryCountTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static InventoryCountTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'snapshot':
        return InventoryCountTypeEnum.snapshot;
      case 'difference':
        return InventoryCountTypeEnum.difference;
    }
    return null;
  }
}

/// The type of count.
class InventoryCountType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const InventoryCountType._({
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
  factory InventoryCountType(
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
    final valueEnum = InventoryCountTypeEnum.fromString(valueString);
    return InventoryCountType._(
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

  /// Factory constructor to create [InventoryCountType]
  /// from JSON.
  factory InventoryCountType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = InventoryCountTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InventoryCountType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'InventoryCountType cannot be constructed from JSON.',
      );
    }
    return InventoryCountType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for InventoryCountType
  final InventoryCountTypeEnum? valueEnum;

  /// snapshot
  static const InventoryCountType snapshot = InventoryCountType._(
    valueString: 'snapshot',
    valueEnum: InventoryCountTypeEnum.snapshot,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/inventoryreport-counttype',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Snapshot',
    ),
  );

  /// difference
  static const InventoryCountType difference = InventoryCountType._(
    valueString: 'difference',
    valueEnum: InventoryCountTypeEnum.difference,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/inventoryreport-counttype',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Difference',
    ),
  );

  /// List of all enum-like values
  static final List<InventoryCountType> values = [
    snapshot,
    difference,
  ];

  /// Returns the enum value with an element attached
  InventoryCountType withElement(Element? newElement) {
    return InventoryCountType._(
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
  InventoryCountType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  InventoryCountTypeCopyWithImpl<InventoryCountType> get copyWith =>
      InventoryCountTypeCopyWithImpl<InventoryCountType>(
        this,
        (v) => v as InventoryCountType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class InventoryCountTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  InventoryCountTypeCopyWithImpl(super._value, super._then);

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
      InventoryCountType(
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
