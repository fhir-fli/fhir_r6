// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for GroupType
enum GroupTypeBuilderEnum {
  /// person
  person,

  /// animal
  animal,

  /// practitioner
  practitioner,

  /// device
  device,

  /// careteam
  careteam,

  /// healthcareservice
  healthcareservice,

  /// location
  location,

  /// organization
  organization,

  /// relatedperson
  relatedperson,

  /// specimen
  specimen,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case GroupTypeBuilderEnum.person:
        return 'person';
      case GroupTypeBuilderEnum.animal:
        return 'animal';
      case GroupTypeBuilderEnum.practitioner:
        return 'practitioner';
      case GroupTypeBuilderEnum.device:
        return 'device';
      case GroupTypeBuilderEnum.careteam:
        return 'careteam';
      case GroupTypeBuilderEnum.healthcareservice:
        return 'healthcareservice';
      case GroupTypeBuilderEnum.location:
        return 'location';
      case GroupTypeBuilderEnum.organization:
        return 'organization';
      case GroupTypeBuilderEnum.relatedperson:
        return 'relatedperson';
      case GroupTypeBuilderEnum.specimen:
        return 'specimen';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static GroupTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return GroupTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static GroupTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'person':
        return GroupTypeBuilderEnum.person;
      case 'animal':
        return GroupTypeBuilderEnum.animal;
      case 'practitioner':
        return GroupTypeBuilderEnum.practitioner;
      case 'device':
        return GroupTypeBuilderEnum.device;
      case 'careteam':
        return GroupTypeBuilderEnum.careteam;
      case 'healthcareservice':
        return GroupTypeBuilderEnum.healthcareservice;
      case 'location':
        return GroupTypeBuilderEnum.location;
      case 'organization':
        return GroupTypeBuilderEnum.organization;
      case 'relatedperson':
        return GroupTypeBuilderEnum.relatedperson;
      case 'specimen':
        return GroupTypeBuilderEnum.specimen;
    }
    return null;
  }
}

/// Types of resources that are part of group.
class GroupTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  GroupTypeBuilder._({
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
  factory GroupTypeBuilder(
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
    final valueEnum = GroupTypeBuilderEnum.fromString(
      valueString,
    );
    return GroupTypeBuilder._(
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

  /// Create empty [GroupTypeBuilder]
  /// with element only
  factory GroupTypeBuilder.empty() => GroupTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [GroupTypeBuilder] from JSON.
  factory GroupTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GroupTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GroupTypeBuilder cannot be constructed from JSON.',
      );
    }
    return GroupTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for GroupTypeBuilder
  final GroupTypeBuilderEnum? valueEnum;

  /// person
  static GroupTypeBuilder person = GroupTypeBuilder._(
    valueString: 'person',
    valueEnum: GroupTypeBuilderEnum.person,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/group-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Person',
    ),
  );

  /// animal
  static GroupTypeBuilder animal = GroupTypeBuilder._(
    valueString: 'animal',
    valueEnum: GroupTypeBuilderEnum.animal,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/group-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Animal',
    ),
  );

  /// practitioner
  static GroupTypeBuilder practitioner = GroupTypeBuilder._(
    valueString: 'practitioner',
    valueEnum: GroupTypeBuilderEnum.practitioner,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/group-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Practitioner',
    ),
  );

  /// device
  static GroupTypeBuilder device = GroupTypeBuilder._(
    valueString: 'device',
    valueEnum: GroupTypeBuilderEnum.device,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/group-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Device',
    ),
  );

  /// careteam
  static GroupTypeBuilder careteam = GroupTypeBuilder._(
    valueString: 'careteam',
    valueEnum: GroupTypeBuilderEnum.careteam,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/group-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'CareTeam',
    ),
  );

  /// healthcareservice
  static GroupTypeBuilder healthcareservice = GroupTypeBuilder._(
    valueString: 'healthcareservice',
    valueEnum: GroupTypeBuilderEnum.healthcareservice,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/group-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'HealthcareService',
    ),
  );

  /// location
  static GroupTypeBuilder location = GroupTypeBuilder._(
    valueString: 'location',
    valueEnum: GroupTypeBuilderEnum.location,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/group-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Location',
    ),
  );

  /// organization
  static GroupTypeBuilder organization = GroupTypeBuilder._(
    valueString: 'organization',
    valueEnum: GroupTypeBuilderEnum.organization,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/group-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Organization',
    ),
  );

  /// relatedperson
  static GroupTypeBuilder relatedperson = GroupTypeBuilder._(
    valueString: 'relatedperson',
    valueEnum: GroupTypeBuilderEnum.relatedperson,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/group-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'RelatedPerson',
    ),
  );

  /// specimen
  static GroupTypeBuilder specimen = GroupTypeBuilder._(
    valueString: 'specimen',
    valueEnum: GroupTypeBuilderEnum.specimen,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/group-type',
    ),
    version: FhirStringBuilder._(valueString: '5.0.0'),
    display: FhirStringBuilder._(
      valueString: 'Specimen',
    ),
  );

  /// For instances where an Element is present but not value
  static GroupTypeBuilder elementOnly = GroupTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<GroupTypeBuilder> values = [
    person,
    animal,
    practitioner,
    device,
    careteam,
    healthcareservice,
    location,
    organization,
    relatedperson,
    specimen,
  ];

  /// Returns the enum value with an element attached
  GroupTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return GroupTypeBuilder._(
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
