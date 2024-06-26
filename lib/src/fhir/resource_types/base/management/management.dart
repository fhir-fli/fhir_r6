// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r6.dart';

part 'management.freezed.dart';
part 'management.g.dart';

/// [Encounter] An interaction between a patient and healthcare provider(s) for
///  the purpose of providing healthcare service(s) or assessing the health
///  status of a patient.  Encounter is primarily used to record information
///  about the actual activities that occurred, where Appointment is used to
///  record planned activities.
@freezed
class Encounter with Resource, _$Encounter {
  /// [Encounter] An interaction between a patient and healthcare provider(s) for
  ///  the purpose of providing healthcare service(s) or assessing the health
  ///  status of a patient.  Encounter is primarily used to record information
  ///  about the actual activities that occurred, where Appointment is used to
  ///  record planned activities.
  const Encounter._();

  /// [Encounter] An interaction between a patient and healthcare provider(s) for
  ///  the purpose of providing healthcare service(s) or assessing the health
  ///  status of a patient.  Encounter is primarily used to record information
  ///  about the actual activities that occurred, where Appointment is used to
  ///  record planned activities.
  ///
  /// [resourceType] This is a Encounter resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is maintained
  ///  by the infrastructure. Changes to the content might not always be
  ///  associated with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  ///  resource was constructed, and which must be understood when processing the
  ///  content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] ("_implicitRules") Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] ("_language") Extensions for language
  ///
  /// [text] A human-readable narrative that contains a summary of the resource
  ///  and can be used to represent the content of the resource to a human. The
  ///  narrative need not encode all the structured data, but is required to
  ///  contain sufficient detail to make it "clinically safe" for a human to just
  ///  read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  ///
  /// [contained] These resources do not have an independent existence apart from
  ///  the resource that contains them - they cannot be identified independently,
  ///  nor can they have their own independent transaction scope. This is allowed
  ///  to be a Parameters resource if and only if it is referenced by a resource
  ///  that provides context/meaning.
  ///
  /// [extension_] ("extension") May be used to represent additional information
  ///  that is not part of the basic definition of the resource. To make the use
  ///  of extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that is
  ///  not part of the basic definition of the resource and that modifies the
  ///  understanding of the element that contains it and/or the understanding of
  ///  the containing element's descendants. Usually modifier elements provide
  ///  negation or qualification. To make the use of extensions safe and
  ///  managable, there is a strict set of governance applied to the definition
  ///  and use of extensions. Though any implementer is allowed to define an
  ///  extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.Modifier extensions SHALL NOT
  ///  change the meaning of any elements on Resource or DomainResource
  ///  (including cannot change the meaning of modifierExtension itself).
  ///
  /// [identifier] Identifier(s) by which this encounter is known.
  ///
  /// [status] The current state of the encounter (not the state of the patient
  ///  within the encounter - that is subjectState).
  ///
  /// [statusElement] ("_status") Extensions for status
  ///
  /// [class_] ("class") Concepts representing classification of patient
  ///  encounter such as ambulatory (outpatient), inpatient, emergency, home
  ///  health or others due to local variations.
  ///
  /// [priority] Indicates the urgency of the encounter.
  ///
  /// [type] Specific type of encounter (e.g. e-mail consultation, surgical
  ///  day-care, skilled nursing, rehabilitation).
  ///
  /// [serviceType] Broad categorization of the service that is to be provided
  ///  (e.g. cardiology).
  ///
  /// [subject] The patient or group related to this encounter. In some use-cases
  ///  the patient MAY not be present, such as a case meeting about a patient
  ///  between several practitioners or a careteam.
  ///
  /// [subjectStatus] The subjectStatus value can be used to track the patient's
  ///  status within the encounter. It details whether the patient has arrived or
  ///  departed, has been triaged or is currently in a waiting status.
  ///
  /// [episodeOfCare] Where a specific encounter should be classified as a part
  ///  of a specific episode(s) of care this field should be used. This
  ///  association can facilitate grouping of related encounters together for a
  ///  specific purpose, such as government reporting, issue tracking,
  ///  association via a common problem.  The association is recorded on the
  ///  encounter as these are typically created after the episode of care and
  ///  grouped on entry rather than editing the episode of care to append another
  ///  encounter to it (the episode of care could span years).
  ///
  /// [basedOn] The request this encounter satisfies (e.g. incoming referral or
  ///  procedure request).
  ///
  /// [careTeam] The group(s) of individuals, organizations that are allocated to
  ///  participate in this encounter. The participants backbone will record the
  ///  actuals of when these individuals participated during the encounter.
  ///
  /// [partOf] Another Encounter of which this encounter is a part of
  ///  (administratively or in time).
  ///
  /// [serviceProvider] The organization that is primarily responsible for this
  ///  Encounter's services. This MAY be the same as the organization on the
  ///  Patient record, however it could be different, such as if the actor
  ///  performing the services was from an external organization (which may be
  ///  billed seperately) for an external consultation.  Refer to the colonoscopy
  ///  example on the Encounter examples tab.
  ///
  /// [participant] The list of people responsible for providing the service.
  ///
  /// [appointment] The appointment that scheduled this encounter.
  ///
  /// [virtualService] Connection details of a virtual service (e.g. conference
  ///  call).
  ///
  /// [actualPeriod] The actual start and end time of the encounter.
  ///
  /// [plannedStartDate] The planned start date/time (or admission date) of the
  ///  encounter.
  ///
  /// [plannedStartDateElement] ("_plannedStartDate") Extensions for
  ///  plannedStartDate
  ///
  /// [plannedEndDate] The planned end date/time (or discharge date) of the
  ///  encounter.
  ///
  /// [plannedEndDateElement] ("_plannedEndDate") Extensions for plannedEndDate
  ///
  /// [length] Actual quantity of time the encounter lasted. This excludes the
  ///  time during leaves of absence. When missing it is the time in between the
  ///  start and end values.
  ///
  /// [reason] The list of medical reasons that are expected to be addressed
  ///  during the episode of care.
  ///
  /// [diagnosis] The list of diagnosis relevant to this encounter.
  ///
  /// [account] The set of accounts that may be used for billing for this
  ///  Encounter.
  ///
  /// [dietPreference] Diet preferences reported by the patient.
  ///
  /// [specialArrangement] Any special requests that have been made for this
  ///  encounter, such as the provision of specific equipment or other things.
  ///
  /// [specialCourtesy] Special courtesies that may be provided to the patient
  ///  during the encounter (VIP, board member, professional courtesy).
  ///
  /// [admission] Details about the stay during which a healthcare service is
  ///  provided. This does not describe the event of admitting the patient, but
  ///  rather any information that is relevant from the time of admittance until
  ///  the time of discharge.
  ///
  /// [location] List of locations where  the patient has been during this
  ///  encounter.
  ///
  const factory Encounter({
    /// [resourceType] This is a Encounter resource
    @Default(R6ResourceType.Encounter)
    @JsonKey(unknownEnumValue: R6ResourceType.Encounter)
    R6ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource.
    ///  Once assigned, this value never changes.
    FhirId? id,

    /// [meta] The metadata about the resource. This is content that is maintained
    ///  by the infrastructure. Changes to the content might not always be
    ///  associated with version changes to the resource.
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the
    ///  resource was constructed, and which must be understood when processing the
    ///  content. Often, this is a reference to an implementation guide that
    ///  defines the special rules along with other profiles etc.
    FhirUri? implicitRules,

    /// [implicitRulesElement] ("_implicitRules") Extensions for implicitRules
    @JsonKey(name: '_implicitRules') Element? implicitRulesElement,

    /// [language] The base language in which the resource is written.
    FhirCode? language,

    /// [languageElement] ("_language") Extensions for language
    @JsonKey(name: '_language') Element? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource
    ///  and can be used to represent the content of the resource to a human. The
    ///  narrative need not encode all the structured data, but is required to
    ///  contain sufficient detail to make it "clinically safe" for a human to just
    ///  read the narrative. Resource definitions may define what content should be
    ///  represented in the narrative to ensure clinical safety.
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart from
    ///  the resource that contains them - they cannot be identified independently,
    ///  nor can they have their own independent transaction scope. This is allowed
    ///  to be a Parameters resource if and only if it is referenced by a resource
    ///  that provides context/meaning.
    List<Resource>? contained,

    /// [extension_] ("extension") May be used to represent additional information
    ///  that is not part of the basic definition of the resource. To make the use
    ///  of extensions safe and managable, there is a strict set of governance
    ///  applied to the definition and use of extensions. Though any implementer
    ///  can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is
    ///  not part of the basic definition of the resource and that modifies the
    ///  understanding of the element that contains it and/or the understanding of
    ///  the containing element's descendants. Usually modifier elements provide
    ///  negation or qualification. To make the use of extensions safe and
    ///  managable, there is a strict set of governance applied to the definition
    ///  and use of extensions. Though any implementer is allowed to define an
    ///  extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.Modifier extensions SHALL NOT
    ///  change the meaning of any elements on Resource or DomainResource
    ///  (including cannot change the meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [identifier] Identifier(s) by which this encounter is known.
    List<Identifier>? identifier,

    /// [status] The current state of the encounter (not the state of the patient
    ///  within the encounter - that is subjectState).
    FhirCode? status,

    /// [statusElement] ("_status") Extensions for status
    @JsonKey(name: '_status') Element? statusElement,

    /// [class_] ("class") Concepts representing classification of patient
    ///  encounter such as ambulatory (outpatient), inpatient, emergency, home
    ///  health or others due to local variations.
    @JsonKey(name: 'class') List<CodeableConcept>? class_,

    /// [priority] Indicates the urgency of the encounter.
    CodeableConcept? priority,

    /// [type] Specific type of encounter (e.g. e-mail consultation, surgical
    ///  day-care, skilled nursing, rehabilitation).
    List<CodeableConcept>? type,

    /// [serviceType] Broad categorization of the service that is to be provided
    ///  (e.g. cardiology).
    List<CodeableReference>? serviceType,

    /// [subject] The patient or group related to this encounter. In some use-cases
    ///  the patient MAY not be present, such as a case meeting about a patient
    ///  between several practitioners or a careteam.
    Reference? subject,

    /// [subjectStatus] The subjectStatus value can be used to track the patient's
    ///  status within the encounter. It details whether the patient has arrived or
    ///  departed, has been triaged or is currently in a waiting status.
    CodeableConcept? subjectStatus,

    /// [episodeOfCare] Where a specific encounter should be classified as a part
    ///  of a specific episode(s) of care this field should be used. This
    ///  association can facilitate grouping of related encounters together for a
    ///  specific purpose, such as government reporting, issue tracking,
    ///  association via a common problem.  The association is recorded on the
    ///  encounter as these are typically created after the episode of care and
    ///  grouped on entry rather than editing the episode of care to append another
    ///  encounter to it (the episode of care could span years).
    List<Reference>? episodeOfCare,

    /// [basedOn] The request this encounter satisfies (e.g. incoming referral or
    ///  procedure request).
    List<Reference>? basedOn,

    /// [careTeam] The group(s) of individuals, organizations that are allocated to
    ///  participate in this encounter. The participants backbone will record the
    ///  actuals of when these individuals participated during the encounter.
    List<Reference>? careTeam,

    /// [partOf] Another Encounter of which this encounter is a part of
    ///  (administratively or in time).
    Reference? partOf,

    /// [serviceProvider] The organization that is primarily responsible for this
    ///  Encounter's services. This MAY be the same as the organization on the
    ///  Patient record, however it could be different, such as if the actor
    ///  performing the services was from an external organization (which may be
    ///  billed seperately) for an external consultation.  Refer to the colonoscopy
    ///  example on the Encounter examples tab.
    Reference? serviceProvider,

    /// [participant] The list of people responsible for providing the service.
    List<EncounterParticipant>? participant,

    /// [appointment] The appointment that scheduled this encounter.
    List<Reference>? appointment,

    /// [virtualService] Connection details of a virtual service (e.g. conference
    ///  call).
    List<VirtualServiceDetail>? virtualService,

    /// [actualPeriod] The actual start and end time of the encounter.
    Period? actualPeriod,

    /// [plannedStartDate] The planned start date/time (or admission date) of the
    ///  encounter.
    FhirDateTime? plannedStartDate,

    /// [plannedStartDateElement] ("_plannedStartDate") Extensions for
    ///  plannedStartDate
    @JsonKey(name: '_plannedStartDate') Element? plannedStartDateElement,

    /// [plannedEndDate] The planned end date/time (or discharge date) of the
    ///  encounter.
    FhirDateTime? plannedEndDate,

    /// [plannedEndDateElement] ("_plannedEndDate") Extensions for plannedEndDate
    @JsonKey(name: '_plannedEndDate') Element? plannedEndDateElement,

    /// [length] Actual quantity of time the encounter lasted. This excludes the
    ///  time during leaves of absence. When missing it is the time in between the
    ///  start and end values.
    FhirDuration? length,

    /// [reason] The list of medical reasons that are expected to be addressed
    ///  during the episode of care.
    List<EncounterReason>? reason,

    /// [diagnosis] The list of diagnosis relevant to this encounter.
    List<EncounterDiagnosis>? diagnosis,

    /// [account] The set of accounts that may be used for billing for this
    ///  Encounter.
    List<Reference>? account,

    /// [dietPreference] Diet preferences reported by the patient.
    List<CodeableConcept>? dietPreference,

    /// [specialArrangement] Any special requests that have been made for this
    ///  encounter, such as the provision of specific equipment or other things.
    List<CodeableConcept>? specialArrangement,

    /// [specialCourtesy] Special courtesies that may be provided to the patient
    ///  during the encounter (VIP, board member, professional courtesy).
    List<CodeableConcept>? specialCourtesy,

    /// [admission] Details about the stay during which a healthcare service is
    ///  provided. This does not describe the event of admitting the patient, but
    ///  rather any information that is relevant from the time of admittance until
    ///  the time of discharge.
    EncounterAdmission? admission,

    /// [location] List of locations where  the patient has been during this
    ///  encounter.
    List<EncounterLocation>? location,
  }) = _Encounter;

