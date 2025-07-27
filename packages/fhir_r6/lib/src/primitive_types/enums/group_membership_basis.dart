// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for GroupMembershipBasis
enum GroupMembershipBasisEnum {
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
      case GroupMembershipBasisEnum.definitional:
        return 'definitional';
      case GroupMembershipBasisEnum.enumerated:
        return 'enumerated';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static GroupMembershipBasisEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return GroupMembershipBasisEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static GroupMembershipBasisEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'definitional':
        return GroupMembershipBasisEnum.definitional;
      case 'enumerated':
        return GroupMembershipBasisEnum.enumerated;
    }
    return null;
  }
}

/// Basis for membership in a group
class GroupMembershipBasis extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const GroupMembershipBasis._({
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
  factory GroupMembershipBasis(
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
    final valueEnum = GroupMembershipBasisEnum.fromString(valueString);
    return GroupMembershipBasis._(
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

  /// Factory constructor to create [GroupMembershipBasis]
  /// from JSON.
  factory GroupMembershipBasis.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = GroupMembershipBasisEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GroupMembershipBasis._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GroupMembershipBasis cannot be constructed from JSON.',
      );
    }
    return GroupMembershipBasis._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for GroupMembershipBasis
  final GroupMembershipBasisEnum? valueEnum;

  /// definitional
  static const GroupMembershipBasis definitional = GroupMembershipBasis._(
    valueString: 'definitional',
    valueEnum: GroupMembershipBasisEnum.definitional,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/group-membership-basis',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Definitional',
    ),
  );

  /// enumerated
  static const GroupMembershipBasis enumerated = GroupMembershipBasis._(
    valueString: 'enumerated',
    valueEnum: GroupMembershipBasisEnum.enumerated,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/group-membership-basis',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Enumerated',
    ),
  );

  /// List of all enum-like values
  static final List<GroupMembershipBasis> values = [
    definitional,
    enumerated,
  ];

  /// Returns the enum value with an element attached
  GroupMembershipBasis withElement(Element? newElement) {
    return GroupMembershipBasis._(
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
  GroupMembershipBasis clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  GroupMembershipBasisCopyWithImpl<GroupMembershipBasis> get copyWith =>
      GroupMembershipBasisCopyWithImpl<GroupMembershipBasis>(
        this,
        (v) => v as GroupMembershipBasis,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class GroupMembershipBasisCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  GroupMembershipBasisCopyWithImpl(super._value, super._then);

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
      GroupMembershipBasis(
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
