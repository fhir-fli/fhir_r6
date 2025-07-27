import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        Appointment,
        AppointmentMonthlyTemplate,
        AppointmentParticipant,
        AppointmentRecurrenceTemplate,
        AppointmentWeeklyTemplate,
        AppointmentYearlyTemplate,
        R5ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [AppointmentBuilder]
/// A booking of a healthcare event among patient(s), practitioner(s),
/// related person(s) and/or device(s) for a specific date/time. This may
/// result in one or more Encounter(s).
class AppointmentBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [AppointmentBuilder]

  AppointmentBuilder({
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
    this.cancellationReason,
    this.class_,
    this.serviceCategory,
    this.serviceType,
    this.specialty,
    this.appointmentType,
    this.reason,
    this.priority,
    this.description,
    this.replaces,
    this.virtualService,
    this.supportingInformation,
    this.previousAppointment,
    this.originatingAppointment,
    this.start,
    this.end,
    this.minutesDuration,
    this.requestedPeriod,
    this.slot,
    this.account,
    this.created,
    this.cancellationDate,
    this.note,
    this.patientInstruction,
    this.basedOn,
    this.subject,
    this.participant,
    this.recurrenceId,
    this.occurrenceChanged,
    this.recurrenceTemplate,
  }) : super(
          objectPath: 'Appointment',
          resourceType: R5ResourceType.Appointment,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AppointmentBuilder.empty() => AppointmentBuilder(
        status: AppointmentStatusBuilder.values.first,
        participant: <AppointmentParticipantBuilder>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AppointmentBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Appointment';
    return AppointmentBuilder(
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
      status: JsonParser.parsePrimitive<AppointmentStatusBuilder>(
        json,
        'status',
        AppointmentStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      cancellationReason: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'cancellationReason',
        CodeableConceptBuilder.fromJson,
        '$objectPath.cancellationReason',
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
      serviceCategory: (json['serviceCategory'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.serviceCategory',
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
      specialty: (json['specialty'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.specialty',
              },
            ),
          )
          .toList(),
      appointmentType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'appointmentType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.appointmentType',
      ),
      reason: (json['reason'] as List<dynamic>?)
          ?.map<CodeableReferenceBuilder>(
            (v) => CodeableReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reason',
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
      description: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'description',
        FhirStringBuilder.fromJson,
        '$objectPath.description',
      ),
      replaces: (json['replaces'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.replaces',
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
      supportingInformation: (json['supportingInformation'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.supportingInformation',
              },
            ),
          )
          .toList(),
      previousAppointment: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'previousAppointment',
        ReferenceBuilder.fromJson,
        '$objectPath.previousAppointment',
      ),
      originatingAppointment: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'originatingAppointment',
        ReferenceBuilder.fromJson,
        '$objectPath.originatingAppointment',
      ),
      start: JsonParser.parsePrimitive<FhirInstantBuilder>(
        json,
        'start',
        FhirInstantBuilder.fromJson,
        '$objectPath.start',
      ),
      end: JsonParser.parsePrimitive<FhirInstantBuilder>(
        json,
        'end',
        FhirInstantBuilder.fromJson,
        '$objectPath.end',
      ),
      minutesDuration: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'minutesDuration',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.minutesDuration',
      ),
      requestedPeriod: (json['requestedPeriod'] as List<dynamic>?)
          ?.map<PeriodBuilder>(
            (v) => PeriodBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.requestedPeriod',
              },
            ),
          )
          .toList(),
      slot: (json['slot'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.slot',
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
      created: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'created',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.created',
      ),
      cancellationDate: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'cancellationDate',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.cancellationDate',
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<AnnotationBuilder>(
            (v) => AnnotationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
      patientInstruction: (json['patientInstruction'] as List<dynamic>?)
          ?.map<CodeableReferenceBuilder>(
            (v) => CodeableReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.patientInstruction',
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
      subject: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'subject',
        ReferenceBuilder.fromJson,
        '$objectPath.subject',
      ),
      participant: (json['participant'] as List<dynamic>?)
          ?.map<AppointmentParticipantBuilder>(
            (v) => AppointmentParticipantBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.participant',
              },
            ),
          )
          .toList(),
      recurrenceId: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'recurrenceId',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.recurrenceId',
      ),
      occurrenceChanged: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'occurrenceChanged',
        FhirBooleanBuilder.fromJson,
        '$objectPath.occurrenceChanged',
      ),
      recurrenceTemplate: (json['recurrenceTemplate'] as List<dynamic>?)
          ?.map<AppointmentRecurrenceTemplateBuilder>(
            (v) => AppointmentRecurrenceTemplateBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.recurrenceTemplate',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [AppointmentBuilder]
  /// from a [String] or [YamlMap] object
  factory AppointmentBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AppointmentBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AppointmentBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AppointmentBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AppointmentBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AppointmentBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AppointmentBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Appointment';

  /// [identifier]
  /// This records identifiers associated with this appointment concern that
  /// are defined by business processes and/or used to refer to it when a
  /// direct URL reference to the resource itself is not appropriate (e.g. in
  /// CDA documents, or in written / printed documentation).
  List<IdentifierBuilder>? identifier;

  /// [status]
  /// The overall status of the Appointment. Each of the participants has
  /// their own participation status which indicates their involvement in the
  /// process, however this status indicates the shared status.
  AppointmentStatusBuilder? status;

  /// [cancellationReason]
  /// The coded reason for the appointment being cancelled. This is often
  /// used in reporting/billing/futher processing to determine if further
  /// actions are required, or specific fees apply.
  CodeableConceptBuilder? cancellationReason;

  /// [class_]
  /// Concepts representing classification of patient encounter such as
  /// ambulatory (outpatient), inpatient, emergency, home health or others
  /// due to local variations.
  List<CodeableConceptBuilder>? class_;

  /// [serviceCategory]
  /// A broad categorization of the service that is to be performed during
  /// this appointment.
  List<CodeableConceptBuilder>? serviceCategory;

  /// [serviceType]
  /// The specific service that is to be performed during this appointment.
  List<CodeableReferenceBuilder>? serviceType;

  /// [specialty]
  /// The specialty of a practitioner that would be required to perform the
  /// service requested in this appointment.
  List<CodeableConceptBuilder>? specialty;

  /// [appointmentType]
  /// The style of appointment or patient that has been booked in the slot
  /// (not service type).
  CodeableConceptBuilder? appointmentType;

  /// [reason]
  /// The reason that this appointment is being scheduled. This is more
  /// clinical than administrative. This can be coded, or as specified using
  /// information from another resource. When the patient arrives and the
  /// encounter begins it may be used as the admission diagnosis. The
  /// indication will typically be a Condition (with other resources
  /// referenced in the evidence.detail), or a Procedure.
  List<CodeableReferenceBuilder>? reason;

  /// [priority]
  /// The priority of the appointment. Can be used to make informed decisions
  /// if needing to re-prioritize appointments. (The iCal Standard specifies
  /// 0 as undefined, 1 as highest, 9 as lowest priority).
  CodeableConceptBuilder? priority;

  /// [description]
  /// The brief description of the appointment as would be shown on a subject
  /// line in a meeting request, or appointment list. Detailed or expanded
  /// information should be put in the note field.
  FhirStringBuilder? description;

  /// [replaces]
  /// Appointment replaced by this Appointment in cases where there is a
  /// cancellation, the details of the cancellation can be found in the
  /// cancellationReason property (on the referenced resource).
  List<ReferenceBuilder>? replaces;

  /// [virtualService]
  /// Connection details of a virtual service (e.g. conference call).
  List<VirtualServiceDetailBuilder>? virtualService;

  /// [supportingInformation]
  /// Additional information to support the appointment provided when making
  /// the appointment.
  List<ReferenceBuilder>? supportingInformation;

  /// [previousAppointment]
  /// The previous appointment in a series of related appointments.
  ReferenceBuilder? previousAppointment;

  /// [originatingAppointment]
  /// The originating appointment in a recurring set of related appointments.
  ReferenceBuilder? originatingAppointment;

  /// [start]
  /// Date/Time that the appointment is to take place.
  FhirInstantBuilder? start;

  /// [end]
  /// Date/Time that the appointment is to conclude.
  FhirInstantBuilder? end;

  /// [minutesDuration]
  /// Number of minutes that the appointment is to take. This can be less
  /// than the duration between the start and end times. For example, where
  /// the actual time of appointment is only an estimate or if a 30 minute
  /// appointment is being requested, but any time would work. Also, if there
  /// is, for example, a planned 15 minute break in the middle of a long
  /// appointment, the duration may be 15 minutes less than the difference
  /// between the start and end.
  FhirPositiveIntBuilder? minutesDuration;

  /// [requestedPeriod]
  /// A set of date ranges (potentially including times) that the appointment
  /// is preferred to be scheduled within.
  ///
  /// The duration (usually in minutes) could also be provided to indicate
  /// the length of the appointment to fill and populate the start/end times
  /// for the actual allocated time. However, in other situations the
  /// duration may be calculated by the scheduling system.
  List<PeriodBuilder>? requestedPeriod;

  /// [slot]
  /// The slots from the participants' schedules that will be filled by the
  /// appointment.
  List<ReferenceBuilder>? slot;

  /// [account]
  /// The set of accounts that is expected to be used for billing the
  /// activities that result from this Appointment.
  List<ReferenceBuilder>? account;

  /// [created]
  /// The date that this appointment was initially created. This could be
  /// different to the meta.lastModified value on the initial entry, as this
  /// could have been before the resource was created on the FHIR server, and
  /// should remain unchanged over the lifespan of the appointment.
  FhirDateTimeBuilder? created;

  /// [cancellationDate]
  /// The date/time describing when the appointment was cancelled.
  FhirDateTimeBuilder? cancellationDate;

  /// [note]
  /// Additional notes/comments about the appointment.
  List<AnnotationBuilder>? note;

  /// [patientInstruction]
  /// While Appointment.note contains information for internal use,
  /// Appointment.patientInstructions is used to capture patient facing
  /// information about the Appointment (e.g. please bring your referral or
  /// fast from 8pm night before).
  List<CodeableReferenceBuilder>? patientInstruction;

  /// [basedOn]
  /// The request this appointment is allocated to assess (e.g. incoming
  /// referral or procedure request).
  List<ReferenceBuilder>? basedOn;

  /// [subject]
  /// The patient or group associated with the appointment, if they are to be
  /// present (usually) then they should also be included in the participant
  /// backbone element.
  ReferenceBuilder? subject;

  /// [participant]
  /// List of participants involved in the appointment.
  List<AppointmentParticipantBuilder>? participant;

  /// [recurrenceId]
  /// The sequence number that identifies a specific appointment in a
  /// recurring pattern.
  FhirPositiveIntBuilder? recurrenceId;

  /// [occurrenceChanged]
  /// This appointment varies from the recurring pattern.
  FhirBooleanBuilder? occurrenceChanged;

  /// [recurrenceTemplate]
  /// The details of the recurrence pattern or template that is used to
  /// generate recurring appointments.
  List<AppointmentRecurrenceTemplateBuilder>? recurrenceTemplate;

  /// Converts a [AppointmentBuilder]
  /// to [Appointment]
  @override
  Appointment build() => Appointment.fromJson(toJson());

  /// Converts a [AppointmentBuilder]
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
    addField('cancellationReason', cancellationReason);
    addField('class', class_);
    addField('serviceCategory', serviceCategory);
    addField('serviceType', serviceType);
    addField('specialty', specialty);
    addField('appointmentType', appointmentType);
    addField('reason', reason);
    addField('priority', priority);
    addField('description', description);
    addField('replaces', replaces);
    addField('virtualService', virtualService);
    addField('supportingInformation', supportingInformation);
    addField('previousAppointment', previousAppointment);
    addField('originatingAppointment', originatingAppointment);
    addField('start', start);
    addField('end', end);
    addField('minutesDuration', minutesDuration);
    addField('requestedPeriod', requestedPeriod);
    addField('slot', slot);
    addField('account', account);
    addField('created', created);
    addField('cancellationDate', cancellationDate);
    addField('note', note);
    addField('patientInstruction', patientInstruction);
    addField('basedOn', basedOn);
    addField('subject', subject);
    addField('participant', participant);
    addField('recurrenceId', recurrenceId);
    addField('occurrenceChanged', occurrenceChanged);
    addField('recurrenceTemplate', recurrenceTemplate);
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
      'cancellationReason',
      'class',
      'serviceCategory',
      'serviceType',
      'specialty',
      'appointmentType',
      'reason',
      'priority',
      'description',
      'replaces',
      'virtualService',
      'supportingInformation',
      'previousAppointment',
      'originatingAppointment',
      'start',
      'end',
      'minutesDuration',
      'requestedPeriod',
      'slot',
      'account',
      'created',
      'cancellationDate',
      'note',
      'patientInstruction',
      'basedOn',
      'subject',
      'participant',
      'recurrenceId',
      'occurrenceChanged',
      'recurrenceTemplate',
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
      case 'cancellationReason':
        if (cancellationReason != null) {
          fields.add(cancellationReason!);
        }
      case 'class':
        if (class_ != null) {
          fields.addAll(class_!);
        }
      case 'serviceCategory':
        if (serviceCategory != null) {
          fields.addAll(serviceCategory!);
        }
      case 'serviceType':
        if (serviceType != null) {
          fields.addAll(serviceType!);
        }
      case 'specialty':
        if (specialty != null) {
          fields.addAll(specialty!);
        }
      case 'appointmentType':
        if (appointmentType != null) {
          fields.add(appointmentType!);
        }
      case 'reason':
        if (reason != null) {
          fields.addAll(reason!);
        }
      case 'priority':
        if (priority != null) {
          fields.add(priority!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'replaces':
        if (replaces != null) {
          fields.addAll(replaces!);
        }
      case 'virtualService':
        if (virtualService != null) {
          fields.addAll(virtualService!);
        }
      case 'supportingInformation':
        if (supportingInformation != null) {
          fields.addAll(supportingInformation!);
        }
      case 'previousAppointment':
        if (previousAppointment != null) {
          fields.add(previousAppointment!);
        }
      case 'originatingAppointment':
        if (originatingAppointment != null) {
          fields.add(originatingAppointment!);
        }
      case 'start':
        if (start != null) {
          fields.add(start!);
        }
      case 'end':
        if (end != null) {
          fields.add(end!);
        }
      case 'minutesDuration':
        if (minutesDuration != null) {
          fields.add(minutesDuration!);
        }
      case 'requestedPeriod':
        if (requestedPeriod != null) {
          fields.addAll(requestedPeriod!);
        }
      case 'slot':
        if (slot != null) {
          fields.addAll(slot!);
        }
      case 'account':
        if (account != null) {
          fields.addAll(account!);
        }
      case 'created':
        if (created != null) {
          fields.add(created!);
        }
      case 'cancellationDate':
        if (cancellationDate != null) {
          fields.add(cancellationDate!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'patientInstruction':
        if (patientInstruction != null) {
          fields.addAll(patientInstruction!);
        }
      case 'basedOn':
        if (basedOn != null) {
          fields.addAll(basedOn!);
        }
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'participant':
        if (participant != null) {
          fields.addAll(participant!);
        }
      case 'recurrenceId':
        if (recurrenceId != null) {
          fields.add(recurrenceId!);
        }
      case 'occurrenceChanged':
        if (occurrenceChanged != null) {
          fields.add(occurrenceChanged!);
        }
      case 'recurrenceTemplate':
        if (recurrenceTemplate != null) {
          fields.addAll(recurrenceTemplate!);
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
          if (child is AppointmentStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = AppointmentStatusBuilder(stringValue);
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
      case 'cancellationReason':
        {
          if (child is CodeableConceptBuilder) {
            cancellationReason = child;
            return;
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
      case 'serviceCategory':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            serviceCategory = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            serviceCategory = [
              ...(serviceCategory ?? []),
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
      case 'specialty':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            specialty = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            specialty = [
              ...(specialty ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'appointmentType':
        {
          if (child is CodeableConceptBuilder) {
            appointmentType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reason':
        {
          if (child is List<CodeableReferenceBuilder>) {
            // Replace or create new list
            reason = child;
            return;
          } else if (child is CodeableReferenceBuilder) {
            // Add single element to existing list or create new list
            reason = [
              ...(reason ?? []),
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
      case 'description':
        {
          if (child is FhirStringBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                description = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'replaces':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            replaces = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            replaces = [
              ...(replaces ?? []),
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
      case 'supportingInformation':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            supportingInformation = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            supportingInformation = [
              ...(supportingInformation ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'previousAppointment':
        {
          if (child is ReferenceBuilder) {
            previousAppointment = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'originatingAppointment':
        {
          if (child is ReferenceBuilder) {
            originatingAppointment = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'start':
        {
          if (child is FhirInstantBuilder) {
            start = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirInstantBuilder.tryParse(stringValue);
              if (converted != null) {
                start = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'end':
        {
          if (child is FhirInstantBuilder) {
            end = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirInstantBuilder.tryParse(stringValue);
              if (converted != null) {
                end = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'minutesDuration':
        {
          if (child is FhirPositiveIntBuilder) {
            minutesDuration = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirPositiveIntBuilder.tryParse(numValue);
                if (converted != null) {
                  minutesDuration = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'requestedPeriod':
        {
          if (child is List<PeriodBuilder>) {
            // Replace or create new list
            requestedPeriod = child;
            return;
          } else if (child is PeriodBuilder) {
            // Add single element to existing list or create new list
            requestedPeriod = [
              ...(requestedPeriod ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'slot':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            slot = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            slot = [
              ...(slot ?? []),
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
      case 'created':
        {
          if (child is FhirDateTimeBuilder) {
            created = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                created = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'cancellationDate':
        {
          if (child is FhirDateTimeBuilder) {
            cancellationDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                cancellationDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'note':
        {
          if (child is List<AnnotationBuilder>) {
            // Replace or create new list
            note = child;
            return;
          } else if (child is AnnotationBuilder) {
            // Add single element to existing list or create new list
            note = [
              ...(note ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'patientInstruction':
        {
          if (child is List<CodeableReferenceBuilder>) {
            // Replace or create new list
            patientInstruction = child;
            return;
          } else if (child is CodeableReferenceBuilder) {
            // Add single element to existing list or create new list
            patientInstruction = [
              ...(patientInstruction ?? []),
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
      case 'subject':
        {
          if (child is ReferenceBuilder) {
            subject = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'participant':
        {
          if (child is List<AppointmentParticipantBuilder>) {
            // Replace or create new list
            participant = child;
            return;
          } else if (child is AppointmentParticipantBuilder) {
            // Add single element to existing list or create new list
            participant = [
              ...(participant ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'recurrenceId':
        {
          if (child is FhirPositiveIntBuilder) {
            recurrenceId = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirPositiveIntBuilder.tryParse(numValue);
                if (converted != null) {
                  recurrenceId = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'occurrenceChanged':
        {
          if (child is FhirBooleanBuilder) {
            occurrenceChanged = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                occurrenceChanged = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'recurrenceTemplate':
        {
          if (child is List<AppointmentRecurrenceTemplateBuilder>) {
            // Replace or create new list
            recurrenceTemplate = child;
            return;
          } else if (child is AppointmentRecurrenceTemplateBuilder) {
            // Add single element to existing list or create new list
            recurrenceTemplate = [
              ...(recurrenceTemplate ?? []),
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
      case 'cancellationReason':
        return ['CodeableConceptBuilder'];
      case 'class':
        return ['CodeableConceptBuilder'];
      case 'serviceCategory':
        return ['CodeableConceptBuilder'];
      case 'serviceType':
        return ['CodeableReferenceBuilder'];
      case 'specialty':
        return ['CodeableConceptBuilder'];
      case 'appointmentType':
        return ['CodeableConceptBuilder'];
      case 'reason':
        return ['CodeableReferenceBuilder'];
      case 'priority':
        return ['CodeableConceptBuilder'];
      case 'description':
        return ['FhirStringBuilder'];
      case 'replaces':
        return ['ReferenceBuilder'];
      case 'virtualService':
        return ['VirtualServiceDetailBuilder'];
      case 'supportingInformation':
        return ['ReferenceBuilder'];
      case 'previousAppointment':
        return ['ReferenceBuilder'];
      case 'originatingAppointment':
        return ['ReferenceBuilder'];
      case 'start':
        return ['FhirInstantBuilder'];
      case 'end':
        return ['FhirInstantBuilder'];
      case 'minutesDuration':
        return ['FhirPositiveIntBuilder'];
      case 'requestedPeriod':
        return ['PeriodBuilder'];
      case 'slot':
        return ['ReferenceBuilder'];
      case 'account':
        return ['ReferenceBuilder'];
      case 'created':
        return ['FhirDateTimeBuilder'];
      case 'cancellationDate':
        return ['FhirDateTimeBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      case 'patientInstruction':
        return ['CodeableReferenceBuilder'];
      case 'basedOn':
        return ['ReferenceBuilder'];
      case 'subject':
        return ['ReferenceBuilder'];
      case 'participant':
        return ['AppointmentParticipantBuilder'];
      case 'recurrenceId':
        return ['FhirPositiveIntBuilder'];
      case 'occurrenceChanged':
        return ['FhirBooleanBuilder'];
      case 'recurrenceTemplate':
        return ['AppointmentRecurrenceTemplateBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AppointmentBuilder]
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
          status = AppointmentStatusBuilder.empty();
          return;
        }
      case 'cancellationReason':
        {
          cancellationReason = CodeableConceptBuilder.empty();
          return;
        }
      case 'class':
        {
          class_ = <CodeableConceptBuilder>[];
          return;
        }
      case 'serviceCategory':
        {
          serviceCategory = <CodeableConceptBuilder>[];
          return;
        }
      case 'serviceType':
        {
          serviceType = <CodeableReferenceBuilder>[];
          return;
        }
      case 'specialty':
        {
          specialty = <CodeableConceptBuilder>[];
          return;
        }
      case 'appointmentType':
        {
          appointmentType = CodeableConceptBuilder.empty();
          return;
        }
      case 'reason':
        {
          reason = <CodeableReferenceBuilder>[];
          return;
        }
      case 'priority':
        {
          priority = CodeableConceptBuilder.empty();
          return;
        }
      case 'description':
        {
          description = FhirStringBuilder.empty();
          return;
        }
      case 'replaces':
        {
          replaces = <ReferenceBuilder>[];
          return;
        }
      case 'virtualService':
        {
          virtualService = <VirtualServiceDetailBuilder>[];
          return;
        }
      case 'supportingInformation':
        {
          supportingInformation = <ReferenceBuilder>[];
          return;
        }
      case 'previousAppointment':
        {
          previousAppointment = ReferenceBuilder.empty();
          return;
        }
      case 'originatingAppointment':
        {
          originatingAppointment = ReferenceBuilder.empty();
          return;
        }
      case 'start':
        {
          start = FhirInstantBuilder.empty();
          return;
        }
      case 'end':
        {
          end = FhirInstantBuilder.empty();
          return;
        }
      case 'minutesDuration':
        {
          minutesDuration = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'requestedPeriod':
        {
          requestedPeriod = <PeriodBuilder>[];
          return;
        }
      case 'slot':
        {
          slot = <ReferenceBuilder>[];
          return;
        }
      case 'account':
        {
          account = <ReferenceBuilder>[];
          return;
        }
      case 'created':
        {
          created = FhirDateTimeBuilder.empty();
          return;
        }
      case 'cancellationDate':
        {
          cancellationDate = FhirDateTimeBuilder.empty();
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      case 'patientInstruction':
        {
          patientInstruction = <CodeableReferenceBuilder>[];
          return;
        }
      case 'basedOn':
        {
          basedOn = <ReferenceBuilder>[];
          return;
        }
      case 'subject':
        {
          subject = ReferenceBuilder.empty();
          return;
        }
      case 'participant':
        {
          participant = <AppointmentParticipantBuilder>[];
          return;
        }
      case 'recurrenceId':
        {
          recurrenceId = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'occurrenceChanged':
        {
          occurrenceChanged = FhirBooleanBuilder.empty();
          return;
        }
      case 'recurrenceTemplate':
        {
          recurrenceTemplate = <AppointmentRecurrenceTemplateBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  AppointmentBuilder clone() => throw UnimplementedError();
  @override
  AppointmentBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    AppointmentStatusBuilder? status,
    CodeableConceptBuilder? cancellationReason,
    List<CodeableConceptBuilder>? class_,
    List<CodeableConceptBuilder>? serviceCategory,
    List<CodeableReferenceBuilder>? serviceType,
    List<CodeableConceptBuilder>? specialty,
    CodeableConceptBuilder? appointmentType,
    List<CodeableReferenceBuilder>? reason,
    CodeableConceptBuilder? priority,
    FhirStringBuilder? description,
    List<ReferenceBuilder>? replaces,
    List<VirtualServiceDetailBuilder>? virtualService,
    List<ReferenceBuilder>? supportingInformation,
    ReferenceBuilder? previousAppointment,
    ReferenceBuilder? originatingAppointment,
    FhirInstantBuilder? start,
    FhirInstantBuilder? end,
    FhirPositiveIntBuilder? minutesDuration,
    List<PeriodBuilder>? requestedPeriod,
    List<ReferenceBuilder>? slot,
    List<ReferenceBuilder>? account,
    FhirDateTimeBuilder? created,
    FhirDateTimeBuilder? cancellationDate,
    List<AnnotationBuilder>? note,
    List<CodeableReferenceBuilder>? patientInstruction,
    List<ReferenceBuilder>? basedOn,
    ReferenceBuilder? subject,
    List<AppointmentParticipantBuilder>? participant,
    FhirPositiveIntBuilder? recurrenceId,
    FhirBooleanBuilder? occurrenceChanged,
    List<AppointmentRecurrenceTemplateBuilder>? recurrenceTemplate,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = AppointmentBuilder(
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
      cancellationReason: cancellationReason ?? this.cancellationReason,
      class_: class_ ?? this.class_,
      serviceCategory: serviceCategory ?? this.serviceCategory,
      serviceType: serviceType ?? this.serviceType,
      specialty: specialty ?? this.specialty,
      appointmentType: appointmentType ?? this.appointmentType,
      reason: reason ?? this.reason,
      priority: priority ?? this.priority,
      description: description ?? this.description,
      replaces: replaces ?? this.replaces,
      virtualService: virtualService ?? this.virtualService,
      supportingInformation:
          supportingInformation ?? this.supportingInformation,
      previousAppointment: previousAppointment ?? this.previousAppointment,
      originatingAppointment:
          originatingAppointment ?? this.originatingAppointment,
      start: start ?? this.start,
      end: end ?? this.end,
      minutesDuration: minutesDuration ?? this.minutesDuration,
      requestedPeriod: requestedPeriod ?? this.requestedPeriod,
      slot: slot ?? this.slot,
      account: account ?? this.account,
      created: created ?? this.created,
      cancellationDate: cancellationDate ?? this.cancellationDate,
      note: note ?? this.note,
      patientInstruction: patientInstruction ?? this.patientInstruction,
      basedOn: basedOn ?? this.basedOn,
      subject: subject ?? this.subject,
      participant: participant ?? this.participant,
      recurrenceId: recurrenceId ?? this.recurrenceId,
      occurrenceChanged: occurrenceChanged ?? this.occurrenceChanged,
      recurrenceTemplate: recurrenceTemplate ?? this.recurrenceTemplate,
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
    if (o is! AppointmentBuilder) {
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
    if (!equalsDeepWithNull(
      cancellationReason,
      o.cancellationReason,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      class_,
      o.class_,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      serviceCategory,
      o.serviceCategory,
    )) {
      return false;
    }
    if (!listEquals<CodeableReferenceBuilder>(
      serviceType,
      o.serviceType,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      specialty,
      o.specialty,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      appointmentType,
      o.appointmentType,
    )) {
      return false;
    }
    if (!listEquals<CodeableReferenceBuilder>(
      reason,
      o.reason,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      priority,
      o.priority,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      replaces,
      o.replaces,
    )) {
      return false;
    }
    if (!listEquals<VirtualServiceDetailBuilder>(
      virtualService,
      o.virtualService,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      supportingInformation,
      o.supportingInformation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      previousAppointment,
      o.previousAppointment,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      originatingAppointment,
      o.originatingAppointment,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      start,
      o.start,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      end,
      o.end,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      minutesDuration,
      o.minutesDuration,
    )) {
      return false;
    }
    if (!listEquals<PeriodBuilder>(
      requestedPeriod,
      o.requestedPeriod,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      slot,
      o.slot,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      account,
      o.account,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      created,
      o.created,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      cancellationDate,
      o.cancellationDate,
    )) {
      return false;
    }
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<CodeableReferenceBuilder>(
      patientInstruction,
      o.patientInstruction,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      basedOn,
      o.basedOn,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      subject,
      o.subject,
    )) {
      return false;
    }
    if (!listEquals<AppointmentParticipantBuilder>(
      participant,
      o.participant,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      recurrenceId,
      o.recurrenceId,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      occurrenceChanged,
      o.occurrenceChanged,
    )) {
      return false;
    }
    if (!listEquals<AppointmentRecurrenceTemplateBuilder>(
      recurrenceTemplate,
      o.recurrenceTemplate,
    )) {
      return false;
    }
    return true;
  }
}

/// [AppointmentParticipantBuilder]
/// List of participants involved in the appointment.
class AppointmentParticipantBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [AppointmentParticipantBuilder]

  AppointmentParticipantBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.period,
    this.actor,
    this.required_,
    this.status,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Appointment.participant',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AppointmentParticipantBuilder.empty() =>
      AppointmentParticipantBuilder(
        status: ParticipationStatusBuilder.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AppointmentParticipantBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Appointment.participant';
    return AppointmentParticipantBuilder(
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
      required_: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'required',
        FhirBooleanBuilder.fromJson,
        '$objectPath.required',
      ),
      status: JsonParser.parsePrimitive<ParticipationStatusBuilder>(
        json,
        'status',
        ParticipationStatusBuilder.fromJson,
        '$objectPath.status',
      ),
    );
  }

  /// Deserialize [AppointmentParticipantBuilder]
  /// from a [String] or [YamlMap] object
  factory AppointmentParticipantBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AppointmentParticipantBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AppointmentParticipantBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AppointmentParticipantBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AppointmentParticipantBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AppointmentParticipantBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AppointmentParticipantBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AppointmentParticipant';

  /// [type]
  /// Role of participant in the appointment.
  List<CodeableConceptBuilder>? type;

  /// [period]
  /// Participation period of the actor.
  PeriodBuilder? period;

  /// [actor]
  /// The individual, device, location, or service participating in the
  /// appointment.
  ReferenceBuilder? actor;

  /// [required_]
  /// Whether this participant is required to be present at the meeting. If
  /// false, the participant is optional.
  FhirBooleanBuilder? required_;

  /// [status]
  /// Participation status of the actor.
  ParticipationStatusBuilder? status;

  /// Converts a [AppointmentParticipantBuilder]
  /// to [AppointmentParticipant]
  @override
  AppointmentParticipant build() => AppointmentParticipant.fromJson(toJson());

  /// Converts a [AppointmentParticipantBuilder]
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
    addField('required', required_);
    addField('status', status);
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
      'required',
      'status',
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
      case 'required':
        if (required_ != null) {
          fields.add(required_!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
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
      case 'required':
        {
          if (child is FhirBooleanBuilder) {
            required_ = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                required_ = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is ParticipationStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ParticipationStatusBuilder(stringValue);
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
      case 'required':
        return ['FhirBooleanBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AppointmentParticipantBuilder]
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
      case 'required':
        {
          required_ = FhirBooleanBuilder.empty();
          return;
        }
      case 'status':
        {
          status = ParticipationStatusBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  AppointmentParticipantBuilder clone() => throw UnimplementedError();
  @override
  AppointmentParticipantBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<CodeableConceptBuilder>? type,
    PeriodBuilder? period,
    ReferenceBuilder? actor,
    FhirBooleanBuilder? required_,
    ParticipationStatusBuilder? status,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = AppointmentParticipantBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      period: period ?? this.period,
      actor: actor ?? this.actor,
      required_: required_ ?? this.required_,
      status: status ?? this.status,
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
    if (o is! AppointmentParticipantBuilder) {
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
    if (!equalsDeepWithNull(
      required_,
      o.required_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    return true;
  }
}

/// [AppointmentRecurrenceTemplateBuilder]
/// The details of the recurrence pattern or template that is used to
/// generate recurring appointments.
class AppointmentRecurrenceTemplateBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [AppointmentRecurrenceTemplateBuilder]

  AppointmentRecurrenceTemplateBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.timezone,
    this.recurrenceType,
    this.lastOccurrenceDate,
    this.occurrenceCount,
    this.occurrenceDate,
    this.weeklyTemplate,
    this.monthlyTemplate,
    this.yearlyTemplate,
    this.excludingDate,
    this.excludingRecurrenceId,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Appointment.recurrenceTemplate',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AppointmentRecurrenceTemplateBuilder.empty() =>
      AppointmentRecurrenceTemplateBuilder(
        recurrenceType: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AppointmentRecurrenceTemplateBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Appointment.recurrenceTemplate';
    return AppointmentRecurrenceTemplateBuilder(
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
      timezone: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'timezone',
        CodeableConceptBuilder.fromJson,
        '$objectPath.timezone',
      ),
      recurrenceType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'recurrenceType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.recurrenceType',
      ),
      lastOccurrenceDate: JsonParser.parsePrimitive<FhirDateBuilder>(
        json,
        'lastOccurrenceDate',
        FhirDateBuilder.fromJson,
        '$objectPath.lastOccurrenceDate',
      ),
      occurrenceCount: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'occurrenceCount',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.occurrenceCount',
      ),
      occurrenceDate: JsonParser.parsePrimitiveList<FhirDateBuilder>(
        json,
        'occurrenceDate',
        FhirDateBuilder.fromJson,
        '$objectPath.occurrenceDate',
      ),
      weeklyTemplate: JsonParser.parseObject<AppointmentWeeklyTemplateBuilder>(
        json,
        'weeklyTemplate',
        AppointmentWeeklyTemplateBuilder.fromJson,
        '$objectPath.weeklyTemplate',
      ),
      monthlyTemplate:
          JsonParser.parseObject<AppointmentMonthlyTemplateBuilder>(
        json,
        'monthlyTemplate',
        AppointmentMonthlyTemplateBuilder.fromJson,
        '$objectPath.monthlyTemplate',
      ),
      yearlyTemplate: JsonParser.parseObject<AppointmentYearlyTemplateBuilder>(
        json,
        'yearlyTemplate',
        AppointmentYearlyTemplateBuilder.fromJson,
        '$objectPath.yearlyTemplate',
      ),
      excludingDate: JsonParser.parsePrimitiveList<FhirDateBuilder>(
        json,
        'excludingDate',
        FhirDateBuilder.fromJson,
        '$objectPath.excludingDate',
      ),
      excludingRecurrenceId:
          JsonParser.parsePrimitiveList<FhirPositiveIntBuilder>(
        json,
        'excludingRecurrenceId',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.excludingRecurrenceId',
      ),
    );
  }

  /// Deserialize [AppointmentRecurrenceTemplateBuilder]
  /// from a [String] or [YamlMap] object
  factory AppointmentRecurrenceTemplateBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AppointmentRecurrenceTemplateBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AppointmentRecurrenceTemplateBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AppointmentRecurrenceTemplateBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AppointmentRecurrenceTemplateBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AppointmentRecurrenceTemplateBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AppointmentRecurrenceTemplateBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AppointmentRecurrenceTemplate';

  /// [timezone]
  /// The timezone of the recurring appointment occurrences.
  CodeableConceptBuilder? timezone;

  /// [recurrenceType]
  /// How often the appointment series should recur.
  CodeableConceptBuilder? recurrenceType;

  /// [lastOccurrenceDate]
  /// Recurring appointments will not occur after this date.
  FhirDateBuilder? lastOccurrenceDate;

  /// [occurrenceCount]
  /// How many appointments are planned in the recurrence.
  FhirPositiveIntBuilder? occurrenceCount;

  /// [occurrenceDate]
  /// The list of specific dates that will have appointments generated.
  List<FhirDateBuilder>? occurrenceDate;

  /// [weeklyTemplate]
  /// Information about weekly recurring appointments.
  AppointmentWeeklyTemplateBuilder? weeklyTemplate;

  /// [monthlyTemplate]
  /// Information about monthly recurring appointments.
  AppointmentMonthlyTemplateBuilder? monthlyTemplate;

  /// [yearlyTemplate]
  /// Information about yearly recurring appointments.
  AppointmentYearlyTemplateBuilder? yearlyTemplate;

  /// [excludingDate]
  /// Any dates, such as holidays, that should be excluded from the
  /// recurrence.
  List<FhirDateBuilder>? excludingDate;

  /// [excludingRecurrenceId]
  /// Any dates, such as holidays, that should be excluded from the
  /// recurrence.
  List<FhirPositiveIntBuilder>? excludingRecurrenceId;

  /// Converts a [AppointmentRecurrenceTemplateBuilder]
  /// to [AppointmentRecurrenceTemplate]
  @override
  AppointmentRecurrenceTemplate build() =>
      AppointmentRecurrenceTemplate.fromJson(toJson());

  /// Converts a [AppointmentRecurrenceTemplateBuilder]
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
    addField('timezone', timezone);
    addField('recurrenceType', recurrenceType);
    addField('lastOccurrenceDate', lastOccurrenceDate);
    addField('occurrenceCount', occurrenceCount);
    addField('occurrenceDate', occurrenceDate);
    addField('weeklyTemplate', weeklyTemplate);
    addField('monthlyTemplate', monthlyTemplate);
    addField('yearlyTemplate', yearlyTemplate);
    addField('excludingDate', excludingDate);
    addField('excludingRecurrenceId', excludingRecurrenceId);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'timezone',
      'recurrenceType',
      'lastOccurrenceDate',
      'occurrenceCount',
      'occurrenceDate',
      'weeklyTemplate',
      'monthlyTemplate',
      'yearlyTemplate',
      'excludingDate',
      'excludingRecurrenceId',
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
      case 'timezone':
        if (timezone != null) {
          fields.add(timezone!);
        }
      case 'recurrenceType':
        if (recurrenceType != null) {
          fields.add(recurrenceType!);
        }
      case 'lastOccurrenceDate':
        if (lastOccurrenceDate != null) {
          fields.add(lastOccurrenceDate!);
        }
      case 'occurrenceCount':
        if (occurrenceCount != null) {
          fields.add(occurrenceCount!);
        }
      case 'occurrenceDate':
        if (occurrenceDate != null) {
          fields.addAll(occurrenceDate!);
        }
      case 'weeklyTemplate':
        if (weeklyTemplate != null) {
          fields.add(weeklyTemplate!);
        }
      case 'monthlyTemplate':
        if (monthlyTemplate != null) {
          fields.add(monthlyTemplate!);
        }
      case 'yearlyTemplate':
        if (yearlyTemplate != null) {
          fields.add(yearlyTemplate!);
        }
      case 'excludingDate':
        if (excludingDate != null) {
          fields.addAll(excludingDate!);
        }
      case 'excludingRecurrenceId':
        if (excludingRecurrenceId != null) {
          fields.addAll(excludingRecurrenceId!);
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
      case 'timezone':
        {
          if (child is CodeableConceptBuilder) {
            timezone = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'recurrenceType':
        {
          if (child is CodeableConceptBuilder) {
            recurrenceType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'lastOccurrenceDate':
        {
          if (child is FhirDateBuilder) {
            lastOccurrenceDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateBuilder.tryParse(stringValue);
              if (converted != null) {
                lastOccurrenceDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'occurrenceCount':
        {
          if (child is FhirPositiveIntBuilder) {
            occurrenceCount = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirPositiveIntBuilder.tryParse(numValue);
                if (converted != null) {
                  occurrenceCount = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'occurrenceDate':
        {
          if (child is List<FhirDateBuilder>) {
            // Replace or create new list
            occurrenceDate = child;
            return;
          } else if (child is FhirDateBuilder) {
            // Add single element to existing list or create new list
            occurrenceDate = [
              ...(occurrenceDate ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirDateBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirDateBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              occurrenceDate = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirDateBuilder.tryParse(stringValue);
              if (converted != null) {
                occurrenceDate = [
                  ...(occurrenceDate ?? []),
                  converted,
                ];
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'weeklyTemplate':
        {
          if (child is AppointmentWeeklyTemplateBuilder) {
            weeklyTemplate = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'monthlyTemplate':
        {
          if (child is AppointmentMonthlyTemplateBuilder) {
            monthlyTemplate = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'yearlyTemplate':
        {
          if (child is AppointmentYearlyTemplateBuilder) {
            yearlyTemplate = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'excludingDate':
        {
          if (child is List<FhirDateBuilder>) {
            // Replace or create new list
            excludingDate = child;
            return;
          } else if (child is FhirDateBuilder) {
            // Add single element to existing list or create new list
            excludingDate = [
              ...(excludingDate ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirDateBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirDateBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              excludingDate = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirDateBuilder.tryParse(stringValue);
              if (converted != null) {
                excludingDate = [
                  ...(excludingDate ?? []),
                  converted,
                ];
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'excludingRecurrenceId':
        {
          if (child is List<FhirPositiveIntBuilder>) {
            // Replace or create new list
            excludingRecurrenceId = child;
            return;
          } else if (child is FhirPositiveIntBuilder) {
            // Add single element to existing list or create new list
            excludingRecurrenceId = [
              ...(excludingRecurrenceId ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirPositiveIntBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                // For number types,
                // first parse to num then pass the number directly
                final numValue = num.tryParse(stringValue);
                if (numValue != null) {
                  final converted = FhirPositiveIntBuilder.tryParse(numValue);
                  if (converted != null) {
                    convertedList.add(converted);
                  }
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              excludingRecurrenceId = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirPositiveIntBuilder.tryParse(numValue);
                if (converted != null) {
                  excludingRecurrenceId = [
                    ...(excludingRecurrenceId ?? []),
                    converted,
                  ];
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
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
      case 'timezone':
        return ['CodeableConceptBuilder'];
      case 'recurrenceType':
        return ['CodeableConceptBuilder'];
      case 'lastOccurrenceDate':
        return ['FhirDateBuilder'];
      case 'occurrenceCount':
        return ['FhirPositiveIntBuilder'];
      case 'occurrenceDate':
        return ['FhirDateBuilder'];
      case 'weeklyTemplate':
        return ['AppointmentWeeklyTemplateBuilder'];
      case 'monthlyTemplate':
        return ['AppointmentMonthlyTemplateBuilder'];
      case 'yearlyTemplate':
        return ['AppointmentYearlyTemplateBuilder'];
      case 'excludingDate':
        return ['FhirDateBuilder'];
      case 'excludingRecurrenceId':
        return ['FhirPositiveIntBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AppointmentRecurrenceTemplateBuilder]
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
      case 'timezone':
        {
          timezone = CodeableConceptBuilder.empty();
          return;
        }
      case 'recurrenceType':
        {
          recurrenceType = CodeableConceptBuilder.empty();
          return;
        }
      case 'lastOccurrenceDate':
        {
          lastOccurrenceDate = FhirDateBuilder.empty();
          return;
        }
      case 'occurrenceCount':
        {
          occurrenceCount = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'occurrenceDate':
        {
          occurrenceDate = <FhirDateBuilder>[];
          return;
        }
      case 'weeklyTemplate':
        {
          weeklyTemplate = AppointmentWeeklyTemplateBuilder.empty();
          return;
        }
      case 'monthlyTemplate':
        {
          monthlyTemplate = AppointmentMonthlyTemplateBuilder.empty();
          return;
        }
      case 'yearlyTemplate':
        {
          yearlyTemplate = AppointmentYearlyTemplateBuilder.empty();
          return;
        }
      case 'excludingDate':
        {
          excludingDate = <FhirDateBuilder>[];
          return;
        }
      case 'excludingRecurrenceId':
        {
          excludingRecurrenceId = <FhirPositiveIntBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  AppointmentRecurrenceTemplateBuilder clone() => throw UnimplementedError();
  @override
  AppointmentRecurrenceTemplateBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? timezone,
    CodeableConceptBuilder? recurrenceType,
    FhirDateBuilder? lastOccurrenceDate,
    FhirPositiveIntBuilder? occurrenceCount,
    List<FhirDateBuilder>? occurrenceDate,
    AppointmentWeeklyTemplateBuilder? weeklyTemplate,
    AppointmentMonthlyTemplateBuilder? monthlyTemplate,
    AppointmentYearlyTemplateBuilder? yearlyTemplate,
    List<FhirDateBuilder>? excludingDate,
    List<FhirPositiveIntBuilder>? excludingRecurrenceId,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = AppointmentRecurrenceTemplateBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      timezone: timezone ?? this.timezone,
      recurrenceType: recurrenceType ?? this.recurrenceType,
      lastOccurrenceDate: lastOccurrenceDate ?? this.lastOccurrenceDate,
      occurrenceCount: occurrenceCount ?? this.occurrenceCount,
      occurrenceDate: occurrenceDate ?? this.occurrenceDate,
      weeklyTemplate: weeklyTemplate ?? this.weeklyTemplate,
      monthlyTemplate: monthlyTemplate ?? this.monthlyTemplate,
      yearlyTemplate: yearlyTemplate ?? this.yearlyTemplate,
      excludingDate: excludingDate ?? this.excludingDate,
      excludingRecurrenceId:
          excludingRecurrenceId ?? this.excludingRecurrenceId,
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
    if (o is! AppointmentRecurrenceTemplateBuilder) {
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
      timezone,
      o.timezone,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      recurrenceType,
      o.recurrenceType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      lastOccurrenceDate,
      o.lastOccurrenceDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      occurrenceCount,
      o.occurrenceCount,
    )) {
      return false;
    }
    if (!listEquals<FhirDateBuilder>(
      occurrenceDate,
      o.occurrenceDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      weeklyTemplate,
      o.weeklyTemplate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      monthlyTemplate,
      o.monthlyTemplate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      yearlyTemplate,
      o.yearlyTemplate,
    )) {
      return false;
    }
    if (!listEquals<FhirDateBuilder>(
      excludingDate,
      o.excludingDate,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveIntBuilder>(
      excludingRecurrenceId,
      o.excludingRecurrenceId,
    )) {
      return false;
    }
    return true;
  }
}

/// [AppointmentWeeklyTemplateBuilder]
/// Information about weekly recurring appointments.
class AppointmentWeeklyTemplateBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [AppointmentWeeklyTemplateBuilder]

  AppointmentWeeklyTemplateBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.monday,
    this.tuesday,
    this.wednesday,
    this.thursday,
    this.friday,
    this.saturday,
    this.sunday,
    this.weekInterval,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Appointment.recurrenceTemplate.weeklyTemplate',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AppointmentWeeklyTemplateBuilder.empty() =>
      AppointmentWeeklyTemplateBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AppointmentWeeklyTemplateBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Appointment.recurrenceTemplate.weeklyTemplate';
    return AppointmentWeeklyTemplateBuilder(
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
      monday: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'monday',
        FhirBooleanBuilder.fromJson,
        '$objectPath.monday',
      ),
      tuesday: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'tuesday',
        FhirBooleanBuilder.fromJson,
        '$objectPath.tuesday',
      ),
      wednesday: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'wednesday',
        FhirBooleanBuilder.fromJson,
        '$objectPath.wednesday',
      ),
      thursday: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'thursday',
        FhirBooleanBuilder.fromJson,
        '$objectPath.thursday',
      ),
      friday: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'friday',
        FhirBooleanBuilder.fromJson,
        '$objectPath.friday',
      ),
      saturday: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'saturday',
        FhirBooleanBuilder.fromJson,
        '$objectPath.saturday',
      ),
      sunday: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'sunday',
        FhirBooleanBuilder.fromJson,
        '$objectPath.sunday',
      ),
      weekInterval: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'weekInterval',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.weekInterval',
      ),
    );
  }

  /// Deserialize [AppointmentWeeklyTemplateBuilder]
  /// from a [String] or [YamlMap] object
  factory AppointmentWeeklyTemplateBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AppointmentWeeklyTemplateBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AppointmentWeeklyTemplateBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AppointmentWeeklyTemplateBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AppointmentWeeklyTemplateBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AppointmentWeeklyTemplateBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AppointmentWeeklyTemplateBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AppointmentWeeklyTemplate';

  /// [monday]
  /// Indicates that recurring appointments should occur on Mondays.
  FhirBooleanBuilder? monday;

  /// [tuesday]
  /// Indicates that recurring appointments should occur on Tuesdays.
  FhirBooleanBuilder? tuesday;

  /// [wednesday]
  /// Indicates that recurring appointments should occur on Wednesdays.
  FhirBooleanBuilder? wednesday;

  /// [thursday]
  /// Indicates that recurring appointments should occur on Thursdays.
  FhirBooleanBuilder? thursday;

  /// [friday]
  /// Indicates that recurring appointments should occur on Fridays.
  FhirBooleanBuilder? friday;

  /// [saturday]
  /// Indicates that recurring appointments should occur on Saturdays.
  FhirBooleanBuilder? saturday;

  /// [sunday]
  /// Indicates that recurring appointments should occur on Sundays.
  FhirBooleanBuilder? sunday;

  /// [weekInterval]
  /// The interval defines if the recurrence is every nth week. The default
  /// is every week, so it is expected that this value will be 2 or more.
  /// e.g. For recurring every second week this interval would be 2, or every
  /// third week the interval would be 3.
  FhirPositiveIntBuilder? weekInterval;

  /// Converts a [AppointmentWeeklyTemplateBuilder]
  /// to [AppointmentWeeklyTemplate]
  @override
  AppointmentWeeklyTemplate build() =>
      AppointmentWeeklyTemplate.fromJson(toJson());

  /// Converts a [AppointmentWeeklyTemplateBuilder]
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
    addField('monday', monday);
    addField('tuesday', tuesday);
    addField('wednesday', wednesday);
    addField('thursday', thursday);
    addField('friday', friday);
    addField('saturday', saturday);
    addField('sunday', sunday);
    addField('weekInterval', weekInterval);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'monday',
      'tuesday',
      'wednesday',
      'thursday',
      'friday',
      'saturday',
      'sunday',
      'weekInterval',
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
      case 'monday':
        if (monday != null) {
          fields.add(monday!);
        }
      case 'tuesday':
        if (tuesday != null) {
          fields.add(tuesday!);
        }
      case 'wednesday':
        if (wednesday != null) {
          fields.add(wednesday!);
        }
      case 'thursday':
        if (thursday != null) {
          fields.add(thursday!);
        }
      case 'friday':
        if (friday != null) {
          fields.add(friday!);
        }
      case 'saturday':
        if (saturday != null) {
          fields.add(saturday!);
        }
      case 'sunday':
        if (sunday != null) {
          fields.add(sunday!);
        }
      case 'weekInterval':
        if (weekInterval != null) {
          fields.add(weekInterval!);
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
      case 'monday':
        {
          if (child is FhirBooleanBuilder) {
            monday = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                monday = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'tuesday':
        {
          if (child is FhirBooleanBuilder) {
            tuesday = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                tuesday = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'wednesday':
        {
          if (child is FhirBooleanBuilder) {
            wednesday = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                wednesday = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'thursday':
        {
          if (child is FhirBooleanBuilder) {
            thursday = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                thursday = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'friday':
        {
          if (child is FhirBooleanBuilder) {
            friday = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                friday = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'saturday':
        {
          if (child is FhirBooleanBuilder) {
            saturday = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                saturday = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'sunday':
        {
          if (child is FhirBooleanBuilder) {
            sunday = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                sunday = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'weekInterval':
        {
          if (child is FhirPositiveIntBuilder) {
            weekInterval = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirPositiveIntBuilder.tryParse(numValue);
                if (converted != null) {
                  weekInterval = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
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
      case 'monday':
        return ['FhirBooleanBuilder'];
      case 'tuesday':
        return ['FhirBooleanBuilder'];
      case 'wednesday':
        return ['FhirBooleanBuilder'];
      case 'thursday':
        return ['FhirBooleanBuilder'];
      case 'friday':
        return ['FhirBooleanBuilder'];
      case 'saturday':
        return ['FhirBooleanBuilder'];
      case 'sunday':
        return ['FhirBooleanBuilder'];
      case 'weekInterval':
        return ['FhirPositiveIntBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AppointmentWeeklyTemplateBuilder]
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
      case 'monday':
        {
          monday = FhirBooleanBuilder.empty();
          return;
        }
      case 'tuesday':
        {
          tuesday = FhirBooleanBuilder.empty();
          return;
        }
      case 'wednesday':
        {
          wednesday = FhirBooleanBuilder.empty();
          return;
        }
      case 'thursday':
        {
          thursday = FhirBooleanBuilder.empty();
          return;
        }
      case 'friday':
        {
          friday = FhirBooleanBuilder.empty();
          return;
        }
      case 'saturday':
        {
          saturday = FhirBooleanBuilder.empty();
          return;
        }
      case 'sunday':
        {
          sunday = FhirBooleanBuilder.empty();
          return;
        }
      case 'weekInterval':
        {
          weekInterval = FhirPositiveIntBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  AppointmentWeeklyTemplateBuilder clone() => throw UnimplementedError();
  @override
  AppointmentWeeklyTemplateBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirBooleanBuilder? monday,
    FhirBooleanBuilder? tuesday,
    FhirBooleanBuilder? wednesday,
    FhirBooleanBuilder? thursday,
    FhirBooleanBuilder? friday,
    FhirBooleanBuilder? saturday,
    FhirBooleanBuilder? sunday,
    FhirPositiveIntBuilder? weekInterval,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = AppointmentWeeklyTemplateBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      monday: monday ?? this.monday,
      tuesday: tuesday ?? this.tuesday,
      wednesday: wednesday ?? this.wednesday,
      thursday: thursday ?? this.thursday,
      friday: friday ?? this.friday,
      saturday: saturday ?? this.saturday,
      sunday: sunday ?? this.sunday,
      weekInterval: weekInterval ?? this.weekInterval,
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
    if (o is! AppointmentWeeklyTemplateBuilder) {
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
      monday,
      o.monday,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      tuesday,
      o.tuesday,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      wednesday,
      o.wednesday,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      thursday,
      o.thursday,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      friday,
      o.friday,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      saturday,
      o.saturday,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sunday,
      o.sunday,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      weekInterval,
      o.weekInterval,
    )) {
      return false;
    }
    return true;
  }
}

/// [AppointmentMonthlyTemplateBuilder]
/// Information about monthly recurring appointments.
class AppointmentMonthlyTemplateBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [AppointmentMonthlyTemplateBuilder]

  AppointmentMonthlyTemplateBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.dayOfMonth,
    this.nthWeekOfMonth,
    this.dayOfWeek,
    this.monthInterval,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Appointment.recurrenceTemplate.monthlyTemplate',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AppointmentMonthlyTemplateBuilder.empty() =>
      AppointmentMonthlyTemplateBuilder(
        monthInterval: FhirPositiveIntBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AppointmentMonthlyTemplateBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Appointment.recurrenceTemplate.monthlyTemplate';
    return AppointmentMonthlyTemplateBuilder(
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
      dayOfMonth: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'dayOfMonth',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.dayOfMonth',
      ),
      nthWeekOfMonth: JsonParser.parseObject<CodingBuilder>(
        json,
        'nthWeekOfMonth',
        CodingBuilder.fromJson,
        '$objectPath.nthWeekOfMonth',
      ),
      dayOfWeek: JsonParser.parseObject<CodingBuilder>(
        json,
        'dayOfWeek',
        CodingBuilder.fromJson,
        '$objectPath.dayOfWeek',
      ),
      monthInterval: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'monthInterval',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.monthInterval',
      ),
    );
  }

  /// Deserialize [AppointmentMonthlyTemplateBuilder]
  /// from a [String] or [YamlMap] object
  factory AppointmentMonthlyTemplateBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AppointmentMonthlyTemplateBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AppointmentMonthlyTemplateBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AppointmentMonthlyTemplateBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AppointmentMonthlyTemplateBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AppointmentMonthlyTemplateBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AppointmentMonthlyTemplateBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AppointmentMonthlyTemplate';

  /// [dayOfMonth]
  /// Indicates that appointments in the series of recurring appointments
  /// should occur on a specific day of the month.
  FhirPositiveIntBuilder? dayOfMonth;

  /// [nthWeekOfMonth]
  /// Indicates which week within a month the appointments in the series of
  /// recurring appointments should occur on.
  CodingBuilder? nthWeekOfMonth;

  /// [dayOfWeek]
  /// Indicates which day of the week the recurring appointments should occur
  /// each nth week.
  CodingBuilder? dayOfWeek;

  /// [monthInterval]
  /// Indicates that recurring appointments should occur every nth month.
  FhirPositiveIntBuilder? monthInterval;

  /// Converts a [AppointmentMonthlyTemplateBuilder]
  /// to [AppointmentMonthlyTemplate]
  @override
  AppointmentMonthlyTemplate build() =>
      AppointmentMonthlyTemplate.fromJson(toJson());

  /// Converts a [AppointmentMonthlyTemplateBuilder]
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
    addField('dayOfMonth', dayOfMonth);
    addField('nthWeekOfMonth', nthWeekOfMonth);
    addField('dayOfWeek', dayOfWeek);
    addField('monthInterval', monthInterval);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'dayOfMonth',
      'nthWeekOfMonth',
      'dayOfWeek',
      'monthInterval',
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
      case 'dayOfMonth':
        if (dayOfMonth != null) {
          fields.add(dayOfMonth!);
        }
      case 'nthWeekOfMonth':
        if (nthWeekOfMonth != null) {
          fields.add(nthWeekOfMonth!);
        }
      case 'dayOfWeek':
        if (dayOfWeek != null) {
          fields.add(dayOfWeek!);
        }
      case 'monthInterval':
        if (monthInterval != null) {
          fields.add(monthInterval!);
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
      case 'dayOfMonth':
        {
          if (child is FhirPositiveIntBuilder) {
            dayOfMonth = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirPositiveIntBuilder.tryParse(numValue);
                if (converted != null) {
                  dayOfMonth = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'nthWeekOfMonth':
        {
          if (child is CodingBuilder) {
            nthWeekOfMonth = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'dayOfWeek':
        {
          if (child is CodingBuilder) {
            dayOfWeek = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'monthInterval':
        {
          if (child is FhirPositiveIntBuilder) {
            monthInterval = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirPositiveIntBuilder.tryParse(numValue);
                if (converted != null) {
                  monthInterval = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
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
      case 'dayOfMonth':
        return ['FhirPositiveIntBuilder'];
      case 'nthWeekOfMonth':
        return ['CodingBuilder'];
      case 'dayOfWeek':
        return ['CodingBuilder'];
      case 'monthInterval':
        return ['FhirPositiveIntBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AppointmentMonthlyTemplateBuilder]
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
      case 'dayOfMonth':
        {
          dayOfMonth = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'nthWeekOfMonth':
        {
          nthWeekOfMonth = CodingBuilder.empty();
          return;
        }
      case 'dayOfWeek':
        {
          dayOfWeek = CodingBuilder.empty();
          return;
        }
      case 'monthInterval':
        {
          monthInterval = FhirPositiveIntBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  AppointmentMonthlyTemplateBuilder clone() => throw UnimplementedError();
  @override
  AppointmentMonthlyTemplateBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirPositiveIntBuilder? dayOfMonth,
    CodingBuilder? nthWeekOfMonth,
    CodingBuilder? dayOfWeek,
    FhirPositiveIntBuilder? monthInterval,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = AppointmentMonthlyTemplateBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      dayOfMonth: dayOfMonth ?? this.dayOfMonth,
      nthWeekOfMonth: nthWeekOfMonth ?? this.nthWeekOfMonth,
      dayOfWeek: dayOfWeek ?? this.dayOfWeek,
      monthInterval: monthInterval ?? this.monthInterval,
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
    if (o is! AppointmentMonthlyTemplateBuilder) {
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
      dayOfMonth,
      o.dayOfMonth,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      nthWeekOfMonth,
      o.nthWeekOfMonth,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      dayOfWeek,
      o.dayOfWeek,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      monthInterval,
      o.monthInterval,
    )) {
      return false;
    }
    return true;
  }
}

/// [AppointmentYearlyTemplateBuilder]
/// Information about yearly recurring appointments.
class AppointmentYearlyTemplateBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [AppointmentYearlyTemplateBuilder]

  AppointmentYearlyTemplateBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.yearInterval,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Appointment.recurrenceTemplate.yearlyTemplate',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AppointmentYearlyTemplateBuilder.empty() =>
      AppointmentYearlyTemplateBuilder(
        yearInterval: FhirPositiveIntBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AppointmentYearlyTemplateBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Appointment.recurrenceTemplate.yearlyTemplate';
    return AppointmentYearlyTemplateBuilder(
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
      yearInterval: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'yearInterval',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.yearInterval',
      ),
    );
  }

  /// Deserialize [AppointmentYearlyTemplateBuilder]
  /// from a [String] or [YamlMap] object
  factory AppointmentYearlyTemplateBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AppointmentYearlyTemplateBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AppointmentYearlyTemplateBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AppointmentYearlyTemplateBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AppointmentYearlyTemplateBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AppointmentYearlyTemplateBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AppointmentYearlyTemplateBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AppointmentYearlyTemplate';

  /// [yearInterval]
  /// Appointment recurs every nth year.
  FhirPositiveIntBuilder? yearInterval;

  /// Converts a [AppointmentYearlyTemplateBuilder]
  /// to [AppointmentYearlyTemplate]
  @override
  AppointmentYearlyTemplate build() =>
      AppointmentYearlyTemplate.fromJson(toJson());

  /// Converts a [AppointmentYearlyTemplateBuilder]
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
    addField('yearInterval', yearInterval);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'yearInterval',
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
      case 'yearInterval':
        if (yearInterval != null) {
          fields.add(yearInterval!);
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
      case 'yearInterval':
        {
          if (child is FhirPositiveIntBuilder) {
            yearInterval = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirPositiveIntBuilder.tryParse(numValue);
                if (converted != null) {
                  yearInterval = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
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
      case 'yearInterval':
        return ['FhirPositiveIntBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AppointmentYearlyTemplateBuilder]
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
      case 'yearInterval':
        {
          yearInterval = FhirPositiveIntBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  AppointmentYearlyTemplateBuilder clone() => throw UnimplementedError();
  @override
  AppointmentYearlyTemplateBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirPositiveIntBuilder? yearInterval,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = AppointmentYearlyTemplateBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      yearInterval: yearInterval ?? this.yearInterval,
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
    if (o is! AppointmentYearlyTemplateBuilder) {
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
      yearInterval,
      o.yearInterval,
    )) {
      return false;
    }
    return true;
  }
}
