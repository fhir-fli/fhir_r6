// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for CharacteristicCombination
enum CharacteristicCombinationBuilderEnum {
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
      case CharacteristicCombinationBuilderEnum.allOf:
        return 'all-of';
      case CharacteristicCombinationBuilderEnum.anyOf:
        return 'any-of';
      case CharacteristicCombinationBuilderEnum.atLeast:
        return 'at-least';
      case CharacteristicCombinationBuilderEnum.atMost:
        return 'at-most';
      case CharacteristicCombinationBuilderEnum.statistical:
        return 'statistical';
      case CharacteristicCombinationBuilderEnum.netEffect:
        return 'net-effect';
      case CharacteristicCombinationBuilderEnum.dataset:
        return 'dataset';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static CharacteristicCombinationBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return CharacteristicCombinationBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static CharacteristicCombinationBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'all-of':
        return CharacteristicCombinationBuilderEnum.allOf;
      case 'any-of':
        return CharacteristicCombinationBuilderEnum.anyOf;
      case 'at-least':
        return CharacteristicCombinationBuilderEnum.atLeast;
      case 'at-most':
        return CharacteristicCombinationBuilderEnum.atMost;
      case 'statistical':
        return CharacteristicCombinationBuilderEnum.statistical;
      case 'net-effect':
        return CharacteristicCombinationBuilderEnum.netEffect;
      case 'dataset':
        return CharacteristicCombinationBuilderEnum.dataset;
    }
    return null;
  }
}

/// Logical grouping of characteristics.
class CharacteristicCombinationBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  CharacteristicCombinationBuilder._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory CharacteristicCombinationBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    final valueEnum = CharacteristicCombinationBuilderEnum.fromString(
      valueString,
    );
    return CharacteristicCombinationBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [CharacteristicCombinationBuilder]
  /// with element only
  factory CharacteristicCombinationBuilder.empty() =>
      CharacteristicCombinationBuilder._(valueString: null);

  /// Factory constructor to create
  /// [CharacteristicCombinationBuilder] from JSON.
  factory CharacteristicCombinationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CharacteristicCombinationBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CharacteristicCombinationBuilder cannot be constructed from JSON.',
      );
    }
    return CharacteristicCombinationBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for CharacteristicCombinationBuilder
  final CharacteristicCombinationBuilderEnum? valueEnum;

  /// all_of
  static CharacteristicCombinationBuilder allOf =
      CharacteristicCombinationBuilder._(
    valueString: 'all-of',
    valueEnum: CharacteristicCombinationBuilderEnum.allOf,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/characteristic-combination',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'All of',
    ),
  );

  /// any_of
  static CharacteristicCombinationBuilder anyOf =
      CharacteristicCombinationBuilder._(
    valueString: 'any-of',
    valueEnum: CharacteristicCombinationBuilderEnum.anyOf,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/characteristic-combination',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Any of',
    ),
  );

  /// at_least
  static CharacteristicCombinationBuilder atLeast =
      CharacteristicCombinationBuilder._(
    valueString: 'at-least',
    valueEnum: CharacteristicCombinationBuilderEnum.atLeast,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/characteristic-combination',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'At least',
    ),
  );

  /// at_most
  static CharacteristicCombinationBuilder atMost =
      CharacteristicCombinationBuilder._(
    valueString: 'at-most',
    valueEnum: CharacteristicCombinationBuilderEnum.atMost,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/characteristic-combination',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'At most',
    ),
  );

  /// statistical
  static CharacteristicCombinationBuilder statistical =
      CharacteristicCombinationBuilder._(
    valueString: 'statistical',
    valueEnum: CharacteristicCombinationBuilderEnum.statistical,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/characteristic-combination',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Statistical',
    ),
  );

  /// net_effect
  static CharacteristicCombinationBuilder netEffect =
      CharacteristicCombinationBuilder._(
    valueString: 'net-effect',
    valueEnum: CharacteristicCombinationBuilderEnum.netEffect,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/characteristic-combination',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Net effect',
    ),
  );

  /// dataset
  static CharacteristicCombinationBuilder dataset =
      CharacteristicCombinationBuilder._(
    valueString: 'dataset',
    valueEnum: CharacteristicCombinationBuilderEnum.dataset,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/characteristic-combination',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Dataset',
    ),
  );

  /// For instances where an Element is present but not value
  static CharacteristicCombinationBuilder elementOnly =
      CharacteristicCombinationBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<CharacteristicCombinationBuilder> values = [
    allOf,
    anyOf,
    atLeast,
    atMost,
    statistical,
    netEffect,
    dataset,
  ];

  /// Returns the enum value with an element attached
  CharacteristicCombinationBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return CharacteristicCombinationBuilder._(
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
}
