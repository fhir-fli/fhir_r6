// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for EvidenceVariableRole
enum EvidenceVariableRoleEnum {
  /// population
  population,

  /// exposure
  exposure,

  /// outcome
  outcome,

  /// covariate
  covariate,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case EvidenceVariableRoleEnum.population:
        return 'population';
      case EvidenceVariableRoleEnum.exposure:
        return 'exposure';
      case EvidenceVariableRoleEnum.outcome:
        return 'outcome';
      case EvidenceVariableRoleEnum.covariate:
        return 'covariate';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static EvidenceVariableRoleEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return EvidenceVariableRoleEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static EvidenceVariableRoleEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'population':
        return EvidenceVariableRoleEnum.population;
      case 'exposure':
        return EvidenceVariableRoleEnum.exposure;
      case 'outcome':
        return EvidenceVariableRoleEnum.outcome;
      case 'covariate':
        return EvidenceVariableRoleEnum.covariate;
    }
    return null;
  }
}

/// The role that the variable plays.
class EvidenceVariableRole extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const EvidenceVariableRole._({
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
  factory EvidenceVariableRole(
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
    final valueEnum = EvidenceVariableRoleEnum.fromString(valueString);
    return EvidenceVariableRole._(
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

  /// Factory constructor to create [EvidenceVariableRole]
  /// from JSON.
  factory EvidenceVariableRole.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = EvidenceVariableRoleEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceVariableRole._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EvidenceVariableRole cannot be constructed from JSON.',
      );
    }
    return EvidenceVariableRole._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for EvidenceVariableRole
  final EvidenceVariableRoleEnum? valueEnum;

  /// population
  static const EvidenceVariableRole population = EvidenceVariableRole._(
    valueString: 'population',
    valueEnum: EvidenceVariableRoleEnum.population,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/variable-role',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Population',
    ),
  );

  /// exposure
  static const EvidenceVariableRole exposure = EvidenceVariableRole._(
    valueString: 'exposure',
    valueEnum: EvidenceVariableRoleEnum.exposure,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/variable-role',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Exposure',
    ),
  );

  /// outcome
  static const EvidenceVariableRole outcome = EvidenceVariableRole._(
    valueString: 'outcome',
    valueEnum: EvidenceVariableRoleEnum.outcome,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/variable-role',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Outcome',
    ),
  );

  /// covariate
  static const EvidenceVariableRole covariate = EvidenceVariableRole._(
    valueString: 'covariate',
    valueEnum: EvidenceVariableRoleEnum.covariate,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/variable-role',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Covariate',
    ),
  );

  /// List of all enum-like values
  static final List<EvidenceVariableRole> values = [
    population,
    exposure,
    outcome,
    covariate,
  ];

  /// Returns the enum value with an element attached
  EvidenceVariableRole withElement(Element? newElement) {
    return EvidenceVariableRole._(
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
  EvidenceVariableRole clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  EvidenceVariableRoleCopyWithImpl<EvidenceVariableRole> get copyWith =>
      EvidenceVariableRoleCopyWithImpl<EvidenceVariableRole>(
        this,
        (v) => v as EvidenceVariableRole,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class EvidenceVariableRoleCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  EvidenceVariableRoleCopyWithImpl(super._value, super._then);

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
      EvidenceVariableRole(
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