  @override
  String get fhirType => 'Encounter';

  /// Produces a Yaml formatted String version of the object
  @override
  String toYaml() => json2yaml(toJson());

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Encounter.fromYaml(dynamic yaml) => yaml is String
      ? Encounter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Encounter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Encounter cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Encounter.fromJson(Map<String, dynamic> json) =>
      _$EncounterFromJson(json);

  /// Acts like a constructor, returns a [Encounter], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Encounter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EncounterFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());
}

/// [EncounterParticipant] An interaction between a patient and healthcare
///  provider(s) for the purpose of providing healthcare service(s) or
///  assessing the health status of a patient.  Encounter is primarily used to
///  record information about the actual activities that occurred, where
///  Appointment is used to record planned activities.
@freezed
class EncounterParticipant with BackboneType, _$EncounterParticipant {
  /// [EncounterParticipant] An interaction between a patient and healthcare
  ///  provider(s) for the purpose of providing healthcare service(s) or
  ///  assessing the health status of a patient.  Encounter is primarily used to
  ///  record information about the actual activities that occurred, where
  ///  Appointment is used to record planned activities.
  const EncounterParticipant._();

  /// [EncounterParticipant] An interaction between a patient and healthcare
  ///  provider(s) for the purpose of providing healthcare service(s) or
  ///  assessing the health status of a patient.  Encounter is primarily used to
  ///  record information about the actual activities that occurred, where
  ///  Appointment is used to record planned activities.
  ///
  /// [id] Unique id for the element within a resource (for internal references).
  ///  This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional information
  ///  that is not part of the basic definition of the element. To make the use
  ///  of extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that is
  ///  not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of extensions
  ///  safe and managable, there is a strict set of governance applied to the
  ///  definition and use of extensions. Though any implementer can define an
  ///  extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.Modifier extensions SHALL NOT
  ///  change the meaning of any elements on Resource or DomainResource
  ///  (including cannot change the meaning of modifierExtension itself).
  ///
  /// [type] Role of participant in encounter.
  ///
  /// [period] The period of time that the specified participant participated in
  ///  the encounter. These can overlap or be sub-sets of the overall encounter's
  ///  period.
  ///
  /// [actor] Person involved in the encounter, the patient/group is also
  ///  included here to indicate that the patient was actually participating in
  ///  the encounter. Not including the patient here covers use cases such as a
  ///  case meeting between practitioners about a patient - non contact times.
  ///
  const factory EncounterParticipant({
    /// [id] Unique id for the element within a resource (for internal references).
    ///  This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional information
    ///  that is not part of the basic definition of the element. To make the use
    ///  of extensions safe and managable, there is a strict set of governance
    ///  applied to the definition and use of extensions. Though any implementer
    ///  can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is
    ///  not part of the basic definition of the element and that modifies the
    ///  understanding of the element in which it is contained and/or the
    ///  understanding of the containing element's descendants. Usually modifier
    ///  elements provide negation or qualification. To make the use of extensions
    ///  safe and managable, there is a strict set of governance applied to the
    ///  definition and use of extensions. Though any implementer can define an
    ///  extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.Modifier extensions SHALL NOT
    ///  change the meaning of any elements on Resource or DomainResource
    ///  (including cannot change the meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [type] Role of participant in encounter.
    List<CodeableConcept>? type,

    /// [period] The period of time that the specified participant participated in
    ///  the encounter. These can overlap or be sub-sets of the overall encounter's
    ///  period.
    Period? period,

    /// [actor] Person involved in the encounter, the patient/group is also
    ///  included here to indicate that the patient was actually participating in
    ///  the encounter. Not including the patient here covers use cases such as a
    ///  case meeting between practitioners about a patient - non contact times.
    Reference? actor,
  }) = _EncounterParticipant;

  @override
  String get fhirType => 'EncounterParticipant';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory EncounterParticipant.fromYaml(dynamic yaml) => yaml is String
      ? EncounterParticipant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EncounterParticipant.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EncounterParticipant cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory EncounterParticipant.fromJson(Map<String, dynamic> json) =>
      _$EncounterParticipantFromJson(json);

  /// Acts like a constructor, returns a [EncounterParticipant], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory EncounterParticipant.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EncounterParticipantFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [EncounterReason] An interaction between a patient and healthcare
///  provider(s) for the purpose of providing healthcare service(s) or
///  assessing the health status of a patient.  Encounter is primarily used to
///  record information about the actual activities that occurred, where
///  Appointment is used to record planned activities.
@freezed
class EncounterReason with BackboneType, _$EncounterReason {
  /// [EncounterReason] An interaction between a patient and healthcare
  ///  provider(s) for the purpose of providing healthcare service(s) or
  ///  assessing the health status of a patient.  Encounter is primarily used to
  ///  record information about the actual activities that occurred, where
  ///  Appointment is used to record planned activities.
  const EncounterReason._();

  /// [EncounterReason] An interaction between a patient and healthcare
  ///  provider(s) for the purpose of providing healthcare service(s) or
  ///  assessing the health status of a patient.  Encounter is primarily used to
  ///  record information about the actual activities that occurred, where
  ///  Appointment is used to record planned activities.
  ///
  /// [id] Unique id for the element within a resource (for internal references).
  ///  This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional information
  ///  that is not part of the basic definition of the element. To make the use
  ///  of extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that is
  ///  not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of extensions
  ///  safe and managable, there is a strict set of governance applied to the
  ///  definition and use of extensions. Though any implementer can define an
  ///  extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.Modifier extensions SHALL NOT
  ///  change the meaning of any elements on Resource or DomainResource
  ///  (including cannot change the meaning of modifierExtension itself).
  ///
  /// [use] What the reason value should be used as e.g. Chief Complaint, Health
  ///  Concern, Health Maintenance (including screening).
  ///
  /// [value] Reason the encounter takes place, expressed as a code or a
  ///  reference to another resource. For admissions, this can be used for a
  ///  coded admission diagnosis.
  ///
  const factory EncounterReason({
    /// [id] Unique id for the element within a resource (for internal references).
    ///  This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional information
    ///  that is not part of the basic definition of the element. To make the use
    ///  of extensions safe and managable, there is a strict set of governance
    ///  applied to the definition and use of extensions. Though any implementer
    ///  can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is
    ///  not part of the basic definition of the element and that modifies the
    ///  understanding of the element in which it is contained and/or the
    ///  understanding of the containing element's descendants. Usually modifier
    ///  elements provide negation or qualification. To make the use of extensions
    ///  safe and managable, there is a strict set of governance applied to the
    ///  definition and use of extensions. Though any implementer can define an
    ///  extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.Modifier extensions SHALL NOT
    ///  change the meaning of any elements on Resource or DomainResource
    ///  (including cannot change the meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [use] What the reason value should be used as e.g. Chief Complaint, Health
    ///  Concern, Health Maintenance (including screening).
    List<CodeableConcept>? use,

    /// [value] Reason the encounter takes place, expressed as a code or a
    ///  reference to another resource. For admissions, this can be used for a
    ///  coded admission diagnosis.
    List<CodeableReference>? value,
  }) = _EncounterReason;

  @override
  String get fhirType => 'EncounterReason';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory EncounterReason.fromYaml(dynamic yaml) => yaml is String
      ? EncounterReason.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EncounterReason.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EncounterReason cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory EncounterReason.fromJson(Map<String, dynamic> json) =>
      _$EncounterReasonFromJson(json);

  /// Acts like a constructor, returns a [EncounterReason], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory EncounterReason.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EncounterReasonFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [EncounterDiagnosis] An interaction between a patient and healthcare
///  provider(s) for the purpose of providing healthcare service(s) or
///  assessing the health status of a patient.  Encounter is primarily used to
///  record information about the actual activities that occurred, where
///  Appointment is used to record planned activities.
@freezed
class EncounterDiagnosis with BackboneType, _$EncounterDiagnosis {
  /// [EncounterDiagnosis] An interaction between a patient and healthcare
  ///  provider(s) for the purpose of providing healthcare service(s) or
  ///  assessing the health status of a patient.  Encounter is primarily used to
  ///  record information about the actual activities that occurred, where
  ///  Appointment is used to record planned activities.
  const EncounterDiagnosis._();

  /// [EncounterDiagnosis] An interaction between a patient and healthcare
  ///  provider(s) for the purpose of providing healthcare service(s) or
  ///  assessing the health status of a patient.  Encounter is primarily used to
  ///  record information about the actual activities that occurred, where
  ///  Appointment is used to record planned activities.
  ///
  /// [id] Unique id for the element within a resource (for internal references).
  ///  This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional information
  ///  that is not part of the basic definition of the element. To make the use
  ///  of extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that is
  ///  not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of extensions
  ///  safe and managable, there is a strict set of governance applied to the
  ///  definition and use of extensions. Though any implementer can define an
  ///  extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.Modifier extensions SHALL NOT
  ///  change the meaning of any elements on Resource or DomainResource
  ///  (including cannot change the meaning of modifierExtension itself).
  ///
  /// [condition] The coded diagnosis or a reference to a Condition (with other
  ///  resources referenced in the evidence.detail), the use property will
  ///  indicate the purpose of this specific diagnosis.
  ///
  /// [use] Role that this diagnosis has within the encounter (e.g. admission,
  ///  billing, discharge …).
  ///
  const factory EncounterDiagnosis({
    /// [id] Unique id for the element within a resource (for internal references).
    ///  This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional information
    ///  that is not part of the basic definition of the element. To make the use
    ///  of extensions safe and managable, there is a strict set of governance
    ///  applied to the definition and use of extensions. Though any implementer
    ///  can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is
    ///  not part of the basic definition of the element and that modifies the
    ///  understanding of the element in which it is contained and/or the
    ///  understanding of the containing element's descendants. Usually modifier
    ///  elements provide negation or qualification. To make the use of extensions
    ///  safe and managable, there is a strict set of governance applied to the
    ///  definition and use of extensions. Though any implementer can define an
    ///  extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.Modifier extensions SHALL NOT
    ///  change the meaning of any elements on Resource or DomainResource
    ///  (including cannot change the meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [condition] The coded diagnosis or a reference to a Condition (with other
    ///  resources referenced in the evidence.detail), the use property will
    ///  indicate the purpose of this specific diagnosis.
    List<CodeableReference>? condition,

    /// [use] Role that this diagnosis has within the encounter (e.g. admission,
    ///  billing, discharge …).
    List<CodeableConcept>? use,
  }) = _EncounterDiagnosis;

  @override
  String get fhirType => 'EncounterDiagnosis';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory EncounterDiagnosis.fromYaml(dynamic yaml) => yaml is String
      ? EncounterDiagnosis.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EncounterDiagnosis.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EncounterDiagnosis cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory EncounterDiagnosis.fromJson(Map<String, dynamic> json) =>
      _$EncounterDiagnosisFromJson(json);

  /// Acts like a constructor, returns a [EncounterDiagnosis], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory EncounterDiagnosis.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EncounterDiagnosisFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [EncounterAdmission] An interaction between a patient and healthcare
///  provider(s) for the purpose of providing healthcare service(s) or
///  assessing the health status of a patient.  Encounter is primarily used to
///  record information about the actual activities that occurred, where
///  Appointment is used to record planned activities.
@freezed
class EncounterAdmission with BackboneType, _$EncounterAdmission {
  /// [EncounterAdmission] An interaction between a patient and healthcare
  ///  provider(s) for the purpose of providing healthcare service(s) or
  ///  assessing the health status of a patient.  Encounter is primarily used to
  ///  record information about the actual activities that occurred, where
  ///  Appointment is used to record planned activities.
  const EncounterAdmission._();

