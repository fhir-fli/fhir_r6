// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for GroupMembershipBasis
enum GroupMembershipBasisBuilderEnum {
  /// definitional
  definitional,

  /// enumerated
  enumerated,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case GroupMembershipBasisBuilderEnum.definitional:
        return 'definitional';
      case GroupMembershipBasisBuilderEnum.enumerated:
        return 'enumerated';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static GroupMembershipBasisBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return GroupMembershipBasisBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static GroupMembershipBasisBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'definitional':
        return GroupMembershipBasisBuilderEnum.definitional;
      case 'enumerated':
        return GroupMembershipBasisBuilderEnum.enumerated;
    }
    return null;
  }
}

/// Basis for membership in a group
class GroupMembershipBasisBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  GroupMembershipBasisBuilder._({
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
  factory GroupMembershipBasisBuilder(
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
    final valueEnum = GroupMembershipBasisBuilderEnum.fromString(
      valueString,
    );
    return GroupMembershipBasisBuilder._(
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

  /// Create empty [GroupMembershipBasisBuilder]
  /// with element only
  factory GroupMembershipBasisBuilder.empty() =>
      GroupMembershipBasisBuilder._(valueString: null);

  /// Factory constructor to create
  /// [GroupMembershipBasisBuilder] from JSON.
  factory GroupMembershipBasisBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GroupMembershipBasisBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GroupMembershipBasisBuilder cannot be constructed from JSON.',
      );
    }
    return GroupMembershipBasisBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for GroupMembershipBasisBuilder
  final GroupMembershipBasisBuilderEnum? valueEnum;

  /// definitional
  static GroupMembershipBasisBuilder definitional =
      GroupMembershipBasisBuilder._(
    valueString: 'definitional',
    valueEnum: GroupMembershipBasisBuilderEnum.definitional,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/group-membership-basis',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Definitional',
    ),
  );

  /// enumerated
  static GroupMembershipBasisBuilder enumerated = GroupMembershipBasisBuilder._(
    valueString: 'enumerated',
    valueEnum: GroupMembershipBasisBuilderEnum.enumerated,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/group-membership-basis',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Enumerated',
    ),
  );

  /// For instances where an Element is present but not value
  static GroupMembershipBasisBuilder elementOnly =
      GroupMembershipBasisBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<GroupMembershipBasisBuilder> values = [
    definitional,
    enumerated,
  ];

  /// Returns the enum value with an element attached
  GroupMembershipBasisBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return GroupMembershipBasisBuilder._(
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
