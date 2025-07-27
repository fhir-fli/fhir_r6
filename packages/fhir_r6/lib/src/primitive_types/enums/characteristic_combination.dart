// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for CharacteristicCombination
enum CharacteristicCombinationEnum {
  /// all-of
  allOf,

  /// any-of
  anyOf,

  /// at-least
  atLeast,

  /// at-most
  atMost,

  /// statistical
  statistical,

  /// net-effect
  netEffect,

  /// dataset
  dataset,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case CharacteristicCombinationEnum.allOf:
        return 'all-of';
      case CharacteristicCombinationEnum.anyOf:
        return 'any-of';
      case CharacteristicCombinationEnum.atLeast:
        return 'at-least';
      case CharacteristicCombinationEnum.atMost:
        return 'at-most';
      case CharacteristicCombinationEnum.statistical:
        return 'statistical';
      case CharacteristicCombinationEnum.netEffect:
        return 'net-effect';
      case CharacteristicCombinationEnum.dataset:
        return 'dataset';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static CharacteristicCombinationEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return CharacteristicCombinationEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static CharacteristicCombinationEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'all-of':
        return CharacteristicCombinationEnum.allOf;
      case 'any-of':
        return CharacteristicCombinationEnum.anyOf;
      case 'at-least':
        return CharacteristicCombinationEnum.atLeast;
      case 'at-most':
        return CharacteristicCombinationEnum.atMost;
      case 'statistical':
        return CharacteristicCombinationEnum.statistical;
      case 'net-effect':
        return CharacteristicCombinationEnum.netEffect;
      case 'dataset':
        return CharacteristicCombinationEnum.dataset;
    }
    return null;
  }
}

/// Logical grouping of characteristics.
class CharacteristicCombination extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const CharacteristicCombination._({
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
  factory CharacteristicCombination(
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
    final valueEnum = CharacteristicCombinationEnum.fromString(valueString);
    return CharacteristicCombination._(
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

  /// Factory constructor to create [CharacteristicCombination]
  /// from JSON.
  factory CharacteristicCombination.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = CharacteristicCombinationEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CharacteristicCombination._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CharacteristicCombination cannot be constructed from JSON.',
      );
    }
    return CharacteristicCombination._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for CharacteristicCombination
  final CharacteristicCombinationEnum? valueEnum;

  /// all_of
  static const CharacteristicCombination allOf = CharacteristicCombination._(
    valueString: 'all-of',
    valueEnum: CharacteristicCombinationEnum.allOf,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/characteristic-combination',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'All of',
    ),
  );

  /// any_of
  static const CharacteristicCombination anyOf = CharacteristicCombination._(
    valueString: 'any-of',
    valueEnum: CharacteristicCombinationEnum.anyOf,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/characteristic-combination',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Any of',
    ),
  );

  /// at_least
  static const CharacteristicCombination atLeast = CharacteristicCombination._(
    valueString: 'at-least',
    valueEnum: CharacteristicCombinationEnum.atLeast,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/characteristic-combination',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'At least',
    ),
  );

  /// at_most
  static const CharacteristicCombination atMost = CharacteristicCombination._(
    valueString: 'at-most',
    valueEnum: CharacteristicCombinationEnum.atMost,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/characteristic-combination',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'At most',
    ),
  );

  /// statistical
  static const CharacteristicCombination statistical =
      CharacteristicCombination._(
    valueString: 'statistical',
    valueEnum: CharacteristicCombinationEnum.statistical,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/characteristic-combination',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Statistical',
    ),
  );

  /// net_effect
  static const CharacteristicCombination netEffect =
      CharacteristicCombination._(
    valueString: 'net-effect',
    valueEnum: CharacteristicCombinationEnum.netEffect,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/characteristic-combination',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Net effect',
    ),
  );

  /// dataset
  static const CharacteristicCombination dataset = CharacteristicCombination._(
    valueString: 'dataset',
    valueEnum: CharacteristicCombinationEnum.dataset,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/characteristic-combination',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Dataset',
    ),
  );

  /// List of all enum-like values
  static final List<CharacteristicCombination> values = [
    allOf,
    anyOf,
    atLeast,
    atMost,
    statistical,
    netEffect,
    dataset,
  ];

  /// Returns the enum value with an element attached
  CharacteristicCombination withElement(Element? newElement) {
    return CharacteristicCombination._(
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
  CharacteristicCombination clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  CharacteristicCombinationCopyWithImpl<CharacteristicCombination>
      get copyWith =>
          CharacteristicCombinationCopyWithImpl<CharacteristicCombination>(
            this,
            (v) => v as CharacteristicCombination,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class CharacteristicCombinationCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  CharacteristicCombinationCopyWithImpl(super._value, super._then);

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
      CharacteristicCombination(
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
