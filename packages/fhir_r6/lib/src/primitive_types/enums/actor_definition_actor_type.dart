// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ActorDefinitionActorType
enum ActorDefinitionActorTypeEnum {
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
      case ActorDefinitionActorTypeEnum.system_:
        return 'system';
      case ActorDefinitionActorTypeEnum.nonSystem:
        return 'non-system';
      case ActorDefinitionActorTypeEnum.individual:
        return 'individual';
      case ActorDefinitionActorTypeEnum.patient:
        return 'patient';
      case ActorDefinitionActorTypeEnum.practitioner:
        return 'practitioner';
      case ActorDefinitionActorTypeEnum.relatedPerson:
        return 'related-person';
      case ActorDefinitionActorTypeEnum.device:
        return 'device';
      case ActorDefinitionActorTypeEnum.collective:
        return 'collective';
      case ActorDefinitionActorTypeEnum.careTeam:
        return 'care-team';
      case ActorDefinitionActorTypeEnum.group:
        return 'group';
      case ActorDefinitionActorTypeEnum.healthcareService:
        return 'healthcare-service';
      case ActorDefinitionActorTypeEnum.organization:
        return 'organization';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ActorDefinitionActorTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ActorDefinitionActorTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ActorDefinitionActorTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'system':
        return ActorDefinitionActorTypeEnum.system_;
      case 'non-system':
        return ActorDefinitionActorTypeEnum.nonSystem;
      case 'individual':
        return ActorDefinitionActorTypeEnum.individual;
      case 'patient':
        return ActorDefinitionActorTypeEnum.patient;
      case 'practitioner':
        return ActorDefinitionActorTypeEnum.practitioner;
      case 'related-person':
        return ActorDefinitionActorTypeEnum.relatedPerson;
      case 'device':
        return ActorDefinitionActorTypeEnum.device;
      case 'collective':
        return ActorDefinitionActorTypeEnum.collective;
      case 'care-team':
        return ActorDefinitionActorTypeEnum.careTeam;
      case 'group':
        return ActorDefinitionActorTypeEnum.group;
      case 'healthcare-service':
        return ActorDefinitionActorTypeEnum.healthcareService;
      case 'organization':
        return ActorDefinitionActorTypeEnum.organization;
    }
    return null;
  }
}

/// The type of actor - system or human.
class ActorDefinitionActorType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ActorDefinitionActorType._({
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
  factory ActorDefinitionActorType(
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
    final valueEnum = ActorDefinitionActorTypeEnum.fromString(valueString);
    return ActorDefinitionActorType._(
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

  /// Factory constructor to create [ActorDefinitionActorType]
  /// from JSON.
  factory ActorDefinitionActorType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ActorDefinitionActorTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActorDefinitionActorType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ActorDefinitionActorType cannot be constructed from JSON.',
      );
    }
    return ActorDefinitionActorType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ActorDefinitionActorType
  final ActorDefinitionActorTypeEnum? valueEnum;

  /// system_
  static const ActorDefinitionActorType system_ = ActorDefinitionActorType._(
    valueString: 'system',
    valueEnum: ActorDefinitionActorTypeEnum.system_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/actordefinition-actor-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'System',
    ),
  );

  /// non_system
  static const ActorDefinitionActorType nonSystem = ActorDefinitionActorType._(
    valueString: 'non-system',
    valueEnum: ActorDefinitionActorTypeEnum.nonSystem,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/actordefinition-actor-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Non System',
    ),
  );

  /// individual
  static const ActorDefinitionActorType individual = ActorDefinitionActorType._(
    valueString: 'individual',
    valueEnum: ActorDefinitionActorTypeEnum.individual,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/actordefinition-actor-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Individual',
    ),
  );

  /// patient
  static const ActorDefinitionActorType patient = ActorDefinitionActorType._(
    valueString: 'patient',
    valueEnum: ActorDefinitionActorTypeEnum.patient,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/actordefinition-actor-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Patient',
    ),
  );

  /// practitioner
  static const ActorDefinitionActorType practitioner =
      ActorDefinitionActorType._(
    valueString: 'practitioner',
    valueEnum: ActorDefinitionActorTypeEnum.practitioner,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/actordefinition-actor-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Practitioner',
    ),
  );

  /// related_person
  static const ActorDefinitionActorType relatedPerson =
      ActorDefinitionActorType._(
    valueString: 'related-person',
    valueEnum: ActorDefinitionActorTypeEnum.relatedPerson,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/actordefinition-actor-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Related Person',
    ),
  );

  /// device
  static const ActorDefinitionActorType device = ActorDefinitionActorType._(
    valueString: 'device',
    valueEnum: ActorDefinitionActorTypeEnum.device,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/actordefinition-actor-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Device',
    ),
  );

  /// collective
  static const ActorDefinitionActorType collective = ActorDefinitionActorType._(
    valueString: 'collective',
    valueEnum: ActorDefinitionActorTypeEnum.collective,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/actordefinition-actor-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Collective',
    ),
  );

  /// care_team
  static const ActorDefinitionActorType careTeam = ActorDefinitionActorType._(
    valueString: 'care-team',
    valueEnum: ActorDefinitionActorTypeEnum.careTeam,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/actordefinition-actor-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Care Team',
    ),
  );

  /// group
  static const ActorDefinitionActorType group = ActorDefinitionActorType._(
    valueString: 'group',
    valueEnum: ActorDefinitionActorTypeEnum.group,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/actordefinition-actor-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Group',
    ),
  );

  /// healthcare_service
  static const ActorDefinitionActorType healthcareService =
      ActorDefinitionActorType._(
    valueString: 'healthcare-service',
    valueEnum: ActorDefinitionActorTypeEnum.healthcareService,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/actordefinition-actor-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Healthcare Service',
    ),
  );

  /// organization
  static const ActorDefinitionActorType organization =
      ActorDefinitionActorType._(
    valueString: 'organization',
    valueEnum: ActorDefinitionActorTypeEnum.organization,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/actordefinition-actor-type',
    ),
    version: FhirString._(valueString: '6.0.0-ballot3'),
    display: FhirString._(
      valueString: 'Organization',
    ),
  );

  /// List of all enum-like values
  static final List<ActorDefinitionActorType> values = [
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
  ActorDefinitionActorType withElement(Element? newElement) {
    return ActorDefinitionActorType._(
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
  ActorDefinitionActorType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ActorDefinitionActorTypeCopyWithImpl<ActorDefinitionActorType> get copyWith =>
      ActorDefinitionActorTypeCopyWithImpl<ActorDefinitionActorType>(
        this,
        (v) => v as ActorDefinitionActorType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ActorDefinitionActorTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ActorDefinitionActorTypeCopyWithImpl(super._value, super._then);

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
      ActorDefinitionActorType(
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
