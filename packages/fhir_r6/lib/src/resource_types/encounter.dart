import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'encounter.g.dart';

/// [Encounter]
/// An interaction between a patient and healthcare provider(s) for the
/// purpose of providing healthcare service(s) or assessing the health
/// status of a patient. Encounter is primarily used to record information
/// about the actual activities that occurred, where Appointment is used to
/// record planned activities.
class Encounter extends DomainResource {
  /// Primary constructor for
  /// [Encounter]

  const Encounter({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    this.class_,
    this.priority,
    this.type,
    this.serviceType,
    this.subject,
    this.subjectStatus,
    this.episodeOfCare,
    this.basedOn,
    this.careTeam,
    this.partOf,
    this.serviceProvider,
    this.participant,
    this.appointment,
    this.virtualService,
    this.actualPeriod,
    this.plannedStartDate,
    this.plannedEndDate,
    this.length,
    this.reason,
    this.diagnosis,
    this.account,
    this.dietPreference,
    this.specialArrangement,
    this.specialCourtesy,
    this.admission,
    this.location,
  }) : super(
          resourceType: R5ResourceType.Encounter,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Encounter.fromJson(
    Map<String, dynamic> json,
  ) {
    return Encounter(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<AllLanguages>(
        json,
        'language',
        AllLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<EncounterStatus>(
        json,
        'status',
        EncounterStatus.fromJson,
      )!,
      class_: (json['class'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      priority: JsonParser.parseObject<CodeableConcept>(
        json,
        'priority',
        CodeableConcept.fromJson,
      ),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      serviceType: (json['serviceType'] as List<dynamic>?)
          ?.map<CodeableReference>(
            (v) => CodeableReference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
      ),
      subjectStatus: JsonParser.parseObject<CodeableConcept>(
        json,
        'subjectStatus',
        CodeableConcept.fromJson,
      ),
      episodeOfCare: (json['episodeOfCare'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      careTeam: (json['careTeam'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      partOf: JsonParser.parseObject<Reference>(
        json,
        'partOf',
        Reference.fromJson,
      ),
      serviceProvider: JsonParser.parseObject<Reference>(
        json,
        'serviceProvider',
        Reference.fromJson,
      ),
      participant: (json['participant'] as List<dynamic>?)
          ?.map<EncounterParticipant>(
            (v) => EncounterParticipant.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      appointment: (json['appointment'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      virtualService: (json['virtualService'] as List<dynamic>?)
          ?.map<VirtualServiceDetail>(
            (v) => VirtualServiceDetail.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      actualPeriod: JsonParser.parseObject<Period>(
        json,
        'actualPeriod',
        Period.fromJson,
      ),
      plannedStartDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'plannedStartDate',
        FhirDateTime.fromJson,
      ),
      plannedEndDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'plannedEndDate',
        FhirDateTime.fromJson,
      ),
      length: JsonParser.parseObject<FhirDuration>(
        json,
        'length',
        FhirDuration.fromJson,
      ),
      reason: (json['reason'] as List<dynamic>?)
          ?.map<EncounterReason>(
            (v) => EncounterReason.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      diagnosis: (json['diagnosis'] as List<dynamic>?)
          ?.map<EncounterDiagnosis>(
            (v) => EncounterDiagnosis.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      account: (json['account'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      dietPreference: (json['dietPreference'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      specialArrangement: (json['specialArrangement'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      specialCourtesy: (json['specialCourtesy'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      admission: JsonParser.parseObject<EncounterAdmission>(
        json,
        'admission',
        EncounterAdmission.fromJson,
      ),
      location: (json['location'] as List<dynamic>?)
          ?.map<EncounterLocation>(
            (v) => EncounterLocation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [Encounter]
  /// from a [String] or [YamlMap] object
  factory Encounter.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Encounter.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Encounter.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Encounter '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Encounter]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Encounter.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Encounter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Encounter';

  /// [identifier]
  /// Identifier(s) by which this encounter is known.
  final List<Identifier>? identifier;

  /// [status]
  /// The current state of the encounter (not the state of the patient within
  /// the encounter - that is subjectState).
  final EncounterStatus status;

  /// [class_]
  /// Concepts representing classification of patient encounter such as
  /// ambulatory (outpatient), inpatient, emergency, home health or others
  /// due to local variations.
  final List<CodeableConcept>? class_;

  /// [priority]
  /// Indicates the urgency of the encounter.
  final CodeableConcept? priority;

  /// [type]
  /// Specific type of encounter (e.g. e-mail consultation, surgical
  /// day-care, skilled nursing, rehabilitation).
  final List<CodeableConcept>? type;

  /// [serviceType]
  /// Broad categorization of the service that is to be provided (e.g.
  /// cardiology).
  final List<CodeableReference>? serviceType;

  /// [subject]
  /// The patient or group related to this encounter. In some use-cases the
  /// patient MAY not be present, such as a case meeting about a patient
  /// between several practitioners or a careteam.
  final Reference? subject;

  /// [subjectStatus]
  /// The subjectStatus value can be used to track the patient's status
  /// within the encounter. It details whether the patient has arrived or
  /// departed, has been triaged or is currently in a waiting status.
  final CodeableConcept? subjectStatus;

  /// [episodeOfCare]
  /// Where a specific encounter should be classified as a part of a specific
  /// episode(s) of care this field should be used. This association can
  /// facilitate grouping of related encounters together for a specific
  /// purpose, such as government reporting, issue tracking, association via
  /// a common problem. The association is recorded on the encounter as these
  /// are typically created after the episode of care and grouped on entry
  /// rather than editing the episode of care to append another encounter to
  /// it (the episode of care could span years).
  final List<Reference>? episodeOfCare;

  /// [basedOn]
  /// The request this encounter satisfies (e.g. incoming referral or
  /// procedure request).
  final List<Reference>? basedOn;

  /// [careTeam]
  /// The group(s) of individuals, organizations that are allocated to
  /// participate in this encounter. The participants backbone will record
  /// the actuals of when these individuals participated during the
  /// encounter.
  final List<Reference>? careTeam;

  /// [partOf]
  /// Another Encounter of which this encounter is a part of
  /// (administratively or in time).
  final Reference? partOf;

  /// [serviceProvider]
  /// The organization that is primarily responsible for this Encounter's
  /// services. This MAY be the same as the organization on the Patient
  /// record, however it could be different, such as if the actor performing
  /// the services was from an external organization (which may be billed
  /// seperately) for an external consultation. Refer to the colonoscopy
  /// example on the Encounter examples tab.
  final Reference? serviceProvider;

  /// [participant]
  /// The list of people responsible for providing the service.
  final List<EncounterParticipant>? participant;

  /// [appointment]
  /// The appointment that scheduled this encounter.
  final List<Reference>? appointment;

  /// [virtualService]
  /// Connection details of a virtual service (e.g. conference call).
  final List<VirtualServiceDetail>? virtualService;

  /// [actualPeriod]
  /// The actual start and end time of the encounter.
  final Period? actualPeriod;

  /// [plannedStartDate]
  /// The planned start date/time (or admission date) of the encounter.
  final FhirDateTime? plannedStartDate;

  /// [plannedEndDate]
  /// The planned end date/time (or discharge date) of the encounter.
  final FhirDateTime? plannedEndDate;

  /// [length]
  /// Actual quantity of time the encounter lasted. This excludes the time
  /// during leaves of absence. When missing it is the time in between the
  /// start and end values.
  final FhirDuration? length;

  /// [reason]
  /// The list of medical reasons that are expected to be addressed during
  /// the episode of care.
  final List<EncounterReason>? reason;

  /// [diagnosis]
  /// The list of diagnosis relevant to this encounter.
  final List<EncounterDiagnosis>? diagnosis;

  /// [account]
  /// The set of accounts that may be used for billing for this Encounter.
  final List<Reference>? account;

  /// [dietPreference]
  /// Diet preferences reported by the patient.
  final List<CodeableConcept>? dietPreference;

  /// [specialArrangement]
  /// Any special requests that have been made for this encounter, such as
  /// the provision of specific equipment or other things.
  final List<CodeableConcept>? specialArrangement;

  /// [specialCourtesy]
  /// Special courtesies that may be provided to the patient during the
  /// encounter (VIP, board member, professional courtesy).
  final List<CodeableConcept>? specialCourtesy;

  /// [admission]
  /// Details about the stay during which a healthcare service is provided.
  /// This does not describe the event of admitting the patient, but rather
  /// any information that is relevant from the time of admittance until the
  /// time of discharge.
  final EncounterAdmission? admission;

  /// [location]
  /// List of locations where the patient has been during this encounter.
  final List<EncounterLocation>? location;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          final hasAnyValues = tempList.any((v) => v != null);
          if (hasAnyValues) {
            json[key] = tempList;
          }
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField(
      'id',
      id,
    );
    addField(
      'meta',
      meta,
    );
    addField(
      'implicitRules',
      implicitRules,
    );
    addField(
      'language',
      language,
    );
    addField(
      'text',
      text,
    );
    addField(
      'contained',
      contained,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'status',
      status,
    );
    addField(
      'class',
      class_,
    );
    addField(
      'priority',
      priority,
    );
    addField(
      'type',
      type,
    );
    addField(
      'serviceType',
      serviceType,
    );
    addField(
      'subject',
      subject,
    );
    addField(
      'subjectStatus',
      subjectStatus,
    );
    addField(
      'episodeOfCare',
      episodeOfCare,
    );
    addField(
      'basedOn',
      basedOn,
    );
    addField(
      'careTeam',
      careTeam,
    );
    addField(
      'partOf',
      partOf,
    );
    addField(
      'serviceProvider',
      serviceProvider,
    );
    addField(
      'participant',
      participant,
    );
    addField(
      'appointment',
      appointment,
    );
    addField(
      'virtualService',
      virtualService,
    );
    addField(
      'actualPeriod',
      actualPeriod,
    );
    addField(
      'plannedStartDate',
      plannedStartDate,
    );
    addField(
      'plannedEndDate',
      plannedEndDate,
    );
    addField(
      'length',
      length,
    );
    addField(
      'reason',
      reason,
    );
    addField(
      'diagnosis',
      diagnosis,
    );
    addField(
      'account',
      account,
    );
    addField(
      'dietPreference',
      dietPreference,
    );
    addField(
      'specialArrangement',
      specialArrangement,
    );
    addField(
      'specialCourtesy',
      specialCourtesy,
    );
    addField(
      'admission',
      admission,
    );
    addField(
      'location',
      location,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'identifier',
      'status',
      'class',
      'priority',
      'type',
      'serviceType',
      'subject',
      'subjectStatus',
      'episodeOfCare',
      'basedOn',
      'careTeam',
      'partOf',
      'serviceProvider',
      'participant',
      'appointment',
      'virtualService',
      'actualPeriod',
      'plannedStartDate',
      'plannedEndDate',
      'length',
      'reason',
      'diagnosis',
      'account',
      'dietPreference',
      'specialArrangement',
      'specialCourtesy',
      'admission',
      'location',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'meta':
        if (meta != null) {
          fields.add(meta!);
        }
      case 'implicitRules':
        if (implicitRules != null) {
          fields.add(implicitRules!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'contained':
        if (contained != null) {
          fields.addAll(contained!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'status':
        fields.add(status);
      case 'class':
        if (class_ != null) {
          fields.addAll(class_!);
        }
      case 'priority':
        if (priority != null) {
          fields.add(priority!);
        }
      case 'type':
        if (type != null) {
          fields.addAll(type!);
        }
      case 'serviceType':
        if (serviceType != null) {
          fields.addAll(serviceType!);
        }
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'subjectStatus':
        if (subjectStatus != null) {
          fields.add(subjectStatus!);
        }
      case 'episodeOfCare':
        if (episodeOfCare != null) {
          fields.addAll(episodeOfCare!);
        }
      case 'basedOn':
        if (basedOn != null) {
          fields.addAll(basedOn!);
        }
      case 'careTeam':
        if (careTeam != null) {
          fields.addAll(careTeam!);
        }
      case 'partOf':
        if (partOf != null) {
          fields.add(partOf!);
        }
      case 'serviceProvider':
        if (serviceProvider != null) {
          fields.add(serviceProvider!);
        }
      case 'participant':
        if (participant != null) {
          fields.addAll(participant!);
        }
      case 'appointment':
        if (appointment != null) {
          fields.addAll(appointment!);
        }
      case 'virtualService':
        if (virtualService != null) {
          fields.addAll(virtualService!);
        }
      case 'actualPeriod':
        if (actualPeriod != null) {
          fields.add(actualPeriod!);
        }
      case 'plannedStartDate':
        if (plannedStartDate != null) {
          fields.add(plannedStartDate!);
        }
      case 'plannedEndDate':
        if (plannedEndDate != null) {
          fields.add(plannedEndDate!);
        }
      case 'length':
        if (length != null) {
          fields.add(length!);
        }
      case 'reason':
        if (reason != null) {
          fields.addAll(reason!);
        }
      case 'diagnosis':
        if (diagnosis != null) {
          fields.addAll(diagnosis!);
        }
      case 'account':
        if (account != null) {
          fields.addAll(account!);
        }
      case 'dietPreference':
        if (dietPreference != null) {
          fields.addAll(dietPreference!);
        }
      case 'specialArrangement':
        if (specialArrangement != null) {
          fields.addAll(specialArrangement!);
        }
      case 'specialCourtesy':
        if (specialCourtesy != null) {
          fields.addAll(specialCourtesy!);
        }
      case 'admission':
        if (admission != null) {
          fields.add(admission!);
        }
      case 'location':
        if (location != null) {
          fields.addAll(location!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  Encounter clone() => copyWith();

  /// Copy function for [Encounter]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $EncounterCopyWith<Encounter> get copyWith =>
      _$EncounterCopyWithImpl<Encounter>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Encounter) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      class_,
      o.class_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      priority,
      o.priority,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<CodeableReference>(
      serviceType,
      o.serviceType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      subject,
      o.subject,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      subjectStatus,
      o.subjectStatus,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      episodeOfCare,
      o.episodeOfCare,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      basedOn,
      o.basedOn,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      careTeam,
      o.careTeam,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      partOf,
      o.partOf,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      serviceProvider,
      o.serviceProvider,
    )) {
      return false;
    }
    if (!listEquals<EncounterParticipant>(
      participant,
      o.participant,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      appointment,
      o.appointment,
    )) {
      return false;
    }
    if (!listEquals<VirtualServiceDetail>(
      virtualService,
      o.virtualService,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      actualPeriod,
      o.actualPeriod,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      plannedStartDate,
      o.plannedStartDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      plannedEndDate,
      o.plannedEndDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      length,
      o.length,
    )) {
      return false;
    }
    if (!listEquals<EncounterReason>(
      reason,
      o.reason,
    )) {
      return false;
    }
    if (!listEquals<EncounterDiagnosis>(
      diagnosis,
      o.diagnosis,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      account,
      o.account,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      dietPreference,
      o.dietPreference,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      specialArrangement,
      o.specialArrangement,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      specialCourtesy,
      o.specialCourtesy,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      admission,
      o.admission,
    )) {
      return false;
    }
    if (!listEquals<EncounterLocation>(
      location,
      o.location,
    )) {
      return false;
    }
    return true;
  }
}

/// [EncounterParticipant]
/// The list of people responsible for providing the service.
class EncounterParticipant extends BackboneElement {
  /// Primary constructor for
  /// [EncounterParticipant]

  const EncounterParticipant({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.period,
    this.actor,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EncounterParticipant.fromJson(
    Map<String, dynamic> json,
  ) {
    return EncounterParticipant(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
      ),
      actor: JsonParser.parseObject<Reference>(
        json,
        'actor',
        Reference.fromJson,
      ),
    );
  }

  /// Deserialize [EncounterParticipant]
  /// from a [String] or [YamlMap] object
  factory EncounterParticipant.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EncounterParticipant.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EncounterParticipant.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EncounterParticipant '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EncounterParticipant]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EncounterParticipant.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EncounterParticipant.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EncounterParticipant';

  /// [type]
  /// Role of participant in encounter.
  final List<CodeableConcept>? type;

  /// [period]
  /// The period of time that the specified participant participated in the
  /// encounter. These can overlap or be sub-sets of the overall encounter's
  /// period.
  final Period? period;

  /// [actor]
  /// Person involved in the encounter, the patient/group is also included
  /// here to indicate that the patient was actually participating in the
  /// encounter. Not including the patient here covers use cases such as a
  /// case meeting between practitioners about a patient - non contact times.
  final Reference? actor;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          final hasAnyValues = tempList.any((v) => v != null);
          if (hasAnyValues) {
            json[key] = tempList;
          }
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'type',
      type,
    );
    addField(
      'period',
      period,
    );
    addField(
      'actor',
      actor,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'period',
      'actor',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'type':
        if (type != null) {
          fields.addAll(type!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      case 'actor':
        if (actor != null) {
          fields.add(actor!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  EncounterParticipant clone() => copyWith();

  /// Copy function for [EncounterParticipant]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $EncounterParticipantCopyWith<EncounterParticipant> get copyWith =>
      _$EncounterParticipantCopyWithImpl<EncounterParticipant>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EncounterParticipant) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      period,
      o.period,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      actor,
      o.actor,
    )) {
      return false;
    }
    return true;
  }
}

/// [EncounterReason]
/// The list of medical reasons that are expected to be addressed during
/// the episode of care.
class EncounterReason extends BackboneElement {
  /// Primary constructor for
  /// [EncounterReason]

  const EncounterReason({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.use,
    this.value,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EncounterReason.fromJson(
    Map<String, dynamic> json,
  ) {
    return EncounterReason(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      use: (json['use'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      value: (json['value'] as List<dynamic>?)
          ?.map<CodeableReference>(
            (v) => CodeableReference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [EncounterReason]
  /// from a [String] or [YamlMap] object
  factory EncounterReason.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EncounterReason.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EncounterReason.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EncounterReason '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EncounterReason]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EncounterReason.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EncounterReason.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EncounterReason';

  /// [use]
  /// What the reason value should be used as e.g. Chief Complaint, Health
  /// Concern, Health Maintenance (including screening).
  final List<CodeableConcept>? use;

  /// [value]
  /// Reason the encounter takes place, expressed as a code or a reference to
  /// another resource. For admissions, this can be used for a coded
  /// admission diagnosis.
  final List<CodeableReference>? value;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          final hasAnyValues = tempList.any((v) => v != null);
          if (hasAnyValues) {
            json[key] = tempList;
          }
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'use',
      use,
    );
    addField(
      'value',
      value,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'use',
      'value',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'use':
        if (use != null) {
          fields.addAll(use!);
        }
      case 'value':
        if (value != null) {
          fields.addAll(value!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  EncounterReason clone() => copyWith();

  /// Copy function for [EncounterReason]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $EncounterReasonCopyWith<EncounterReason> get copyWith =>
      _$EncounterReasonCopyWithImpl<EncounterReason>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EncounterReason) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      use,
      o.use,
    )) {
      return false;
    }
    if (!listEquals<CodeableReference>(
      value,
      o.value,
    )) {
      return false;
    }
    return true;
  }
}

/// [EncounterDiagnosis]
/// The list of diagnosis relevant to this encounter.
class EncounterDiagnosis extends BackboneElement {
  /// Primary constructor for
  /// [EncounterDiagnosis]

  const EncounterDiagnosis({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.condition,
    this.use,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EncounterDiagnosis.fromJson(
    Map<String, dynamic> json,
  ) {
    return EncounterDiagnosis(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      condition: (json['condition'] as List<dynamic>?)
          ?.map<CodeableReference>(
            (v) => CodeableReference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      use: (json['use'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [EncounterDiagnosis]
  /// from a [String] or [YamlMap] object
  factory EncounterDiagnosis.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EncounterDiagnosis.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EncounterDiagnosis.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EncounterDiagnosis '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EncounterDiagnosis]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EncounterDiagnosis.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EncounterDiagnosis.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EncounterDiagnosis';

  /// [condition]
  /// The coded diagnosis or a reference to a Condition (with other resources
  /// referenced in the evidence.detail), the use property will indicate the
  /// purpose of this specific diagnosis.
  final List<CodeableReference>? condition;

  /// [use]
  /// Role that this diagnosis has within the encounter (e.g. admission,
  /// billing, discharge …).
  final List<CodeableConcept>? use;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          final hasAnyValues = tempList.any((v) => v != null);
          if (hasAnyValues) {
            json[key] = tempList;
          }
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'condition',
      condition,
    );
    addField(
      'use',
      use,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'condition',
      'use',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'condition':
        if (condition != null) {
          fields.addAll(condition!);
        }
      case 'use':
        if (use != null) {
          fields.addAll(use!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  EncounterDiagnosis clone() => copyWith();

  /// Copy function for [EncounterDiagnosis]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $EncounterDiagnosisCopyWith<EncounterDiagnosis> get copyWith =>
      _$EncounterDiagnosisCopyWithImpl<EncounterDiagnosis>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EncounterDiagnosis) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<CodeableReference>(
      condition,
      o.condition,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      use,
      o.use,
    )) {
      return false;
    }
    return true;
  }
}

/// [EncounterAdmission]
/// Details about the stay during which a healthcare service is provided.
/// This does not describe the event of admitting the patient, but rather
/// any information that is relevant from the time of admittance until the
/// time of discharge.
class EncounterAdmission extends BackboneElement {
  /// Primary constructor for
  /// [EncounterAdmission]

  const EncounterAdmission({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.preAdmissionIdentifier,
    this.origin,
    this.admitSource,
    this.reAdmission,
    this.destination,
    this.dischargeDisposition,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EncounterAdmission.fromJson(
    Map<String, dynamic> json,
  ) {
    return EncounterAdmission(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      preAdmissionIdentifier: JsonParser.parseObject<Identifier>(
        json,
        'preAdmissionIdentifier',
        Identifier.fromJson,
      ),
      origin: JsonParser.parseObject<Reference>(
        json,
        'origin',
        Reference.fromJson,
      ),
      admitSource: JsonParser.parseObject<CodeableConcept>(
        json,
        'admitSource',
        CodeableConcept.fromJson,
      ),
      reAdmission: JsonParser.parseObject<CodeableConcept>(
        json,
        'reAdmission',
        CodeableConcept.fromJson,
      ),
      destination: JsonParser.parseObject<Reference>(
        json,
        'destination',
        Reference.fromJson,
      ),
      dischargeDisposition: JsonParser.parseObject<CodeableConcept>(
        json,
        'dischargeDisposition',
        CodeableConcept.fromJson,
      ),
    );
  }

  /// Deserialize [EncounterAdmission]
  /// from a [String] or [YamlMap] object
  factory EncounterAdmission.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EncounterAdmission.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EncounterAdmission.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EncounterAdmission '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EncounterAdmission]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EncounterAdmission.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EncounterAdmission.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EncounterAdmission';

  /// [preAdmissionIdentifier]
  /// Pre-admission identifier.
  final Identifier? preAdmissionIdentifier;

  /// [origin]
  /// The location/organization from which the patient came before admission.
  final Reference? origin;

  /// [admitSource]
  /// From where patient was admitted (physician referral, transfer).
  final CodeableConcept? admitSource;

  /// [reAdmission]
  /// Indicates that this encounter is directly related to a prior admission,
  /// often because the conditions addressed in the prior admission were not
  /// fully addressed.
  final CodeableConcept? reAdmission;

  /// [destination]
  /// Location/organization to which the patient is discharged.
  final Reference? destination;

  /// [dischargeDisposition]
  /// Category or kind of location after discharge.
  final CodeableConcept? dischargeDisposition;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          final hasAnyValues = tempList.any((v) => v != null);
          if (hasAnyValues) {
            json[key] = tempList;
          }
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'preAdmissionIdentifier',
      preAdmissionIdentifier,
    );
    addField(
      'origin',
      origin,
    );
    addField(
      'admitSource',
      admitSource,
    );
    addField(
      'reAdmission',
      reAdmission,
    );
    addField(
      'destination',
      destination,
    );
    addField(
      'dischargeDisposition',
      dischargeDisposition,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'preAdmissionIdentifier',
      'origin',
      'admitSource',
      'reAdmission',
      'destination',
      'dischargeDisposition',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'preAdmissionIdentifier':
        if (preAdmissionIdentifier != null) {
          fields.add(preAdmissionIdentifier!);
        }
      case 'origin':
        if (origin != null) {
          fields.add(origin!);
        }
      case 'admitSource':
        if (admitSource != null) {
          fields.add(admitSource!);
        }
      case 'reAdmission':
        if (reAdmission != null) {
          fields.add(reAdmission!);
        }
      case 'destination':
        if (destination != null) {
          fields.add(destination!);
        }
      case 'dischargeDisposition':
        if (dischargeDisposition != null) {
          fields.add(dischargeDisposition!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  EncounterAdmission clone() => copyWith();

  /// Copy function for [EncounterAdmission]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $EncounterAdmissionCopyWith<EncounterAdmission> get copyWith =>
      _$EncounterAdmissionCopyWithImpl<EncounterAdmission>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EncounterAdmission) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      preAdmissionIdentifier,
      o.preAdmissionIdentifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      origin,
      o.origin,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      admitSource,
      o.admitSource,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reAdmission,
      o.reAdmission,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      destination,
      o.destination,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      dischargeDisposition,
      o.dischargeDisposition,
    )) {
      return false;
    }
    return true;
  }
}

/// [EncounterLocation]
/// List of locations where the patient has been during this encounter.
class EncounterLocation extends BackboneElement {
  /// Primary constructor for
  /// [EncounterLocation]

  const EncounterLocation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.location,
    this.status,
    this.form,
    this.period,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EncounterLocation.fromJson(
    Map<String, dynamic> json,
  ) {
    return EncounterLocation(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      location: JsonParser.parseObject<Reference>(
        json,
        'location',
        Reference.fromJson,
      )!,
      status: JsonParser.parsePrimitive<EncounterLocationStatus>(
        json,
        'status',
        EncounterLocationStatus.fromJson,
      ),
      form: JsonParser.parseObject<CodeableConcept>(
        json,
        'form',
        CodeableConcept.fromJson,
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
      ),
    );
  }

  /// Deserialize [EncounterLocation]
  /// from a [String] or [YamlMap] object
  factory EncounterLocation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EncounterLocation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EncounterLocation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EncounterLocation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EncounterLocation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EncounterLocation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EncounterLocation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EncounterLocation';

  /// [location]
  /// The location where the encounter takes place.
  final Reference location;

  /// [status]
  /// The status of the participants' presence at the specified location
  /// during the period specified. If the participant is no longer at the
  /// location, then the period will have an end date/time.
  final EncounterLocationStatus? status;

  /// [form]
  /// This will be used to specify the required levels (bed/ward/room/etc.)
  /// desired to be recorded to simplify either messaging or query.
  final CodeableConcept? form;

  /// [period]
  /// Time period during which the patient was present at the location.
  final Period? period;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          final hasAnyValues = tempList.any((v) => v != null);
          if (hasAnyValues) {
            json[key] = tempList;
          }
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'location',
      location,
    );
    addField(
      'status',
      status,
    );
    addField(
      'form',
      form,
    );
    addField(
      'period',
      period,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'location',
      'status',
      'form',
      'period',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'location':
        fields.add(location);
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'form':
        if (form != null) {
          fields.add(form!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  EncounterLocation clone() => copyWith();

  /// Copy function for [EncounterLocation]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $EncounterLocationCopyWith<EncounterLocation> get copyWith =>
      _$EncounterLocationCopyWithImpl<EncounterLocation>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EncounterLocation) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      location,
      o.location,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      form,
      o.form,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      period,
      o.period,
    )) {
      return false;
    }
    return true;
  }
}
