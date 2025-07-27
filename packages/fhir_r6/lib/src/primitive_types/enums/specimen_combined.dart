// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for SpecimenCombined
enum SpecimenCombinedEnum {
  /// grouped
  grouped,

  /// pooled
  pooled,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case SpecimenCombinedEnum.grouped:
        return 'grouped';
      case SpecimenCombinedEnum.pooled:
        return 'pooled';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SpecimenCombinedEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return SpecimenCombinedEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SpecimenCombinedEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'grouped':
        return SpecimenCombinedEnum.grouped;
      case 'pooled':
        return SpecimenCombinedEnum.pooled;
    }
    return null;
  }
}

/// Codes providing the combined status of a specimen.
class SpecimenCombined extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const SpecimenCombined._({
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
  factory SpecimenCombined(
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
    final valueEnum = SpecimenCombinedEnum.fromString(valueString);
    return SpecimenCombined._(
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

  /// Factory constructor to create [SpecimenCombined]
  /// from JSON.
  factory SpecimenCombined.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = SpecimenCombinedEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SpecimenCombined._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SpecimenCombined cannot be constructed from JSON.',
      );
    }
    return SpecimenCombined._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for SpecimenCombined
  final SpecimenCombinedEnum? valueEnum;

  /// grouped
  static const SpecimenCombined grouped = SpecimenCombined._(
    valueString: 'grouped',
    valueEnum: SpecimenCombinedEnum.grouped,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/specimen-combined',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Grouped',
    ),
  );

  /// pooled
  static const SpecimenCombined pooled = SpecimenCombined._(
    valueString: 'pooled',
    valueEnum: SpecimenCombinedEnum.pooled,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/specimen-combined',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Pooled',
    ),
  );

  /// List of all enum-like values
  static final List<SpecimenCombined> values = [
    grouped,
    pooled,
  ];

  /// Returns the enum value with an element attached
  SpecimenCombined withElement(Element? newElement) {
    return SpecimenCombined._(
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
  SpecimenCombined clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  SpecimenCombinedCopyWithImpl<SpecimenCombined> get copyWith =>
      SpecimenCombinedCopyWithImpl<SpecimenCombined>(
        this,
        (v) => v as SpecimenCombined,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class SpecimenCombinedCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  SpecimenCombinedCopyWithImpl(super._value, super._then);

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
      SpecimenCombined(
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
