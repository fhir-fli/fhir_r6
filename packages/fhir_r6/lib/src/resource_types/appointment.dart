import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'appointment.g.dart';

/// [Appointment]
/// A booking of a healthcare event among patient(s), practitioner(s),
/// related person(s) and/or device(s) for a specific date/time. This may
/// result in one or more Encounter(s).
class Appointment extends DomainResource {
  /// Primary constructor for
  /// [Appointment]

  const Appointment({
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
    required this.participant,
    this.recurrenceId,
    this.occurrenceChanged,
    this.recurrenceTemplate,
  }) : super(
          resourceType: R6ResourceType.Appointment,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Appointment.fromJson(
    Map<String, dynamic> json,
  ) {
    return Appointment(
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
      status: JsonParser.parsePrimitive<AppointmentStatus>(
        json,
        'status',
        AppointmentStatus.fromJson,
      )!,
      cancellationReason: JsonParser.parseObject<CodeableConcept>(
        json,
        'cancellationReason',
        CodeableConcept.fromJson,
      ),
      class_: (json['class'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      serviceCategory: (json['serviceCategory'] as List<dynamic>?)
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
      specialty: (json['specialty'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      appointmentType: JsonParser.parseObject<CodeableConcept>(
        json,
        'appointmentType',
        CodeableConcept.fromJson,
      ),
      reason: (json['reason'] as List<dynamic>?)
          ?.map<CodeableReference>(
            (v) => CodeableReference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      priority: JsonParser.parseObject<CodeableConcept>(
        json,
        'priority',
        CodeableConcept.fromJson,
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
      ),
      replaces: (json['replaces'] as List<dynamic>?)
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
      supportingInformation: (json['supportingInformation'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      previousAppointment: JsonParser.parseObject<Reference>(
        json,
        'previousAppointment',
        Reference.fromJson,
      ),
      originatingAppointment: JsonParser.parseObject<Reference>(
        json,
        'originatingAppointment',
        Reference.fromJson,
      ),
      start: JsonParser.parsePrimitive<FhirInstant>(
        json,
        'start',
        FhirInstant.fromJson,
      ),
      end: JsonParser.parsePrimitive<FhirInstant>(
        json,
        'end',
        FhirInstant.fromJson,
      ),
      minutesDuration: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'minutesDuration',
        FhirPositiveInt.fromJson,
      ),
      requestedPeriod: (json['requestedPeriod'] as List<dynamic>?)
          ?.map<Period>(
            (v) => Period.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      slot: (json['slot'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
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
      created: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'created',
        FhirDateTime.fromJson,
      ),
      cancellationDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'cancellationDate',
        FhirDateTime.fromJson,
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      patientInstruction: (json['patientInstruction'] as List<dynamic>?)
          ?.map<CodeableReference>(
            (v) => CodeableReference.fromJson(
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
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
      ),
      participant: (json['participant'] as List<dynamic>)
          .map<AppointmentParticipant>(
            (v) => AppointmentParticipant.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      recurrenceId: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'recurrenceId',
        FhirPositiveInt.fromJson,
      ),
      occurrenceChanged: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'occurrenceChanged',
        FhirBoolean.fromJson,
      ),
      recurrenceTemplate: (json['recurrenceTemplate'] as List<dynamic>?)
          ?.map<AppointmentRecurrenceTemplate>(
            (v) => AppointmentRecurrenceTemplate.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [Appointment]
  /// from a [String] or [YamlMap] object
  factory Appointment.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Appointment.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Appointment.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Appointment '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Appointment]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Appointment.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Appointment.fromJson(json);
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
  final List<Identifier>? identifier;

  /// [status]
  /// The overall status of the Appointment. Each of the participants has
  /// their own participation status which indicates their involvement in the
  /// process, however this status indicates the shared status.
  final AppointmentStatus status;

  /// [cancellationReason]
  /// The coded reason for the appointment being cancelled. This is often
  /// used in reporting/billing/futher processing to determine if further
  /// actions are required, or specific fees apply.
  final CodeableConcept? cancellationReason;

  /// [class_]
  /// Concepts representing classification of patient encounter such as
  /// ambulatory (outpatient), inpatient, emergency, home health or others
  /// due to local variations.
  final List<CodeableConcept>? class_;

  /// [serviceCategory]
  /// A broad categorization of the service that is to be performed during
  /// this appointment.
  final List<CodeableConcept>? serviceCategory;

  /// [serviceType]
  /// The specific service that is to be performed during this appointment.
  final List<CodeableReference>? serviceType;

  /// [specialty]
  /// The specialty of a practitioner that would be required to perform the
  /// service requested in this appointment.
  final List<CodeableConcept>? specialty;

  /// [appointmentType]
  /// The style of appointment or patient that has been booked in the slot
  /// (not service type).
  final CodeableConcept? appointmentType;

  /// [reason]
  /// The reason that this appointment is being scheduled. This is more
  /// clinical than administrative. This can be coded, or as specified using
  /// information from another resource. When the patient arrives and the
  /// encounter begins it may be used as the admission diagnosis. The
  /// indication will typically be a Condition (with other resources
  /// referenced in the evidence.detail), or a Procedure.
  final List<CodeableReference>? reason;

  /// [priority]
  /// The priority of the appointment. Can be used to make informed decisions
  /// if needing to re-prioritize appointments. (The iCal Standard specifies
  /// 0 as undefined, 1 as highest, 9 as lowest priority).
  final CodeableConcept? priority;

  /// [description]
  /// The brief description of the appointment as would be shown on a subject
  /// line in a meeting request, or appointment list. Detailed or expanded
  /// information should be put in the note field.
  final FhirString? description;

  /// [replaces]
  /// Appointment replaced by this Appointment in cases where there is a
  /// cancellation, the details of the cancellation can be found in the
  /// cancellationReason property (on the referenced resource).
  final List<Reference>? replaces;

  /// [virtualService]
  /// Connection details of a virtual service (e.g. conference call).
  final List<VirtualServiceDetail>? virtualService;

  /// [supportingInformation]
  /// Additional information to support the appointment provided when making
  /// the appointment.
  final List<Reference>? supportingInformation;

  /// [previousAppointment]
  /// The previous appointment in a series of related appointments.
  final Reference? previousAppointment;

  /// [originatingAppointment]
  /// The originating appointment in a recurring set of related appointments.
  final Reference? originatingAppointment;

  /// [start]
  /// Date/Time that the appointment is to take place.
  final FhirInstant? start;

  /// [end]
  /// Date/Time that the appointment is to conclude.
  final FhirInstant? end;

  /// [minutesDuration]
  /// Number of minutes that the appointment is to take. This can be less
  /// than the duration between the start and end times. For example, where
  /// the actual time of appointment is only an estimate or if a 30 minute
  /// appointment is being requested, but any time would work. Also, if there
  /// is, for example, a planned 15 minute break in the middle of a long
  /// appointment, the duration may be 15 minutes less than the difference
  /// between the start and end.
  final FhirPositiveInt? minutesDuration;

  /// [requestedPeriod]
  /// A set of date ranges (potentially including times) that the appointment
  /// is preferred to be scheduled within.
  ///
  /// The duration (usually in minutes) could also be provided to indicate
  /// the length of the appointment to fill and populate the start/end times
  /// for the actual allocated time. However, in other situations the
  /// duration may be calculated by the scheduling system.
  final List<Period>? requestedPeriod;

  /// [slot]
  /// The slots from the participants' schedules that will be filled by the
  /// appointment.
  final List<Reference>? slot;

  /// [account]
  /// The set of accounts that is expected to be used for billing the
  /// activities that result from this Appointment.
  final List<Reference>? account;

  /// [created]
  /// The date that this appointment was initially created. This could be
  /// different to the meta.lastModified value on the initial entry, as this
  /// could have been before the resource was created on the FHIR server, and
  /// should remain unchanged over the lifespan of the appointment.
  final FhirDateTime? created;

  /// [cancellationDate]
  /// The date/time describing when the appointment was cancelled.
  final FhirDateTime? cancellationDate;

  /// [note]
  /// Additional notes/comments about the appointment.
  final List<Annotation>? note;

  /// [patientInstruction]
  /// While Appointment.note contains information for internal use,
  /// Appointment.patientInstructions is used to capture patient facing
  /// information about the Appointment (e.g. please bring your referral or
  /// fast from 8pm night before).
  final List<CodeableReference>? patientInstruction;

  /// [basedOn]
  /// The request this appointment is allocated to assess (e.g. incoming
  /// referral or procedure request).
  final List<Reference>? basedOn;

  /// [subject]
  /// The patient or group associated with the appointment, if they are to be
  /// present (usually) then they should also be included in the participant
  /// backbone element.
  final Reference? subject;

  /// [participant]
  /// List of participants involved in the appointment.
  final List<AppointmentParticipant> participant;

  /// [recurrenceId]
  /// The sequence number that identifies a specific appointment in a
  /// recurring pattern.
  final FhirPositiveInt? recurrenceId;

  /// [occurrenceChanged]
  /// This appointment varies from the recurring pattern.
  final FhirBoolean? occurrenceChanged;

  /// [recurrenceTemplate]
  /// The details of the recurrence pattern or template that is used to
  /// generate recurring appointments.
  final List<AppointmentRecurrenceTemplate>? recurrenceTemplate;
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
      'cancellationReason',
      cancellationReason,
    );
    addField(
      'class',
      class_,
    );
    addField(
      'serviceCategory',
      serviceCategory,
    );
    addField(
      'serviceType',
      serviceType,
    );
    addField(
      'specialty',
      specialty,
    );
    addField(
      'appointmentType',
      appointmentType,
    );
    addField(
      'reason',
      reason,
    );
    addField(
      'priority',
      priority,
    );
    addField(
      'description',
      description,
    );
    addField(
      'replaces',
      replaces,
    );
    addField(
      'virtualService',
      virtualService,
    );
    addField(
      'supportingInformation',
      supportingInformation,
    );
    addField(
      'previousAppointment',
      previousAppointment,
    );
    addField(
      'originatingAppointment',
      originatingAppointment,
    );
    addField(
      'start',
      start,
    );
    addField(
      'end',
      end,
    );
    addField(
      'minutesDuration',
      minutesDuration,
    );
    addField(
      'requestedPeriod',
      requestedPeriod,
    );
    addField(
      'slot',
      slot,
    );
    addField(
      'account',
      account,
    );
    addField(
      'created',
      created,
    );
    addField(
      'cancellationDate',
      cancellationDate,
    );
    addField(
      'note',
      note,
    );
    addField(
      'patientInstruction',
      patientInstruction,
    );
    addField(
      'basedOn',
      basedOn,
    );
    addField(
      'subject',
      subject,
    );
    addField(
      'participant',
      participant,
    );
    addField(
      'recurrenceId',
      recurrenceId,
    );
    addField(
      'occurrenceChanged',
      occurrenceChanged,
    );
    addField(
      'recurrenceTemplate',
      recurrenceTemplate,
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
        fields.addAll(participant);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  Appointment clone() => copyWith();

  /// Copy function for [Appointment]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $AppointmentCopyWith<Appointment> get copyWith =>
      _$AppointmentCopyWithImpl<Appointment>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Appointment) {
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
    if (!equalsDeepWithNull(
      cancellationReason,
      o.cancellationReason,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      class_,
      o.class_,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      serviceCategory,
      o.serviceCategory,
    )) {
      return false;
    }
    if (!listEquals<CodeableReference>(
      serviceType,
      o.serviceType,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
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
    if (!listEquals<CodeableReference>(
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
    if (!listEquals<Reference>(
      replaces,
      o.replaces,
    )) {
      return false;
    }
    if (!listEquals<VirtualServiceDetail>(
      virtualService,
      o.virtualService,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
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
    if (!listEquals<Period>(
      requestedPeriod,
      o.requestedPeriod,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      slot,
      o.slot,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
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
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<CodeableReference>(
      patientInstruction,
      o.patientInstruction,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
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
    if (!listEquals<AppointmentParticipant>(
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
    if (!listEquals<AppointmentRecurrenceTemplate>(
      recurrenceTemplate,
      o.recurrenceTemplate,
    )) {
      return false;
    }
    return true;
  }
}

/// [AppointmentParticipant]
/// List of participants involved in the appointment.
class AppointmentParticipant extends BackboneElement {
  /// Primary constructor for
  /// [AppointmentParticipant]

  const AppointmentParticipant({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.period,
    this.actor,
    this.required_,
    required this.status,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AppointmentParticipant.fromJson(
    Map<String, dynamic> json,
  ) {
    return AppointmentParticipant(
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
      required_: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'required',
        FhirBoolean.fromJson,
      ),
      status: JsonParser.parsePrimitive<ParticipationStatus>(
        json,
        'status',
        ParticipationStatus.fromJson,
      )!,
    );
  }

  /// Deserialize [AppointmentParticipant]
  /// from a [String] or [YamlMap] object
  factory AppointmentParticipant.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AppointmentParticipant.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AppointmentParticipant.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AppointmentParticipant '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AppointmentParticipant]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AppointmentParticipant.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AppointmentParticipant.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AppointmentParticipant';

  /// [type]
  /// Role of participant in the appointment.
  final List<CodeableConcept>? type;

  /// [period]
  /// Participation period of the actor.
  final Period? period;

  /// [actor]
  /// The individual, device, location, or service participating in the
  /// appointment.
  final Reference? actor;

  /// [required_]
  /// Whether this participant is required to be present at the meeting. If
  /// false, the participant is optional.
  final FhirBoolean? required_;

  /// [status]
  /// Participation status of the actor.
  final ParticipationStatus status;
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
    addField(
      'required',
      required_,
    );
    addField(
      'status',
      status,
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
      'required',
      'status',
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
      case 'required':
        if (required_ != null) {
          fields.add(required_!);
        }
      case 'status':
        fields.add(status);
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
  AppointmentParticipant clone() => copyWith();

  /// Copy function for [AppointmentParticipant]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $AppointmentParticipantCopyWith<AppointmentParticipant> get copyWith =>
      _$AppointmentParticipantCopyWithImpl<AppointmentParticipant>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AppointmentParticipant) {
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

/// [AppointmentRecurrenceTemplate]
/// The details of the recurrence pattern or template that is used to
/// generate recurring appointments.
class AppointmentRecurrenceTemplate extends BackboneElement {
  /// Primary constructor for
  /// [AppointmentRecurrenceTemplate]

  const AppointmentRecurrenceTemplate({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.timezone,
    required this.recurrenceType,
    this.lastOccurrenceDate,
    this.occurrenceCount,
    this.occurrenceDate,
    this.weeklyTemplate,
    this.monthlyTemplate,
    this.yearlyTemplate,
    this.excludingDate,
    this.excludingRecurrenceId,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AppointmentRecurrenceTemplate.fromJson(
    Map<String, dynamic> json,
  ) {
    return AppointmentRecurrenceTemplate(
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
      timezone: JsonParser.parseObject<CodeableConcept>(
        json,
        'timezone',
        CodeableConcept.fromJson,
      ),
      recurrenceType: JsonParser.parseObject<CodeableConcept>(
        json,
        'recurrenceType',
        CodeableConcept.fromJson,
      )!,
      lastOccurrenceDate: JsonParser.parsePrimitive<FhirDate>(
        json,
        'lastOccurrenceDate',
        FhirDate.fromJson,
      ),
      occurrenceCount: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'occurrenceCount',
        FhirPositiveInt.fromJson,
      ),
      occurrenceDate: JsonParser.parsePrimitiveList<FhirDate>(
        json,
        'occurrenceDate',
        FhirDate.fromJson,
      ),
      weeklyTemplate: JsonParser.parseObject<AppointmentWeeklyTemplate>(
        json,
        'weeklyTemplate',
        AppointmentWeeklyTemplate.fromJson,
      ),
      monthlyTemplate: JsonParser.parseObject<AppointmentMonthlyTemplate>(
        json,
        'monthlyTemplate',
        AppointmentMonthlyTemplate.fromJson,
      ),
      yearlyTemplate: JsonParser.parseObject<AppointmentYearlyTemplate>(
        json,
        'yearlyTemplate',
        AppointmentYearlyTemplate.fromJson,
      ),
      excludingDate: JsonParser.parsePrimitiveList<FhirDate>(
        json,
        'excludingDate',
        FhirDate.fromJson,
      ),
      excludingRecurrenceId: JsonParser.parsePrimitiveList<FhirPositiveInt>(
        json,
        'excludingRecurrenceId',
        FhirPositiveInt.fromJson,
      ),
    );
  }

  /// Deserialize [AppointmentRecurrenceTemplate]
  /// from a [String] or [YamlMap] object
  factory AppointmentRecurrenceTemplate.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AppointmentRecurrenceTemplate.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AppointmentRecurrenceTemplate.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AppointmentRecurrenceTemplate '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AppointmentRecurrenceTemplate]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AppointmentRecurrenceTemplate.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AppointmentRecurrenceTemplate.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AppointmentRecurrenceTemplate';

  /// [timezone]
  /// The timezone of the recurring appointment occurrences.
  final CodeableConcept? timezone;

  /// [recurrenceType]
  /// How often the appointment series should recur.
  final CodeableConcept recurrenceType;

  /// [lastOccurrenceDate]
  /// Recurring appointments will not occur after this date.
  final FhirDate? lastOccurrenceDate;

  /// [occurrenceCount]
  /// How many appointments are planned in the recurrence.
  final FhirPositiveInt? occurrenceCount;

  /// [occurrenceDate]
  /// The list of specific dates that will have appointments generated.
  final List<FhirDate>? occurrenceDate;

  /// [weeklyTemplate]
  /// Information about weekly recurring appointments.
  final AppointmentWeeklyTemplate? weeklyTemplate;

  /// [monthlyTemplate]
  /// Information about monthly recurring appointments.
  final AppointmentMonthlyTemplate? monthlyTemplate;

  /// [yearlyTemplate]
  /// Information about yearly recurring appointments.
  final AppointmentYearlyTemplate? yearlyTemplate;

  /// [excludingDate]
  /// Any dates, such as holidays, that should be excluded from the
  /// recurrence.
  final List<FhirDate>? excludingDate;

  /// [excludingRecurrenceId]
  /// Any dates, such as holidays, that should be excluded from the
  /// recurrence.
  final List<FhirPositiveInt>? excludingRecurrenceId;
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
      'timezone',
      timezone,
    );
    addField(
      'recurrenceType',
      recurrenceType,
    );
    addField(
      'lastOccurrenceDate',
      lastOccurrenceDate,
    );
    addField(
      'occurrenceCount',
      occurrenceCount,
    );
    addField(
      'occurrenceDate',
      occurrenceDate,
    );
    addField(
      'weeklyTemplate',
      weeklyTemplate,
    );
    addField(
      'monthlyTemplate',
      monthlyTemplate,
    );
    addField(
      'yearlyTemplate',
      yearlyTemplate,
    );
    addField(
      'excludingDate',
      excludingDate,
    );
    addField(
      'excludingRecurrenceId',
      excludingRecurrenceId,
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
      case 'timezone':
        if (timezone != null) {
          fields.add(timezone!);
        }
      case 'recurrenceType':
        fields.add(recurrenceType);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  AppointmentRecurrenceTemplate clone() => copyWith();

  /// Copy function for [AppointmentRecurrenceTemplate]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $AppointmentRecurrenceTemplateCopyWith<AppointmentRecurrenceTemplate>
      get copyWith => _$AppointmentRecurrenceTemplateCopyWithImpl<
              AppointmentRecurrenceTemplate>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AppointmentRecurrenceTemplate) {
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
    if (!listEquals<FhirDate>(
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
    if (!listEquals<FhirDate>(
      excludingDate,
      o.excludingDate,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveInt>(
      excludingRecurrenceId,
      o.excludingRecurrenceId,
    )) {
      return false;
    }
    return true;
  }
}

/// [AppointmentWeeklyTemplate]
/// Information about weekly recurring appointments.
class AppointmentWeeklyTemplate extends BackboneElement {
  /// Primary constructor for
  /// [AppointmentWeeklyTemplate]

  const AppointmentWeeklyTemplate({
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AppointmentWeeklyTemplate.fromJson(
    Map<String, dynamic> json,
  ) {
    return AppointmentWeeklyTemplate(
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
      monday: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'monday',
        FhirBoolean.fromJson,
      ),
      tuesday: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'tuesday',
        FhirBoolean.fromJson,
      ),
      wednesday: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'wednesday',
        FhirBoolean.fromJson,
      ),
      thursday: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'thursday',
        FhirBoolean.fromJson,
      ),
      friday: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'friday',
        FhirBoolean.fromJson,
      ),
      saturday: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'saturday',
        FhirBoolean.fromJson,
      ),
      sunday: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'sunday',
        FhirBoolean.fromJson,
      ),
      weekInterval: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'weekInterval',
        FhirPositiveInt.fromJson,
      ),
    );
  }

  /// Deserialize [AppointmentWeeklyTemplate]
  /// from a [String] or [YamlMap] object
  factory AppointmentWeeklyTemplate.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AppointmentWeeklyTemplate.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AppointmentWeeklyTemplate.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AppointmentWeeklyTemplate '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AppointmentWeeklyTemplate]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AppointmentWeeklyTemplate.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AppointmentWeeklyTemplate.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AppointmentWeeklyTemplate';

  /// [monday]
  /// Indicates that recurring appointments should occur on Mondays.
  final FhirBoolean? monday;

  /// [tuesday]
  /// Indicates that recurring appointments should occur on Tuesdays.
  final FhirBoolean? tuesday;

  /// [wednesday]
  /// Indicates that recurring appointments should occur on Wednesdays.
  final FhirBoolean? wednesday;

  /// [thursday]
  /// Indicates that recurring appointments should occur on Thursdays.
  final FhirBoolean? thursday;

  /// [friday]
  /// Indicates that recurring appointments should occur on Fridays.
  final FhirBoolean? friday;

  /// [saturday]
  /// Indicates that recurring appointments should occur on Saturdays.
  final FhirBoolean? saturday;

  /// [sunday]
  /// Indicates that recurring appointments should occur on Sundays.
  final FhirBoolean? sunday;

  /// [weekInterval]
  /// The interval defines if the recurrence is every nth week. The default
  /// is every week, so it is expected that this value will be 2 or more.
  /// e.g. For recurring every second week this interval would be 2, or every
  /// third week the interval would be 3.
  final FhirPositiveInt? weekInterval;
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
      'monday',
      monday,
    );
    addField(
      'tuesday',
      tuesday,
    );
    addField(
      'wednesday',
      wednesday,
    );
    addField(
      'thursday',
      thursday,
    );
    addField(
      'friday',
      friday,
    );
    addField(
      'saturday',
      saturday,
    );
    addField(
      'sunday',
      sunday,
    );
    addField(
      'weekInterval',
      weekInterval,
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  AppointmentWeeklyTemplate clone() => copyWith();

  /// Copy function for [AppointmentWeeklyTemplate]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $AppointmentWeeklyTemplateCopyWith<AppointmentWeeklyTemplate> get copyWith =>
      _$AppointmentWeeklyTemplateCopyWithImpl<AppointmentWeeklyTemplate>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AppointmentWeeklyTemplate) {
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

/// [AppointmentMonthlyTemplate]
/// Information about monthly recurring appointments.
class AppointmentMonthlyTemplate extends BackboneElement {
  /// Primary constructor for
  /// [AppointmentMonthlyTemplate]

  const AppointmentMonthlyTemplate({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.dayOfMonth,
    this.nthWeekOfMonth,
    this.dayOfWeek,
    required this.monthInterval,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AppointmentMonthlyTemplate.fromJson(
    Map<String, dynamic> json,
  ) {
    return AppointmentMonthlyTemplate(
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
      dayOfMonth: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'dayOfMonth',
        FhirPositiveInt.fromJson,
      ),
      nthWeekOfMonth: JsonParser.parseObject<Coding>(
        json,
        'nthWeekOfMonth',
        Coding.fromJson,
      ),
      dayOfWeek: JsonParser.parseObject<Coding>(
        json,
        'dayOfWeek',
        Coding.fromJson,
      ),
      monthInterval: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'monthInterval',
        FhirPositiveInt.fromJson,
      )!,
    );
  }

  /// Deserialize [AppointmentMonthlyTemplate]
  /// from a [String] or [YamlMap] object
  factory AppointmentMonthlyTemplate.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AppointmentMonthlyTemplate.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AppointmentMonthlyTemplate.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AppointmentMonthlyTemplate '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AppointmentMonthlyTemplate]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AppointmentMonthlyTemplate.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AppointmentMonthlyTemplate.fromJson(json);
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
  final FhirPositiveInt? dayOfMonth;

  /// [nthWeekOfMonth]
  /// Indicates which week within a month the appointments in the series of
  /// recurring appointments should occur on.
  final Coding? nthWeekOfMonth;

  /// [dayOfWeek]
  /// Indicates which day of the week the recurring appointments should occur
  /// each nth week.
  final Coding? dayOfWeek;

  /// [monthInterval]
  /// Indicates that recurring appointments should occur every nth month.
  final FhirPositiveInt monthInterval;
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
      'dayOfMonth',
      dayOfMonth,
    );
    addField(
      'nthWeekOfMonth',
      nthWeekOfMonth,
    );
    addField(
      'dayOfWeek',
      dayOfWeek,
    );
    addField(
      'monthInterval',
      monthInterval,
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
      'dayOfMonth',
      'nthWeekOfMonth',
      'dayOfWeek',
      'monthInterval',
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
        fields.add(monthInterval);
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
  AppointmentMonthlyTemplate clone() => copyWith();

  /// Copy function for [AppointmentMonthlyTemplate]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $AppointmentMonthlyTemplateCopyWith<AppointmentMonthlyTemplate>
      get copyWith =>
          _$AppointmentMonthlyTemplateCopyWithImpl<AppointmentMonthlyTemplate>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AppointmentMonthlyTemplate) {
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

/// [AppointmentYearlyTemplate]
/// Information about yearly recurring appointments.
class AppointmentYearlyTemplate extends BackboneElement {
  /// Primary constructor for
  /// [AppointmentYearlyTemplate]

  const AppointmentYearlyTemplate({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.yearInterval,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AppointmentYearlyTemplate.fromJson(
    Map<String, dynamic> json,
  ) {
    return AppointmentYearlyTemplate(
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
      yearInterval: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'yearInterval',
        FhirPositiveInt.fromJson,
      )!,
    );
  }

  /// Deserialize [AppointmentYearlyTemplate]
  /// from a [String] or [YamlMap] object
  factory AppointmentYearlyTemplate.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AppointmentYearlyTemplate.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AppointmentYearlyTemplate.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AppointmentYearlyTemplate '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AppointmentYearlyTemplate]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AppointmentYearlyTemplate.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AppointmentYearlyTemplate.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AppointmentYearlyTemplate';

  /// [yearInterval]
  /// Appointment recurs every nth year.
  final FhirPositiveInt yearInterval;
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
      'yearInterval',
      yearInterval,
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
      'yearInterval',
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
      case 'yearInterval':
        fields.add(yearInterval);
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
  AppointmentYearlyTemplate clone() => copyWith();

  /// Copy function for [AppointmentYearlyTemplate]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $AppointmentYearlyTemplateCopyWith<AppointmentYearlyTemplate> get copyWith =>
      _$AppointmentYearlyTemplateCopyWithImpl<AppointmentYearlyTemplate>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AppointmentYearlyTemplate) {
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
      yearInterval,
      o.yearInterval,
    )) {
      return false;
    }
    return true;
  }
}
