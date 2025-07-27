// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ActionParticipantType
enum ActionParticipantTypeEnum {
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
      case ActionParticipantTypeEnum.careteam:
        return 'careteam';
      case ActionParticipantTypeEnum.device:
        return 'device';
      case ActionParticipantTypeEnum.group:
        return 'group';
      case ActionParticipantTypeEnum.healthcareservice:
        return 'healthcareservice';
      case ActionParticipantTypeEnum.location:
        return 'location';
      case ActionParticipantTypeEnum.organization:
        return 'organization';
      case ActionParticipantTypeEnum.patient:
        return 'patient';
      case ActionParticipantTypeEnum.practitioner:
        return 'practitioner';
      case ActionParticipantTypeEnum.practitionerrole:
        return 'practitionerrole';
      case ActionParticipantTypeEnum.relatedperson:
        return 'relatedperson';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ActionParticipantTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ActionParticipantTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ActionParticipantTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'careteam':
        return ActionParticipantTypeEnum.careteam;
      case 'device':
        return ActionParticipantTypeEnum.device;
      case 'group':
        return ActionParticipantTypeEnum.group;
      case 'healthcareservice':
        return ActionParticipantTypeEnum.healthcareservice;
      case 'location':
        return ActionParticipantTypeEnum.location;
      case 'organization':
        return ActionParticipantTypeEnum.organization;
      case 'patient':
        return ActionParticipantTypeEnum.patient;
      case 'practitioner':
        return ActionParticipantTypeEnum.practitioner;
      case 'practitionerrole':
        return ActionParticipantTypeEnum.practitionerrole;
      case 'relatedperson':
        return ActionParticipantTypeEnum.relatedperson;
    }
    return null;
  }
}

/// The type of participant for the action.
class ActionParticipantType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ActionParticipantType._({
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
  factory ActionParticipantType(
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
    final valueEnum = ActionParticipantTypeEnum.fromString(valueString);
    return ActionParticipantType._(
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

  /// Factory constructor to create [ActionParticipantType]
  /// from JSON.
  factory ActionParticipantType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ActionParticipantTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionParticipantType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ActionParticipantType cannot be constructed from JSON.',
      );
    }
    return ActionParticipantType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ActionParticipantType
  final ActionParticipantTypeEnum? valueEnum;

  /// careteam
  static const ActionParticipantType careteam = ActionParticipantType._(
    valueString: 'careteam',
    valueEnum: ActionParticipantTypeEnum.careteam,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-participant-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'CareTeam',
    ),
  );

  /// device
  static const ActionParticipantType device = ActionParticipantType._(
    valueString: 'device',
    valueEnum: ActionParticipantTypeEnum.device,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-participant-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Device',
    ),
  );

  /// group
  static const ActionParticipantType group = ActionParticipantType._(
    valueString: 'group',
    valueEnum: ActionParticipantTypeEnum.group,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-participant-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Group',
    ),
  );

  /// healthcareservice
  static const ActionParticipantType healthcareservice =
      ActionParticipantType._(
    valueString: 'healthcareservice',
    valueEnum: ActionParticipantTypeEnum.healthcareservice,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-participant-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'HealthcareService',
    ),
  );

  /// location
  static const ActionParticipantType location = ActionParticipantType._(
    valueString: 'location',
    valueEnum: ActionParticipantTypeEnum.location,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-participant-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Location',
    ),
  );

  /// organization
  static const ActionParticipantType organization = ActionParticipantType._(
    valueString: 'organization',
    valueEnum: ActionParticipantTypeEnum.organization,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-participant-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Organization',
    ),
  );

  /// patient
  static const ActionParticipantType patient = ActionParticipantType._(
    valueString: 'patient',
    valueEnum: ActionParticipantTypeEnum.patient,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-participant-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Patient',
    ),
  );

  /// practitioner
  static const ActionParticipantType practitioner = ActionParticipantType._(
    valueString: 'practitioner',
    valueEnum: ActionParticipantTypeEnum.practitioner,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-participant-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'Practitioner',
    ),
  );

  /// practitionerrole
  static const ActionParticipantType practitionerrole = ActionParticipantType._(
    valueString: 'practitionerrole',
    valueEnum: ActionParticipantTypeEnum.practitionerrole,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-participant-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'PractitionerRole',
    ),
  );

  /// relatedperson
  static const ActionParticipantType relatedperson = ActionParticipantType._(
    valueString: 'relatedperson',
    valueEnum: ActionParticipantTypeEnum.relatedperson,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-participant-type',
    ),
    version: FhirString._(valueString: '5.0.0'),
    display: FhirString._(
      valueString: 'RelatedPerson',
    ),
  );

  /// List of all enum-like values
  static final List<ActionParticipantType> values = [
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
  ActionParticipantType withElement(Element? newElement) {
    return ActionParticipantType._(
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
  ActionParticipantType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ActionParticipantTypeCopyWithImpl<ActionParticipantType> get copyWith =>
      ActionParticipantTypeCopyWithImpl<ActionParticipantType>(
        this,
        (v) => v as ActionParticipantType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ActionParticipantTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ActionParticipantTypeCopyWithImpl(super._value, super._then);

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
      ActionParticipantType(
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
