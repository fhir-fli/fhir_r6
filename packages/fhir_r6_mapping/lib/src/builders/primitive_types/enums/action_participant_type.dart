// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ActionParticipantType
enum ActionParticipantTypeBuilderEnum {
  /// careteam
  careteam,

  /// device
  device,

  /// group
  group,

  /// healthcareservice
  healthcareservice,

  /// location
  location,

  /// organization
  organization,

  /// patient
  patient,

  /// practitioner
  practitioner,

  /// practitionerrole
  practitionerrole,

  /// relatedperson
  relatedperson,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ActionParticipantTypeBuilderEnum.careteam:
        return 'careteam';
      case ActionParticipantTypeBuilderEnum.device:
        return 'device';
      case ActionParticipantTypeBuilderEnum.group:
        return 'group';
      case ActionParticipantTypeBuilderEnum.healthcareservice:
        return 'healthcareservice';
      case ActionParticipantTypeBuilderEnum.location:
        return 'location';
      case ActionParticipantTypeBuilderEnum.organization:
        return 'organization';
      case ActionParticipantTypeBuilderEnum.patient:
        return 'patient';
      case ActionParticipantTypeBuilderEnum.practitioner:
        return 'practitioner';
      case ActionParticipantTypeBuilderEnum.practitionerrole:
        return 'practitionerrole';
      case ActionParticipantTypeBuilderEnum.relatedperson:
        return 'relatedperson';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ActionParticipantTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ActionParticipantTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ActionParticipantTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'careteam':
        return ActionParticipantTypeBuilderEnum.careteam;
      case 'device':
        return ActionParticipantTypeBuilderEnum.device;
      case 'group':
        return ActionParticipantTypeBuilderEnum.group;
      case 'healthcareservice':
        return ActionParticipantTypeBuilderEnum.healthcareservice;
      case 'location':
        return ActionParticipantTypeBuilderEnum.location;
      case 'organization':
        return ActionParticipantTypeBuilderEnum.organization;
      case 'patient':
        return ActionParticipantTypeBuilderEnum.patient;
      case 'practitioner':
        return ActionParticipantTypeBuilderEnum.practitioner;
      case 'practitionerrole':
        return ActionParticipantTypeBuilderEnum.practitionerrole;
      case 'relatedperson':
        return ActionParticipantTypeBuilderEnum.relatedperson;
    }
    return null;
  }
}

/// The type of participant for the action.
class ActionParticipantTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ActionParticipantTypeBuilder._({
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
  factory ActionParticipantTypeBuilder(
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
    final valueEnum = ActionParticipantTypeBuilderEnum.fromString(
      valueString,
    );
    return ActionParticipantTypeBuilder._(
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

  /// Create empty [ActionParticipantTypeBuilder]
  /// with element only
  factory ActionParticipantTypeBuilder.empty() =>
      ActionParticipantTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ActionParticipantTypeBuilder] from JSON.
  factory ActionParticipantTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionParticipantTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ActionParticipantTypeBuilder cannot be constructed from JSON.',
      );
    }
    return ActionParticipantTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ActionParticipantTypeBuilder
  final ActionParticipantTypeBuilderEnum? valueEnum;

  /// careteam
  static ActionParticipantTypeBuilder careteam = ActionParticipantTypeBuilder._(
    valueString: 'careteam',
    valueEnum: ActionParticipantTypeBuilderEnum.careteam,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-participant-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'CareTeam',
    ),
  );

  /// device
  static ActionParticipantTypeBuilder device = ActionParticipantTypeBuilder._(
    valueString: 'device',
    valueEnum: ActionParticipantTypeBuilderEnum.device,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-participant-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Device',
    ),
  );

  /// group
  static ActionParticipantTypeBuilder group = ActionParticipantTypeBuilder._(
    valueString: 'group',
    valueEnum: ActionParticipantTypeBuilderEnum.group,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-participant-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Group',
    ),
  );

  /// healthcareservice
  static ActionParticipantTypeBuilder healthcareservice =
      ActionParticipantTypeBuilder._(
    valueString: 'healthcareservice',
    valueEnum: ActionParticipantTypeBuilderEnum.healthcareservice,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-participant-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'HealthcareService',
    ),
  );

  /// location
  static ActionParticipantTypeBuilder location = ActionParticipantTypeBuilder._(
    valueString: 'location',
    valueEnum: ActionParticipantTypeBuilderEnum.location,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-participant-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Location',
    ),
  );

  /// organization
  static ActionParticipantTypeBuilder organization =
      ActionParticipantTypeBuilder._(
    valueString: 'organization',
    valueEnum: ActionParticipantTypeBuilderEnum.organization,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-participant-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Organization',
    ),
  );

  /// patient
  static ActionParticipantTypeBuilder patient = ActionParticipantTypeBuilder._(
    valueString: 'patient',
    valueEnum: ActionParticipantTypeBuilderEnum.patient,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-participant-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Patient',
    ),
  );

  /// practitioner
  static ActionParticipantTypeBuilder practitioner =
      ActionParticipantTypeBuilder._(
    valueString: 'practitioner',
    valueEnum: ActionParticipantTypeBuilderEnum.practitioner,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-participant-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Practitioner',
    ),
  );

  /// practitionerrole
  static ActionParticipantTypeBuilder practitionerrole =
      ActionParticipantTypeBuilder._(
    valueString: 'practitionerrole',
    valueEnum: ActionParticipantTypeBuilderEnum.practitionerrole,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-participant-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'PractitionerRole',
    ),
  );

  /// relatedperson
  static ActionParticipantTypeBuilder relatedperson =
      ActionParticipantTypeBuilder._(
    valueString: 'relatedperson',
    valueEnum: ActionParticipantTypeBuilderEnum.relatedperson,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-participant-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'RelatedPerson',
    ),
  );

  /// For instances where an Element is present but not value
  static ActionParticipantTypeBuilder elementOnly =
      ActionParticipantTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ActionParticipantTypeBuilder> values = [
    careteam,
    device,
    group,
    healthcareservice,
    location,
    organization,
    patient,
    practitioner,
    practitionerrole,
    relatedperson,
  ];

  /// Returns the enum value with an element attached
  ActionParticipantTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ActionParticipantTypeBuilder._(
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
