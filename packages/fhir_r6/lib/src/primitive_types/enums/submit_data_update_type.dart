// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for SubmitDataUpdateType
enum SubmitDataUpdateTypeEnum {
  /// incremental
  incremental,

  /// snapshot
  snapshot,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case SubmitDataUpdateTypeEnum.incremental:
        return 'incremental';
      case SubmitDataUpdateTypeEnum.snapshot:
        return 'snapshot';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SubmitDataUpdateTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return SubmitDataUpdateTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SubmitDataUpdateTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'incremental':
        return SubmitDataUpdateTypeEnum.incremental;
      case 'snapshot':
        return SubmitDataUpdateTypeEnum.snapshot;
    }
    return null;
  }
}

/// Concepts for how a measure report consumer and receiver coordinate data
/// exchange updates. The choices are snapshot or incremental updates
class SubmitDataUpdateType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const SubmitDataUpdateType._({
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
  factory SubmitDataUpdateType(
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
    final valueEnum = SubmitDataUpdateTypeEnum.fromString(valueString);
    return SubmitDataUpdateType._(
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

  /// Factory constructor to create [SubmitDataUpdateType]
  /// from JSON.
  factory SubmitDataUpdateType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = SubmitDataUpdateTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubmitDataUpdateType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SubmitDataUpdateType cannot be constructed from JSON.',
      );
    }
    return SubmitDataUpdateType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for SubmitDataUpdateType
  final SubmitDataUpdateTypeEnum? valueEnum;

  /// incremental
  static const SubmitDataUpdateType incremental = SubmitDataUpdateType._(
    valueString: 'incremental',
    valueEnum: SubmitDataUpdateTypeEnum.incremental,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/submit-data-update-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Incremental',
    ),
  );

  /// snapshot
  static const SubmitDataUpdateType snapshot = SubmitDataUpdateType._(
    valueString: 'snapshot',
    valueEnum: SubmitDataUpdateTypeEnum.snapshot,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/submit-data-update-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Snapshot',
    ),
  );

  /// List of all enum-like values
  static final List<SubmitDataUpdateType> values = [
    incremental,
    snapshot,
  ];

  /// Returns the enum value with an element attached
  SubmitDataUpdateType withElement(Element? newElement) {
    return SubmitDataUpdateType._(
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
  SubmitDataUpdateType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  SubmitDataUpdateTypeCopyWithImpl<SubmitDataUpdateType> get copyWith =>
      SubmitDataUpdateTypeCopyWithImpl<SubmitDataUpdateType>(
        this,
        (v) => v as SubmitDataUpdateType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class SubmitDataUpdateTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  SubmitDataUpdateTypeCopyWithImpl(super._value, super._then);

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
      SubmitDataUpdateType(
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
