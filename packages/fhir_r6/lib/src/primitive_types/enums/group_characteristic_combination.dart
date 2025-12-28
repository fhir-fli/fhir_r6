part of '../primitive_types.dart';

/// Actual enum for GroupCharacteristicCombination
enum GroupCharacteristicCombinationEnum {
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
      case GroupCharacteristicCombinationEnum.allOf:
        return 'all-of';
      case GroupCharacteristicCombinationEnum.anyOf:
        return 'any-of';
      case GroupCharacteristicCombinationEnum.atLeast:
        return 'at-least';
      case GroupCharacteristicCombinationEnum.atMost:
        return 'at-most';
      case GroupCharacteristicCombinationEnum.exceptSubset:
        return 'except-subset';
      case GroupCharacteristicCombinationEnum.statistical:
        return 'statistical';
      case GroupCharacteristicCombinationEnum.netEffect:
        return 'net-effect';
      case GroupCharacteristicCombinationEnum.dataset:
        return 'dataset';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static GroupCharacteristicCombinationEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return GroupCharacteristicCombinationEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static GroupCharacteristicCombinationEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'all-of':
        return GroupCharacteristicCombinationEnum.allOf;
      case 'any-of':
        return GroupCharacteristicCombinationEnum.anyOf;
      case 'at-least':
        return GroupCharacteristicCombinationEnum.atLeast;
      case 'at-most':
        return GroupCharacteristicCombinationEnum.atMost;
      case 'except-subset':
        return GroupCharacteristicCombinationEnum.exceptSubset;
      case 'statistical':
        return GroupCharacteristicCombinationEnum.statistical;
      case 'net-effect':
        return GroupCharacteristicCombinationEnum.netEffect;
      case 'dataset':
        return GroupCharacteristicCombinationEnum.dataset;
    }
    return null;
  }
}

/// Logical grouping of characteristics for the Group Resource.
class GroupCharacteristicCombination extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const GroupCharacteristicCombination._({
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
  factory GroupCharacteristicCombination(
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
    final valueEnum =
        GroupCharacteristicCombinationEnum.fromString(valueString);
    return GroupCharacteristicCombination._(
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

  /// Factory constructor to create [GroupCharacteristicCombination]
  /// from JSON.
  factory GroupCharacteristicCombination.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = GroupCharacteristicCombinationEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GroupCharacteristicCombination._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GroupCharacteristicCombination cannot be constructed from JSON.',
      );
    }
    return GroupCharacteristicCombination._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for GroupCharacteristicCombination
  final GroupCharacteristicCombinationEnum? valueEnum;

  /// all_of
  static const GroupCharacteristicCombination allOf =
      GroupCharacteristicCombination._(
    valueString: 'all-of',
    valueEnum: GroupCharacteristicCombinationEnum.allOf,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/group-characteristic-combination',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'All of',
    ),
  );

  /// any_of
  static const GroupCharacteristicCombination anyOf =
      GroupCharacteristicCombination._(
    valueString: 'any-of',
    valueEnum: GroupCharacteristicCombinationEnum.anyOf,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/group-characteristic-combination',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Any of',
    ),
  );

  /// at_least
  static const GroupCharacteristicCombination atLeast =
      GroupCharacteristicCombination._(
    valueString: 'at-least',
    valueEnum: GroupCharacteristicCombinationEnum.atLeast,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/group-characteristic-combination',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'At least',
    ),
  );

  /// at_most
  static const GroupCharacteristicCombination atMost =
      GroupCharacteristicCombination._(
    valueString: 'at-most',
    valueEnum: GroupCharacteristicCombinationEnum.atMost,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/group-characteristic-combination',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'At most',
    ),
  );

  /// except_subset
  static const GroupCharacteristicCombination exceptSubset =
      GroupCharacteristicCombination._(
    valueString: 'except-subset',
    valueEnum: GroupCharacteristicCombinationEnum.exceptSubset,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/group-characteristic-combination',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Except subset',
    ),
  );

  /// statistical
  static const GroupCharacteristicCombination statistical =
      GroupCharacteristicCombination._(
    valueString: 'statistical',
    valueEnum: GroupCharacteristicCombinationEnum.statistical,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/group-characteristic-combination',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Statistical',
    ),
  );

  /// net_effect
  static const GroupCharacteristicCombination netEffect =
      GroupCharacteristicCombination._(
    valueString: 'net-effect',
    valueEnum: GroupCharacteristicCombinationEnum.netEffect,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/group-characteristic-combination',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Net effect',
    ),
  );

  /// dataset
  static const GroupCharacteristicCombination dataset =
      GroupCharacteristicCombination._(
    valueString: 'dataset',
    valueEnum: GroupCharacteristicCombinationEnum.dataset,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/group-characteristic-combination',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Dataset',
    ),
  );

  /// List of all enum-like values
  static final List<GroupCharacteristicCombination> values = [
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
  GroupCharacteristicCombination withElement(Element? newElement) {
    return GroupCharacteristicCombination._(
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
  GroupCharacteristicCombination clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  GroupCharacteristicCombinationCopyWithImpl<GroupCharacteristicCombination>
      get copyWith => GroupCharacteristicCombinationCopyWithImpl<
              GroupCharacteristicCombination>(
            this,
            (v) => v as GroupCharacteristicCombination,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class GroupCharacteristicCombinationCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  GroupCharacteristicCombinationCopyWithImpl(super._value, super._then);

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
      GroupCharacteristicCombination(
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
