// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ActorDefinitionActorType
enum ActorDefinitionActorTypeBuilderEnum {
  /// system
  system_,

  /// non-system
  nonSystem,

  /// individual
  individual,

  /// patient
  patient,

  /// practitioner
  practitioner,

  /// related-person
  relatedPerson,

  /// device
  device,

  /// collective
  collective,

  /// care-team
  careTeam,

  /// group
  group,

  /// healthcare-service
  healthcareService,

  /// organization
  organization,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ActorDefinitionActorTypeBuilderEnum.system_:
        return 'system';
      case ActorDefinitionActorTypeBuilderEnum.nonSystem:
        return 'non-system';
      case ActorDefinitionActorTypeBuilderEnum.individual:
        return 'individual';
      case ActorDefinitionActorTypeBuilderEnum.patient:
        return 'patient';
      case ActorDefinitionActorTypeBuilderEnum.practitioner:
        return 'practitioner';
      case ActorDefinitionActorTypeBuilderEnum.relatedPerson:
        return 'related-person';
      case ActorDefinitionActorTypeBuilderEnum.device:
        return 'device';
      case ActorDefinitionActorTypeBuilderEnum.collective:
        return 'collective';
      case ActorDefinitionActorTypeBuilderEnum.careTeam:
        return 'care-team';
      case ActorDefinitionActorTypeBuilderEnum.group:
        return 'group';
      case ActorDefinitionActorTypeBuilderEnum.healthcareService:
        return 'healthcare-service';
      case ActorDefinitionActorTypeBuilderEnum.organization:
        return 'organization';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ActorDefinitionActorTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ActorDefinitionActorTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ActorDefinitionActorTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'system':
        return ActorDefinitionActorTypeBuilderEnum.system_;
      case 'non-system':
        return ActorDefinitionActorTypeBuilderEnum.nonSystem;
      case 'individual':
        return ActorDefinitionActorTypeBuilderEnum.individual;
      case 'patient':
        return ActorDefinitionActorTypeBuilderEnum.patient;
      case 'practitioner':
        return ActorDefinitionActorTypeBuilderEnum.practitioner;
      case 'related-person':
        return ActorDefinitionActorTypeBuilderEnum.relatedPerson;
      case 'device':
        return ActorDefinitionActorTypeBuilderEnum.device;
      case 'collective':
        return ActorDefinitionActorTypeBuilderEnum.collective;
      case 'care-team':
        return ActorDefinitionActorTypeBuilderEnum.careTeam;
      case 'group':
        return ActorDefinitionActorTypeBuilderEnum.group;
      case 'healthcare-service':
        return ActorDefinitionActorTypeBuilderEnum.healthcareService;
      case 'organization':
        return ActorDefinitionActorTypeBuilderEnum.organization;
    }
    return null;
  }
}