  /// [EncounterAdmission] An interaction between a patient and healthcare
  ///  provider(s) for the purpose of providing healthcare service(s) or
  ///  assessing the health status of a patient.  Encounter is primarily used to
  ///  record information about the actual activities that occurred, where
  ///  Appointment is used to record planned activities.
  ///
  /// [id] Unique id for the element within a resource (for internal references).
  ///  This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional information
  ///  that is not part of the basic definition of the element. To make the use
  ///  of extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that is
  ///  not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of extensions
  ///  safe and managable, there is a strict set of governance applied to the
  ///  definition and use of extensions. Though any implementer can define an
  ///  extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.Modifier extensions SHALL NOT
  ///  change the meaning of any elements on Resource or DomainResource
  ///  (including cannot change the meaning of modifierExtension itself).
  ///
  /// [preAdmissionIdentifier] Pre-admission identifier.
  ///
  /// [origin] The location/organization from which the patient came before
  ///  admission.
  ///
  /// [admitSource] From where patient was admitted (physician referral,
  ///  transfer).
  ///
  /// [reAdmission] Indicates that this encounter is directly related to a prior
  ///  admission, often because the conditions addressed in the prior admission
  ///  were not fully addressed.
  ///
  /// [destination] Location/organization to which the patient is discharged.
  ///
  /// [dischargeDisposition] Category or kind of location after discharge.
  ///
  const factory EncounterAdmission({
    /// [id] Unique id for the element within a resource (for internal references).
    ///  This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional information
    ///  that is not part of the basic definition of the element. To make the use
    ///  of extensions safe and managable, there is a strict set of governance
    ///  applied to the definition and use of extensions. Though any implementer
    ///  can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is
    ///  not part of the basic definition of the element and that modifies the
    ///  understanding of the element in which it is contained and/or the
    ///  understanding of the containing element's descendants. Usually modifier
    ///  elements provide negation or qualification. To make the use of extensions
    ///  safe and managable, there is a strict set of governance applied to the
    ///  definition and use of extensions. Though any implementer can define an
    ///  extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.Modifier extensions SHALL NOT
    ///  change the meaning of any elements on Resource or DomainResource
    ///  (including cannot change the meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [preAdmissionIdentifier] Pre-admission identifier.
    Identifier? preAdmissionIdentifier,

    /// [origin] The location/organization from which the patient came before
    ///  admission.
    Reference? origin,

    /// [admitSource] From where patient was admitted (physician referral,
    ///  transfer).
    CodeableConcept? admitSource,

    /// [reAdmission] Indicates that this encounter is directly related to a prior
    ///  admission, often because the conditions addressed in the prior admission
    ///  were not fully addressed.
    CodeableConcept? reAdmission,

    /// [destination] Location/organization to which the patient is discharged.
    Reference? destination,

    /// [dischargeDisposition] Category or kind of location after discharge.
    CodeableConcept? dischargeDisposition,
  }) = _EncounterAdmission;

  @override
  String get fhirType => 'EncounterAdmission';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory EncounterAdmission.fromYaml(dynamic yaml) => yaml is String
      ? EncounterAdmission.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EncounterAdmission.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EncounterAdmission cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory EncounterAdmission.fromJson(Map<String, dynamic> json) =>
      _$EncounterAdmissionFromJson(json);

  /// Acts like a constructor, returns a [EncounterAdmission], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory EncounterAdmission.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EncounterAdmissionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [EncounterLocation] An interaction between a patient and healthcare
///  provider(s) for the purpose of providing healthcare service(s) or
///  assessing the health status of a patient.  Encounter is primarily used to
///  record information about the actual activities that occurred, where
///  Appointment is used to record planned activities.
@freezed
class EncounterLocation with BackboneType, _$EncounterLocation {
  /// [EncounterLocation] An interaction between a patient and healthcare
  ///  provider(s) for the purpose of providing healthcare service(s) or
  ///  assessing the health status of a patient.  Encounter is primarily used to
  ///  record information about the actual activities that occurred, where
  ///  Appointment is used to record planned activities.
  const EncounterLocation._();

  /// [EncounterLocation] An interaction between a patient and healthcare
  ///  provider(s) for the purpose of providing healthcare service(s) or
  ///  assessing the health status of a patient.  Encounter is primarily used to
  ///  record information about the actual activities that occurred, where
  ///  Appointment is used to record planned activities.
  ///
  /// [id] Unique id for the element within a resource (for internal references).
  ///  This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional information
  ///  that is not part of the basic definition of the element. To make the use
  ///  of extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that is
  ///  not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of extensions
  ///  safe and managable, there is a strict set of governance applied to the
  ///  definition and use of extensions. Though any implementer can define an
  ///  extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.Modifier extensions SHALL NOT
  ///  change the meaning of any elements on Resource or DomainResource
  ///  (including cannot change the meaning of modifierExtension itself).
  ///
  /// [location] The location where the encounter takes place.
  ///
  /// [status] The status of the participants' presence at the specified location
  ///  during the period specified. If the participant is no longer at the
  ///  location, then the period will have an end date/time.
  ///
  /// [statusElement] ("_status") Extensions for status
  ///
  /// [form] This will be used to specify the required levels
  ///  (bed/ward/room/etc.) desired to be recorded to simplify either messaging
  ///  or query.
  ///
  /// [period] Time period during which the patient was present at the location.
  ///
  const factory EncounterLocation({
    /// [id] Unique id for the element within a resource (for internal references).
    ///  This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional information
    ///  that is not part of the basic definition of the element. To make the use
    ///  of extensions safe and managable, there is a strict set of governance
    ///  applied to the definition and use of extensions. Though any implementer
    ///  can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is
    ///  not part of the basic definition of the element and that modifies the
    ///  understanding of the element in which it is contained and/or the
    ///  understanding of the containing element's descendants. Usually modifier
    ///  elements provide negation or qualification. To make the use of extensions
    ///  safe and managable, there is a strict set of governance applied to the
    ///  definition and use of extensions. Though any implementer can define an
    ///  extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.Modifier extensions SHALL NOT
    ///  change the meaning of any elements on Resource or DomainResource
    ///  (including cannot change the meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [location] The location where the encounter takes place.
    required Reference location,

    /// [status] The status of the participants' presence at the specified location
    ///  during the period specified. If the participant is no longer at the
    ///  location, then the period will have an end date/time.
    FhirCode? status,

    /// [statusElement] ("_status") Extensions for status
    @JsonKey(name: '_status') Element? statusElement,

    /// [form] This will be used to specify the required levels
    ///  (bed/ward/room/etc.) desired to be recorded to simplify either messaging
    ///  or query.
    CodeableConcept? form,

    /// [period] Time period during which the patient was present at the location.
    Period? period,
  }) = _EncounterLocation;

  @override
  String get fhirType => 'EncounterLocation';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory EncounterLocation.fromYaml(dynamic yaml) => yaml is String
      ? EncounterLocation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EncounterLocation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EncounterLocation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory EncounterLocation.fromJson(Map<String, dynamic> json) =>
      _$EncounterLocationFromJson(json);

  /// Acts like a constructor, returns a [EncounterLocation], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory EncounterLocation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EncounterLocationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [EncounterHistory] A record of significant events/milestones key data
///  throughout the history of an Encounter, often tracked for specific
///  purposes such as billing.
@freezed
class EncounterHistory with Resource, _$EncounterHistory {
  /// [EncounterHistory] A record of significant events/milestones key data
  ///  throughout the history of an Encounter, often tracked for specific
  ///  purposes such as billing.
  const EncounterHistory._();

  /// [EncounterHistory] A record of significant events/milestones key data
  ///  throughout the history of an Encounter, often tracked for specific
  ///  purposes such as billing.
  ///
  /// [resourceType] This is a EncounterHistory resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is maintained
  ///  by the infrastructure. Changes to the content might not always be
  ///  associated with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  ///  resource was constructed, and which must be understood when processing the
  ///  content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] ("_implicitRules") Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] ("_language") Extensions for language
  ///
  /// [text] A human-readable narrative that contains a summary of the resource
  ///  and can be used to represent the content of the resource to a human. The
  ///  narrative need not encode all the structured data, but is required to
  ///  contain sufficient detail to make it "clinically safe" for a human to just
  ///  read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  ///
  /// [contained] These resources do not have an independent existence apart from
  ///  the resource that contains them - they cannot be identified independently,
  ///  nor can they have their own independent transaction scope. This is allowed
  ///  to be a Parameters resource if and only if it is referenced by a resource
  ///  that provides context/meaning.
  ///
  /// [extension_] ("extension") May be used to represent additional information
  ///  that is not part of the basic definition of the resource. To make the use
  ///  of extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that is
  ///  not part of the basic definition of the resource and that modifies the
  ///  understanding of the element that contains it and/or the understanding of
  ///  the containing element's descendants. Usually modifier elements provide
  ///  negation or qualification. To make the use of extensions safe and
  ///  managable, there is a strict set of governance applied to the definition
  ///  and use of extensions. Though any implementer is allowed to define an
  ///  extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.Modifier extensions SHALL NOT
  ///  change the meaning of any elements on Resource or DomainResource
  ///  (including cannot change the meaning of modifierExtension itself).
  ///
  /// [encounter] The Encounter associated with this set of historic values.
  ///
  /// [identifier] Identifier(s) by which this encounter is known.
  ///
  /// [status] planned | in-progress | on-hold | discharged | completed |
  ///  cancelled | discontinued | entered-in-error | unknown.
  ///
  /// [statusElement] ("_status") Extensions for status
  ///
  /// [class_] ("class") Concepts representing classification of patient
  ///  encounter such as ambulatory (outpatient), inpatient, emergency, home
  ///  health or others due to local variations.
  ///
  /// [type] Specific type of encounter (e.g. e-mail consultation, surgical
  ///  day-care, skilled nursing, rehabilitation).
  ///
  /// [serviceType] Broad categorization of the service that is to be provided
  ///  (e.g. cardiology).
  ///
  /// [subject] The patient or group related to this encounter. In some use-cases
  ///  the patient MAY not be present, such as a case meeting about a patient
  ///  between several practitioners or a careteam.
  ///
  /// [subjectStatus] The subjectStatus value can be used to track the patient's
  ///  status within the encounter. It details whether the patient has arrived or
  ///  departed, has been triaged or is currently in a waiting status.
  ///
  /// [actualPeriod] The start and end time associated with this set of values
  ///  associated with the encounter, may be different to the planned times for
  ///  various reasons.
  ///
  /// [plannedStartDate] The planned start date/time (or admission date) of the
  ///  encounter.
  ///
  /// [plannedStartDateElement] ("_plannedStartDate") Extensions for
  ///  plannedStartDate
  ///
  /// [plannedEndDate] The planned end date/time (or discharge date) of the
  ///  encounter.
  ///
  /// [plannedEndDateElement] ("_plannedEndDate") Extensions for plannedEndDate
  ///
  /// [length] Actual quantity of time the encounter lasted. This excludes the
  ///  time during leaves of absence. When missing it is the time in between the
  ///  start and end values.
  ///
  /// [location] The location of the patient at this point in the encounter, the
  ///  multiple cardinality permits de-normalizing the levels of the location
  ///  hierarchy, such as site/ward/room/bed.
  ///
  const factory EncounterHistory({
    /// [resourceType] This is a EncounterHistory resource
    @Default(R6ResourceType.EncounterHistory)
    @JsonKey(unknownEnumValue: R6ResourceType.EncounterHistory)
    R6ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource.
    ///  Once assigned, this value never changes.
    FhirId? id,

    /// [meta] The metadata about the resource. This is content that is maintained
    ///  by the infrastructure. Changes to the content might not always be
    ///  associated with version changes to the resource.
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the
    ///  resource was constructed, and which must be understood when processing the
    ///  content. Often, this is a reference to an implementation guide that
    ///  defines the special rules along with other profiles etc.
    FhirUri? implicitRules,

    /// [implicitRulesElement] ("_implicitRules") Extensions for implicitRules
    @JsonKey(name: '_implicitRules') Element? implicitRulesElement,

    /// [language] The base language in which the resource is written.
    FhirCode? language,

    /// [languageElement] ("_language") Extensions for language
    @JsonKey(name: '_language') Element? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource
    ///  and can be used to represent the content of the resource to a human. The
    ///  narrative need not encode all the structured data, but is required to
    ///  contain sufficient detail to make it "clinically safe" for a human to just
    ///  read the narrative. Resource definitions may define what content should be
    ///  represented in the narrative to ensure clinical safety.
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart from
    ///  the resource that contains them - they cannot be identified independently,
    ///  nor can they have their own independent transaction scope. This is allowed
    ///  to be a Parameters resource if and only if it is referenced by a resource
    ///  that provides context/meaning.
    List<Resource>? contained,

    /// [extension_] ("extension") May be used to represent additional information
    ///  that is not part of the basic definition of the resource. To make the use
    ///  of extensions safe and managable, there is a strict set of governance
    ///  applied to the definition and use of extensions. Though any implementer
    ///  can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is
    ///  not part of the basic definition of the resource and that modifies the
    ///  understanding of the element that contains it and/or the understanding of
    ///  the containing element's descendants. Usually modifier elements provide
    ///  negation or qualification. To make the use of extensions safe and
    ///  managable, there is a strict set of governance applied to the definition
    ///  and use of extensions. Though any implementer is allowed to define an
    ///  extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.Modifier extensions SHALL NOT
    ///  change the meaning of any elements on Resource or DomainResource
    ///  (including cannot change the meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [encounter] The Encounter associated with this set of historic values.
    Reference? encounter,

    /// [identifier] Identifier(s) by which this encounter is known.
    List<Identifier>? identifier,

    /// [status] planned | in-progress | on-hold | discharged | completed |
    ///  cancelled | discontinued | entered-in-error | unknown.
    FhirCode? status,

    /// [statusElement] ("_status") Extensions for status
    @JsonKey(name: '_status') Element? statusElement,

    /// [class_] ("class") Concepts representing classification of patient
    ///  encounter such as ambulatory (outpatient), inpatient, emergency, home
    ///  health or others due to local variations.
    @JsonKey(name: 'class') required CodeableConcept class_,

    /// [type] Specific type of encounter (e.g. e-mail consultation, surgical
    ///  day-care, skilled nursing, rehabilitation).
    List<CodeableConcept>? type,

    /// [serviceType] Broad categorization of the service that is to be provided
    ///  (e.g. cardiology).
    List<CodeableReference>? serviceType,

    /// [subject] The patient or group related to this encounter. In some use-cases
    ///  the patient MAY not be present, such as a case meeting about a patient
    ///  between several practitioners or a careteam.
    Reference? subject,

    /// [subjectStatus] The subjectStatus value can be used to track the patient's
    ///  status within the encounter. It details whether the patient has arrived or
    ///  departed, has been triaged or is currently in a waiting status.
    CodeableConcept? subjectStatus,

    /// [actualPeriod] The start and end time associated with this set of values
    ///  associated with the encounter, may be different to the planned times for
    ///  various reasons.
    Period? actualPeriod,

    /// [plannedStartDate] The planned start date/time (or admission date) of the
    ///  encounter.
    FhirDateTime? plannedStartDate,

    /// [plannedStartDateElement] ("_plannedStartDate") Extensions for
    ///  plannedStartDate
    @JsonKey(name: '_plannedStartDate') Element? plannedStartDateElement,

    /// [plannedEndDate] The planned end date/time (or discharge date) of the
    ///  encounter.
    FhirDateTime? plannedEndDate,

    /// [plannedEndDateElement] ("_plannedEndDate") Extensions for plannedEndDate
    @JsonKey(name: '_plannedEndDate') Element? plannedEndDateElement,

    /// [length] Actual quantity of time the encounter lasted. This excludes the
    ///  time during leaves of absence. When missing it is the time in between the
    ///  start and end values.
    FhirDuration? length,

    /// [location] The location of the patient at this point in the encounter, the
    ///  multiple cardinality permits de-normalizing the levels of the location
    ///  hierarchy, such as site/ward/room/bed.
    List<EncounterHistoryLocation>? location,
  }) = _EncounterHistory;

