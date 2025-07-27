import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'procedure.g.dart';

/// [Procedure]
/// An action that is or was performed on or for a patient, practitioner,
/// device, organization, or location. For example, this can be a physical
/// intervention on a patient like an operation, or less invasive like long
/// term services, counseling, or hypnotherapy. This can be a quality or
/// safety inspection for a location, organization, or device. This can be
/// an accreditation procedure on a practitioner for licensing.
class Procedure extends DomainResource {
  /// Primary constructor for
  /// [Procedure]

  const Procedure({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.basedOn,
    this.partOf,
    required this.status,
    this.statusReason,
    this.category,
    this.code,
    required this.subject,
    this.focus,
    this.encounter,
    OccurrenceXProcedure? occurrenceX,
    FhirDateTime? occurrenceDateTime,
    Period? occurrencePeriod,
    FhirString? occurrenceString,
    Age? occurrenceAge,
    Range? occurrenceRange,
    Timing? occurrenceTiming,
    this.recorded,
    this.recorder,
    ReportedXProcedure? reportedX,
    FhirBoolean? reportedBoolean,
    Reference? reportedReference,
    this.performer,
    this.location,
    this.reason,
    this.bodySite,
    this.outcome,
    this.report,
    this.complication,
    this.followUp,
    this.note,
    this.focalDevice,
    this.used,
    this.supportingInfo,
  })  : occurrenceX = occurrenceX ??
            occurrenceDateTime ??
            occurrencePeriod ??
            occurrenceString ??
            occurrenceAge ??
            occurrenceRange ??
            occurrenceTiming,
        reportedX = reportedX ?? reportedBoolean ?? reportedReference,
        super(
          resourceType: R6ResourceType.Procedure,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Procedure.fromJson(
    Map<String, dynamic> json,
  ) {
    return Procedure(
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
      instantiatesCanonical: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'instantiatesCanonical',
        FhirCanonical.fromJson,
      ),
      instantiatesUri: JsonParser.parsePrimitiveList<FhirUri>(
        json,
        'instantiatesUri',
        FhirUri.fromJson,
      ),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<EventStatus>(
        json,
        'status',
        EventStatus.fromJson,
      )!,
      statusReason: JsonParser.parseObject<CodeableConcept>(
        json,
        'statusReason',
        CodeableConcept.fromJson,
      ),
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      ),
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
      )!,
      focus: JsonParser.parseObject<Reference>(
        json,
        'focus',
        Reference.fromJson,
      ),
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
      ),
      occurrenceX: JsonParser.parsePolymorphic<OccurrenceXProcedure>(
        json,
        {
          'occurrenceDateTime': FhirDateTime.fromJson,
          'occurrencePeriod': Period.fromJson,
          'occurrenceString': FhirString.fromJson,
          'occurrenceAge': Age.fromJson,
          'occurrenceRange': Range.fromJson,
          'occurrenceTiming': Timing.fromJson,
        },
      ),
      recorded: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'recorded',
        FhirDateTime.fromJson,
      ),
      recorder: JsonParser.parseObject<Reference>(
        json,
        'recorder',
        Reference.fromJson,
      ),
      reportedX: JsonParser.parsePolymorphic<ReportedXProcedure>(
        json,
        {
          'reportedBoolean': FhirBoolean.fromJson,
          'reportedReference': Reference.fromJson,
        },
      ),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<ProcedurePerformer>(
            (v) => ProcedurePerformer.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      location: JsonParser.parseObject<Reference>(
        json,
        'location',
        Reference.fromJson,
      ),
      reason: (json['reason'] as List<dynamic>?)
          ?.map<CodeableReference>(
            (v) => CodeableReference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      bodySite: (json['bodySite'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      outcome: JsonParser.parseObject<CodeableConcept>(
        json,
        'outcome',
        CodeableConcept.fromJson,
      ),
      report: (json['report'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      complication: (json['complication'] as List<dynamic>?)
          ?.map<CodeableReference>(
            (v) => CodeableReference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      followUp: (json['followUp'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      focalDevice: (json['focalDevice'] as List<dynamic>?)
          ?.map<ProcedureFocalDevice>(
            (v) => ProcedureFocalDevice.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      used: (json['used'] as List<dynamic>?)
          ?.map<CodeableReference>(
            (v) => CodeableReference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      supportingInfo: (json['supportingInfo'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [Procedure]
  /// from a [String] or [YamlMap] object
  factory Procedure.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Procedure.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Procedure.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Procedure '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Procedure]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Procedure.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Procedure.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Procedure';

  /// [identifier]
  /// Business identifiers assigned to this procedure by the performer or
  /// other systems which remain constant as the resource is updated and is
  /// propagated from server to server.
  final List<Identifier>? identifier;

  /// [instantiatesCanonical]
  /// The URL pointing to a FHIR-defined protocol, guideline, order set or
  /// other definition that is adhered to in whole or in part by this
  /// Procedure.
  final List<FhirCanonical>? instantiatesCanonical;

  /// [instantiatesUri]
  /// The URL pointing to an externally maintained protocol, guideline, order
  /// set or other definition that is adhered to in whole or in part by this
  /// Procedure.
  final List<FhirUri>? instantiatesUri;

  /// [basedOn]
  /// A reference to a resource that contains details of the request for this
  /// procedure.
  final List<Reference>? basedOn;

  /// [partOf]
  /// A larger event of which this particular procedure is a component or
  /// step.
  final List<Reference>? partOf;

  /// [status]
  /// A code specifying the state of the procedure. Generally, this will be
  /// the in-progress or completed state.
  final EventStatus status;

  /// [statusReason]
  /// Captures the reason for the current state of the procedure.
  final CodeableConcept? statusReason;

  /// [category]
  /// A code that classifies the procedure for searching, sorting and display
  /// purposes (e.g. "Surgical Procedure").
  final List<CodeableConcept>? category;

  /// [code]
  /// The specific procedure that is performed. Use text if the exact nature
  /// of the procedure cannot be coded (e.g. "Laparoscopic Appendectomy").
  final CodeableConcept? code;

  /// [subject]
  /// On whom or on what the procedure was performed. This is usually an
  /// individual human, but can also be performed on animals, groups of
  /// humans or animals, organizations or practitioners (for licensing),
  /// locations or devices (for safety inspections or regulatory
  /// authorizations). If the actual focus of the procedure is different from
  /// the subject, the focus element specifies the actual focus of the
  /// procedure.
  final Reference subject;

  /// [focus]
  /// Who is the target of the procedure when it is not the subject of record
  /// only. If focus is not present, then subject is the focus. If focus is
  /// present and the subject is one of the targets of the procedure, include
  /// subject as a focus as well. If focus is present and the subject is not
  /// included in focus, it implies that the procedure was only targeted on
  /// the focus. For example, when a caregiver is given education for a
  /// patient, the caregiver would be the focus and the procedure record is
  /// associated with the subject (e.g. patient). For example, use focus when
  /// recording the target of the education, training, or counseling is the
  /// parent or relative of a patient.
  final Reference? focus;

  /// [encounter]
  /// The Encounter during which this Procedure was created or performed or
  /// to which the creation of this record is tightly associated.
  final Reference? encounter;

  /// [occurrenceX]
  /// Estimated or actual date, date-time, period, or age when the procedure
  /// did occur or is occurring. Allows a period to support complex
  /// procedures that span more than one date, and also allows for the length
  /// of the procedure to be captured.
  final OccurrenceXProcedure? occurrenceX;

  /// Getter for [occurrenceDateTime] as a FhirDateTime
  FhirDateTime? get occurrenceDateTime => occurrenceX?.isAs<FhirDateTime>();

  /// Getter for [occurrencePeriod] as a Period
  Period? get occurrencePeriod => occurrenceX?.isAs<Period>();

  /// Getter for [occurrenceString] as a FhirString
  FhirString? get occurrenceString => occurrenceX?.isAs<FhirString>();

  /// Getter for [occurrenceAge] as a Age
  Age? get occurrenceAge => occurrenceX?.isAs<Age>();

  /// Getter for [occurrenceRange] as a Range
  Range? get occurrenceRange => occurrenceX?.isAs<Range>();

  /// Getter for [occurrenceTiming] as a Timing
  Timing? get occurrenceTiming => occurrenceX?.isAs<Timing>();

  /// [recorded]
  /// The date the occurrence of the procedure was first captured in the
  /// record regardless of Procedure.status (potentially after the occurrence
  /// of the event).
  final FhirDateTime? recorded;

  /// [recorder]
  /// Individual who recorded the record and takes responsibility for its
  /// content.
  final Reference? recorder;

  /// [reportedX]
  /// Indicates if this record was captured as a secondary 'reported' record
  /// rather than as an original primary source-of-truth record. It may also
  /// indicate the source of the report.
  final ReportedXProcedure? reportedX;

  /// Getter for [reportedBoolean] as a FhirBoolean
  FhirBoolean? get reportedBoolean => reportedX?.isAs<FhirBoolean>();

  /// Getter for [reportedReference] as a Reference
  Reference? get reportedReference => reportedX?.isAs<Reference>();

  /// [performer]
  /// Indicates who or what performed the procedure and how they were
  /// involved.
  final List<ProcedurePerformer>? performer;

  /// [location]
  /// The location where the procedure actually happened. E.g. a newborn at
  /// home, a tracheostomy at a restaurant.
  final Reference? location;

  /// [reason]
  /// The coded reason or reference why the procedure was performed. This may
  /// be a coded entity of some type, be present as text, or be a reference
  /// to one of several resources that justify the procedure.
  final List<CodeableReference>? reason;

  /// [bodySite]
  /// Detailed and structured anatomical location information. Multiple
  /// locations are allowed - e.g. multiple punch biopsies of a lesion.
  final List<CodeableConcept>? bodySite;

  /// [outcome]
  /// The outcome of the procedure - did it resolve the reasons for the
  /// procedure being performed?
  final CodeableConcept? outcome;

  /// [report]
  /// This could be a histology result, pathology report, surgical report,
  /// etc.
  final List<Reference>? report;

  /// [complication]
  /// Any complications that occurred during the procedure, or in the
  /// immediate post-performance period. These are generally tracked
  /// separately from the notes, which will typically describe the procedure
  /// itself rather than any 'post procedure' issues.
  final List<CodeableReference>? complication;

  /// [followUp]
  /// If the procedure required specific follow up - e.g. removal of sutures.
  /// The follow up may be represented as a simple note or could potentially
  /// be more complex, in which case the CarePlan resource can be used.
  final List<CodeableConcept>? followUp;

  /// [note]
  /// Any other notes and comments about the procedure.
  final List<Annotation>? note;

  /// [focalDevice]
  /// A device that is implanted, removed or otherwise manipulated
  /// (calibration, battery replacement, fitting a prosthesis, attaching a
  /// wound-vac, etc.) as a focal portion of the Procedure.
  final List<ProcedureFocalDevice>? focalDevice;

  /// [used]
  /// Identifies medications, devices and any other substance used as part of
  /// the procedure.
  final List<CodeableReference>? used;

  /// [supportingInfo]
  /// Other resources from the patient record that may be relevant to the
  /// procedure. The information from these resources was either used to
  /// create the instance or is provided to help with its interpretation.
  /// This extension should not be used if more specific inline elements or
  /// extensions are available.
  final List<Reference>? supportingInfo;
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
      'instantiatesCanonical',
      instantiatesCanonical,
    );
    addField(
      'instantiatesUri',
      instantiatesUri,
    );
    addField(
      'basedOn',
      basedOn,
    );
    addField(
      'partOf',
      partOf,
    );
    addField(
      'status',
      status,
    );
    addField(
      'statusReason',
      statusReason,
    );
    addField(
      'category',
      category,
    );
    addField(
      'code',
      code,
    );
    addField(
      'subject',
      subject,
    );
    addField(
      'focus',
      focus,
    );
    addField(
      'encounter',
      encounter,
    );
    if (occurrenceX != null) {
      final fhirType = occurrenceX!.fhirType;
      addField(
        'occurrence${fhirType.capitalize()}',
        occurrenceX,
      );
    }

    addField(
      'recorded',
      recorded,
    );
    addField(
      'recorder',
      recorder,
    );
    if (reportedX != null) {
      final fhirType = reportedX!.fhirType;
      addField(
        'reported${fhirType.capitalize()}',
        reportedX,
      );
    }

    addField(
      'performer',
      performer,
    );
    addField(
      'location',
      location,
    );
    addField(
      'reason',
      reason,
    );
    addField(
      'bodySite',
      bodySite,
    );
    addField(
      'outcome',
      outcome,
    );
    addField(
      'report',
      report,
    );
    addField(
      'complication',
      complication,
    );
    addField(
      'followUp',
      followUp,
    );
    addField(
      'note',
      note,
    );
    addField(
      'focalDevice',
      focalDevice,
    );
    addField(
      'used',
      used,
    );
    addField(
      'supportingInfo',
      supportingInfo,
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
      'instantiatesCanonical',
      'instantiatesUri',
      'basedOn',
      'partOf',
      'status',
      'statusReason',
      'category',
      'code',
      'subject',
      'focus',
      'encounter',
      'occurrenceX',
      'recorded',
      'recorder',
      'reportedX',
      'performer',
      'location',
      'reason',
      'bodySite',
      'outcome',
      'report',
      'complication',
      'followUp',
      'note',
      'focalDevice',
      'used',
      'supportingInfo',
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
      case 'instantiatesCanonical':
        if (instantiatesCanonical != null) {
          fields.addAll(instantiatesCanonical!);
        }
      case 'instantiatesUri':
        if (instantiatesUri != null) {
          fields.addAll(instantiatesUri!);
        }
      case 'basedOn':
        if (basedOn != null) {
          fields.addAll(basedOn!);
        }
      case 'partOf':
        if (partOf != null) {
          fields.addAll(partOf!);
        }
      case 'status':
        fields.add(status);
      case 'statusReason':
        if (statusReason != null) {
          fields.add(statusReason!);
        }
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'subject':
        fields.add(subject);
      case 'focus':
        if (focus != null) {
          fields.add(focus!);
        }
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'occurrence':
        fields.add(occurrenceX!);
      case 'occurrenceX':
        fields.add(occurrenceX!);
      case 'occurrenceDateTime':
        if (occurrenceX is FhirDateTime) {
          fields.add(occurrenceX!);
        }
      case 'occurrencePeriod':
        if (occurrenceX is Period) {
          fields.add(occurrenceX!);
        }
      case 'occurrenceString':
        if (occurrenceX is FhirString) {
          fields.add(occurrenceX!);
        }
      case 'occurrenceAge':
        if (occurrenceX is Age) {
          fields.add(occurrenceX!);
        }
      case 'occurrenceRange':
        if (occurrenceX is Range) {
          fields.add(occurrenceX!);
        }
      case 'occurrenceTiming':
        if (occurrenceX is Timing) {
          fields.add(occurrenceX!);
        }
      case 'recorded':
        if (recorded != null) {
          fields.add(recorded!);
        }
      case 'recorder':
        if (recorder != null) {
          fields.add(recorder!);
        }
      case 'reported':
        fields.add(reportedX!);
      case 'reportedX':
        fields.add(reportedX!);
      case 'reportedBoolean':
        if (reportedX is FhirBoolean) {
          fields.add(reportedX!);
        }
      case 'reportedReference':
        if (reportedX is Reference) {
          fields.add(reportedX!);
        }
      case 'performer':
        if (performer != null) {
          fields.addAll(performer!);
        }
      case 'location':
        if (location != null) {
          fields.add(location!);
        }
      case 'reason':
        if (reason != null) {
          fields.addAll(reason!);
        }
      case 'bodySite':
        if (bodySite != null) {
          fields.addAll(bodySite!);
        }
      case 'outcome':
        if (outcome != null) {
          fields.add(outcome!);
        }
      case 'report':
        if (report != null) {
          fields.addAll(report!);
        }
      case 'complication':
        if (complication != null) {
          fields.addAll(complication!);
        }
      case 'followUp':
        if (followUp != null) {
          fields.addAll(followUp!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'focalDevice':
        if (focalDevice != null) {
          fields.addAll(focalDevice!);
        }
      case 'used':
        if (used != null) {
          fields.addAll(used!);
        }
      case 'supportingInfo':
        if (supportingInfo != null) {
          fields.addAll(supportingInfo!);
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
  Procedure clone() => copyWith();

  /// Copy function for [Procedure]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ProcedureCopyWith<Procedure> get copyWith =>
      _$ProcedureCopyWithImpl<Procedure>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Procedure) {
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
    if (!listEquals<FhirCanonical>(
      instantiatesCanonical,
      o.instantiatesCanonical,
    )) {
      return false;
    }
    if (!listEquals<FhirUri>(
      instantiatesUri,
      o.instantiatesUri,
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
      partOf,
      o.partOf,
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
      statusReason,
      o.statusReason,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      category,
      o.category,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      code,
      o.code,
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
      focus,
      o.focus,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      encounter,
      o.encounter,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      occurrenceX,
      o.occurrenceX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      recorded,
      o.recorded,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      recorder,
      o.recorder,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reportedX,
      o.reportedX,
    )) {
      return false;
    }
    if (!listEquals<ProcedurePerformer>(
      performer,
      o.performer,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      location,
      o.location,
    )) {
      return false;
    }
    if (!listEquals<CodeableReference>(
      reason,
      o.reason,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      bodySite,
      o.bodySite,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      outcome,
      o.outcome,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      report,
      o.report,
    )) {
      return false;
    }
    if (!listEquals<CodeableReference>(
      complication,
      o.complication,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      followUp,
      o.followUp,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<ProcedureFocalDevice>(
      focalDevice,
      o.focalDevice,
    )) {
      return false;
    }
    if (!listEquals<CodeableReference>(
      used,
      o.used,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      supportingInfo,
      o.supportingInfo,
    )) {
      return false;
    }
    return true;
  }
}

/// [ProcedurePerformer]
/// Indicates who or what performed the procedure and how they were
/// involved.
class ProcedurePerformer extends BackboneElement {
  /// Primary constructor for
  /// [ProcedurePerformer]

  const ProcedurePerformer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    required this.actor,
    this.onBehalfOf,
    this.period,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ProcedurePerformer.fromJson(
    Map<String, dynamic> json,
  ) {
    return ProcedurePerformer(
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
      function_: JsonParser.parseObject<CodeableConcept>(
        json,
        'function',
        CodeableConcept.fromJson,
      ),
      actor: JsonParser.parseObject<Reference>(
        json,
        'actor',
        Reference.fromJson,
      )!,
      onBehalfOf: JsonParser.parseObject<Reference>(
        json,
        'onBehalfOf',
        Reference.fromJson,
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
      ),
    );
  }

  /// Deserialize [ProcedurePerformer]
  /// from a [String] or [YamlMap] object
  factory ProcedurePerformer.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ProcedurePerformer.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ProcedurePerformer.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ProcedurePerformer '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ProcedurePerformer]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ProcedurePerformer.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ProcedurePerformer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ProcedurePerformer';

  /// [function_]
  /// Distinguishes the type of involvement of the performer in the
  /// procedure. For example, surgeon, anaesthetist, endoscopist.
  final CodeableConcept? function_;

  /// [actor]
  /// Indicates who or what performed the procedure.
  final Reference actor;

  /// [onBehalfOf]
  /// The Organization the Patient, RelatedPerson, Device, CareTeam, and
  /// HealthcareService was acting on behalf of.
  final Reference? onBehalfOf;

  /// [period]
  /// Time period during which the performer performed the procedure.
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
      'function',
      function_,
    );
    addField(
      'actor',
      actor,
    );
    addField(
      'onBehalfOf',
      onBehalfOf,
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
      'function',
      'actor',
      'onBehalfOf',
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
      case 'function':
        if (function_ != null) {
          fields.add(function_!);
        }
      case 'actor':
        fields.add(actor);
      case 'onBehalfOf':
        if (onBehalfOf != null) {
          fields.add(onBehalfOf!);
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
  ProcedurePerformer clone() => copyWith();

  /// Copy function for [ProcedurePerformer]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ProcedurePerformerCopyWith<ProcedurePerformer> get copyWith =>
      _$ProcedurePerformerCopyWithImpl<ProcedurePerformer>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ProcedurePerformer) {
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
      function_,
      o.function_,
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
      onBehalfOf,
      o.onBehalfOf,
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

/// [ProcedureFocalDevice]
/// A device that is implanted, removed or otherwise manipulated
/// (calibration, battery replacement, fitting a prosthesis, attaching a
/// wound-vac, etc.) as a focal portion of the Procedure.
class ProcedureFocalDevice extends BackboneElement {
  /// Primary constructor for
  /// [ProcedureFocalDevice]

  const ProcedureFocalDevice({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.action,
    required this.manipulated,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ProcedureFocalDevice.fromJson(
    Map<String, dynamic> json,
  ) {
    return ProcedureFocalDevice(
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
      action: JsonParser.parseObject<CodeableConcept>(
        json,
        'action',
        CodeableConcept.fromJson,
      ),
      manipulated: JsonParser.parseObject<Reference>(
        json,
        'manipulated',
        Reference.fromJson,
      )!,
    );
  }

  /// Deserialize [ProcedureFocalDevice]
  /// from a [String] or [YamlMap] object
  factory ProcedureFocalDevice.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ProcedureFocalDevice.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ProcedureFocalDevice.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ProcedureFocalDevice '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ProcedureFocalDevice]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ProcedureFocalDevice.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ProcedureFocalDevice.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ProcedureFocalDevice';

  /// [action]
  /// The kind of change that happened to the device during the procedure.
  final CodeableConcept? action;

  /// [manipulated]
  /// The device that was manipulated (changed) during the procedure.
  final Reference manipulated;
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
      'action',
      action,
    );
    addField(
      'manipulated',
      manipulated,
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
      'action',
      'manipulated',
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
      case 'action':
        if (action != null) {
          fields.add(action!);
        }
      case 'manipulated':
        fields.add(manipulated);
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
  ProcedureFocalDevice clone() => copyWith();

  /// Copy function for [ProcedureFocalDevice]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ProcedureFocalDeviceCopyWith<ProcedureFocalDevice> get copyWith =>
      _$ProcedureFocalDeviceCopyWithImpl<ProcedureFocalDevice>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ProcedureFocalDevice) {
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
      action,
      o.action,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      manipulated,
      o.manipulated,
    )) {
      return false;
    }
    return true;
  }
}