/// The type of actor - system or human.
class ActorDefinitionActorTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ActorDefinitionActorTypeBuilder._({
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
  factory ActorDefinitionActorTypeBuilder(
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
    final valueEnum = ActorDefinitionActorTypeBuilderEnum.fromString(
      valueString,
    );
    return ActorDefinitionActorTypeBuilder._(
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

  /// Create empty [ActorDefinitionActorTypeBuilder]
  /// with element only
  factory ActorDefinitionActorTypeBuilder.empty() =>
      ActorDefinitionActorTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ActorDefinitionActorTypeBuilder] from JSON.
  factory ActorDefinitionActorTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActorDefinitionActorTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ActorDefinitionActorTypeBuilder cannot be constructed from JSON.',
      );
    }
    return ActorDefinitionActorTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ActorDefinitionActorTypeBuilder
  final ActorDefinitionActorTypeBuilderEnum? valueEnum;

  /// system_
  static ActorDefinitionActorTypeBuilder system_ =
      ActorDefinitionActorTypeBuilder._(
    valueString: 'system',
    valueEnum: ActorDefinitionActorTypeBuilderEnum.system_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/actordefinition-actor-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'System',
    ),
  );

  /// non_system
  static ActorDefinitionActorTypeBuilder nonSystem =
      ActorDefinitionActorTypeBuilder._(
    valueString: 'non-system',
    valueEnum: ActorDefinitionActorTypeBuilderEnum.nonSystem,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/actordefinition-actor-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Non System',
    ),
  );

  /// individual
  static ActorDefinitionActorTypeBuilder individual =
      ActorDefinitionActorTypeBuilder._(
    valueString: 'individual',
    valueEnum: ActorDefinitionActorTypeBuilderEnum.individual,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/actordefinition-actor-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Individual',
    ),
  );

  /// patient
  static ActorDefinitionActorTypeBuilder patient =
      ActorDefinitionActorTypeBuilder._(
    valueString: 'patient',
    valueEnum: ActorDefinitionActorTypeBuilderEnum.patient,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/actordefinition-actor-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Patient',
    ),
  );

  /// practitioner
  static ActorDefinitionActorTypeBuilder practitioner =
      ActorDefinitionActorTypeBuilder._(
    valueString: 'practitioner',
    valueEnum: ActorDefinitionActorTypeBuilderEnum.practitioner,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/actordefinition-actor-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Practitioner',
    ),
  );

  /// related_person
  static ActorDefinitionActorTypeBuilder relatedPerson =
      ActorDefinitionActorTypeBuilder._(
    valueString: 'related-person',
    valueEnum: ActorDefinitionActorTypeBuilderEnum.relatedPerson,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/actordefinition-actor-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Related Person',
    ),
  );

  /// device
  static ActorDefinitionActorTypeBuilder device =
      ActorDefinitionActorTypeBuilder._(
    valueString: 'device',
    valueEnum: ActorDefinitionActorTypeBuilderEnum.device,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/actordefinition-actor-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Device',
    ),
  );

  /// collective
  static ActorDefinitionActorTypeBuilder collective =
      ActorDefinitionActorTypeBuilder._(
    valueString: 'collective',
    valueEnum: ActorDefinitionActorTypeBuilderEnum.collective,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/actordefinition-actor-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Collective',
    ),
  );

  /// care_team
  static ActorDefinitionActorTypeBuilder careTeam =
      ActorDefinitionActorTypeBuilder._(
    valueString: 'care-team',
    valueEnum: ActorDefinitionActorTypeBuilderEnum.careTeam,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/actordefinition-actor-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Care Team',
    ),
  );

  /// group
  static ActorDefinitionActorTypeBuilder group =
      ActorDefinitionActorTypeBuilder._(
    valueString: 'group',
    valueEnum: ActorDefinitionActorTypeBuilderEnum.group,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/actordefinition-actor-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Group',
    ),
  );

  /// healthcare_service
  static ActorDefinitionActorTypeBuilder healthcareService =
      ActorDefinitionActorTypeBuilder._(
    valueString: 'healthcare-service',
    valueEnum: ActorDefinitionActorTypeBuilderEnum.healthcareService,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/actordefinition-actor-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Healthcare Service',
    ),
  );

  /// organization
  static ActorDefinitionActorTypeBuilder organization =
      ActorDefinitionActorTypeBuilder._(
    valueString: 'organization',
    valueEnum: ActorDefinitionActorTypeBuilderEnum.organization,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/actordefinition-actor-type',
    ),
    version: FhirStringBuilder._(valueString: '6.0.0-ballot3'),
    display: FhirStringBuilder._(
      valueString: 'Organization',
    ),
  );

  /// For instances where an Element is present but not value
  static ActorDefinitionActorTypeBuilder elementOnly =
      ActorDefinitionActorTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ActorDefinitionActorTypeBuilder> values = [
    system_,
    nonSystem,
    individual,
    patient,
    practitioner,
    relatedPerson,
    device,
    collective,
    careTeam,
    group,
    healthcareService,
    organization,
  ];

  /// Returns the enum value with an element attached
  ActorDefinitionActorTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ActorDefinitionActorTypeBuilder._(
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
