part of '../primitive_types.dart';

/// Actual enum for EvidenceVariableRole
enum EvidenceVariableRoleBuilderEnum {
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
      case EvidenceVariableRoleBuilderEnum.population:
        return 'population';
      case EvidenceVariableRoleBuilderEnum.exposure:
        return 'exposure';
      case EvidenceVariableRoleBuilderEnum.outcome:
        return 'outcome';
      case EvidenceVariableRoleBuilderEnum.covariate:
        return 'covariate';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static EvidenceVariableRoleBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return EvidenceVariableRoleBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static EvidenceVariableRoleBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'population':
        return EvidenceVariableRoleBuilderEnum.population;
      case 'exposure':
        return EvidenceVariableRoleBuilderEnum.exposure;
      case 'outcome':
        return EvidenceVariableRoleBuilderEnum.outcome;
      case 'covariate':
        return EvidenceVariableRoleBuilderEnum.covariate;
    }
    return null;
  }
}

/// The role that the variable plays.
class EvidenceVariableRoleBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  EvidenceVariableRoleBuilder._({
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
  factory EvidenceVariableRoleBuilder(
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
    final valueEnum = EvidenceVariableRoleBuilderEnum.fromString(
      valueString,
    );
    return EvidenceVariableRoleBuilder._(
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

  /// Create empty [EvidenceVariableRoleBuilder]
  /// with element only
  factory EvidenceVariableRoleBuilder.empty() =>
      EvidenceVariableRoleBuilder._(valueString: null);

  /// Factory constructor to create
  /// [EvidenceVariableRoleBuilder] from JSON.
  factory EvidenceVariableRoleBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceVariableRoleBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EvidenceVariableRoleBuilder cannot be constructed from JSON.',
      );
    }
    return EvidenceVariableRoleBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for EvidenceVariableRoleBuilder
  final EvidenceVariableRoleBuilderEnum? valueEnum;

  /// population
  static EvidenceVariableRoleBuilder population = EvidenceVariableRoleBuilder._(
    valueString: 'population',
    valueEnum: EvidenceVariableRoleBuilderEnum.population,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/variable-role',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Population',
    ),
  );

  /// exposure
  static EvidenceVariableRoleBuilder exposure = EvidenceVariableRoleBuilder._(
    valueString: 'exposure',
    valueEnum: EvidenceVariableRoleBuilderEnum.exposure,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/variable-role',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Exposure',
    ),
  );

  /// outcome
  static EvidenceVariableRoleBuilder outcome = EvidenceVariableRoleBuilder._(
    valueString: 'outcome',
    valueEnum: EvidenceVariableRoleBuilderEnum.outcome,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/variable-role',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Outcome',
    ),
  );

  /// covariate
  static EvidenceVariableRoleBuilder covariate = EvidenceVariableRoleBuilder._(
    valueString: 'covariate',
    valueEnum: EvidenceVariableRoleBuilderEnum.covariate,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/variable-role',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Covariate',
    ),
  );

  /// For instances where an Element is present but not value
  static EvidenceVariableRoleBuilder elementOnly =
      EvidenceVariableRoleBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<EvidenceVariableRoleBuilder> values = [
    population,
    exposure,
    outcome,
    covariate,
  ];

  /// Returns the enum value with an element attached
  EvidenceVariableRoleBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return EvidenceVariableRoleBuilder._(
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
