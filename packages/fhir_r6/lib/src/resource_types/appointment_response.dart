import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'appointment_response.g.dart';

/// [AppointmentResponse]
/// A reply to an appointment request for a patient and/or practitioner(s),
/// such as a confirmation or rejection.
class AppointmentResponse extends DomainResource {
  /// Primary constructor for
  /// [AppointmentResponse]

  const AppointmentResponse({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.appointment,
    this.proposedNewTime,
    this.start,
    this.end,
    this.participantType,
    this.actor,
    required this.participantStatus,
    this.comment,
    this.recurring,
    this.occurrenceDate,
    this.recurrenceId,
  }) : super(
          resourceType: R5ResourceType.AppointmentResponse,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AppointmentResponse.fromJson(
    Map<String, dynamic> json,
  ) {
    return AppointmentResponse(
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
      appointment: JsonParser.parseObject<Reference>(
        json,
        'appointment',
        Reference.fromJson,
      )!,
      proposedNewTime: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'proposedNewTime',
        FhirBoolean.fromJson,
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
      participantType: (json['participantType'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      actor: JsonParser.parseObject<Reference>(
        json,
        'actor',
        Reference.fromJson,
      ),
      participantStatus: JsonParser.parsePrimitive<AppointmentResponseStatus>(
        json,
        'participantStatus',
        AppointmentResponseStatus.fromJson,
      )!,
      comment: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'comment',
        FhirMarkdown.fromJson,
      ),
      recurring: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'recurring',
        FhirBoolean.fromJson,
      ),
      occurrenceDate: JsonParser.parsePrimitive<FhirDate>(
        json,
        'occurrenceDate',
        FhirDate.fromJson,
      ),
      recurrenceId: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'recurrenceId',
        FhirPositiveInt.fromJson,
      ),
    );
  }

  /// Deserialize [AppointmentResponse]
  /// from a [String] or [YamlMap] object
  factory AppointmentResponse.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AppointmentResponse.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AppointmentResponse.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AppointmentResponse '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AppointmentResponse]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AppointmentResponse.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AppointmentResponse.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AppointmentResponse';

  /// [identifier]
  /// This records identifiers associated with this appointment response
  /// concern that are defined by business processes and/ or used to refer to
  /// it when a direct URL reference to the resource itself is not
  /// appropriate.
  final List<Identifier>? identifier;

  /// [appointment]
  /// Appointment that this response is replying to.
  final Reference appointment;

  /// [proposedNewTime]
  /// Indicates that the response is proposing a different time that was
  /// initially requested. The new proposed time will be indicated in the
  /// start and end properties.
  final FhirBoolean? proposedNewTime;

  /// [start]
  /// Date/Time that the appointment is to take place, or requested new start
  /// time.
  final FhirInstant? start;

  /// [end]
  /// This may be either the same as the appointment request to confirm the
  /// details of the appointment, or alternately a new time to request a
  /// re-negotiation of the end time.
  final FhirInstant? end;

  /// [participantType]
  /// Role of participant in the appointment.
  final List<CodeableConcept>? participantType;

  /// [actor]
  /// A Person, Location, HealthcareService, or Device that is participating
  /// in the appointment.
  final Reference? actor;

  /// [participantStatus]
  /// Participation status of the participant. When the status is declined or
  /// tentative if the start/end times are different to the appointment, then
  /// these times should be interpreted as a requested time change. When the
  /// status is accepted, the times can either be the time of the appointment
  /// (as a confirmation of the time) or can be empty.
  final AppointmentResponseStatus participantStatus;

  /// [comment]
  /// Additional comments about the appointment.
  final FhirMarkdown? comment;

  /// [recurring]
  /// Indicates that this AppointmentResponse applies to all occurrences in a
  /// recurring request.
  final FhirBoolean? recurring;

  /// [occurrenceDate]
  /// The original date within a recurring request. This could be used in
  /// place of the recurrenceId to be more direct (or where the template is
  /// provided through the simple list of dates in
  /// `Appointment.occurrenceDate`).
  final FhirDate? occurrenceDate;

  /// [recurrenceId]
  /// The recurrence ID (sequence number) of the specific appointment when
  /// responding to a recurring request.
  final FhirPositiveInt? recurrenceId;
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
      'appointment',
      appointment,
    );
    addField(
      'proposedNewTime',
      proposedNewTime,
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
      'participantType',
      participantType,
    );
    addField(
      'actor',
      actor,
    );
    addField(
      'participantStatus',
      participantStatus,
    );
    addField(
      'comment',
      comment,
    );
    addField(
      'recurring',
      recurring,
    );
    addField(
      'occurrenceDate',
      occurrenceDate,
    );
    addField(
      'recurrenceId',
      recurrenceId,
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
      'appointment',
      'proposedNewTime',
      'start',
      'end',
      'participantType',
      'actor',
      'participantStatus',
      'comment',
      'recurring',
      'occurrenceDate',
      'recurrenceId',
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
      case 'appointment':
        fields.add(appointment);
      case 'proposedNewTime':
        if (proposedNewTime != null) {
          fields.add(proposedNewTime!);
        }
      case 'start':
        if (start != null) {
          fields.add(start!);
        }
      case 'end':
        if (end != null) {
          fields.add(end!);
        }
      case 'participantType':
        if (participantType != null) {
          fields.addAll(participantType!);
        }
      case 'actor':
        if (actor != null) {
          fields.add(actor!);
        }
      case 'participantStatus':
        fields.add(participantStatus);
      case 'comment':
        if (comment != null) {
          fields.add(comment!);
        }
      case 'recurring':
        if (recurring != null) {
          fields.add(recurring!);
        }
      case 'occurrenceDate':
        if (occurrenceDate != null) {
          fields.add(occurrenceDate!);
        }
      case 'recurrenceId':
        if (recurrenceId != null) {
          fields.add(recurrenceId!);
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
  AppointmentResponse clone() => copyWith();

  /// Copy function for [AppointmentResponse]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $AppointmentResponseCopyWith<AppointmentResponse> get copyWith =>
      _$AppointmentResponseCopyWithImpl<AppointmentResponse>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AppointmentResponse) {
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
      appointment,
      o.appointment,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      proposedNewTime,
      o.proposedNewTime,
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
    if (!listEquals<CodeableConcept>(
      participantType,
      o.participantType,
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
      participantStatus,
      o.participantStatus,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      comment,
      o.comment,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      recurring,
      o.recurring,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      occurrenceDate,
      o.occurrenceDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      recurrenceId,
      o.recurrenceId,
    )) {
      return false;
    }
    return true;
  }
}
