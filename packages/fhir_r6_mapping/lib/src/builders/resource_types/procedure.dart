import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        Procedure,
        ProcedureFocalDevice,
        ProcedurePerformer,
        R5ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [ProcedureBuilder]
/// An action that is or was performed on or for a patient, practitioner,
/// device, organization, or location. For example, this can be a physical
/// intervention on a patient like an operation, or less invasive like long
/// term services, counseling, or hypnotherapy. This can be a quality or
/// safety inspection for a location, organization, or device. This can be
/// an accreditation procedure on a practitioner for licensing.
class ProcedureBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [ProcedureBuilder]

  ProcedureBuilder({
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
    this.status,
    this.statusReason,
    this.category,
    this.code,
    this.subject,
    this.focus,
    this.encounter,
    OccurrenceXProcedureBuilder? occurrenceX,
    FhirDateTimeBuilder? occurrenceDateTime,
    PeriodBuilder? occurrencePeriod,
    FhirStringBuilder? occurrenceString,
    AgeBuilder? occurrenceAge,
    RangeBuilder? occurrenceRange,
    TimingBuilder? occurrenceTiming,
    this.recorded,
    this.recorder,
    ReportedXProcedureBuilder? reportedX,
    FhirBooleanBuilder? reportedBoolean,
    ReferenceBuilder? reportedReference,
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
          objectPath: 'Procedure',
          resourceType: R5ResourceType.Procedure,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ProcedureBuilder.empty() => ProcedureBuilder(
        status: EventStatusBuilder.values.first,
        subject: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ProcedureBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Procedure';
    return ProcedureBuilder(
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
      instantiatesCanonical:
          JsonParser.parsePrimitiveList<FhirCanonicalBuilder>(
        json,
        'instantiatesCanonical',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.instantiatesCanonical',
      ),
      instantiatesUri: JsonParser.parsePrimitiveList<FhirUriBuilder>(
        json,
        'instantiatesUri',
        FhirUriBuilder.fromJson,
        '$objectPath.instantiatesUri',
      ),
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
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.partOf',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<EventStatusBuilder>(
        json,
        'status',
        EventStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      statusReason: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'statusReason',
        CodeableConceptBuilder.fromJson,
        '$objectPath.statusReason',
      ),
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.category',
              },
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'code',
        CodeableConceptBuilder.fromJson,
        '$objectPath.code',
      ),
      subject: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'subject',
        ReferenceBuilder.fromJson,
        '$objectPath.subject',
      ),
      focus: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'focus',
        ReferenceBuilder.fromJson,
        '$objectPath.focus',
      ),
      encounter: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'encounter',
        ReferenceBuilder.fromJson,
        '$objectPath.encounter',
      ),
      occurrenceX: JsonParser.parsePolymorphic<OccurrenceXProcedureBuilder>(
        json,
        {
          'occurrenceDateTime': FhirDateTimeBuilder.fromJson,
          'occurrencePeriod': PeriodBuilder.fromJson,
          'occurrenceString': FhirStringBuilder.fromJson,
          'occurrenceAge': AgeBuilder.fromJson,
          'occurrenceRange': RangeBuilder.fromJson,
          'occurrenceTiming': TimingBuilder.fromJson,
        },
        objectPath,
      ),
      recorded: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'recorded',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.recorded',
      ),
      recorder: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'recorder',
        ReferenceBuilder.fromJson,
        '$objectPath.recorder',
      ),
      reportedX: JsonParser.parsePolymorphic<ReportedXProcedureBuilder>(
        json,
        {
          'reportedBoolean': FhirBooleanBuilder.fromJson,
          'reportedReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<ProcedurePerformerBuilder>(
            (v) => ProcedurePerformerBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.performer',
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
      bodySite: (json['bodySite'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.bodySite',
              },
            ),
          )
          .toList(),
      outcome: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'outcome',
        CodeableConceptBuilder.fromJson,
        '$objectPath.outcome',
      ),
      report: (json['report'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.report',
              },
            ),
          )
          .toList(),
      complication: (json['complication'] as List<dynamic>?)
          ?.map<CodeableReferenceBuilder>(
            (v) => CodeableReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.complication',
              },
            ),
          )
          .toList(),
      followUp: (json['followUp'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.followUp',
              },
            ),
          )
          .toList(),
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
      focalDevice: (json['focalDevice'] as List<dynamic>?)
          ?.map<ProcedureFocalDeviceBuilder>(
            (v) => ProcedureFocalDeviceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.focalDevice',
              },
            ),
          )
          .toList(),
      used: (json['used'] as List<dynamic>?)
          ?.map<CodeableReferenceBuilder>(
            (v) => CodeableReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.used',
              },
            ),
          )
          .toList(),
      supportingInfo: (json['supportingInfo'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.supportingInfo',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ProcedureBuilder]
  /// from a [String] or [YamlMap] object
  factory ProcedureBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ProcedureBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ProcedureBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ProcedureBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ProcedureBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ProcedureBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ProcedureBuilder.fromJson(json);
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
  List<IdentifierBuilder>? identifier;

  /// [instantiatesCanonical]
  /// The URL pointing to a FHIR-defined protocol, guideline, order set or
  /// other definition that is adhered to in whole or in part by this
  /// Procedure.
  List<FhirCanonicalBuilder>? instantiatesCanonical;

  /// [instantiatesUri]
  /// The URL pointing to an externally maintained protocol, guideline, order
  /// set or other definition that is adhered to in whole or in part by this
  /// Procedure.
  List<FhirUriBuilder>? instantiatesUri;

  /// [basedOn]
  /// A reference to a resource that contains details of the request for this
  /// procedure.
  List<ReferenceBuilder>? basedOn;

  /// [partOf]
  /// A larger event of which this particular procedure is a component or
  /// step.
  List<ReferenceBuilder>? partOf;

  /// [status]
  /// A code specifying the state of the procedure. Generally, this will be
  /// the in-progress or completed state.
  EventStatusBuilder? status;

  /// [statusReason]
  /// Captures the reason for the current state of the procedure.
  CodeableConceptBuilder? statusReason;

  /// [category]
  /// A code that classifies the procedure for searching, sorting and display
  /// purposes (e.g. "Surgical Procedure").
  List<CodeableConceptBuilder>? category;

  /// [code]
  /// The specific procedure that is performed. Use text if the exact nature
  /// of the procedure cannot be coded (e.g. "Laparoscopic Appendectomy").
  CodeableConceptBuilder? code;

  /// [subject]
  /// On whom or on what the procedure was performed. This is usually an
  /// individual human, but can also be performed on animals, groups of
  /// humans or animals, organizations or practitioners (for licensing),
  /// locations or devices (for safety inspections or regulatory
  /// authorizations). If the actual focus of the procedure is different from
  /// the subject, the focus element specifies the actual focus of the
  /// procedure.
  ReferenceBuilder? subject;

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
  ReferenceBuilder? focus;

  /// [encounter]
  /// The Encounter during which this Procedure was created or performed or
  /// to which the creation of this record is tightly associated.
  ReferenceBuilder? encounter;

  /// [occurrenceX]
  /// Estimated or actual date, date-time, period, or age when the procedure
  /// did occur or is occurring. Allows a period to support complex
  /// procedures that span more than one date, and also allows for the length
  /// of the procedure to be captured.
  OccurrenceXProcedureBuilder? occurrenceX;

  /// Getter for [occurrenceDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get occurrenceDateTime =>
      occurrenceX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [occurrencePeriod] as a PeriodBuilder
  PeriodBuilder? get occurrencePeriod => occurrenceX?.isAs<PeriodBuilder>();

  /// Getter for [occurrenceString] as a FhirStringBuilder
  FhirStringBuilder? get occurrenceString =>
      occurrenceX?.isAs<FhirStringBuilder>();

  /// Getter for [occurrenceAge] as a AgeBuilder
  AgeBuilder? get occurrenceAge => occurrenceX?.isAs<AgeBuilder>();

  /// Getter for [occurrenceRange] as a RangeBuilder
  RangeBuilder? get occurrenceRange => occurrenceX?.isAs<RangeBuilder>();

  /// Getter for [occurrenceTiming] as a TimingBuilder
  TimingBuilder? get occurrenceTiming => occurrenceX?.isAs<TimingBuilder>();

  /// [recorded]
  /// The date the occurrence of the procedure was first captured in the
  /// record regardless of Procedure.status (potentially after the occurrence
  /// of the event).
  FhirDateTimeBuilder? recorded;

  /// [recorder]
  /// Individual who recorded the record and takes responsibility for its
  /// content.
  ReferenceBuilder? recorder;

  /// [reportedX]
  /// Indicates if this record was captured as a secondary 'reported' record
  /// rather than as an original primary source-of-truth record. It may also
  /// indicate the source of the report.
  ReportedXProcedureBuilder? reportedX;

  /// Getter for [reportedBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get reportedBoolean =>
      reportedX?.isAs<FhirBooleanBuilder>();

  /// Getter for [reportedReference] as a ReferenceBuilder
  ReferenceBuilder? get reportedReference =>
      reportedX?.isAs<ReferenceBuilder>();

  /// [performer]
  /// Indicates who or what performed the procedure and how they were
  /// involved.
  List<ProcedurePerformerBuilder>? performer;

  /// [location]
  /// The location where the procedure actually happened. E.g. a newborn at
  /// home, a tracheostomy at a restaurant.
  ReferenceBuilder? location;

  /// [reason]
  /// The coded reason or reference why the procedure was performed. This may
  /// be a coded entity of some type, be present as text, or be a reference
  /// to one of several resources that justify the procedure.
  List<CodeableReferenceBuilder>? reason;

  /// [bodySite]
  /// Detailed and structured anatomical location information. Multiple
  /// locations are allowed - e.g. multiple punch biopsies of a lesion.
  List<CodeableConceptBuilder>? bodySite;

  /// [outcome]
  /// The outcome of the procedure - did it resolve the reasons for the
  /// procedure being performed?
  CodeableConceptBuilder? outcome;

  /// [report]
  /// This could be a histology result, pathology report, surgical report,
  /// etc.
  List<ReferenceBuilder>? report;

  /// [complication]
  /// Any complications that occurred during the procedure, or in the
  /// immediate post-performance period. These are generally tracked
  /// separately from the notes, which will typically describe the procedure
  /// itself rather than any 'post procedure' issues.
  List<CodeableReferenceBuilder>? complication;

  /// [followUp]
  /// If the procedure required specific follow up - e.g. removal of sutures.
  /// The follow up may be represented as a simple note or could potentially
  /// be more complex, in which case the CarePlan resource can be used.
  List<CodeableConceptBuilder>? followUp;

  /// [note]
  /// Any other notes and comments about the procedure.
  List<AnnotationBuilder>? note;

  /// [focalDevice]
  /// A device that is implanted, removed or otherwise manipulated
  /// (calibration, battery replacement, fitting a prosthesis, attaching a
  /// wound-vac, etc.) as a focal portion of the Procedure.
  List<ProcedureFocalDeviceBuilder>? focalDevice;

  /// [used]
  /// Identifies medications, devices and any other substance used as part of
  /// the procedure.
  List<CodeableReferenceBuilder>? used;

  /// [supportingInfo]
  /// Other resources from the patient record that may be relevant to the
  /// procedure. The information from these resources was either used to
  /// create the instance or is provided to help with its interpretation.
  /// This extension should not be used if more specific inline elements or
  /// extensions are available.
  List<ReferenceBuilder>? supportingInfo;

  /// Converts a [ProcedureBuilder]
  /// to [Procedure]
  @override
  Procedure build() => Procedure.fromJson(toJson());

  /// Converts a [ProcedureBuilder]
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
    addField('instantiatesCanonical', instantiatesCanonical);
    addField('instantiatesUri', instantiatesUri);
    addField('basedOn', basedOn);
    addField('partOf', partOf);
    addField('status', status);
    addField('statusReason', statusReason);
    addField('category', category);
    addField('code', code);
    addField('subject', subject);
    addField('focus', focus);
    addField('encounter', encounter);
    if (occurrenceX != null) {
      final fhirType = occurrenceX!.fhirType;
      addField('occurrence${fhirType.capitalizeFirstLetter()}', occurrenceX);
    }

    addField('recorded', recorded);
    addField('recorder', recorder);
    if (reportedX != null) {
      final fhirType = reportedX!.fhirType;
      addField('reported${fhirType.capitalizeFirstLetter()}', reportedX);
    }

    addField('performer', performer);
    addField('location', location);
    addField('reason', reason);
    addField('bodySite', bodySite);
    addField('outcome', outcome);
    addField('report', report);
    addField('complication', complication);
    addField('followUp', followUp);
    addField('note', note);
    addField('focalDevice', focalDevice);
    addField('used', used);
    addField('supportingInfo', supportingInfo);
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
        if (status != null) {
          fields.add(status!);
        }
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
        if (subject != null) {
          fields.add(subject!);
        }
      case 'focus':
        if (focus != null) {
          fields.add(focus!);
        }
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'occurrence':
        if (occurrenceX != null) {
          fields.add(occurrenceX!);
        }
      case 'occurrenceX':
        if (occurrenceX != null) {
          fields.add(occurrenceX!);
        }
      case 'occurrenceDateTime':
        if (occurrenceX is FhirDateTimeBuilder) {
          fields.add(occurrenceX!);
        }
      case 'occurrencePeriod':
        if (occurrenceX is PeriodBuilder) {
          fields.add(occurrenceX!);
        }
      case 'occurrenceString':
        if (occurrenceX is FhirStringBuilder) {
          fields.add(occurrenceX!);
        }
      case 'occurrenceAge':
        if (occurrenceX is AgeBuilder) {
          fields.add(occurrenceX!);
        }
      case 'occurrenceRange':
        if (occurrenceX is RangeBuilder) {
          fields.add(occurrenceX!);
        }
      case 'occurrenceTiming':
        if (occurrenceX is TimingBuilder) {
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
        if (reportedX != null) {
          fields.add(reportedX!);
        }
      case 'reportedX':
        if (reportedX != null) {
          fields.add(reportedX!);
        }
      case 'reportedBoolean':
        if (reportedX is FhirBooleanBuilder) {
          fields.add(reportedX!);
        }
      case 'reportedReference':
        if (reportedX is ReferenceBuilder) {
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
      case 'instantiatesCanonical':
        {
          if (child is List<FhirCanonicalBuilder>) {
            // Replace or create new list
            instantiatesCanonical = child;
            return;
          } else if (child is FhirCanonicalBuilder) {
            // Add single element to existing list or create new list
            instantiatesCanonical = [
              ...(instantiatesCanonical ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirCanonicalBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirCanonicalBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              instantiatesCanonical = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                instantiatesCanonical = [
                  ...(instantiatesCanonical ?? []),
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
      case 'instantiatesUri':
        {
          if (child is List<FhirUriBuilder>) {
            // Replace or create new list
            instantiatesUri = child;
            return;
          } else if (child is FhirUriBuilder) {
            // Add single element to existing list or create new list
            instantiatesUri = [
              ...(instantiatesUri ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirUriBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirUriBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              instantiatesUri = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                instantiatesUri = [
                  ...(instantiatesUri ?? []),
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
      case 'partOf':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            partOf = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            partOf = [
              ...(partOf ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is EventStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = EventStatusBuilder(stringValue);
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
      case 'statusReason':
        {
          if (child is CodeableConceptBuilder) {
            statusReason = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'category':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            category = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            category = [
              ...(category ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'code':
        {
          if (child is CodeableConceptBuilder) {
            code = child;
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
      case 'focus':
        {
          if (child is ReferenceBuilder) {
            focus = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'encounter':
        {
          if (child is ReferenceBuilder) {
            encounter = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'occurrence':
      case 'occurrenceX':
        {
          if (child is OccurrenceXProcedureBuilder) {
            occurrenceX = child;
            return;
          } else {
            if (child is FhirDateTimeBuilder) {
              occurrenceX = child;
              return;
            }
            if (child is PeriodBuilder) {
              occurrenceX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              occurrenceX = child;
              return;
            }
            if (child is AgeBuilder) {
              occurrenceX = child;
              return;
            }
            if (child is RangeBuilder) {
              occurrenceX = child;
              return;
            }
            if (child is TimingBuilder) {
              occurrenceX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'occurrenceDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            occurrenceX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'occurrencePeriod':
        {
          if (child is PeriodBuilder) {
            occurrenceX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'occurrenceString':
        {
          if (child is FhirStringBuilder) {
            occurrenceX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'occurrenceAge':
        {
          if (child is AgeBuilder) {
            occurrenceX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'occurrenceRange':
        {
          if (child is RangeBuilder) {
            occurrenceX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'occurrenceTiming':
        {
          if (child is TimingBuilder) {
            occurrenceX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'recorded':
        {
          if (child is FhirDateTimeBuilder) {
            recorded = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                recorded = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'recorder':
        {
          if (child is ReferenceBuilder) {
            recorder = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reported':
      case 'reportedX':
        {
          if (child is ReportedXProcedureBuilder) {
            reportedX = child;
            return;
          } else {
            if (child is FhirBooleanBuilder) {
              reportedX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              reportedX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reportedBoolean':
        {
          if (child is FhirBooleanBuilder) {
            reportedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reportedReference':
        {
          if (child is ReferenceBuilder) {
            reportedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'performer':
        {
          if (child is List<ProcedurePerformerBuilder>) {
            // Replace or create new list
            performer = child;
            return;
          } else if (child is ProcedurePerformerBuilder) {
            // Add single element to existing list or create new list
            performer = [
              ...(performer ?? []),
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
      case 'bodySite':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            bodySite = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            bodySite = [
              ...(bodySite ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'outcome':
        {
          if (child is CodeableConceptBuilder) {
            outcome = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'report':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            report = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            report = [
              ...(report ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'complication':
        {
          if (child is List<CodeableReferenceBuilder>) {
            // Replace or create new list
            complication = child;
            return;
          } else if (child is CodeableReferenceBuilder) {
            // Add single element to existing list or create new list
            complication = [
              ...(complication ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'followUp':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            followUp = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            followUp = [
              ...(followUp ?? []),
              child,
            ];
            return;
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
      case 'focalDevice':
        {
          if (child is List<ProcedureFocalDeviceBuilder>) {
            // Replace or create new list
            focalDevice = child;
            return;
          } else if (child is ProcedureFocalDeviceBuilder) {
            // Add single element to existing list or create new list
            focalDevice = [
              ...(focalDevice ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'used':
        {
          if (child is List<CodeableReferenceBuilder>) {
            // Replace or create new list
            used = child;
            return;
          } else if (child is CodeableReferenceBuilder) {
            // Add single element to existing list or create new list
            used = [
              ...(used ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'supportingInfo':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            supportingInfo = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            supportingInfo = [
              ...(supportingInfo ?? []),
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
      case 'instantiatesCanonical':
        return ['FhirCanonicalBuilder'];
      case 'instantiatesUri':
        return ['FhirUriBuilder'];
      case 'basedOn':
        return ['ReferenceBuilder'];
      case 'partOf':
        return ['ReferenceBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'statusReason':
        return ['CodeableConceptBuilder'];
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'subject':
        return ['ReferenceBuilder'];
      case 'focus':
        return ['ReferenceBuilder'];
      case 'encounter':
        return ['ReferenceBuilder'];
      case 'occurrence':
      case 'occurrenceX':
        return [
          'FhirDateTimeBuilder',
          'PeriodBuilder',
          'FhirStringBuilder',
          'AgeBuilder',
          'RangeBuilder',
          'TimingBuilder',
        ];
      case 'occurrenceDateTime':
        return ['FhirDateTimeBuilder'];
      case 'occurrencePeriod':
        return ['PeriodBuilder'];
      case 'occurrenceString':
        return ['FhirStringBuilder'];
      case 'occurrenceAge':
        return ['AgeBuilder'];
      case 'occurrenceRange':
        return ['RangeBuilder'];
      case 'occurrenceTiming':
        return ['TimingBuilder'];
      case 'recorded':
        return ['FhirDateTimeBuilder'];
      case 'recorder':
        return ['ReferenceBuilder'];
      case 'reported':
      case 'reportedX':
        return [
          'FhirBooleanBuilder',
          'ReferenceBuilder',
        ];
      case 'reportedBoolean':
        return ['FhirBooleanBuilder'];
      case 'reportedReference':
        return ['ReferenceBuilder'];
      case 'performer':
        return ['ProcedurePerformerBuilder'];
      case 'location':
        return ['ReferenceBuilder'];
      case 'reason':
        return ['CodeableReferenceBuilder'];
      case 'bodySite':
        return ['CodeableConceptBuilder'];
      case 'outcome':
        return ['CodeableConceptBuilder'];
      case 'report':
        return ['ReferenceBuilder'];
      case 'complication':
        return ['CodeableReferenceBuilder'];
      case 'followUp':
        return ['CodeableConceptBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      case 'focalDevice':
        return ['ProcedureFocalDeviceBuilder'];
      case 'used':
        return ['CodeableReferenceBuilder'];
      case 'supportingInfo':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ProcedureBuilder]
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
      case 'instantiatesCanonical':
        {
          instantiatesCanonical = <FhirCanonicalBuilder>[];
          return;
        }
      case 'instantiatesUri':
        {
          instantiatesUri = <FhirUriBuilder>[];
          return;
        }
      case 'basedOn':
        {
          basedOn = <ReferenceBuilder>[];
          return;
        }
      case 'partOf':
        {
          partOf = <ReferenceBuilder>[];
          return;
        }
      case 'status':
        {
          status = EventStatusBuilder.empty();
          return;
        }
      case 'statusReason':
        {
          statusReason = CodeableConceptBuilder.empty();
          return;
        }
      case 'category':
        {
          category = <CodeableConceptBuilder>[];
          return;
        }
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
          return;
        }
      case 'subject':
        {
          subject = ReferenceBuilder.empty();
          return;
        }
      case 'focus':
        {
          focus = ReferenceBuilder.empty();
          return;
        }
      case 'encounter':
        {
          encounter = ReferenceBuilder.empty();
          return;
        }
      case 'occurrence':
      case 'occurrenceX':
      case 'occurrenceDateTime':
        {
          occurrenceX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'occurrencePeriod':
        {
          occurrenceX = PeriodBuilder.empty();
          return;
        }
      case 'occurrenceString':
        {
          occurrenceX = FhirStringBuilder.empty();
          return;
        }
      case 'occurrenceAge':
        {
          occurrenceX = AgeBuilder.empty();
          return;
        }
      case 'occurrenceRange':
        {
          occurrenceX = RangeBuilder.empty();
          return;
        }
      case 'occurrenceTiming':
        {
          occurrenceX = TimingBuilder.empty();
          return;
        }
      case 'recorded':
        {
          recorded = FhirDateTimeBuilder.empty();
          return;
        }
      case 'recorder':
        {
          recorder = ReferenceBuilder.empty();
          return;
        }
      case 'reported':
      case 'reportedX':
      case 'reportedBoolean':
        {
          reportedX = FhirBooleanBuilder.empty();
          return;
        }
      case 'reportedReference':
        {
          reportedX = ReferenceBuilder.empty();
          return;
        }
      case 'performer':
        {
          performer = <ProcedurePerformerBuilder>[];
          return;
        }
      case 'location':
        {
          location = ReferenceBuilder.empty();
          return;
        }
      case 'reason':
        {
          reason = <CodeableReferenceBuilder>[];
          return;
        }
      case 'bodySite':
        {
          bodySite = <CodeableConceptBuilder>[];
          return;
        }
      case 'outcome':
        {
          outcome = CodeableConceptBuilder.empty();
          return;
        }
      case 'report':
        {
          report = <ReferenceBuilder>[];
          return;
        }
      case 'complication':
        {
          complication = <CodeableReferenceBuilder>[];
          return;
        }
      case 'followUp':
        {
          followUp = <CodeableConceptBuilder>[];
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      case 'focalDevice':
        {
          focalDevice = <ProcedureFocalDeviceBuilder>[];
          return;
        }
      case 'used':
        {
          used = <CodeableReferenceBuilder>[];
          return;
        }
      case 'supportingInfo':
        {
          supportingInfo = <ReferenceBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ProcedureBuilder clone() => throw UnimplementedError();
  @override
  ProcedureBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    List<FhirCanonicalBuilder>? instantiatesCanonical,
    List<FhirUriBuilder>? instantiatesUri,
    List<ReferenceBuilder>? basedOn,
    List<ReferenceBuilder>? partOf,
    EventStatusBuilder? status,
    CodeableConceptBuilder? statusReason,
    List<CodeableConceptBuilder>? category,
    CodeableConceptBuilder? code,
    ReferenceBuilder? subject,
    ReferenceBuilder? focus,
    ReferenceBuilder? encounter,
    OccurrenceXProcedureBuilder? occurrenceX,
    FhirDateTimeBuilder? recorded,
    ReferenceBuilder? recorder,
    ReportedXProcedureBuilder? reportedX,
    List<ProcedurePerformerBuilder>? performer,
    ReferenceBuilder? location,
    List<CodeableReferenceBuilder>? reason,
    List<CodeableConceptBuilder>? bodySite,
    CodeableConceptBuilder? outcome,
    List<ReferenceBuilder>? report,
    List<CodeableReferenceBuilder>? complication,
    List<CodeableConceptBuilder>? followUp,
    List<AnnotationBuilder>? note,
    List<ProcedureFocalDeviceBuilder>? focalDevice,
    List<CodeableReferenceBuilder>? used,
    List<ReferenceBuilder>? supportingInfo,
    FhirDateTimeBuilder? occurrenceDateTime,
    PeriodBuilder? occurrencePeriod,
    FhirStringBuilder? occurrenceString,
    AgeBuilder? occurrenceAge,
    RangeBuilder? occurrenceRange,
    TimingBuilder? occurrenceTiming,
    FhirBooleanBuilder? reportedBoolean,
    ReferenceBuilder? reportedReference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = ProcedureBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      instantiatesCanonical:
          instantiatesCanonical ?? this.instantiatesCanonical,
      instantiatesUri: instantiatesUri ?? this.instantiatesUri,
      basedOn: basedOn ?? this.basedOn,
      partOf: partOf ?? this.partOf,
      status: status ?? this.status,
      statusReason: statusReason ?? this.statusReason,
      category: category ?? this.category,
      code: code ?? this.code,
      subject: subject ?? this.subject,
      focus: focus ?? this.focus,
      encounter: encounter ?? this.encounter,
      occurrenceX: occurrenceX ??
          occurrenceDateTime ??
          occurrencePeriod ??
          occurrenceString ??
          occurrenceAge ??
          occurrenceRange ??
          occurrenceTiming ??
          this.occurrenceX,
      recorded: recorded ?? this.recorded,
      recorder: recorder ?? this.recorder,
      reportedX:
          reportedX ?? reportedBoolean ?? reportedReference ?? this.reportedX,
      performer: performer ?? this.performer,
      location: location ?? this.location,
      reason: reason ?? this.reason,
      bodySite: bodySite ?? this.bodySite,
      outcome: outcome ?? this.outcome,
      report: report ?? this.report,
      complication: complication ?? this.complication,
      followUp: followUp ?? this.followUp,
      note: note ?? this.note,
      focalDevice: focalDevice ?? this.focalDevice,
      used: used ?? this.used,
      supportingInfo: supportingInfo ?? this.supportingInfo,
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
    if (o is! ProcedureBuilder) {
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
    if (!listEquals<FhirCanonicalBuilder>(
      instantiatesCanonical,
      o.instantiatesCanonical,
    )) {
      return false;
    }
    if (!listEquals<FhirUriBuilder>(
      instantiatesUri,
      o.instantiatesUri,
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
    if (!listEquals<CodeableConceptBuilder>(
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
    if (!listEquals<ProcedurePerformerBuilder>(
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
    if (!listEquals<CodeableReferenceBuilder>(
      reason,
      o.reason,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
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
    if (!listEquals<ReferenceBuilder>(
      report,
      o.report,
    )) {
      return false;
    }
    if (!listEquals<CodeableReferenceBuilder>(
      complication,
      o.complication,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      followUp,
      o.followUp,
    )) {
      return false;
    }
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<ProcedureFocalDeviceBuilder>(
      focalDevice,
      o.focalDevice,
    )) {
      return false;
    }
    if (!listEquals<CodeableReferenceBuilder>(
      used,
      o.used,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      supportingInfo,
      o.supportingInfo,
    )) {
      return false;
    }
    return true;
  }
}

/// [ProcedurePerformerBuilder]
/// Indicates who or what performed the procedure and how they were
/// involved.
class ProcedurePerformerBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ProcedurePerformerBuilder]

  ProcedurePerformerBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    this.actor,
    this.onBehalfOf,
    this.period,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Procedure.performer',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ProcedurePerformerBuilder.empty() => ProcedurePerformerBuilder(
        actor: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ProcedurePerformerBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Procedure.performer';
    return ProcedurePerformerBuilder(
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
      function_: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'function',
        CodeableConceptBuilder.fromJson,
        '$objectPath.function',
      ),
      actor: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'actor',
        ReferenceBuilder.fromJson,
        '$objectPath.actor',
      ),
      onBehalfOf: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'onBehalfOf',
        ReferenceBuilder.fromJson,
        '$objectPath.onBehalfOf',
      ),
      period: JsonParser.parseObject<PeriodBuilder>(
        json,
        'period',
        PeriodBuilder.fromJson,
        '$objectPath.period',
      ),
    );
  }

  /// Deserialize [ProcedurePerformerBuilder]
  /// from a [String] or [YamlMap] object
  factory ProcedurePerformerBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ProcedurePerformerBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ProcedurePerformerBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ProcedurePerformerBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ProcedurePerformerBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ProcedurePerformerBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ProcedurePerformerBuilder.fromJson(json);
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
  CodeableConceptBuilder? function_;

  /// [actor]
  /// Indicates who or what performed the procedure.
  ReferenceBuilder? actor;

  /// [onBehalfOf]
  /// The Organization the Patient, RelatedPerson, Device, CareTeam, and
  /// HealthcareService was acting on behalf of.
  ReferenceBuilder? onBehalfOf;

  /// [period]
  /// Time period during which the performer performed the procedure.
  PeriodBuilder? period;

  /// Converts a [ProcedurePerformerBuilder]
  /// to [ProcedurePerformer]
  @override
  ProcedurePerformer build() => ProcedurePerformer.fromJson(toJson());

  /// Converts a [ProcedurePerformerBuilder]
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
    addField('function', function_);
    addField('actor', actor);
    addField('onBehalfOf', onBehalfOf);
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
      'function',
      'actor',
      'onBehalfOf',
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
      case 'function':
        if (function_ != null) {
          fields.add(function_!);
        }
      case 'actor':
        if (actor != null) {
          fields.add(actor!);
        }
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
      case 'function':
        {
          if (child is CodeableConceptBuilder) {
            function_ = child;
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
      case 'onBehalfOf':
        {
          if (child is ReferenceBuilder) {
            onBehalfOf = child;
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
      case 'function':
        return ['CodeableConceptBuilder'];
      case 'actor':
        return ['ReferenceBuilder'];
      case 'onBehalfOf':
        return ['ReferenceBuilder'];
      case 'period':
        return ['PeriodBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ProcedurePerformerBuilder]
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
      case 'function':
        {
          function_ = CodeableConceptBuilder.empty();
          return;
        }
      case 'actor':
        {
          actor = ReferenceBuilder.empty();
          return;
        }
      case 'onBehalfOf':
        {
          onBehalfOf = ReferenceBuilder.empty();
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
  ProcedurePerformerBuilder clone() => throw UnimplementedError();
  @override
  ProcedurePerformerBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? function_,
    ReferenceBuilder? actor,
    ReferenceBuilder? onBehalfOf,
    PeriodBuilder? period,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ProcedurePerformerBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      function_: function_ ?? this.function_,
      actor: actor ?? this.actor,
      onBehalfOf: onBehalfOf ?? this.onBehalfOf,
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
    if (o is! ProcedurePerformerBuilder) {
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

/// [ProcedureFocalDeviceBuilder]
/// A device that is implanted, removed or otherwise manipulated
/// (calibration, battery replacement, fitting a prosthesis, attaching a
/// wound-vac, etc.) as a focal portion of the Procedure.
class ProcedureFocalDeviceBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ProcedureFocalDeviceBuilder]

  ProcedureFocalDeviceBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.action,
    this.manipulated,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Procedure.focalDevice',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ProcedureFocalDeviceBuilder.empty() => ProcedureFocalDeviceBuilder(
        manipulated: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ProcedureFocalDeviceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Procedure.focalDevice';
    return ProcedureFocalDeviceBuilder(
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
      action: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'action',
        CodeableConceptBuilder.fromJson,
        '$objectPath.action',
      ),
      manipulated: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'manipulated',
        ReferenceBuilder.fromJson,
        '$objectPath.manipulated',
      ),
    );
  }

  /// Deserialize [ProcedureFocalDeviceBuilder]
  /// from a [String] or [YamlMap] object
  factory ProcedureFocalDeviceBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ProcedureFocalDeviceBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ProcedureFocalDeviceBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ProcedureFocalDeviceBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ProcedureFocalDeviceBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ProcedureFocalDeviceBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ProcedureFocalDeviceBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ProcedureFocalDevice';

  /// [action]
  /// The kind of change that happened to the device during the procedure.
  CodeableConceptBuilder? action;

  /// [manipulated]
  /// The device that was manipulated (changed) during the procedure.
  ReferenceBuilder? manipulated;

  /// Converts a [ProcedureFocalDeviceBuilder]
  /// to [ProcedureFocalDevice]
  @override
  ProcedureFocalDevice build() => ProcedureFocalDevice.fromJson(toJson());

  /// Converts a [ProcedureFocalDeviceBuilder]
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
    addField('action', action);
    addField('manipulated', manipulated);
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
      case 'action':
        if (action != null) {
          fields.add(action!);
        }
      case 'manipulated':
        if (manipulated != null) {
          fields.add(manipulated!);
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
      case 'action':
        {
          if (child is CodeableConceptBuilder) {
            action = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'manipulated':
        {
          if (child is ReferenceBuilder) {
            manipulated = child;
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
      case 'action':
        return ['CodeableConceptBuilder'];
      case 'manipulated':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ProcedureFocalDeviceBuilder]
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
      case 'action':
        {
          action = CodeableConceptBuilder.empty();
          return;
        }
      case 'manipulated':
        {
          manipulated = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ProcedureFocalDeviceBuilder clone() => throw UnimplementedError();
  @override
  ProcedureFocalDeviceBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? action,
    ReferenceBuilder? manipulated,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ProcedureFocalDeviceBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      action: action ?? this.action,
      manipulated: manipulated ?? this.manipulated,
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
    if (o is! ProcedureFocalDeviceBuilder) {
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