  @override
  String get fhirType => 'EncounterHistory';

  /// Produces a Yaml formatted String version of the object
  @override
  String toYaml() => json2yaml(toJson());

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory EncounterHistory.fromYaml(dynamic yaml) => yaml is String
      ? EncounterHistory.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EncounterHistory.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EncounterHistory cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory EncounterHistory.fromJson(Map<String, dynamic> json) =>
      _$EncounterHistoryFromJson(json);

  /// Acts like a constructor, returns a [EncounterHistory], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory EncounterHistory.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EncounterHistoryFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());
}

/// [EncounterHistoryLocation] A record of significant events/milestones key
///  data throughout the history of an Encounter, often tracked for specific
///  purposes such as billing.
@freezed
class EncounterHistoryLocation with BackboneType, _$EncounterHistoryLocation {
  /// [EncounterHistoryLocation] A record of significant events/milestones key
  ///  data throughout the history of an Encounter, often tracked for specific
  ///  purposes such as billing.
  const EncounterHistoryLocation._();

  /// [EncounterHistoryLocation] A record of significant events/milestones key
  ///  data throughout the history of an Encounter, often tracked for specific
  ///  purposes such as billing.
  ///
  /// [id] Unique id for the element within a resource (for internal references).
  ///  This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional information
  ///  that is not part of the basic definition of the element. To make the use
  ///  of extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that is
  ///  not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of extensions
  ///  safe and managable, there is a strict set of governance applied to the
  ///  definition and use of extensions. Though any implementer can define an
  ///  extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.Modifier extensions SHALL NOT
  ///  change the meaning of any elements on Resource or DomainResource
  ///  (including cannot change the meaning of modifierExtension itself).
  ///
  /// [location] The location where the encounter takes place.
  ///
  /// [form] This will be used to specify the required levels
  ///  (bed/ward/room/etc.) desired to be recorded to simplify either messaging
  ///  or query.
  ///
  const factory EncounterHistoryLocation({
    /// [id] Unique id for the element within a resource (for internal references).
    ///  This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional information
    ///  that is not part of the basic definition of the element. To make the use
    ///  of extensions safe and managable, there is a strict set of governance
    ///  applied to the definition and use of extensions. Though any implementer
    ///  can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is
    ///  not part of the basic definition of the element and that modifies the
    ///  understanding of the element in which it is contained and/or the
    ///  understanding of the containing element's descendants. Usually modifier
    ///  elements provide negation or qualification. To make the use of extensions
    ///  safe and managable, there is a strict set of governance applied to the
    ///  definition and use of extensions. Though any implementer can define an
    ///  extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.Modifier extensions SHALL NOT
    ///  change the meaning of any elements on Resource or DomainResource
    ///  (including cannot change the meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [location] The location where the encounter takes place.
    required Reference location,

    /// [form] This will be used to specify the required levels
    ///  (bed/ward/room/etc.) desired to be recorded to simplify either messaging
    ///  or query.
    CodeableConcept? form,
  }) = _EncounterHistoryLocation;

  @override
  String get fhirType => 'EncounterHistoryLocation';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory EncounterHistoryLocation.fromYaml(dynamic yaml) => yaml is String
      ? EncounterHistoryLocation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EncounterHistoryLocation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EncounterHistoryLocation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory EncounterHistoryLocation.fromJson(Map<String, dynamic> json) =>
      _$EncounterHistoryLocationFromJson(json);

  /// Acts like a constructor, returns a [EncounterHistoryLocation], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory EncounterHistoryLocation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EncounterHistoryLocationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [EpisodeOfCare] An association between a patient and an organization /
///  healthcare provider(s) during which time encounters may occur. The
///  managing organization assumes a level of responsibility for the patient
///  during this time.
@freezed
class EpisodeOfCare with Resource, _$EpisodeOfCare {
  /// [EpisodeOfCare] An association between a patient and an organization /
  ///  healthcare provider(s) during which time encounters may occur. The
  ///  managing organization assumes a level of responsibility for the patient
  ///  during this time.
  const EpisodeOfCare._();

  /// [EpisodeOfCare] An association between a patient and an organization /
  ///  healthcare provider(s) during which time encounters may occur. The
  ///  managing organization assumes a level of responsibility for the patient
  ///  during this time.
  ///
  /// [resourceType] This is a EpisodeOfCare resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is maintained
  ///  by the infrastructure. Changes to the content might not always be
  ///  associated with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  ///  resource was constructed, and which must be understood when processing the
  ///  content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] ("_implicitRules") Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] ("_language") Extensions for language
  ///
  /// [text] A human-readable narrative that contains a summary of the resource
  ///  and can be used to represent the content of the resource to a human. The
  ///  narrative need not encode all the structured data, but is required to
  ///  contain sufficient detail to make it "clinically safe" for a human to just
  ///  read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  ///
  /// [contained] These resources do not have an independent existence apart from
  ///  the resource that contains them - they cannot be identified independently,
  ///  nor can they have their own independent transaction scope. This is allowed
  ///  to be a Parameters resource if and only if it is referenced by a resource
  ///  that provides context/meaning.
  ///
  /// [extension_] ("extension") May be used to represent additional information
  ///  that is not part of the basic definition of the resource. To make the use
  ///  of extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that is
  ///  not part of the basic definition of the resource and that modifies the
  ///  understanding of the element that contains it and/or the understanding of
  ///  the containing element's descendants. Usually modifier elements provide
  ///  negation or qualification. To make the use of extensions safe and
  ///  managable, there is a strict set of governance applied to the definition
  ///  and use of extensions. Though any implementer is allowed to define an
  ///  extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.Modifier extensions SHALL NOT
  ///  change the meaning of any elements on Resource or DomainResource
  ///  (including cannot change the meaning of modifierExtension itself).
  ///
  /// [identifier] The EpisodeOfCare may be known by different identifiers for
  ///  different contexts of use, such as when an external agency is tracking the
  ///  Episode for funding purposes.
  ///
  /// [status] planned | waitlist | active | onhold | finished | cancelled.
  ///
  /// [statusElement] ("_status") Extensions for status
  ///
  /// [statusHistory] The history of statuses that the EpisodeOfCare has been
  ///  through (without requiring processing the history of the resource).
  ///
  /// [type] A classification of the type of episode of care; e.g. specialist
  ///  referral, disease management, type of funded care.
  ///
  /// [reason] The list of medical reasons that are expected to be addressed
  ///  during the episode of care.
  ///
  /// [diagnosis] The list of medical conditions that were addressed during the
  ///  episode of care.
  ///
  /// [subject] The patient/group who is the focus of this episode of care.
  ///
  /// [managingOrganization] The organization that has assumed the specific
  ///  responsibilities for care coordination, care delivery, or other services
  ///  for the specified duration.
  ///
  /// [period] The interval during which the managing organization assumes the
  ///  defined responsibility.
  ///
  /// [referralRequest] Referral Request(s) that are fulfilled by this
  ///  EpisodeOfCare, incoming referrals.
  ///
  /// [careManager] The practitioner that is the care manager/care coordinator
  ///  for this patient.
  ///
  /// [careTeam] The list of practitioners that may be facilitating this episode
  ///  of care for specific purposes.
  ///
  /// [account] The set of accounts that may be used for billing for this
  ///  EpisodeOfCare.
  ///
  const factory EpisodeOfCare({
    /// [resourceType] This is a EpisodeOfCare resource
    @Default(R6ResourceType.EpisodeOfCare)
    @JsonKey(unknownEnumValue: R6ResourceType.EpisodeOfCare)
    R6ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource.
    ///  Once assigned, this value never changes.
    FhirId? id,

    /// [meta] The metadata about the resource. This is content that is maintained
    ///  by the infrastructure. Changes to the content might not always be
    ///  associated with version changes to the resource.
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the
    ///  resource was constructed, and which must be understood when processing the
    ///  content. Often, this is a reference to an implementation guide that
    ///  defines the special rules along with other profiles etc.
    FhirUri? implicitRules,

    /// [implicitRulesElement] ("_implicitRules") Extensions for implicitRules
    @JsonKey(name: '_implicitRules') Element? implicitRulesElement,

    /// [language] The base language in which the resource is written.
    FhirCode? language,

    /// [languageElement] ("_language") Extensions for language
    @JsonKey(name: '_language') Element? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource
    ///  and can be used to represent the content of the resource to a human. The
    ///  narrative need not encode all the structured data, but is required to
    ///  contain sufficient detail to make it "clinically safe" for a human to just
    ///  read the narrative. Resource definitions may define what content should be
    ///  represented in the narrative to ensure clinical safety.
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart from
    ///  the resource that contains them - they cannot be identified independently,
    ///  nor can they have their own independent transaction scope. This is allowed
    ///  to be a Parameters resource if and only if it is referenced by a resource
    ///  that provides context/meaning.
    List<Resource>? contained,

    /// [extension_] ("extension") May be used to represent additional information
    ///  that is not part of the basic definition of the resource. To make the use
    ///  of extensions safe and managable, there is a strict set of governance
    ///  applied to the definition and use of extensions. Though any implementer
    ///  can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is
    ///  not part of the basic definition of the resource and that modifies the
    ///  understanding of the element that contains it and/or the understanding of
    ///  the containing element's descendants. Usually modifier elements provide
    ///  negation or qualification. To make the use of extensions safe and
    ///  managable, there is a strict set of governance applied to the definition
    ///  and use of extensions. Though any implementer is allowed to define an
    ///  extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.Modifier extensions SHALL NOT
    ///  change the meaning of any elements on Resource or DomainResource
    ///  (including cannot change the meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [identifier] The EpisodeOfCare may be known by different identifiers for
    ///  different contexts of use, such as when an external agency is tracking the
    ///  Episode for funding purposes.
    List<Identifier>? identifier,

    /// [status] planned | waitlist | active | onhold | finished | cancelled.
    FhirCode? status,

    /// [statusElement] ("_status") Extensions for status
    @JsonKey(name: '_status') Element? statusElement,

    /// [statusHistory] The history of statuses that the EpisodeOfCare has been
    ///  through (without requiring processing the history of the resource).
    List<EpisodeOfCareStatusHistory>? statusHistory,

    /// [type] A classification of the type of episode of care; e.g. specialist
    ///  referral, disease management, type of funded care.
    List<CodeableConcept>? type,

    /// [reason] The list of medical reasons that are expected to be addressed
    ///  during the episode of care.
    List<EpisodeOfCareReason>? reason,

    /// [diagnosis] The list of medical conditions that were addressed during the
    ///  episode of care.
    List<EpisodeOfCareDiagnosis>? diagnosis,

    /// [subject] The patient/group who is the focus of this episode of care.
    required Reference subject,

    /// [managingOrganization] The organization that has assumed the specific
    ///  responsibilities for care coordination, care delivery, or other services
    ///  for the specified duration.
    Reference? managingOrganization,

    /// [period] The interval during which the managing organization assumes the
    ///  defined responsibility.
    Period? period,

    /// [referralRequest] Referral Request(s) that are fulfilled by this
    ///  EpisodeOfCare, incoming referrals.
    List<Reference>? referralRequest,

    /// [careManager] The practitioner that is the care manager/care coordinator
    ///  for this patient.
    Reference? careManager,

    /// [careTeam] The list of practitioners that may be facilitating this episode
    ///  of care for specific purposes.
    List<Reference>? careTeam,

    /// [account] The set of accounts that may be used for billing for this
    ///  EpisodeOfCare.
    List<Reference>? account,
  }) = _EpisodeOfCare;

