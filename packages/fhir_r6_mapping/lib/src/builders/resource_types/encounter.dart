import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        Encounter,
        EncounterAdmission,
        EncounterDiagnosis,
        EncounterLocation,
        EncounterParticipant,
        EncounterReason,
        R5ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [EncounterBuilder]
/// An interaction between a patient and healthcare provider(s) for the
/// purpose of providing healthcare service(s) or assessing the health
/// status of a patient. Encounter is primarily used to record information
/// about the actual activities that occurred, where Appointment is used to
/// record planned activities.
class EncounterBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [EncounterBuilder]

  EncounterBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.status,
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
          objectPath: 'Encounter',
          resourceType: R5ResourceType.Encounter,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory EncounterBuilder.empty() => EncounterBuilder(
        status: EncounterStatusBuilder.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EncounterBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Encounter';
    return EncounterBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMetaBuilder>(
        json,
        'meta',
        FhirMetaBuilder.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'implicitRules',
        FhirUriBuilder.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<AllLanguagesBuilder>(
        json,
        'language',
        AllLanguagesBuilder.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<NarrativeBuilder>(
        json,
        'text',
        NarrativeBuilder.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<ResourceBuilder>(
            (v) => ResourceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<EncounterStatusBuilder>(
        json,
        'status',
        EncounterStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      class_: (json['class'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.class',
              },
            ),
          )
          .toList(),
      priority: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'priority',
        CodeableConceptBuilder.fromJson,
        '$objectPath.priority',
      ),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.type',
              },
            ),
          )
          .toList(),
      serviceType: (json['serviceType'] as List<dynamic>?)
          ?.map<CodeableReferenceBuilder>(
            (v) => CodeableReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.serviceType',
              },
            ),
          )
          .toList(),
      subject: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'subject',
        ReferenceBuilder.fromJson,
        '$objectPath.subject',
      ),
      subjectStatus: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'subjectStatus',
        CodeableConceptBuilder.fromJson,
        '$objectPath.subjectStatus',
      ),
      episodeOfCare: (json['episodeOfCare'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.episodeOfCare',
              },
            ),
          )
          .toList(),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.basedOn',
              },
            ),
          )
          .toList(),
      careTeam: (json['careTeam'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.careTeam',
              },
            ),
          )
          .toList(),
      partOf: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'partOf',
        ReferenceBuilder.fromJson,
        '$objectPath.partOf',
      ),
      serviceProvider: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'serviceProvider',
        ReferenceBuilder.fromJson,
        '$objectPath.serviceProvider',
      ),
      participant: (json['participant'] as List<dynamic>?)
          ?.map<EncounterParticipantBuilder>(
            (v) => EncounterParticipantBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.participant',
              },
            ),
          )
          .toList(),
      appointment: (json['appointment'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.appointment',
              },
            ),
          )
          .toList(),
      virtualService: (json['virtualService'] as List<dynamic>?)
          ?.map<VirtualServiceDetailBuilder>(
            (v) => VirtualServiceDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.virtualService',
              },
            ),
          )
          .toList(),
      actualPeriod: JsonParser.parseObject<PeriodBuilder>(
        json,
        'actualPeriod',
        PeriodBuilder.fromJson,
        '$objectPath.actualPeriod',
      ),
      plannedStartDate: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'plannedStartDate',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.plannedStartDate',
      ),
      plannedEndDate: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'plannedEndDate',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.plannedEndDate',
      ),
      length: JsonParser.parseObject<FhirDurationBuilder>(
        json,
        'length',
        FhirDurationBuilder.fromJson,
        '$objectPath.length',
      ),
      reason: (json['reason'] as List<dynamic>?)
          ?.map<EncounterReasonBuilder>(
            (v) => EncounterReasonBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reason',
              },
            ),
          )
          .toList(),
      diagnosis: (json['diagnosis'] as List<dynamic>?)
          ?.map<EncounterDiagnosisBuilder>(
            (v) => EncounterDiagnosisBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.diagnosis',
              },
            ),
          )
          .toList(),
      account: (json['account'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.account',
              },
            ),
          )
          .toList(),
      dietPreference: (json['dietPreference'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.dietPreference',
              },
            ),
          )
          .toList(),
      specialArrangement: (json['specialArrangement'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.specialArrangement',
              },
            ),
          )
          .toList(),
      specialCourtesy: (json['specialCourtesy'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.specialCourtesy',
              },
            ),
          )
          .toList(),
      admission: JsonParser.parseObject<EncounterAdmissionBuilder>(
        json,
        'admission',
        EncounterAdmissionBuilder.fromJson,
        '$objectPath.admission',
      ),
      location: (json['location'] as List<dynamic>?)
          ?.map<EncounterLocationBuilder>(
            (v) => EncounterLocationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.location',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [EncounterBuilder]
  /// from a [String] or [YamlMap] object
  factory EncounterBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EncounterBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EncounterBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EncounterBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EncounterBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EncounterBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EncounterBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Encounter';

  /// [identifier]
  /// Identifier(s) by which this encounter is known.
  List<IdentifierBuilder>? identifier;

  /// [status]
  /// The current state of the encounter (not the state of the patient within
  /// the encounter - that is subjectState).
  EncounterStatusBuilder? status;

  /// [class_]
  /// Concepts representing classification of patient encounter such as
  /// ambulatory (outpatient), inpatient, emergency, home health or others
  /// due to local variations.
  List<CodeableConceptBuilder>? class_;

  /// [priority]
  /// Indicates the urgency of the encounter.
  CodeableConceptBuilder? priority;

  /// [type]
  /// Specific type of encounter (e.g. e-mail consultation, surgical
  /// day-care, skilled nursing, rehabilitation).
  List<CodeableConceptBuilder>? type;

  /// [serviceType]
  /// Broad categorization of the service that is to be provided (e.g.
  /// cardiology).
  List<CodeableReferenceBuilder>? serviceType;

  /// [subject]
  /// The patient or group related to this encounter. In some use-cases the
  /// patient MAY not be present, such as a case meeting about a patient
  /// between several practitioners or a careteam.
  ReferenceBuilder? subject;

  /// [subjectStatus]
  /// The subjectStatus value can be used to track the patient's status
  /// within the encounter. It details whether the patient has arrived or
  /// departed, has been triaged or is currently in a waiting status.
  CodeableConceptBuilder? subjectStatus;

  /// [episodeOfCare]
  /// Where a specific encounter should be classified as a part of a specific
  /// episode(s) of care this field should be used. This association can
  /// facilitate grouping of related encounters together for a specific
  /// purpose, such as government reporting, issue tracking, association via
  /// a common problem. The association is recorded on the encounter as these
  /// are typically created after the episode of care and grouped on entry
  /// rather than editing the episode of care to append another encounter to
  /// it (the episode of care could span years).
  List<ReferenceBuilder>? episodeOfCare;

  /// [basedOn]
  /// The request this encounter satisfies (e.g. incoming referral or
  /// procedure request).
  List<ReferenceBuilder>? basedOn;

  /// [careTeam]
  /// The group(s) of individuals, organizations that are allocated to
  /// participate in this encounter. The participants backbone will record
  /// the actuals of when these individuals participated during the
  /// encounter.
  List<ReferenceBuilder>? careTeam;

  /// [partOf]
  /// Another Encounter of which this encounter is a part of
  /// (administratively or in time).
  ReferenceBuilder? partOf;

  /// [serviceProvider]
  /// The organization that is primarily responsible for this Encounter's
  /// services. This MAY be the same as the organization on the Patient
  /// record, however it could be different, such as if the actor performing
  /// the services was from an external organization (which may be billed
  /// seperately) for an external consultation. Refer to the colonoscopy
  /// example on the Encounter examples tab.
  ReferenceBuilder? serviceProvider;

  /// [participant]
  /// The list of people responsible for providing the service.
  List<EncounterParticipantBuilder>? participant;

  /// [appointment]
  /// The appointment that scheduled this encounter.
  List<ReferenceBuilder>? appointment;

  /// [virtualService]
  /// Connection details of a virtual service (e.g. conference call).
  List<VirtualServiceDetailBuilder>? virtualService;

  /// [actualPeriod]
  /// The actual start and end time of the encounter.
  PeriodBuilder? actualPeriod;

  /// [plannedStartDate]
  /// The planned start date/time (or admission date) of the encounter.
  FhirDateTimeBuilder? plannedStartDate;

  /// [plannedEndDate]
  /// The planned end date/time (or discharge date) of the encounter.
  FhirDateTimeBuilder? plannedEndDate;

  /// [length]
  /// Actual quantity of time the encounter lasted. This excludes the time
  /// during leaves of absence. When missing it is the time in between the
  /// start and end values.
  FhirDurationBuilder? length;

  /// [reason]
  /// The list of medical reasons that are expected to be addressed during
  /// the episode of care.
  List<EncounterReasonBuilder>? reason;

  /// [diagnosis]
  /// The list of diagnosis relevant to this encounter.
  List<EncounterDiagnosisBuilder>? diagnosis;

  /// [account]
  /// The set of accounts that may be used for billing for this Encounter.
  List<ReferenceBuilder>? account;

  /// [dietPreference]
  /// Diet preferences reported by the patient.
  List<CodeableConceptBuilder>? dietPreference;

  /// [specialArrangement]
  /// Any special requests that have been made for this encounter, such as
  /// the provision of specific equipment or other things.
  List<CodeableConceptBuilder>? specialArrangement;

  /// [specialCourtesy]
  /// Special courtesies that may be provided to the patient during the
  /// encounter (VIP, board member, professional courtesy).
  List<CodeableConceptBuilder>? specialCourtesy;

  /// [admission]
  /// Details about the stay during which a healthcare service is provided.
  /// This does not describe the event of admitting the patient, but rather
  /// any information that is relevant from the time of admittance until the
  /// time of discharge.
  EncounterAdmissionBuilder? admission;

  /// [location]
  /// List of locations where the patient has been during this encounter.
  List<EncounterLocationBuilder>? location;

  /// Converts a [EncounterBuilder]
  /// to [Encounter]
  @override
  Encounter build() => Encounter.fromJson(toJson());

  /// Converts a [EncounterBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('status', status);
    addField('class', class_);
    addField('priority', priority);
    addField('type', type);
    addField('serviceType', serviceType);
    addField('subject', subject);
    addField('subjectStatus', subjectStatus);
    addField('episodeOfCare', episodeOfCare);
    addField('basedOn', basedOn);
    addField('careTeam', careTeam);
    addField('partOf', partOf);
    addField('serviceProvider', serviceProvider);
    addField('participant', participant);
    addField('appointment', appointment);
    addField('virtualService', virtualService);
    addField('actualPeriod', actualPeriod);
    addField('plannedStartDate', plannedStartDate);
    addField('plannedEndDate', plannedEndDate);
    addField('length', length);
    addField('reason', reason);
    addField('diagnosis', diagnosis);
    addField('account', account);
    addField('dietPreference', dietPreference);
    addField('specialArrangement', specialArrangement);
    addField('specialCourtesy', specialCourtesy);
    addField('admission', admission);
    addField('location', location);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (status != null) {
          fields.add(status!);
        }
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                implicitRules = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'language':
        {
          if (child is AllLanguagesBuilder) {
            language = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = AllLanguagesBuilder(stringValue);
                language = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'text':
        {
          if (child is NarrativeBuilder) {
            text = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contained':
        {
          if (child is List<ResourceBuilder>) {
            // Replace or create new list
            contained = child;
            return;
          } else if (child is ResourceBuilder) {
            // Add single element to existing list or create new list
            contained = [
              ...(contained ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'identifier':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            identifier = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            identifier = [
              ...(identifier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is EncounterStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = EncounterStatusBuilder(stringValue);
                status = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'class':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            class_ = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            class_ = [
              ...(class_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'priority':
        {
          if (child is CodeableConceptBuilder) {
            priority = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            type = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            type = [
              ...(type ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'serviceType':
        {
          if (child is List<CodeableReferenceBuilder>) {
            // Replace or create new list
            serviceType = child;
            return;
          } else if (child is CodeableReferenceBuilder) {
            // Add single element to existing list or create new list
            serviceType = [
              ...(serviceType ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subject':
        {
          if (child is ReferenceBuilder) {
            subject = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subjectStatus':
        {
          if (child is CodeableConceptBuilder) {
            subjectStatus = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'episodeOfCare':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            episodeOfCare = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            episodeOfCare = [
              ...(episodeOfCare ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'basedOn':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            basedOn = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            basedOn = [
              ...(basedOn ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'careTeam':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            careTeam = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            careTeam = [
              ...(careTeam ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'partOf':
        {
          if (child is ReferenceBuilder) {
            partOf = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'serviceProvider':
        {
          if (child is ReferenceBuilder) {
            serviceProvider = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'participant':
        {
          if (child is List<EncounterParticipantBuilder>) {
            // Replace or create new list
            participant = child;
            return;
          } else if (child is EncounterParticipantBuilder) {
            // Add single element to existing list or create new list
            participant = [
              ...(participant ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'appointment':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            appointment = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            appointment = [
              ...(appointment ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'virtualService':
        {
          if (child is List<VirtualServiceDetailBuilder>) {
            // Replace or create new list
            virtualService = child;
            return;
          } else if (child is VirtualServiceDetailBuilder) {
            // Add single element to existing list or create new list
            virtualService = [
              ...(virtualService ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'actualPeriod':
        {
          if (child is PeriodBuilder) {
            actualPeriod = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'plannedStartDate':
        {
          if (child is FhirDateTimeBuilder) {
            plannedStartDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                plannedStartDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'plannedEndDate':
        {
          if (child is FhirDateTimeBuilder) {
            plannedEndDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                plannedEndDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'length':
        {
          if (child is FhirDurationBuilder) {
            length = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reason':
        {
          if (child is List<EncounterReasonBuilder>) {
            // Replace or create new list
            reason = child;
            return;
          } else if (child is EncounterReasonBuilder) {
            // Add single element to existing list or create new list
            reason = [
              ...(reason ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'diagnosis':
        {
          if (child is List<EncounterDiagnosisBuilder>) {
            // Replace or create new list
            diagnosis = child;
            return;
          } else if (child is EncounterDiagnosisBuilder) {
            // Add single element to existing list or create new list
            diagnosis = [
              ...(diagnosis ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'account':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            account = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            account = [
              ...(account ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'dietPreference':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            dietPreference = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            dietPreference = [
              ...(dietPreference ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'specialArrangement':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            specialArrangement = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            specialArrangement = [
              ...(specialArrangement ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'specialCourtesy':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            specialCourtesy = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            specialCourtesy = [
              ...(specialCourtesy ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'admission':
        {
          if (child is EncounterAdmissionBuilder) {
            admission = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'location':
        {
          if (child is List<EncounterLocationBuilder>) {
            // Replace or create new list
            location = child;
            return;
          } else if (child is EncounterLocationBuilder) {
            // Add single element to existing list or create new list
            location = [
              ...(location ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'meta':
        return ['FhirMetaBuilder'];
      case 'implicitRules':
        return ['FhirUriBuilder'];
      case 'language':
        return ['FhirCodeEnumBuilder'];
      case 'text':
        return ['NarrativeBuilder'];
      case 'contained':
        return ['ResourceBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'class':
        return ['CodeableConceptBuilder'];
      case 'priority':
        return ['CodeableConceptBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'serviceType':
        return ['CodeableReferenceBuilder'];
      case 'subject':
        return ['ReferenceBuilder'];
      case 'subjectStatus':
        return ['CodeableConceptBuilder'];
      case 'episodeOfCare':
        return ['ReferenceBuilder'];
      case 'basedOn':
        return ['ReferenceBuilder'];
      case 'careTeam':
        return ['ReferenceBuilder'];
      case 'partOf':
        return ['ReferenceBuilder'];
      case 'serviceProvider':
        return ['ReferenceBuilder'];
      case 'participant':
        return ['EncounterParticipantBuilder'];
      case 'appointment':
        return ['ReferenceBuilder'];
      case 'virtualService':
        return ['VirtualServiceDetailBuilder'];
      case 'actualPeriod':
        return ['PeriodBuilder'];
      case 'plannedStartDate':
        return ['FhirDateTimeBuilder'];
      case 'plannedEndDate':
        return ['FhirDateTimeBuilder'];
      case 'length':
        return ['FhirDurationBuilder'];
      case 'reason':
        return ['EncounterReasonBuilder'];
      case 'diagnosis':
        return ['EncounterDiagnosisBuilder'];
      case 'account':
        return ['ReferenceBuilder'];
      case 'dietPreference':
        return ['CodeableConceptBuilder'];
      case 'specialArrangement':
        return ['CodeableConceptBuilder'];
      case 'specialCourtesy':
        return ['CodeableConceptBuilder'];
      case 'admission':
        return ['EncounterAdmissionBuilder'];
      case 'location':
        return ['EncounterLocationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EncounterBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'meta':
        {
          meta = FhirMetaBuilder.empty();
          return;
        }
      case 'implicitRules':
        {
          implicitRules = FhirUriBuilder.empty();
          return;
        }
      case 'language':
        {
          language = AllLanguagesBuilder.empty();
          return;
        }
      case 'text':
        {
          text = NarrativeBuilder.empty();
          return;
        }
      case 'contained':
        {
          contained = <ResourceBuilder>[];
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'identifier':
        {
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'status':
        {
          status = EncounterStatusBuilder.empty();
          return;
        }
      case 'class':
        {
          class_ = <CodeableConceptBuilder>[];
          return;
        }
      case 'priority':
        {
          priority = CodeableConceptBuilder.empty();
          return;
        }
      case 'type':
        {
          type = <CodeableConceptBuilder>[];
          return;
        }
      case 'serviceType':
        {
          serviceType = <CodeableReferenceBuilder>[];
          return;
        }
      case 'subject':
        {
          subject = ReferenceBuilder.empty();
          return;
        }
      case 'subjectStatus':
        {
          subjectStatus = CodeableConceptBuilder.empty();
          return;
        }
      case 'episodeOfCare':
        {
          episodeOfCare = <ReferenceBuilder>[];
          return;
        }
      case 'basedOn':
        {
          basedOn = <ReferenceBuilder>[];
          return;
        }
      case 'careTeam':
        {
          careTeam = <ReferenceBuilder>[];
          return;
        }
      case 'partOf':
        {
          partOf = ReferenceBuilder.empty();
          return;
        }
      case 'serviceProvider':
        {
          serviceProvider = ReferenceBuilder.empty();
          return;
        }
      case 'participant':
        {
          participant = <EncounterParticipantBuilder>[];
          return;
        }
      case 'appointment':
        {
          appointment = <ReferenceBuilder>[];
          return;
        }
      case 'virtualService':
        {
          virtualService = <VirtualServiceDetailBuilder>[];
          return;
        }
      case 'actualPeriod':
        {
          actualPeriod = PeriodBuilder.empty();
          return;
        }
      case 'plannedStartDate':
        {
          plannedStartDate = FhirDateTimeBuilder.empty();
          return;
        }
      case 'plannedEndDate':
        {
          plannedEndDate = FhirDateTimeBuilder.empty();
          return;
        }
      case 'length':
        {
          length = FhirDurationBuilder.empty();
          return;
        }
      case 'reason':
        {
          reason = <EncounterReasonBuilder>[];
          return;
        }
      case 'diagnosis':
        {
          diagnosis = <EncounterDiagnosisBuilder>[];
          return;
        }
      case 'account':
        {
          account = <ReferenceBuilder>[];
          return;
        }
      case 'dietPreference':
        {
          dietPreference = <CodeableConceptBuilder>[];
          return;
        }
      case 'specialArrangement':
        {
          specialArrangement = <CodeableConceptBuilder>[];
          return;
        }
      case 'specialCourtesy':
        {
          specialCourtesy = <CodeableConceptBuilder>[];
          return;
        }
      case 'admission':
        {
          admission = EncounterAdmissionBuilder.empty();
          return;
        }
      case 'location':
        {
          location = <EncounterLocationBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  EncounterBuilder clone() => throw UnimplementedError();
  @override
  EncounterBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    EncounterStatusBuilder? status,
    List<CodeableConceptBuilder>? class_,
    CodeableConceptBuilder? priority,
    List<CodeableConceptBuilder>? type,
    List<CodeableReferenceBuilder>? serviceType,
    ReferenceBuilder? subject,
    CodeableConceptBuilder? subjectStatus,
    List<ReferenceBuilder>? episodeOfCare,
    List<ReferenceBuilder>? basedOn,
    List<ReferenceBuilder>? careTeam,
    ReferenceBuilder? partOf,
    ReferenceBuilder? serviceProvider,
    List<EncounterParticipantBuilder>? participant,
    List<ReferenceBuilder>? appointment,
    List<VirtualServiceDetailBuilder>? virtualService,
    PeriodBuilder? actualPeriod,
    FhirDateTimeBuilder? plannedStartDate,
    FhirDateTimeBuilder? plannedEndDate,
    FhirDurationBuilder? length,
    List<EncounterReasonBuilder>? reason,
    List<EncounterDiagnosisBuilder>? diagnosis,
    List<ReferenceBuilder>? account,
    List<CodeableConceptBuilder>? dietPreference,
    List<CodeableConceptBuilder>? specialArrangement,
    List<CodeableConceptBuilder>? specialCourtesy,
    EncounterAdmissionBuilder? admission,
    List<EncounterLocationBuilder>? location,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = EncounterBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      class_: class_ ?? this.class_,
      priority: priority ?? this.priority,
      type: type ?? this.type,
      serviceType: serviceType ?? this.serviceType,
      subject: subject ?? this.subject,
      subjectStatus: subjectStatus ?? this.subjectStatus,
      episodeOfCare: episodeOfCare ?? this.episodeOfCare,
      basedOn: basedOn ?? this.basedOn,
      careTeam: careTeam ?? this.careTeam,
      partOf: partOf ?? this.partOf,
      serviceProvider: serviceProvider ?? this.serviceProvider,
      participant: participant ?? this.participant,
      appointment: appointment ?? this.appointment,
      virtualService: virtualService ?? this.virtualService,
      actualPeriod: actualPeriod ?? this.actualPeriod,
      plannedStartDate: plannedStartDate ?? this.plannedStartDate,
      plannedEndDate: plannedEndDate ?? this.plannedEndDate,
      length: length ?? this.length,
      reason: reason ?? this.reason,
      diagnosis: diagnosis ?? this.diagnosis,
      account: account ?? this.account,
      dietPreference: dietPreference ?? this.dietPreference,
      specialArrangement: specialArrangement ?? this.specialArrangement,
      specialCourtesy: specialCourtesy ?? this.specialCourtesy,
      admission: admission ?? this.admission,
      location: location ?? this.location,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! EncounterBuilder) {
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
    if (!listEquals<ResourceBuilder>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<IdentifierBuilder>(
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
    if (!listEquals<CodeableConceptBuilder>(
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
    if (!listEquals<CodeableConceptBuilder>(
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<CodeableReferenceBuilder>(
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
    if (!listEquals<ReferenceBuilder>(
      episodeOfCare,
      o.episodeOfCare,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      basedOn,
      o.basedOn,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
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
    if (!listEquals<EncounterParticipantBuilder>(
      participant,
      o.participant,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      appointment,
      o.appointment,
    )) {
      return false;
    }
    if (!listEquals<VirtualServiceDetailBuilder>(
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
    if (!listEquals<EncounterReasonBuilder>(
      reason,
      o.reason,
    )) {
      return false;
    }
    if (!listEquals<EncounterDiagnosisBuilder>(
      diagnosis,
      o.diagnosis,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      account,
      o.account,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      dietPreference,
      o.dietPreference,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      specialArrangement,
      o.specialArrangement,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
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
    if (!listEquals<EncounterLocationBuilder>(
      location,
      o.location,
    )) {
      return false;
    }
    return true;
  }
}

/// [EncounterParticipantBuilder]
/// The list of people responsible for providing the service.
class EncounterParticipantBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [EncounterParticipantBuilder]

  EncounterParticipantBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.period,
    this.actor,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Encounter.participant',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory EncounterParticipantBuilder.empty() => EncounterParticipantBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EncounterParticipantBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Encounter.participant';
    return EncounterParticipantBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.type',
              },
            ),
          )
          .toList(),
      period: JsonParser.parseObject<PeriodBuilder>(
        json,
        'period',
        PeriodBuilder.fromJson,
        '$objectPath.period',
      ),
      actor: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'actor',
        ReferenceBuilder.fromJson,
        '$objectPath.actor',
      ),
    );
  }

  /// Deserialize [EncounterParticipantBuilder]
  /// from a [String] or [YamlMap] object
  factory EncounterParticipantBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EncounterParticipantBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EncounterParticipantBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EncounterParticipantBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EncounterParticipantBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EncounterParticipantBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EncounterParticipantBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EncounterParticipant';

  /// [type]
  /// Role of participant in encounter.
  List<CodeableConceptBuilder>? type;

  /// [period]
  /// The period of time that the specified participant participated in the
  /// encounter. These can overlap or be sub-sets of the overall encounter's
  /// period.
  PeriodBuilder? period;

  /// [actor]
  /// Person involved in the encounter, the patient/group is also included
  /// here to indicate that the patient was actually participating in the
  /// encounter. Not including the patient here covers use cases such as a
  /// case meeting between practitioners about a patient - non contact times.
  ReferenceBuilder? actor;

  /// Converts a [EncounterParticipantBuilder]
  /// to [EncounterParticipant]
  @override
  EncounterParticipant build() => EncounterParticipant.fromJson(toJson());

  /// Converts a [EncounterParticipantBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('type', type);
    addField('period', period);
    addField('actor', actor);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            type = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            type = [
              ...(type ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'period':
        {
          if (child is PeriodBuilder) {
            period = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'actor':
        {
          if (child is ReferenceBuilder) {
            actor = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'period':
        return ['PeriodBuilder'];
      case 'actor':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EncounterParticipantBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'type':
        {
          type = <CodeableConceptBuilder>[];
          return;
        }
      case 'period':
        {
          period = PeriodBuilder.empty();
          return;
        }
      case 'actor':
        {
          actor = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  EncounterParticipantBuilder clone() => throw UnimplementedError();
  @override
  EncounterParticipantBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<CodeableConceptBuilder>? type,
    PeriodBuilder? period,
    ReferenceBuilder? actor,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = EncounterParticipantBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      period: period ?? this.period,
      actor: actor ?? this.actor,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! EncounterParticipantBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
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

/// [EncounterReasonBuilder]
/// The list of medical reasons that are expected to be addressed during
/// the episode of care.
class EncounterReasonBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [EncounterReasonBuilder]

  EncounterReasonBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.use,
    this.value,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Encounter.reason',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory EncounterReasonBuilder.empty() => EncounterReasonBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EncounterReasonBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Encounter.reason';
    return EncounterReasonBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      use: (json['use'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.use',
              },
            ),
          )
          .toList(),
      value: (json['value'] as List<dynamic>?)
          ?.map<CodeableReferenceBuilder>(
            (v) => CodeableReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.value',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [EncounterReasonBuilder]
  /// from a [String] or [YamlMap] object
  factory EncounterReasonBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EncounterReasonBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EncounterReasonBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EncounterReasonBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EncounterReasonBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EncounterReasonBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EncounterReasonBuilder.fromJson(json);
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
  List<CodeableConceptBuilder>? use;

  /// [value]
  /// Reason the encounter takes place, expressed as a code or a reference to
  /// another resource. For admissions, this can be used for a coded
  /// admission diagnosis.
  List<CodeableReferenceBuilder>? value;

  /// Converts a [EncounterReasonBuilder]
  /// to [EncounterReason]
  @override
  EncounterReason build() => EncounterReason.fromJson(toJson());

  /// Converts a [EncounterReasonBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('use', use);
    addField('value', value);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'use':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            use = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            use = [
              ...(use ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'value':
        {
          if (child is List<CodeableReferenceBuilder>) {
            // Replace or create new list
            value = child;
            return;
          } else if (child is CodeableReferenceBuilder) {
            // Add single element to existing list or create new list
            value = [
              ...(value ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'use':
        return ['CodeableConceptBuilder'];
      case 'value':
        return ['CodeableReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EncounterReasonBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'use':
        {
          use = <CodeableConceptBuilder>[];
          return;
        }
      case 'value':
        {
          value = <CodeableReferenceBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  EncounterReasonBuilder clone() => throw UnimplementedError();
  @override
  EncounterReasonBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<CodeableConceptBuilder>? use,
    List<CodeableReferenceBuilder>? value,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = EncounterReasonBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      use: use ?? this.use,
      value: value ?? this.value,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! EncounterReasonBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      use,
      o.use,
    )) {
      return false;
    }
    if (!listEquals<CodeableReferenceBuilder>(
      value,
      o.value,
    )) {
      return false;
    }
    return true;
  }
}

/// [EncounterDiagnosisBuilder]
/// The list of diagnosis relevant to this encounter.
class EncounterDiagnosisBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [EncounterDiagnosisBuilder]

  EncounterDiagnosisBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.condition,
    this.use,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Encounter.diagnosis',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory EncounterDiagnosisBuilder.empty() => EncounterDiagnosisBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EncounterDiagnosisBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Encounter.diagnosis';
    return EncounterDiagnosisBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      condition: (json['condition'] as List<dynamic>?)
          ?.map<CodeableReferenceBuilder>(
            (v) => CodeableReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.condition',
              },
            ),
          )
          .toList(),
      use: (json['use'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.use',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [EncounterDiagnosisBuilder]
  /// from a [String] or [YamlMap] object
  factory EncounterDiagnosisBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EncounterDiagnosisBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EncounterDiagnosisBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EncounterDiagnosisBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EncounterDiagnosisBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EncounterDiagnosisBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EncounterDiagnosisBuilder.fromJson(json);
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
  List<CodeableReferenceBuilder>? condition;

  /// [use]
  /// Role that this diagnosis has within the encounter (e.g. admission,
  /// billing, discharge …).
  List<CodeableConceptBuilder>? use;

  /// Converts a [EncounterDiagnosisBuilder]
  /// to [EncounterDiagnosis]
  @override
  EncounterDiagnosis build() => EncounterDiagnosis.fromJson(toJson());

  /// Converts a [EncounterDiagnosisBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('condition', condition);
    addField('use', use);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'condition':
        {
          if (child is List<CodeableReferenceBuilder>) {
            // Replace or create new list
            condition = child;
            return;
          } else if (child is CodeableReferenceBuilder) {
            // Add single element to existing list or create new list
            condition = [
              ...(condition ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'use':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            use = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            use = [
              ...(use ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'condition':
        return ['CodeableReferenceBuilder'];
      case 'use':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EncounterDiagnosisBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'condition':
        {
          condition = <CodeableReferenceBuilder>[];
          return;
        }
      case 'use':
        {
          use = <CodeableConceptBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  EncounterDiagnosisBuilder clone() => throw UnimplementedError();
  @override
  EncounterDiagnosisBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<CodeableReferenceBuilder>? condition,
    List<CodeableConceptBuilder>? use,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = EncounterDiagnosisBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      condition: condition ?? this.condition,
      use: use ?? this.use,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! EncounterDiagnosisBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<CodeableReferenceBuilder>(
      condition,
      o.condition,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      use,
      o.use,
    )) {
      return false;
    }
    return true;
  }
}

/// [EncounterAdmissionBuilder]
/// Details about the stay during which a healthcare service is provided.
/// This does not describe the event of admitting the patient, but rather
/// any information that is relevant from the time of admittance until the
/// time of discharge.
class EncounterAdmissionBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [EncounterAdmissionBuilder]

  EncounterAdmissionBuilder({
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
  }) : super(
          objectPath: 'Encounter.admission',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory EncounterAdmissionBuilder.empty() => EncounterAdmissionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EncounterAdmissionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Encounter.admission';
    return EncounterAdmissionBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      preAdmissionIdentifier: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'preAdmissionIdentifier',
        IdentifierBuilder.fromJson,
        '$objectPath.preAdmissionIdentifier',
      ),
      origin: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'origin',
        ReferenceBuilder.fromJson,
        '$objectPath.origin',
      ),
      admitSource: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'admitSource',
        CodeableConceptBuilder.fromJson,
        '$objectPath.admitSource',
      ),
      reAdmission: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'reAdmission',
        CodeableConceptBuilder.fromJson,
        '$objectPath.reAdmission',
      ),
      destination: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'destination',
        ReferenceBuilder.fromJson,
        '$objectPath.destination',
      ),
      dischargeDisposition: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'dischargeDisposition',
        CodeableConceptBuilder.fromJson,
        '$objectPath.dischargeDisposition',
      ),
    );
  }

  /// Deserialize [EncounterAdmissionBuilder]
  /// from a [String] or [YamlMap] object
  factory EncounterAdmissionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EncounterAdmissionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EncounterAdmissionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EncounterAdmissionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EncounterAdmissionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EncounterAdmissionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EncounterAdmissionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EncounterAdmission';

  /// [preAdmissionIdentifier]
  /// Pre-admission identifier.
  IdentifierBuilder? preAdmissionIdentifier;

  /// [origin]
  /// The location/organization from which the patient came before admission.
  ReferenceBuilder? origin;

  /// [admitSource]
  /// From where patient was admitted (physician referral, transfer).
  CodeableConceptBuilder? admitSource;

  /// [reAdmission]
  /// Indicates that this encounter is directly related to a prior admission,
  /// often because the conditions addressed in the prior admission were not
  /// fully addressed.
  CodeableConceptBuilder? reAdmission;

  /// [destination]
  /// Location/organization to which the patient is discharged.
  ReferenceBuilder? destination;

  /// [dischargeDisposition]
  /// Category or kind of location after discharge.
  CodeableConceptBuilder? dischargeDisposition;

  /// Converts a [EncounterAdmissionBuilder]
  /// to [EncounterAdmission]
  @override
  EncounterAdmission build() => EncounterAdmission.fromJson(toJson());

  /// Converts a [EncounterAdmissionBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('preAdmissionIdentifier', preAdmissionIdentifier);
    addField('origin', origin);
    addField('admitSource', admitSource);
    addField('reAdmission', reAdmission);
    addField('destination', destination);
    addField('dischargeDisposition', dischargeDisposition);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'preAdmissionIdentifier':
        {
          if (child is IdentifierBuilder) {
            preAdmissionIdentifier = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'origin':
        {
          if (child is ReferenceBuilder) {
            origin = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'admitSource':
        {
          if (child is CodeableConceptBuilder) {
            admitSource = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reAdmission':
        {
          if (child is CodeableConceptBuilder) {
            reAdmission = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'destination':
        {
          if (child is ReferenceBuilder) {
            destination = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'dischargeDisposition':
        {
          if (child is CodeableConceptBuilder) {
            dischargeDisposition = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'preAdmissionIdentifier':
        return ['IdentifierBuilder'];
      case 'origin':
        return ['ReferenceBuilder'];
      case 'admitSource':
        return ['CodeableConceptBuilder'];
      case 'reAdmission':
        return ['CodeableConceptBuilder'];
      case 'destination':
        return ['ReferenceBuilder'];
      case 'dischargeDisposition':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EncounterAdmissionBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'preAdmissionIdentifier':
        {
          preAdmissionIdentifier = IdentifierBuilder.empty();
          return;
        }
      case 'origin':
        {
          origin = ReferenceBuilder.empty();
          return;
        }
      case 'admitSource':
        {
          admitSource = CodeableConceptBuilder.empty();
          return;
        }
      case 'reAdmission':
        {
          reAdmission = CodeableConceptBuilder.empty();
          return;
        }
      case 'destination':
        {
          destination = ReferenceBuilder.empty();
          return;
        }
      case 'dischargeDisposition':
        {
          dischargeDisposition = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  EncounterAdmissionBuilder clone() => throw UnimplementedError();
  @override
  EncounterAdmissionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    IdentifierBuilder? preAdmissionIdentifier,
    ReferenceBuilder? origin,
    CodeableConceptBuilder? admitSource,
    CodeableConceptBuilder? reAdmission,
    ReferenceBuilder? destination,
    CodeableConceptBuilder? dischargeDisposition,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = EncounterAdmissionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      preAdmissionIdentifier:
          preAdmissionIdentifier ?? this.preAdmissionIdentifier,
      origin: origin ?? this.origin,
      admitSource: admitSource ?? this.admitSource,
      reAdmission: reAdmission ?? this.reAdmission,
      destination: destination ?? this.destination,
      dischargeDisposition: dischargeDisposition ?? this.dischargeDisposition,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! EncounterAdmissionBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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

/// [EncounterLocationBuilder]
/// List of locations where the patient has been during this encounter.
class EncounterLocationBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [EncounterLocationBuilder]

  EncounterLocationBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.location,
    this.status,
    this.form,
    this.period,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Encounter.location',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory EncounterLocationBuilder.empty() => EncounterLocationBuilder(
        location: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EncounterLocationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Encounter.location';
    return EncounterLocationBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      location: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'location',
        ReferenceBuilder.fromJson,
        '$objectPath.location',
      ),
      status: JsonParser.parsePrimitive<EncounterLocationStatusBuilder>(
        json,
        'status',
        EncounterLocationStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      form: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'form',
        CodeableConceptBuilder.fromJson,
        '$objectPath.form',
      ),
      period: JsonParser.parseObject<PeriodBuilder>(
        json,
        'period',
        PeriodBuilder.fromJson,
        '$objectPath.period',
      ),
    );
  }

  /// Deserialize [EncounterLocationBuilder]
  /// from a [String] or [YamlMap] object
  factory EncounterLocationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EncounterLocationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EncounterLocationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EncounterLocationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EncounterLocationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EncounterLocationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EncounterLocationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EncounterLocation';

  /// [location]
  /// The location where the encounter takes place.
  ReferenceBuilder? location;

  /// [status]
  /// The status of the participants' presence at the specified location
  /// during the period specified. If the participant is no longer at the
  /// location, then the period will have an end date/time.
  EncounterLocationStatusBuilder? status;

  /// [form]
  /// This will be used to specify the required levels (bed/ward/room/etc.)
  /// desired to be recorded to simplify either messaging or query.
  CodeableConceptBuilder? form;

  /// [period]
  /// Time period during which the patient was present at the location.
  PeriodBuilder? period;

  /// Converts a [EncounterLocationBuilder]
  /// to [EncounterLocation]
  @override
  EncounterLocation build() => EncounterLocation.fromJson(toJson());

  /// Converts a [EncounterLocationBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('location', location);
    addField('status', status);
    addField('form', form);
    addField('period', period);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (location != null) {
          fields.add(location!);
        }
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'location':
        {
          if (child is ReferenceBuilder) {
            location = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is EncounterLocationStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = EncounterLocationStatusBuilder(stringValue);
                status = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'form':
        {
          if (child is CodeableConceptBuilder) {
            form = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'period':
        {
          if (child is PeriodBuilder) {
            period = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'location':
        return ['ReferenceBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'form':
        return ['CodeableConceptBuilder'];
      case 'period':
        return ['PeriodBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EncounterLocationBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'location':
        {
          location = ReferenceBuilder.empty();
          return;
        }
      case 'status':
        {
          status = EncounterLocationStatusBuilder.empty();
          return;
        }
      case 'form':
        {
          form = CodeableConceptBuilder.empty();
          return;
        }
      case 'period':
        {
          period = PeriodBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  EncounterLocationBuilder clone() => throw UnimplementedError();
  @override
  EncounterLocationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ReferenceBuilder? location,
    EncounterLocationStatusBuilder? status,
    CodeableConceptBuilder? form,
    PeriodBuilder? period,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = EncounterLocationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      location: location ?? this.location,
      status: status ?? this.status,
      form: form ?? this.form,
      period: period ?? this.period,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! EncounterLocationBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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
