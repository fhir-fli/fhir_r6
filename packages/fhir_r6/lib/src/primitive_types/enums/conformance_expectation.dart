// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ConformanceExpectation
enum ConformanceExpectationEnum {
  /// SHALL
  sHALL,

  /// SHOULD
  sHOULD,

  /// MAY
  mAY,

  /// SHOULD-NOT
  shouldNot,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ConformanceExpectationEnum.sHALL:
        return 'SHALL';
      case ConformanceExpectationEnum.sHOULD:
        return 'SHOULD';
      case ConformanceExpectationEnum.mAY:
        return 'MAY';
      case ConformanceExpectationEnum.shouldNot:
        return 'SHOULD-NOT';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ConformanceExpectationEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ConformanceExpectationEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ConformanceExpectationEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'SHALL':
        return ConformanceExpectationEnum.sHALL;
      case 'SHOULD':
        return ConformanceExpectationEnum.sHOULD;
      case 'MAY':
        return ConformanceExpectationEnum.mAY;
      case 'SHOULD-NOT':
        return ConformanceExpectationEnum.shouldNot;
    }
    return null;
  }
}

/// Description Needed Here
class ConformanceExpectation extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ConformanceExpectation._({
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
  factory ConformanceExpectation(
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
    final valueEnum = ConformanceExpectationEnum.fromString(valueString);
    return ConformanceExpectation._(
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

  /// Factory constructor to create [ConformanceExpectation]
  /// from JSON.
  factory ConformanceExpectation.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ConformanceExpectationEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConformanceExpectation._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConformanceExpectation cannot be constructed from JSON.',
      );
    }
    return ConformanceExpectation._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ConformanceExpectation
  final ConformanceExpectationEnum? valueEnum;

  /// SHALL
  static const ConformanceExpectation sHALL = ConformanceExpectation._(
    valueString: 'SHALL',
    valueEnum: ConformanceExpectationEnum.sHALL,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/conformance-expectation',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'SHALL',
    ),
  );

  /// SHOULD
  static const ConformanceExpectation sHOULD = ConformanceExpectation._(
    valueString: 'SHOULD',
    valueEnum: ConformanceExpectationEnum.sHOULD,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/conformance-expectation',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'SHOULD',
    ),
  );

  /// MAY
  static const ConformanceExpectation mAY = ConformanceExpectation._(
    valueString: 'MAY',
    valueEnum: ConformanceExpectationEnum.mAY,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/conformance-expectation',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'MAY',
    ),
  );

  /// SHOULD_NOT
  static const ConformanceExpectation shouldNot = ConformanceExpectation._(
    valueString: 'SHOULD-NOT',
    valueEnum: ConformanceExpectationEnum.shouldNot,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/conformance-expectation',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'SHOULD-NOT',
    ),
  );

  /// List of all enum-like values
  static final List<ConformanceExpectation> values = [
    sHALL,
    sHOULD,
    mAY,
    shouldNot,
  ];

  /// Returns the enum value with an element attached
  ConformanceExpectation withElement(Element? newElement) {
    return ConformanceExpectation._(
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
  ConformanceExpectation clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ConformanceExpectationCopyWithImpl<ConformanceExpectation> get copyWith =>
      ConformanceExpectationCopyWithImpl<ConformanceExpectation>(
        this,
        (v) => v as ConformanceExpectation,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ConformanceExpectationCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ConformanceExpectationCopyWithImpl(super._value, super._then);

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
      ConformanceExpectation(
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