  @override
  String get fhirType => 'EpisodeOfCare';

  /// Produces a Yaml formatted String version of the object
  @override
  String toYaml() => json2yaml(toJson());

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory EpisodeOfCare.fromYaml(dynamic yaml) => yaml is String
      ? EpisodeOfCare.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EpisodeOfCare.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EpisodeOfCare cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory EpisodeOfCare.fromJson(Map<String, dynamic> json) =>
      _$EpisodeOfCareFromJson(json);

  /// Acts like a constructor, returns a [EpisodeOfCare], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory EpisodeOfCare.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EpisodeOfCareFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());
}

/// [EpisodeOfCareStatusHistory] An association between a patient and an
///  organization / healthcare provider(s) during which time encounters may
///  occur. The managing organization assumes a level of responsibility for the
///  patient during this time.
@freezed
class EpisodeOfCareStatusHistory
    with BackboneType, _$EpisodeOfCareStatusHistory {
  /// [EpisodeOfCareStatusHistory] An association between a patient and an
  ///  organization / healthcare provider(s) during which time encounters may
  ///  occur. The managing organization assumes a level of responsibility for the
  ///  patient during this time.
  const EpisodeOfCareStatusHistory._();

  /// [EpisodeOfCareStatusHistory] An association between a patient and an
  ///  organization / healthcare provider(s) during which time encounters may
  ///  occur. The managing organization assumes a level of responsibility for the
  ///  patient during this time.
  ///
  /// [id] Unique id for the element within a resource (for internal references).
  ///  This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional information
  ///  that is not part of the basic definition of the element. To make the use
  ///  of extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that is
  ///  not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of extensions
  ///  safe and managable, there is a strict set of governance applied to the
  ///  definition and use of extensions. Though any implementer can define an
  ///  extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.Modifier extensions SHALL NOT
  ///  change the meaning of any elements on Resource or DomainResource
  ///  (including cannot change the meaning of modifierExtension itself).
  ///
  /// [status] planned | waitlist | active | onhold | finished | cancelled.
  ///
  /// [statusElement] ("_status") Extensions for status
  ///
  /// [period] The period during this EpisodeOfCare that the specific status
  ///  applied.
  ///
  const factory EpisodeOfCareStatusHistory({
    /// [id] Unique id for the element within a resource (for internal references).
    ///  This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional information
    ///  that is not part of the basic definition of the element. To make the use
    ///  of extensions safe and managable, there is a strict set of governance
    ///  applied to the definition and use of extensions. Though any implementer
    ///  can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is
    ///  not part of the basic definition of the element and that modifies the
    ///  understanding of the element in which it is contained and/or the
    ///  understanding of the containing element's descendants. Usually modifier
    ///  elements provide negation or qualification. To make the use of extensions
    ///  safe and managable, there is a strict set of governance applied to the
    ///  definition and use of extensions. Though any implementer can define an
    ///  extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.Modifier extensions SHALL NOT
    ///  change the meaning of any elements on Resource or DomainResource
    ///  (including cannot change the meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [status] planned | waitlist | active | onhold | finished | cancelled.
    FhirCode? status,

    /// [statusElement] ("_status") Extensions for status
    @JsonKey(name: '_status') Element? statusElement,

    /// [period] The period during this EpisodeOfCare that the specific status
    ///  applied.
    required Period period,
  }) = _EpisodeOfCareStatusHistory;

  @override
  String get fhirType => 'EpisodeOfCareStatusHistory';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory EpisodeOfCareStatusHistory.fromYaml(dynamic yaml) => yaml is String
      ? EpisodeOfCareStatusHistory.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EpisodeOfCareStatusHistory.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EpisodeOfCareStatusHistory cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory EpisodeOfCareStatusHistory.fromJson(Map<String, dynamic> json) =>
      _$EpisodeOfCareStatusHistoryFromJson(json);

  /// Acts like a constructor, returns a [EpisodeOfCareStatusHistory], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory EpisodeOfCareStatusHistory.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EpisodeOfCareStatusHistoryFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [EpisodeOfCareReason] An association between a patient and an organization
///  / healthcare provider(s) during which time encounters may occur. The
///  managing organization assumes a level of responsibility for the patient
///  during this time.
@freezed
class EpisodeOfCareReason with BackboneType, _$EpisodeOfCareReason {
  /// [EpisodeOfCareReason] An association between a patient and an organization
  ///  / healthcare provider(s) during which time encounters may occur. The
  ///  managing organization assumes a level of responsibility for the patient
  ///  during this time.
  const EpisodeOfCareReason._();

  /// [EpisodeOfCareReason] An association between a patient and an organization
  ///  / healthcare provider(s) during which time encounters may occur. The
  ///  managing organization assumes a level of responsibility for the patient
  ///  during this time.
  ///
  /// [id] Unique id for the element within a resource (for internal references).
  ///  This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional information
  ///  that is not part of the basic definition of the element. To make the use
  ///  of extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that is
  ///  not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of extensions
  ///  safe and managable, there is a strict set of governance applied to the
  ///  definition and use of extensions. Though any implementer can define an
  ///  extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.Modifier extensions SHALL NOT
  ///  change the meaning of any elements on Resource or DomainResource
  ///  (including cannot change the meaning of modifierExtension itself).
  ///
  /// [use] What the reason value should be used as e.g. Chief Complaint, Health
  ///  Concern, Health Maintenance (including screening).
  ///
  /// [value] The medical reason that is expected to be addressed during the
  ///  episode of care, expressed as a text, code or a reference to another
  ///  resource.
  ///
  const factory EpisodeOfCareReason({
    /// [id] Unique id for the element within a resource (for internal references).
    ///  This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional information
    ///  that is not part of the basic definition of the element. To make the use
    ///  of extensions safe and managable, there is a strict set of governance
    ///  applied to the definition and use of extensions. Though any implementer
    ///  can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is
    ///  not part of the basic definition of the element and that modifies the
    ///  understanding of the element in which it is contained and/or the
    ///  understanding of the containing element's descendants. Usually modifier
    ///  elements provide negation or qualification. To make the use of extensions
    ///  safe and managable, there is a strict set of governance applied to the
    ///  definition and use of extensions. Though any implementer can define an
    ///  extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.Modifier extensions SHALL NOT
    ///  change the meaning of any elements on Resource or DomainResource
    ///  (including cannot change the meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [use] What the reason value should be used as e.g. Chief Complaint, Health
    ///  Concern, Health Maintenance (including screening).
    CodeableConcept? use,

    /// [value] The medical reason that is expected to be addressed during the
    ///  episode of care, expressed as a text, code or a reference to another
    ///  resource.
    List<CodeableReference>? value,
  }) = _EpisodeOfCareReason;

  @override
  String get fhirType => 'EpisodeOfCareReason';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory EpisodeOfCareReason.fromYaml(dynamic yaml) => yaml is String
      ? EpisodeOfCareReason.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EpisodeOfCareReason.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EpisodeOfCareReason cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory EpisodeOfCareReason.fromJson(Map<String, dynamic> json) =>
      _$EpisodeOfCareReasonFromJson(json);

  /// Acts like a constructor, returns a [EpisodeOfCareReason], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory EpisodeOfCareReason.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EpisodeOfCareReasonFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [EpisodeOfCareDiagnosis] An association between a patient and an
///  organization / healthcare provider(s) during which time encounters may
///  occur. The managing organization assumes a level of responsibility for the
///  patient during this time.
@freezed
class EpisodeOfCareDiagnosis with BackboneType, _$EpisodeOfCareDiagnosis {
  /// [EpisodeOfCareDiagnosis] An association between a patient and an
  ///  organization / healthcare provider(s) during which time encounters may
  ///  occur. The managing organization assumes a level of responsibility for the
  ///  patient during this time.
  const EpisodeOfCareDiagnosis._();

  /// [EpisodeOfCareDiagnosis] An association between a patient and an
  ///  organization / healthcare provider(s) during which time encounters may
  ///  occur. The managing organization assumes a level of responsibility for the
  ///  patient during this time.
  ///
  /// [id] Unique id for the element within a resource (for internal references).
  ///  This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional information
  ///  that is not part of the basic definition of the element. To make the use
  ///  of extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that is
  ///  not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of extensions
  ///  safe and managable, there is a strict set of governance applied to the
  ///  definition and use of extensions. Though any implementer can define an
  ///  extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.Modifier extensions SHALL NOT
  ///  change the meaning of any elements on Resource or DomainResource
  ///  (including cannot change the meaning of modifierExtension itself).
  ///
  /// [condition] The medical condition that was addressed during the episode of
  ///  care, expressed as a text, code or a reference to another resource.
  ///
  /// [use] Role that this diagnosis has within the episode of care (e.g.
  ///  admission, billing, discharge …).
  ///
  const factory EpisodeOfCareDiagnosis({
    /// [id] Unique id for the element within a resource (for internal references).
    ///  This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional information
    ///  that is not part of the basic definition of the element. To make the use
    ///  of extensions safe and managable, there is a strict set of governance
    ///  applied to the definition and use of extensions. Though any implementer
    ///  can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is
    ///  not part of the basic definition of the element and that modifies the
    ///  understanding of the element in which it is contained and/or the
    ///  understanding of the containing element's descendants. Usually modifier
    ///  elements provide negation or qualification. To make the use of extensions
    ///  safe and managable, there is a strict set of governance applied to the
    ///  definition and use of extensions. Though any implementer can define an
    ///  extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.Modifier extensions SHALL NOT
    ///  change the meaning of any elements on Resource or DomainResource
    ///  (including cannot change the meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [condition] The medical condition that was addressed during the episode of
    ///  care, expressed as a text, code or a reference to another resource.
    List<CodeableReference>? condition,

    /// [use] Role that this diagnosis has within the episode of care (e.g.
    ///  admission, billing, discharge …).
    CodeableConcept? use,
  }) = _EpisodeOfCareDiagnosis;

  @override
  String get fhirType => 'EpisodeOfCareDiagnosis';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory EpisodeOfCareDiagnosis.fromYaml(dynamic yaml) => yaml is String
      ? EpisodeOfCareDiagnosis.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EpisodeOfCareDiagnosis.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EpisodeOfCareDiagnosis cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory EpisodeOfCareDiagnosis.fromJson(Map<String, dynamic> json) =>
      _$EpisodeOfCareDiagnosisFromJson(json);

  /// Acts like a constructor, returns a [EpisodeOfCareDiagnosis], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory EpisodeOfCareDiagnosis.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EpisodeOfCareDiagnosisFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [Flag] Prospective warnings of potential issues when providing care to the
///  patient.
@freezed
class Flag with Resource, _$Flag {
  /// [Flag] Prospective warnings of potential issues when providing care to the
  ///  patient.
  const Flag._();

  /// [Flag] Prospective warnings of potential issues when providing care to the
  ///  patient.
  ///
  /// [resourceType] This is a Flag resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is maintained
  ///  by the infrastructure. Changes to the content might not always be
  ///  associated with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  ///  resource was constructed, and which must be understood when processing the
  ///  content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] ("_implicitRules") Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] ("_language") Extensions for language
  ///
  /// [text] A human-readable narrative that contains a summary of the resource
  ///  and can be used to represent the content of the resource to a human. The
  ///  narrative need not encode all the structured data, but is required to
  ///  contain sufficient detail to make it "clinically safe" for a human to just
  ///  read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  ///
  /// [contained] These resources do not have an independent existence apart from
  ///  the resource that contains them - they cannot be identified independently,
  ///  nor can they have their own independent transaction scope. This is allowed
  ///  to be a Parameters resource if and only if it is referenced by a resource
  ///  that provides context/meaning.
  ///
  /// [extension_] ("extension") May be used to represent additional information
  ///  that is not part of the basic definition of the resource. To make the use
  ///  of extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that is
  ///  not part of the basic definition of the resource and that modifies the
  ///  understanding of the element that contains it and/or the understanding of
  ///  the containing element's descendants. Usually modifier elements provide
  ///  negation or qualification. To make the use of extensions safe and
  ///  managable, there is a strict set of governance applied to the definition
  ///  and use of extensions. Though any implementer is allowed to define an
  ///  extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.Modifier extensions SHALL NOT
  ///  change the meaning of any elements on Resource or DomainResource
  ///  (including cannot change the meaning of modifierExtension itself).
  ///
  /// [identifier] Business identifiers assigned to this flag by the performer or
  ///  other systems which remain constant as the resource is updated and
  ///  propagates from server to server.
  ///
  /// [status] Supports basic workflow.
  ///
  /// [statusElement] ("_status") Extensions for status
  ///
  /// [category] Allows a flag to be divided into different categories like
  ///  clinical, administrative etc. Intended to be used as a means of filtering
  ///  which flags are displayed to particular user or in a given context.
  ///
  /// [code] The coded value or textual component of the flag to display to the
  ///  user.
  ///
  /// [subject] The patient, related person, location, group, organization, or
  ///  practitioner etc. this is about record this flag is associated with.
  ///
  /// [period] The period of time from the activation of the flag to inactivation
  ///  of the flag. If the flag is active, the end of the period should be
  ///  unspecified.
  ///
  /// [encounter] This alert is only relevant during the encounter.
  ///
  /// [author] The person, organization or device that created the flag.
  ///
  /// [supportingInfo] Additional information that may be relevant to the flag,
  ///  such as why the flag was created or how to guide management of the flag.
  ///
  const factory Flag({
    /// [resourceType] This is a Flag resource
    @Default(R6ResourceType.Flag)
    @JsonKey(unknownEnumValue: R6ResourceType.Flag)
    R6ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource.
    ///  Once assigned, this value never changes.
    FhirId? id,

    /// [meta] The metadata about the resource. This is content that is maintained
    ///  by the infrastructure. Changes to the content might not always be
    ///  associated with version changes to the resource.
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the
    ///  resource was constructed, and which must be understood when processing the
    ///  content. Often, this is a reference to an implementation guide that
    ///  defines the special rules along with other profiles etc.
    FhirUri? implicitRules,

    /// [implicitRulesElement] ("_implicitRules") Extensions for implicitRules
    @JsonKey(name: '_implicitRules') Element? implicitRulesElement,

    /// [language] The base language in which the resource is written.
    FhirCode? language,

    /// [languageElement] ("_language") Extensions for language
    @JsonKey(name: '_language') Element? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource
    ///  and can be used to represent the content of the resource to a human. The
    ///  narrative need not encode all the structured data, but is required to
    ///  contain sufficient detail to make it "clinically safe" for a human to just
    ///  read the narrative. Resource definitions may define what content should be
    ///  represented in the narrative to ensure clinical safety.
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart from
    ///  the resource that contains them - they cannot be identified independently,
    ///  nor can they have their own independent transaction scope. This is allowed
    ///  to be a Parameters resource if and only if it is referenced by a resource
    ///  that provides context/meaning.
    List<Resource>? contained,

    /// [extension_] ("extension") May be used to represent additional information
    ///  that is not part of the basic definition of the resource. To make the use
    ///  of extensions safe and managable, there is a strict set of governance
    ///  applied to the definition and use of extensions. Though any implementer
    ///  can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is
    ///  not part of the basic definition of the resource and that modifies the
    ///  understanding of the element that contains it and/or the understanding of
    ///  the containing element's descendants. Usually modifier elements provide
    ///  negation or qualification. To make the use of extensions safe and
    ///  managable, there is a strict set of governance applied to the definition
    ///  and use of extensions. Though any implementer is allowed to define an
    ///  extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.Modifier extensions SHALL NOT
    ///  change the meaning of any elements on Resource or DomainResource
    ///  (including cannot change the meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [identifier] Business identifiers assigned to this flag by the performer or
    ///  other systems which remain constant as the resource is updated and
    ///  propagates from server to server.
    List<Identifier>? identifier,

    /// [status] Supports basic workflow.
    FhirCode? status,

    /// [statusElement] ("_status") Extensions for status
    @JsonKey(name: '_status') Element? statusElement,

    /// [category] Allows a flag to be divided into different categories like
    ///  clinical, administrative etc. Intended to be used as a means of filtering
    ///  which flags are displayed to particular user or in a given context.
    List<CodeableConcept>? category,

    /// [code] The coded value or textual component of the flag to display to the
    ///  user.
    required CodeableConcept code,

    /// [subject] The patient, related person, location, group, organization, or
    ///  practitioner etc. this is about record this flag is associated with.
    required Reference subject,

    /// [period] The period of time from the activation of the flag to inactivation
    ///  of the flag. If the flag is active, the end of the period should be
    ///  unspecified.
    Period? period,

    /// [encounter] This alert is only relevant during the encounter.
    Reference? encounter,

    /// [author] The person, organization or device that created the flag.
    Reference? author,

    /// [supportingInfo] Additional information that may be relevant to the flag,
    ///  such as why the flag was created or how to guide management of the flag.
    List<Reference>? supportingInfo,
  }) = _Flag;

  @override
  String get fhirType => 'Flag';

  /// Produces a Yaml formatted String version of the object
  @override
  String toYaml() => json2yaml(toJson());

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Flag.fromYaml(dynamic yaml) => yaml is String
      ? Flag.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Flag.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Flag cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Flag.fromJson(Map<String, dynamic> json) => _$FlagFromJson(json);

  /// Acts like a constructor, returns a [Flag], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Flag.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$FlagFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());
}

/// [Library] The Library resource is a general-purpose container for knowledge
///  asset definitions. It can be used to describe and expose existing
///  knowledge assets such as logic libraries and information model
///  descriptions, as well as to describe a collection of knowledge assets.
@freezed
class Library with Resource, _$Library {
  /// [Library] The Library resource is a general-purpose container for knowledge
  ///  asset definitions. It can be used to describe and expose existing
  ///  knowledge assets such as logic libraries and information model
  ///  descriptions, as well as to describe a collection of knowledge assets.
  const Library._();

  /// [Library] The Library resource is a general-purpose container for knowledge
  ///  asset definitions. It can be used to describe and expose existing
  ///  knowledge assets such as logic libraries and information model
  ///  descriptions, as well as to describe a collection of knowledge assets.
  ///
  /// [resourceType] This is a Library resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is maintained
  ///  by the infrastructure. Changes to the content might not always be
  ///  associated with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  ///  resource was constructed, and which must be understood when processing the
  ///  content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] ("_implicitRules") Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] ("_language") Extensions for language
  ///
  /// [text] A human-readable narrative that contains a summary of the resource
  ///  and can be used to represent the content of the resource to a human. The
  ///  narrative need not encode all the structured data, but is required to
  ///  contain sufficient detail to make it "clinically safe" for a human to just
  ///  read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  ///
  /// [contained] These resources do not have an independent existence apart from
  ///  the resource that contains them - they cannot be identified independently,
  ///  nor can they have their own independent transaction scope. This is allowed
  ///  to be a Parameters resource if and only if it is referenced by a resource
  ///  that provides context/meaning.
  ///
  /// [extension_] ("extension") May be used to represent additional information
  ///  that is not part of the basic definition of the resource. To make the use
  ///  of extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that is
  ///  not part of the basic definition of the resource and that modifies the
  ///  understanding of the element that contains it and/or the understanding of
  ///  the containing element's descendants. Usually modifier elements provide
  ///  negation or qualification. To make the use of extensions safe and
  ///  managable, there is a strict set of governance applied to the definition
  ///  and use of extensions. Though any implementer is allowed to define an
  ///  extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.Modifier extensions SHALL NOT
  ///  change the meaning of any elements on Resource or DomainResource
  ///  (including cannot change the meaning of modifierExtension itself).
  ///
  /// [url] An absolute URI that is used to identify this library when it is
  ///  referenced in a specification, model, design or an instance; also called
  ///  its canonical identifier. This SHOULD be globally unique and SHOULD be a
  ///  literal address at which an authoritative instance of this library is (or
  ///  will be) published. This URL can be the target of a canonical reference.
  ///  It SHALL remain the same when the library is stored on different servers.
  ///
  /// [urlElement] ("_url") Extensions for url
  ///
  /// [identifier] A formal identifier that is used to identify this library when
  ///  it is represented in other formats, or referenced in a specification,
  ///  model, design or an instance. e.g. CMS or NQF identifiers for a measure
  ///  artifact. Note that at least one identifier is required for
  ///  non-experimental active artifacts.
  ///
  /// [version] The identifier that is used to identify this version of the
  ///  library when it is referenced in a specification, model, design or
  ///  instance. This is an arbitrary value managed by the library author and is
  ///  not expected to be globally unique. For example, it might be a timestamp
  ///  (e.g. yyyymmdd) if a managed version is not available. There is also no
  ///  expectation that versions can be placed in a lexicographical sequence. To
  ///  provide a version consistent with the Decision Support Service
  ///  specification, use the format Major.Minor.Revision (e.g. 1.0.0). For more
  ///  information on versioning knowledge assets, refer to the Decision Support
  ///  Service specification. Note that a version is required for
  ///  non-experimental active artifacts.
  ///
  /// [versionElement] ("_version") Extensions for version
  ///
  /// [versionAlgorithmString] Indicates the mechanism used to compare versions
  ///  to determine which is more current.
  ///
  /// [versionAlgorithmStringElement] ("_versionAlgorithmString") Extensions for
  ///  versionAlgorithmString
  ///
  /// [versionAlgorithmCoding] Indicates the mechanism used to compare versions
  ///  to determine which is more current.
  ///
  /// [name] A natural language name identifying the library. This name should be
  ///  usable as an identifier for the module by machine processing applications
  ///  such as code generation.
  ///
  /// [nameElement] ("_name") Extensions for name
  ///
  /// [title] A short, descriptive, user-friendly title for the library.
  ///
  /// [titleElement] ("_title") Extensions for title
  ///
  /// [status] The status of this library. Enables tracking the life-cycle of the
  ///  content.
  ///
  /// [statusElement] ("_status") Extensions for status
  ///
  /// [experimental] A Boolean value to indicate that this library is authored
  ///  for testing purposes (or education/evaluation/marketing) and is not
  ///  intended to be used for genuine usage.
  ///
  /// [experimentalElement] ("_experimental") Extensions for experimental
  ///
  /// [date] The date  (and optionally time) when the library was last
  ///  significantly changed. The date must change when the business version
  ///  changes and it must change if the status code changes. In addition, it
  ///  should change when the substantive content of the library changes.
  ///
  /// [dateElement] ("_date") Extensions for date
  ///
  /// [publisher] The name of the organization or individual responsible for the
  ///  release and ongoing maintenance of the library.
  ///
  /// [publisherElement] ("_publisher") Extensions for publisher
  ///
  /// [contact] Contact details to assist a user in finding and communicating
  ///  with the publisher.
  ///
  /// [description] A free text natural language description of the library from
  ///  a consumer's perspective.
  ///
  /// [descriptionElement] ("_description") Extensions for description
  ///
  /// [useContext] The content was developed with a focus and intent of
  ///  supporting the contexts that are listed. These contexts may be general
  ///  categories (gender, age, ...) or may be references to specific programs
  ///  (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate library instances.
  ///
  /// [jurisdiction] A legal or geographic region in which the library is
  ///  intended to be used.
  ///
  /// [purpose] Explanation of why this library is needed and why it has been
  ///  designed as it has.
  ///
  /// [purposeElement] ("_purpose") Extensions for purpose
  ///
  /// [copyright] A copyright statement relating to the library and/or its
  ///  contents. Copyright statements are generally legal restrictions on the use
  ///  and publishing of the library.
  ///
  /// [copyrightElement] ("_copyright") Extensions for copyright
  ///
  /// [copyrightLabel] A short string (<50 characters), suitable for inclusion in
  ///  a page footer that identifies the copyright holder, effective period, and
  ///  optionally whether rights are resctricted. (e.g. 'All rights reserved',
  ///  'Some rights reserved').
  ///
  /// [copyrightLabelElement] ("_copyrightLabel") Extensions for copyrightLabel
  ///
  /// [approvalDate] The date on which the resource content was approved by the
  ///  publisher. Approval happens once when the content is officially approved
  ///  for usage.
  ///
  /// [approvalDateElement] ("_approvalDate") Extensions for approvalDate
  ///
  /// [lastReviewDate] The date on which the resource content was last reviewed.
  ///  Review happens periodically after approval but does not change the
  ///  original approval date.
  ///
  /// [lastReviewDateElement] ("_lastReviewDate") Extensions for lastReviewDate
  ///
  /// [effectivePeriod] The period during which the library content was or is
  ///  planned to be in active use.
  ///
  /// [topic] Descriptive topics related to the content of the library. Topics
  ///  provide a high-level categorization of the library that can be useful for
  ///  filtering and searching.
  ///
  /// [author] An individiual or organization primarily involved in the creation
  ///  and maintenance of the content.
  ///
  /// [editor] An individual or organization primarily responsible for internal
  ///  coherence of the content.
  ///
  /// [reviewer] An individual or organization asserted by the publisher to be
  ///  primarily responsible for review of some aspect of the content.
  ///
  /// [endorser] An individual or organization asserted by the publisher to be
  ///  responsible for officially endorsing the content for use in some setting.
  ///
  /// [relatedArtifact] Related artifacts such as additional documentation,
  ///  justification, or bibliographic references.
  ///
  /// [subtitle] An explanatory or alternate title for the library giving
  ///  additional information about its content.
  ///
  /// [subtitleElement] ("_subtitle") Extensions for subtitle
  ///
  /// [type] Identifies the type of library such as a Logic Library, Model
  ///  Definition, Asset Collection, or Module Definition.
  ///
  /// [subjectCodeableConcept] A code or group definition that describes the
  ///  intended subject of the contents of the library.
  ///
  /// [subjectReference] A code or group definition that describes the intended
  ///  subject of the contents of the library.
  ///
  /// [usage] A detailed description of how the library is used from a clinical
  ///  perspective.
  ///
  /// [usageElement] ("_usage") Extensions for usage
  ///
  /// [parameter] The parameter element defines parameters used by the library.
  ///
  /// [dataRequirement] Describes a set of data that must be provided in order to
  ///  be able to successfully perform the computations defined by the library.
  ///
  /// [content] The content of the library as an Attachment. The content may be a
  ///  reference to a url, or may be directly embedded as a base-64 string.
  ///  Either way, the contentType of the attachment determines how to interpret
  ///  the content.
  ///
  const factory Library({
    /// [resourceType] This is a Library resource
    @Default(R6ResourceType.Library)
    @JsonKey(unknownEnumValue: R6ResourceType.Library)
    R6ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource.
    ///  Once assigned, this value never changes.
    FhirId? id,

    /// [meta] The metadata about the resource. This is content that is maintained
    ///  by the infrastructure. Changes to the content might not always be
    ///  associated with version changes to the resource.
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the
    ///  resource was constructed, and which must be understood when processing the
    ///  content. Often, this is a reference to an implementation guide that
    ///  defines the special rules along with other profiles etc.
    FhirUri? implicitRules,

    /// [implicitRulesElement] ("_implicitRules") Extensions for implicitRules
    @JsonKey(name: '_implicitRules') Element? implicitRulesElement,

    /// [language] The base language in which the resource is written.
    FhirCode? language,

    /// [languageElement] ("_language") Extensions for language
    @JsonKey(name: '_language') Element? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource
    ///  and can be used to represent the content of the resource to a human. The
    ///  narrative need not encode all the structured data, but is required to
    ///  contain sufficient detail to make it "clinically safe" for a human to just
    ///  read the narrative. Resource definitions may define what content should be
    ///  represented in the narrative to ensure clinical safety.
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart from
    ///  the resource that contains them - they cannot be identified independently,
    ///  nor can they have their own independent transaction scope. This is allowed
    ///  to be a Parameters resource if and only if it is referenced by a resource
    ///  that provides context/meaning.
    List<Resource>? contained,

    /// [extension_] ("extension") May be used to represent additional information
    ///  that is not part of the basic definition of the resource. To make the use
    ///  of extensions safe and managable, there is a strict set of governance
    ///  applied to the definition and use of extensions. Though any implementer
    ///  can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is
    ///  not part of the basic definition of the resource and that modifies the
    ///  understanding of the element that contains it and/or the understanding of
    ///  the containing element's descendants. Usually modifier elements provide
    ///  negation or qualification. To make the use of extensions safe and
    ///  managable, there is a strict set of governance applied to the definition
    ///  and use of extensions. Though any implementer is allowed to define an
    ///  extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.Modifier extensions SHALL NOT
    ///  change the meaning of any elements on Resource or DomainResource
    ///  (including cannot change the meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [url] An absolute URI that is used to identify this library when it is
    ///  referenced in a specification, model, design or an instance; also called
    ///  its canonical identifier. This SHOULD be globally unique and SHOULD be a
    ///  literal address at which an authoritative instance of this library is (or
    ///  will be) published. This URL can be the target of a canonical reference.
    ///  It SHALL remain the same when the library is stored on different servers.
    FhirUri? url,

    /// [urlElement] ("_url") Extensions for url
    @JsonKey(name: '_url') Element? urlElement,

    /// [identifier] A formal identifier that is used to identify this library when
    ///  it is represented in other formats, or referenced in a specification,
    ///  model, design or an instance. e.g. CMS or NQF identifiers for a measure
    ///  artifact. Note that at least one identifier is required for
    ///  non-experimental active artifacts.
    List<Identifier>? identifier,

    /// [version] The identifier that is used to identify this version of the
    ///  library when it is referenced in a specification, model, design or
    ///  instance. This is an arbitrary value managed by the library author and is
    ///  not expected to be globally unique. For example, it might be a timestamp
    ///  (e.g. yyyymmdd) if a managed version is not available. There is also no
    ///  expectation that versions can be placed in a lexicographical sequence. To
    ///  provide a version consistent with the Decision Support Service
    ///  specification, use the format Major.Minor.Revision (e.g. 1.0.0). For more
    ///  information on versioning knowledge assets, refer to the Decision Support
    ///  Service specification. Note that a version is required for
    ///  non-experimental active artifacts.
    String? version,

    /// [versionElement] ("_version") Extensions for version
    @JsonKey(name: '_version') Element? versionElement,

    /// [versionAlgorithmString] Indicates the mechanism used to compare versions
    ///  to determine which is more current.
    String? versionAlgorithmString,

    /// [versionAlgorithmStringElement] ("_versionAlgorithmString") Extensions for
    ///  versionAlgorithmString
    @JsonKey(name: '_versionAlgorithmString')
    Element? versionAlgorithmStringElement,

    /// [versionAlgorithmCoding] Indicates the mechanism used to compare versions
    ///  to determine which is more current.
    Coding? versionAlgorithmCoding,

    /// [name] A natural language name identifying the library. This name should be
    ///  usable as an identifier for the module by machine processing applications
    ///  such as code generation.
    String? name,

    /// [nameElement] ("_name") Extensions for name
    @JsonKey(name: '_name') Element? nameElement,

    /// [title] A short, descriptive, user-friendly title for the library.
    String? title,

    /// [titleElement] ("_title") Extensions for title
    @JsonKey(name: '_title') Element? titleElement,

    /// [status] The status of this library. Enables tracking the life-cycle of the
    ///  content.
    FhirCode? status,

    /// [statusElement] ("_status") Extensions for status
    @JsonKey(name: '_status') Element? statusElement,

    /// [experimental] A Boolean value to indicate that this library is authored
    ///  for testing purposes (or education/evaluation/marketing) and is not
    ///  intended to be used for genuine usage.
    FhirBoolean? experimental,

    /// [experimentalElement] ("_experimental") Extensions for experimental
    @JsonKey(name: '_experimental') Element? experimentalElement,

    /// [date] The date  (and optionally time) when the library was last
    ///  significantly changed. The date must change when the business version
    ///  changes and it must change if the status code changes. In addition, it
    ///  should change when the substantive content of the library changes.
    FhirDateTime? date,

    /// [dateElement] ("_date") Extensions for date
    @JsonKey(name: '_date') Element? dateElement,

    /// [publisher] The name of the organization or individual responsible for the
    ///  release and ongoing maintenance of the library.
    String? publisher,

    /// [publisherElement] ("_publisher") Extensions for publisher
    @JsonKey(name: '_publisher') Element? publisherElement,

    /// [contact] Contact details to assist a user in finding and communicating
    ///  with the publisher.
    List<ContactDetail>? contact,

    /// [description] A free text natural language description of the library from
    ///  a consumer's perspective.
    FhirMarkdown? description,

    /// [descriptionElement] ("_description") Extensions for description
    @JsonKey(name: '_description') Element? descriptionElement,

    /// [useContext] The content was developed with a focus and intent of
    ///  supporting the contexts that are listed. These contexts may be general
    ///  categories (gender, age, ...) or may be references to specific programs
    ///  (insurance plans, studies, ...) and may be used to assist with indexing
    ///  and searching for appropriate library instances.
    List<UsageContext>? useContext,

    /// [jurisdiction] A legal or geographic region in which the library is
    ///  intended to be used.
    List<CodeableConcept>? jurisdiction,

    /// [purpose] Explanation of why this library is needed and why it has been
    ///  designed as it has.
    FhirMarkdown? purpose,

    /// [purposeElement] ("_purpose") Extensions for purpose
    @JsonKey(name: '_purpose') Element? purposeElement,

    /// [copyright] A copyright statement relating to the library and/or its
    ///  contents. Copyright statements are generally legal restrictions on the use
    ///  and publishing of the library.
    FhirMarkdown? copyright,

    /// [copyrightElement] ("_copyright") Extensions for copyright
    @JsonKey(name: '_copyright') Element? copyrightElement,

    /// [copyrightLabel] A short string (<50 characters), suitable for inclusion in
    ///  a page footer that identifies the copyright holder, effective period, and
    ///  optionally whether rights are resctricted. (e.g. 'All rights reserved',
    ///  'Some rights reserved').
    String? copyrightLabel,

    /// [copyrightLabelElement] ("_copyrightLabel") Extensions for copyrightLabel
    @JsonKey(name: '_copyrightLabel') Element? copyrightLabelElement,

    /// [approvalDate] The date on which the resource content was approved by the
    ///  publisher. Approval happens once when the content is officially approved
    ///  for usage.
    FhirDate? approvalDate,

    /// [approvalDateElement] ("_approvalDate") Extensions for approvalDate
    @JsonKey(name: '_approvalDate') Element? approvalDateElement,

    /// [lastReviewDate] The date on which the resource content was last reviewed.
    ///  Review happens periodically after approval but does not change the
    ///  original approval date.
    FhirDate? lastReviewDate,

    /// [lastReviewDateElement] ("_lastReviewDate") Extensions for lastReviewDate
    @JsonKey(name: '_lastReviewDate') Element? lastReviewDateElement,

    /// [effectivePeriod] The period during which the library content was or is
    ///  planned to be in active use.
    Period? effectivePeriod,

    /// [topic] Descriptive topics related to the content of the library. Topics
    ///  provide a high-level categorization of the library that can be useful for
    ///  filtering and searching.
    List<CodeableConcept>? topic,

    /// [author] An individiual or organization primarily involved in the creation
    ///  and maintenance of the content.
    List<ContactDetail>? author,

    /// [editor] An individual or organization primarily responsible for internal
    ///  coherence of the content.
    List<ContactDetail>? editor,

    /// [reviewer] An individual or organization asserted by the publisher to be
    ///  primarily responsible for review of some aspect of the content.
    List<ContactDetail>? reviewer,

    /// [endorser] An individual or organization asserted by the publisher to be
    ///  responsible for officially endorsing the content for use in some setting.
    List<ContactDetail>? endorser,

    /// [relatedArtifact] Related artifacts such as additional documentation,
    ///  justification, or bibliographic references.
    List<RelatedArtifact>? relatedArtifact,

    /// [subtitle] An explanatory or alternate title for the library giving
    ///  additional information about its content.
    String? subtitle,

    /// [subtitleElement] ("_subtitle") Extensions for subtitle
    @JsonKey(name: '_subtitle') Element? subtitleElement,

    /// [type] Identifies the type of library such as a Logic Library, Model
    ///  Definition, Asset Collection, or Module Definition.
    required CodeableConcept type,

    /// [subjectCodeableConcept] A code or group definition that describes the
    ///  intended subject of the contents of the library.
    CodeableConcept? subjectCodeableConcept,

    /// [subjectReference] A code or group definition that describes the intended
    ///  subject of the contents of the library.
    Reference? subjectReference,

    /// [usage] A detailed description of how the library is used from a clinical
    ///  perspective.
    FhirMarkdown? usage,

    /// [usageElement] ("_usage") Extensions for usage
    @JsonKey(name: '_usage') Element? usageElement,

    /// [parameter] The parameter element defines parameters used by the library.
    List<ParameterDefinition>? parameter,

    /// [dataRequirement] Describes a set of data that must be provided in order to
    ///  be able to successfully perform the computations defined by the library.
    List<DataRequirement>? dataRequirement,

    /// [content] The content of the library as an Attachment. The content may be a
    ///  reference to a url, or may be directly embedded as a base-64 string.
    ///  Either way, the contentType of the attachment determines how to interpret
    ///  the content.
    List<Attachment>? content,
  }) = _Library;

  @override
  String get fhirType => 'Library';

  /// Produces a Yaml formatted String version of the object
  @override
  String toYaml() => json2yaml(toJson());

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Library.fromYaml(dynamic yaml) => yaml is String
      ? Library.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Library.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Library cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Library.fromJson(Map<String, dynamic> json) =>
      _$LibraryFromJson(json);

  /// Acts like a constructor, returns a [Library], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Library.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$LibraryFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());
}

/// [FhirList] A List is a curated collection of resources, for things such as
///  problem lists, allergy lists, facility list, organization list, etc.
@freezed
class FhirList with Resource, _$FhirList {
  /// [FhirList] A List is a curated collection of resources, for things such as
  ///  problem lists, allergy lists, facility list, organization list, etc.
  const FhirList._();

  /// [FhirList] A List is a curated collection of resources, for things such as
  ///  problem lists, allergy lists, facility list, organization list, etc.
  ///
  /// [resourceType] This is a List resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is maintained
  ///  by the infrastructure. Changes to the content might not always be
  ///  associated with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  ///  resource was constructed, and which must be understood when processing the
  ///  content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] ("_implicitRules") Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] ("_language") Extensions for language
  ///
  /// [text] A human-readable narrative that contains a summary of the resource
  ///  and can be used to represent the content of the resource to a human. The
  ///  narrative need not encode all the structured data, but is required to
  ///  contain sufficient detail to make it "clinically safe" for a human to just
  ///  read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  ///
  /// [contained] These resources do not have an independent existence apart from
  ///  the resource that contains them - they cannot be identified independently,
  ///  nor can they have their own independent transaction scope. This is allowed
  ///  to be a Parameters resource if and only if it is referenced by a resource
  ///  that provides context/meaning.
  ///
  /// [extension_] ("extension") May be used to represent additional information
  ///  that is not part of the basic definition of the resource. To make the use
  ///  of extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that is
  ///  not part of the basic definition of the resource and that modifies the
  ///  understanding of the element that contains it and/or the understanding of
  ///  the containing element's descendants. Usually modifier elements provide
  ///  negation or qualification. To make the use of extensions safe and
  ///  managable, there is a strict set of governance applied to the definition
  ///  and use of extensions. Though any implementer is allowed to define an
  ///  extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.Modifier extensions SHALL NOT
  ///  change the meaning of any elements on Resource or DomainResource
  ///  (including cannot change the meaning of modifierExtension itself).
  ///
  /// [identifier] Identifier for the List assigned for business purposes outside
  ///  the context of FHIR.
  ///
  /// [status] Indicates the current state of this list.
  ///
  /// [statusElement] ("_status") Extensions for status
  ///
  /// [mode] How this list was prepared - whether it is a working list that is
  ///  suitable for being maintained on an ongoing basis, or if it represents a
  ///  snapshot of a list of items from another source, or whether it is a
  ///  prepared list where items may be marked as added, modified or deleted.
  ///
  /// [modeElement] ("_mode") Extensions for mode
  ///
  /// [title] A label for the list assigned by the author.
  ///
  /// [titleElement] ("_title") Extensions for title
  ///
  /// [code] This code defines the purpose of the list - why it was created.
  ///
  /// [subject] The common subject(s) (or patient(s)) of the resources that are
  ///  in the list if there is one (or a set of subjects).
  ///
  /// [encounter] The encounter that is the context in which this list was
  ///  created.
  ///
  /// [date] Date list was last reviewed/revised and determined to be 'current'.
  ///
  /// [dateElement] ("_date") Extensions for date
  ///
  /// [source] The entity responsible for deciding what the contents of the list
  ///  were. Where the list was created by a human, this is the same as the
  ///  author of the list.
  ///
  /// [orderedBy] What order applies to the items in the list.
  ///
  /// [note] Comments that apply to the overall list.
  ///
  /// [entry] Entries in this list.
  ///
  /// [emptyReason] If the list is empty, why the list is empty.
  ///
  const factory FhirList({
    /// [resourceType] This is a List resource
    @Default(R6ResourceType.FhirList)
    @JsonKey(unknownEnumValue: R6ResourceType.FhirList)
    R6ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource.
    ///  Once assigned, this value never changes.
    FhirId? id,

    /// [meta] The metadata about the resource. This is content that is maintained
    ///  by the infrastructure. Changes to the content might not always be
    ///  associated with version changes to the resource.
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the
    ///  resource was constructed, and which must be understood when processing the
    ///  content. Often, this is a reference to an implementation guide that
    ///  defines the special rules along with other profiles etc.
    FhirUri? implicitRules,

    /// [implicitRulesElement] ("_implicitRules") Extensions for implicitRules
    @JsonKey(name: '_implicitRules') Element? implicitRulesElement,

    /// [language] The base language in which the resource is written.
    FhirCode? language,

    /// [languageElement] ("_language") Extensions for language
    @JsonKey(name: '_language') Element? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource
    ///  and can be used to represent the content of the resource to a human. The
    ///  narrative need not encode all the structured data, but is required to
    ///  contain sufficient detail to make it "clinically safe" for a human to just
    ///  read the narrative. Resource definitions may define what content should be
    ///  represented in the narrative to ensure clinical safety.
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart from
    ///  the resource that contains them - they cannot be identified independently,
    ///  nor can they have their own independent transaction scope. This is allowed
    ///  to be a Parameters resource if and only if it is referenced by a resource
    ///  that provides context/meaning.
    List<Resource>? contained,

    /// [extension_] ("extension") May be used to represent additional information
    ///  that is not part of the basic definition of the resource. To make the use
    ///  of extensions safe and managable, there is a strict set of governance
    ///  applied to the definition and use of extensions. Though any implementer
    ///  can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is
    ///  not part of the basic definition of the resource and that modifies the
    ///  understanding of the element that contains it and/or the understanding of
    ///  the containing element's descendants. Usually modifier elements provide
    ///  negation or qualification. To make the use of extensions safe and
    ///  managable, there is a strict set of governance applied to the definition
    ///  and use of extensions. Though any implementer is allowed to define an
    ///  extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.Modifier extensions SHALL NOT
    ///  change the meaning of any elements on Resource or DomainResource
    ///  (including cannot change the meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [identifier] Identifier for the List assigned for business purposes outside
    ///  the context of FHIR.
    List<Identifier>? identifier,

    /// [status] Indicates the current state of this list.
    FhirCode? status,

    /// [statusElement] ("_status") Extensions for status
    @JsonKey(name: '_status') Element? statusElement,

    /// [mode] How this list was prepared - whether it is a working list that is
    ///  suitable for being maintained on an ongoing basis, or if it represents a
    ///  snapshot of a list of items from another source, or whether it is a
    ///  prepared list where items may be marked as added, modified or deleted.
    FhirCode? mode,

    /// [modeElement] ("_mode") Extensions for mode
    @JsonKey(name: '_mode') Element? modeElement,

    /// [title] A label for the list assigned by the author.
    String? title,

    /// [titleElement] ("_title") Extensions for title
    @JsonKey(name: '_title') Element? titleElement,

    /// [code] This code defines the purpose of the list - why it was created.
    CodeableConcept? code,

    /// [subject] The common subject(s) (or patient(s)) of the resources that are
    ///  in the list if there is one (or a set of subjects).
    List<Reference>? subject,

    /// [encounter] The encounter that is the context in which this list was
    ///  created.
    Reference? encounter,

    /// [date] Date list was last reviewed/revised and determined to be 'current'.
    FhirDateTime? date,

    /// [dateElement] ("_date") Extensions for date
    @JsonKey(name: '_date') Element? dateElement,

    /// [source] The entity responsible for deciding what the contents of the list
    ///  were. Where the list was created by a human, this is the same as the
    ///  author of the list.
    Reference? source,

    /// [orderedBy] What order applies to the items in the list.
    CodeableConcept? orderedBy,

    /// [note] Comments that apply to the overall list.
    List<Annotation>? note,

    /// [entry] Entries in this list.
    List<ListEntry>? entry,

    /// [emptyReason] If the list is empty, why the list is empty.
    CodeableConcept? emptyReason,
  }) = _FhirList;

  @override
  String get fhirType => 'FhirList';

  /// Produces a Yaml formatted String version of the object
  @override
  String toYaml() => json2yaml(toJson());

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory FhirList.fromYaml(dynamic yaml) => yaml is String
      ? FhirList.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? FhirList.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'FhirList cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory FhirList.fromJson(Map<String, dynamic> json) =>
      _$FhirListFromJson(json);

  /// Acts like a constructor, returns a [FhirList], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory FhirList.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$FhirListFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());
}

/// [ListEntry] A List is a curated collection of resources, for things such as
///  problem lists, allergy lists, facility list, organization list, etc.
@freezed
class ListEntry with BackboneType, _$ListEntry {
  /// [ListEntry] A List is a curated collection of resources, for things such as
  ///  problem lists, allergy lists, facility list, organization list, etc.
  const ListEntry._();

  /// [ListEntry] A List is a curated collection of resources, for things such as
  ///  problem lists, allergy lists, facility list, organization list, etc.
  ///
  /// [id] Unique id for the element within a resource (for internal references).
  ///  This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional information
  ///  that is not part of the basic definition of the element. To make the use
  ///  of extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that is
  ///  not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of extensions
  ///  safe and managable, there is a strict set of governance applied to the
  ///  definition and use of extensions. Though any implementer can define an
  ///  extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.Modifier extensions SHALL NOT
  ///  change the meaning of any elements on Resource or DomainResource
  ///  (including cannot change the meaning of modifierExtension itself).
  ///
  /// [flag] The flag allows the system constructing the list to indicate the
  ///  role and significance of the item in the list.
  ///
  /// [deleted] True if this item is marked as deleted in the list.
  ///
  /// [deletedElement] ("_deleted") Extensions for deleted
  ///
  /// [date] When this item was added to the list.
  ///
  /// [dateElement] ("_date") Extensions for date
  ///
  /// [item] A reference to the actual resource from which data was derived.
  ///
  const factory ListEntry({
    /// [id] Unique id for the element within a resource (for internal references).
    ///  This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional information
    ///  that is not part of the basic definition of the element. To make the use
    ///  of extensions safe and managable, there is a strict set of governance
    ///  applied to the definition and use of extensions. Though any implementer
    ///  can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is
    ///  not part of the basic definition of the element and that modifies the
    ///  understanding of the element in which it is contained and/or the
    ///  understanding of the containing element's descendants. Usually modifier
    ///  elements provide negation or qualification. To make the use of extensions
    ///  safe and managable, there is a strict set of governance applied to the
    ///  definition and use of extensions. Though any implementer can define an
    ///  extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.Modifier extensions SHALL NOT
    ///  change the meaning of any elements on Resource or DomainResource
    ///  (including cannot change the meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [flag] The flag allows the system constructing the list to indicate the
    ///  role and significance of the item in the list.
    CodeableConcept? flag,

    /// [deleted] True if this item is marked as deleted in the list.
    FhirBoolean? deleted,

    /// [deletedElement] ("_deleted") Extensions for deleted
    @JsonKey(name: '_deleted') Element? deletedElement,

    /// [date] When this item was added to the list.
    FhirDateTime? date,

    /// [dateElement] ("_date") Extensions for date
    @JsonKey(name: '_date') Element? dateElement,

    /// [item] A reference to the actual resource from which data was derived.
    required Reference item,
  }) = _ListEntry;

  @override
  String get fhirType => 'ListEntry';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ListEntry.fromYaml(dynamic yaml) => yaml is String
      ? ListEntry.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ListEntry.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ListEntry cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ListEntry.fromJson(Map<String, dynamic> json) =>
      _$ListEntryFromJson(json);

  /// Acts like a constructor, returns a [ListEntry], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ListEntry.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ListEntryFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}
