// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for GroupCharacteristicCombination
enum GroupCharacteristicCombinationBuilderEnum {
  /// all-of
  allOf,

  /// any-of
  anyOf,

  /// at-least
  atLeast,

  /// at-most
  atMost,

  /// except-subset
  exceptSubset,

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
      case GroupCharacteristicCombinationBuilderEnum.allOf:
        return 'all-of';
      case GroupCharacteristicCombinationBuilderEnum.anyOf:
        return 'any-of';
      case GroupCharacteristicCombinationBuilderEnum.atLeast:
        return 'at-least';
      case GroupCharacteristicCombinationBuilderEnum.atMost:
        return 'at-most';
      case GroupCharacteristicCombinationBuilderEnum.exceptSubset:
        return 'except-subset';
      case GroupCharacteristicCombinationBuilderEnum.statistical:
        return 'statistical';
      case GroupCharacteristicCombinationBuilderEnum.netEffect:
        return 'net-effect';
      case GroupCharacteristicCombinationBuilderEnum.dataset:
        return 'dataset';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static GroupCharacteristicCombinationBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return GroupCharacteristicCombinationBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static GroupCharacteristicCombinationBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'all-of':
        return GroupCharacteristicCombinationBuilderEnum.allOf;
      case 'any-of':
        return GroupCharacteristicCombinationBuilderEnum.anyOf;
      case 'at-least':
        return GroupCharacteristicCombinationBuilderEnum.atLeast;
      case 'at-most':
        return GroupCharacteristicCombinationBuilderEnum.atMost;
      case 'except-subset':
        return GroupCharacteristicCombinationBuilderEnum.exceptSubset;
      case 'statistical':
        return GroupCharacteristicCombinationBuilderEnum.statistical;
      case 'net-effect':
        return GroupCharacteristicCombinationBuilderEnum.netEffect;
      case 'dataset':
        return GroupCharacteristicCombinationBuilderEnum.dataset;
    }
    return null;
  }
}

/// Logical grouping of characteristics for the Group Resource.
class GroupCharacteristicCombinationBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  GroupCharacteristicCombinationBuilder._({
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
  factory GroupCharacteristicCombinationBuilder(
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
    final valueEnum = GroupCharacteristicCombinationBuilderEnum.fromString(
      valueString,
    );
    return GroupCharacteristicCombinationBuilder._(
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

  /// Create empty [GroupCharacteristicCombinationBuilder]
  /// with element only
  factory GroupCharacteristicCombinationBuilder.empty() =>
      GroupCharacteristicCombinationBuilder._(valueString: null);

  /// Factory constructor to create
  /// [GroupCharacteristicCombinationBuilder] from JSON.
  factory GroupCharacteristicCombinationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GroupCharacteristicCombinationBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GroupCharacteristicCombinationBuilder cannot be constructed from JSON.',
      );
    }
    return GroupCharacteristicCombinationBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for GroupCharacteristicCombinationBuilder
  final GroupCharacteristicCombinationBuilderEnum? valueEnum;

  /// all_of
  static GroupCharacteristicCombinationBuilder allOf =
      GroupCharacteristicCombinationBuilder._(
    valueString: 'all-of',
    valueEnum: GroupCharacteristicCombinationBuilderEnum.allOf,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/group-characteristic-combination',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'All of',
    ),
  );

  /// any_of
  static GroupCharacteristicCombinationBuilder anyOf =
      GroupCharacteristicCombinationBuilder._(
    valueString: 'any-of',
    valueEnum: GroupCharacteristicCombinationBuilderEnum.anyOf,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/group-characteristic-combination',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Any of',
    ),
  );

  /// at_least
  static GroupCharacteristicCombinationBuilder atLeast =
      GroupCharacteristicCombinationBuilder._(
    valueString: 'at-least',
    valueEnum: GroupCharacteristicCombinationBuilderEnum.atLeast,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/group-characteristic-combination',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'At least',
    ),
  );

  /// at_most
  static GroupCharacteristicCombinationBuilder atMost =
      GroupCharacteristicCombinationBuilder._(
    valueString: 'at-most',
    valueEnum: GroupCharacteristicCombinationBuilderEnum.atMost,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/group-characteristic-combination',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'At most',
    ),
  );

  /// except_subset
  static GroupCharacteristicCombinationBuilder exceptSubset =
      GroupCharacteristicCombinationBuilder._(
    valueString: 'except-subset',
    valueEnum: GroupCharacteristicCombinationBuilderEnum.exceptSubset,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/group-characteristic-combination',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Except subset',
    ),
  );

  /// statistical
  static GroupCharacteristicCombinationBuilder statistical =
      GroupCharacteristicCombinationBuilder._(
    valueString: 'statistical',
    valueEnum: GroupCharacteristicCombinationBuilderEnum.statistical,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/group-characteristic-combination',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Statistical',
    ),
  );

  /// net_effect
  static GroupCharacteristicCombinationBuilder netEffect =
      GroupCharacteristicCombinationBuilder._(
    valueString: 'net-effect',
    valueEnum: GroupCharacteristicCombinationBuilderEnum.netEffect,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/group-characteristic-combination',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Net effect',
    ),
  );

  /// dataset
  static GroupCharacteristicCombinationBuilder dataset =
      GroupCharacteristicCombinationBuilder._(
    valueString: 'dataset',
    valueEnum: GroupCharacteristicCombinationBuilderEnum.dataset,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/group-characteristic-combination',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Dataset',
    ),
  );

  /// For instances where an Element is present but not value
  static GroupCharacteristicCombinationBuilder elementOnly =
      GroupCharacteristicCombinationBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<GroupCharacteristicCombinationBuilder> values = [
    allOf,
    anyOf,
    atLeast,
    atMost,
    exceptSubset,
    statistical,
    netEffect,
    dataset,
  ];

  /// Returns the enum value with an element attached
  GroupCharacteristicCombinationBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return GroupCharacteristicCombinationBuilder._(
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
