import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        MedicationRequest,
        MedicationRequestDispenseRequest,
        MedicationRequestInitialFill,
        MedicationRequestSubstitution,
        R5ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [MedicationRequestBuilder]
/// An order or request for both supply of the medication and the
/// instructions for administration of the medication to a patient. The
/// resource is called "MedicationRequest" rather than
/// "MedicationPrescription" or "MedicationOrder" to generalize the use
/// across inpatient and outpatient settings, including care plans, etc.,
/// and to harmonize with workflow patterns.
class MedicationRequestBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [MedicationRequestBuilder]

  MedicationRequestBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.basedOn,
    this.priorPrescription,
    this.groupIdentifier,
    this.status,
    this.statusReason,
    this.statusChanged,
    this.intent,
    this.category,
    this.priority,
    this.doNotPerform,
    this.medication,
    this.subject,
    this.informationSource,
    this.encounter,
    this.supportingInformation,
    this.authoredOn,
    this.requester,
    this.reported,
    this.performerType,
    this.performer,
    this.device,
    this.recorder,
    this.reason,
    this.courseOfTherapyType,
    this.insurance,
    this.note,
    this.renderedDosageInstruction,
    this.effectiveDosePeriod,
    this.dosageInstruction,
    this.dispenseRequest,
    this.substitution,
    this.eventHistory,
  }) : super(
          objectPath: 'MedicationRequest',
          resourceType: R5ResourceType.MedicationRequest,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicationRequestBuilder.empty() => MedicationRequestBuilder(
        status: MedicationrequestStatusBuilder.values.first,
        intent: MedicationRequestIntentBuilder.values.first,
        medication: CodeableReferenceBuilder.empty(),
        subject: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationRequestBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationRequest';
    return MedicationRequestBuilder(
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
      priorPrescription: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'priorPrescription',
        ReferenceBuilder.fromJson,
        '$objectPath.priorPrescription',
      ),
      groupIdentifier: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'groupIdentifier',
        IdentifierBuilder.fromJson,
        '$objectPath.groupIdentifier',
      ),
      status: JsonParser.parsePrimitive<MedicationrequestStatusBuilder>(
        json,
        'status',
        MedicationrequestStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      statusReason: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'statusReason',
        CodeableConceptBuilder.fromJson,
        '$objectPath.statusReason',
      ),
      statusChanged: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'statusChanged',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.statusChanged',
      ),
      intent: JsonParser.parsePrimitive<MedicationRequestIntentBuilder>(
        json,
        'intent',
        MedicationRequestIntentBuilder.fromJson,
        '$objectPath.intent',
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
      priority: JsonParser.parsePrimitive<RequestPriorityBuilder>(
        json,
        'priority',
        RequestPriorityBuilder.fromJson,
        '$objectPath.priority',
      ),
      doNotPerform: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'doNotPerform',
        FhirBooleanBuilder.fromJson,
        '$objectPath.doNotPerform',
      ),
      medication: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'medication',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.medication',
      ),
      subject: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'subject',
        ReferenceBuilder.fromJson,
        '$objectPath.subject',
      ),
      informationSource: (json['informationSource'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.informationSource',
              },
            ),
          )
          .toList(),
      encounter: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'encounter',
        ReferenceBuilder.fromJson,
        '$objectPath.encounter',
      ),
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
      authoredOn: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'authoredOn',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.authoredOn',
      ),
      requester: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'requester',
        ReferenceBuilder.fromJson,
        '$objectPath.requester',
      ),
      reported: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'reported',
        FhirBooleanBuilder.fromJson,
        '$objectPath.reported',
      ),
      performerType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'performerType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.performerType',
      ),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.performer',
              },
            ),
          )
          .toList(),
      device: (json['device'] as List<dynamic>?)
          ?.map<CodeableReferenceBuilder>(
            (v) => CodeableReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.device',
              },
            ),
          )
          .toList(),
      recorder: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'recorder',
        ReferenceBuilder.fromJson,
        '$objectPath.recorder',
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
      courseOfTherapyType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'courseOfTherapyType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.courseOfTherapyType',
      ),
      insurance: (json['insurance'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.insurance',
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
      renderedDosageInstruction: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'renderedDosageInstruction',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.renderedDosageInstruction',
      ),
      effectiveDosePeriod: JsonParser.parseObject<PeriodBuilder>(
        json,
        'effectiveDosePeriod',
        PeriodBuilder.fromJson,
        '$objectPath.effectiveDosePeriod',
      ),
      dosageInstruction: (json['dosageInstruction'] as List<dynamic>?)
          ?.map<DosageBuilder>(
            (v) => DosageBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.dosageInstruction',
              },
            ),
          )
          .toList(),
      dispenseRequest:
          JsonParser.parseObject<MedicationRequestDispenseRequestBuilder>(
        json,
        'dispenseRequest',
        MedicationRequestDispenseRequestBuilder.fromJson,
        '$objectPath.dispenseRequest',
      ),
      substitution:
          JsonParser.parseObject<MedicationRequestSubstitutionBuilder>(
        json,
        'substitution',
        MedicationRequestSubstitutionBuilder.fromJson,
        '$objectPath.substitution',
      ),
      eventHistory: (json['eventHistory'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.eventHistory',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MedicationRequestBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicationRequestBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationRequestBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationRequestBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationRequestBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationRequestBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationRequestBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationRequestBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationRequest';

  /// [identifier]
  /// Identifiers associated with this medication request that are defined by
  /// business processes and/or used to refer to it when a direct URL
  /// reference to the resource itself is not appropriate. They are business
  /// identifiers assigned to this resource by the performer or other systems
  /// and remain constant as the resource is updated and propagates from
  /// server to server.
  List<IdentifierBuilder>? identifier;

  /// [basedOn]
  /// A plan or request that is fulfilled in whole or in part by this
  /// medication request.
  List<ReferenceBuilder>? basedOn;

  /// [priorPrescription]
  /// Reference to an order/prescription that is being replaced by this
  /// MedicationRequest.
  ReferenceBuilder? priorPrescription;

  /// [groupIdentifier]
  /// A shared identifier common to multiple independent Request instances
  /// that were activated/authorized more or less simultaneously by a single
  /// author. The presence of the same identifier on each request ties those
  /// requests together and may have business ramifications in terms of
  /// reporting of results, billing, etc. E.g. a requisition number shared by
  /// a set of lab tests ordered together, or a prescription number shared by
  /// all meds ordered at one time.
  IdentifierBuilder? groupIdentifier;

  /// [status]
  /// A code specifying the current state of the order. Generally, this will
  /// be active or completed state.
  MedicationrequestStatusBuilder? status;

  /// [statusReason]
  /// Captures the reason for the current state of the MedicationRequest.
  CodeableConceptBuilder? statusReason;

  /// [statusChanged]
  /// The date (and perhaps time) when the status was changed.
  FhirDateTimeBuilder? statusChanged;

  /// [intent]
  /// Whether the request is a proposal, plan, or an original order.
  MedicationRequestIntentBuilder? intent;

  /// [category]
  /// An arbitrary categorization or grouping of the medication request. It
  /// could be used for indicating where meds are intended to be
  /// administered, eg. in an inpatient setting or in a patient's home, or a
  /// legal category of the medication.
  List<CodeableConceptBuilder>? category;

  /// [priority]
  /// Indicates how quickly the Medication Request should be addressed with
  /// respect to other requests.
  RequestPriorityBuilder? priority;

  /// [doNotPerform]
  /// If true, indicates that the provider is asking for the patient to
  /// either stop taking or to not start taking the specified medication. For
  /// example, the patient is taking an existing medication and the provider
  /// is changing their medication. They want to create two seperate
  /// requests: one to stop using the current medication and another to start
  /// the new medication.
  FhirBooleanBuilder? doNotPerform;

  /// [medication]
  /// Identifies the medication being requested. This is a link to a resource
  /// that represents the medication which may be the details of the
  /// medication or simply an attribute carrying a code that identifies the
  /// medication from a known list of medications.
  CodeableReferenceBuilder? medication;

  /// [subject]
  /// The individual or group for whom the medication has been requested.
  ReferenceBuilder? subject;

  /// [informationSource]
  /// The person or organization who provided the information about this
  /// request, if the source is someone other than the requestor. This is
  /// often used when the MedicationRequest is reported by another person.
  List<ReferenceBuilder>? informationSource;

  /// [encounter]
  /// The Encounter during which this [x] was created or to which the
  /// creation of this record is tightly associated.
  ReferenceBuilder? encounter;

  /// [supportingInformation]
  /// Information to support fulfilling (i.e. dispensing or administering) of
  /// the medication, for example, patient height and weight, a
  /// MedicationStatement for the patient).
  List<ReferenceBuilder>? supportingInformation;

  /// [authoredOn]
  /// The date (and perhaps time) when the prescription was initially written
  /// or authored on.
  FhirDateTimeBuilder? authoredOn;

  /// [requester]
  /// The individual, organization, or device that initiated the request and
  /// has responsibility for its activation.
  ReferenceBuilder? requester;

  /// [reported]
  /// Indicates if this record was captured as a secondary 'reported' record
  /// rather than as an original primary source-of-truth record. It may also
  /// indicate the source of the report.
  FhirBooleanBuilder? reported;

  /// [performerType]
  /// Indicates the type of performer of the administration of the
  /// medication.
  CodeableConceptBuilder? performerType;

  /// [performer]
  /// The specified desired performer of the medication treatment (e.g. the
  /// performer of the medication administration). For devices, this is the
  /// device that is intended to perform the administration of the
  /// medication. An IV Pump would be an example of a device that is
  /// performing the administration. Both the IV Pump and the practitioner
  /// that set the rate or bolus on the pump can be listed as performers.
  List<ReferenceBuilder>? performer;

  /// [device]
  /// The intended type of device that is to be used for the administration
  /// of the medication (for example, PCA Pump).
  List<CodeableReferenceBuilder>? device;

  /// [recorder]
  /// The person who entered the order on behalf of another individual for
  /// example in the case of a verbal or a telephone order.
  ReferenceBuilder? recorder;

  /// [reason]
  /// The reason or the indication for ordering or not ordering the
  /// medication.
  List<CodeableReferenceBuilder>? reason;

  /// [courseOfTherapyType]
  /// The description of the overall pattern of the administration of the
  /// medication to the patient.
  CodeableConceptBuilder? courseOfTherapyType;

  /// [insurance]
  /// Insurance plans, coverage extensions, pre-authorizations and/or
  /// pre-determinations that may be required for delivering the requested
  /// service.
  List<ReferenceBuilder>? insurance;

  /// [note]
  /// Extra information about the prescription that could not be conveyed by
  /// the other attributes.
  List<AnnotationBuilder>? note;

  /// [renderedDosageInstruction]
  /// The full representation of the dose of the medication included in all
  /// dosage instructions. To be used when multiple dosage instructions are
  /// included to represent complex dosing such as increasing or tapering
  /// doses.
  FhirMarkdownBuilder? renderedDosageInstruction;

  /// [effectiveDosePeriod]
  /// The period over which the medication is to be taken. Where there are
  /// multiple dosageInstruction lines (for example, tapering doses), this is
  /// the earliest date and the latest end date of the dosageInstructions.
  PeriodBuilder? effectiveDosePeriod;

  /// [dosageInstruction]
  /// Specific instructions for how the medication is to be used by the
  /// patient.
  List<DosageBuilder>? dosageInstruction;

  /// [dispenseRequest]
  /// Indicates the specific details for the dispense or medication supply
  /// part of a medication request (also known as a Medication Prescription
  /// or Medication Order). Note that this information is not always sent
  /// with the order. There may be in some settings (e.g. hospitals)
  /// institutional or system support for completing the dispense details in
  /// the pharmacy department.
  MedicationRequestDispenseRequestBuilder? dispenseRequest;

  /// [substitution]
  /// Indicates whether or not substitution can or should be part of the
  /// dispense. In some cases, substitution must happen, in other cases
  /// substitution must not happen. This block explains the prescriber's
  /// intent. If nothing is specified substitution may be done.
  MedicationRequestSubstitutionBuilder? substitution;

  /// [eventHistory]
  /// Links to Provenance records for past versions of this resource or
  /// fulfilling request or event resources that identify key state
  /// transitions or updates that are likely to be relevant to a user looking
  /// at the current version of the resource.
  List<ReferenceBuilder>? eventHistory;

  /// Converts a [MedicationRequestBuilder]
  /// to [MedicationRequest]
  @override
  MedicationRequest build() => MedicationRequest.fromJson(toJson());

  /// Converts a [MedicationRequestBuilder]
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
    addField('basedOn', basedOn);
    addField('priorPrescription', priorPrescription);
    addField('groupIdentifier', groupIdentifier);
    addField('status', status);
    addField('statusReason', statusReason);
    addField('statusChanged', statusChanged);
    addField('intent', intent);
    addField('category', category);
    addField('priority', priority);
    addField('doNotPerform', doNotPerform);
    addField('medication', medication);
    addField('subject', subject);
    addField('informationSource', informationSource);
    addField('encounter', encounter);
    addField('supportingInformation', supportingInformation);
    addField('authoredOn', authoredOn);
    addField('requester', requester);
    addField('reported', reported);
    addField('performerType', performerType);
    addField('performer', performer);
    addField('device', device);
    addField('recorder', recorder);
    addField('reason', reason);
    addField('courseOfTherapyType', courseOfTherapyType);
    addField('insurance', insurance);
    addField('note', note);
    addField('renderedDosageInstruction', renderedDosageInstruction);
    addField('effectiveDosePeriod', effectiveDosePeriod);
    addField('dosageInstruction', dosageInstruction);
    addField('dispenseRequest', dispenseRequest);
    addField('substitution', substitution);
    addField('eventHistory', eventHistory);
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
      'basedOn',
      'priorPrescription',
      'groupIdentifier',
      'status',
      'statusReason',
      'statusChanged',
      'intent',
      'category',
      'priority',
      'doNotPerform',
      'medication',
      'subject',
      'informationSource',
      'encounter',
      'supportingInformation',
      'authoredOn',
      'requester',
      'reported',
      'performerType',
      'performer',
      'device',
      'recorder',
      'reason',
      'courseOfTherapyType',
      'insurance',
      'note',
      'renderedDosageInstruction',
      'effectiveDosePeriod',
      'dosageInstruction',
      'dispenseRequest',
      'substitution',
      'eventHistory',
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
      case 'basedOn':
        if (basedOn != null) {
          fields.addAll(basedOn!);
        }
      case 'priorPrescription':
        if (priorPrescription != null) {
          fields.add(priorPrescription!);
        }
      case 'groupIdentifier':
        if (groupIdentifier != null) {
          fields.add(groupIdentifier!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'statusReason':
        if (statusReason != null) {
          fields.add(statusReason!);
        }
      case 'statusChanged':
        if (statusChanged != null) {
          fields.add(statusChanged!);
        }
      case 'intent':
        if (intent != null) {
          fields.add(intent!);
        }
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'priority':
        if (priority != null) {
          fields.add(priority!);
        }
      case 'doNotPerform':
        if (doNotPerform != null) {
          fields.add(doNotPerform!);
        }
      case 'medication':
        if (medication != null) {
          fields.add(medication!);
        }
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'informationSource':
        if (informationSource != null) {
          fields.addAll(informationSource!);
        }
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'supportingInformation':
        if (supportingInformation != null) {
          fields.addAll(supportingInformation!);
        }
      case 'authoredOn':
        if (authoredOn != null) {
          fields.add(authoredOn!);
        }
      case 'requester':
        if (requester != null) {
          fields.add(requester!);
        }
      case 'reported':
        if (reported != null) {
          fields.add(reported!);
        }
      case 'performerType':
        if (performerType != null) {
          fields.add(performerType!);
        }
      case 'performer':
        if (performer != null) {
          fields.addAll(performer!);
        }
      case 'device':
        if (device != null) {
          fields.addAll(device!);
        }
      case 'recorder':
        if (recorder != null) {
          fields.add(recorder!);
        }
      case 'reason':
        if (reason != null) {
          fields.addAll(reason!);
        }
      case 'courseOfTherapyType':
        if (courseOfTherapyType != null) {
          fields.add(courseOfTherapyType!);
        }
      case 'insurance':
        if (insurance != null) {
          fields.addAll(insurance!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'renderedDosageInstruction':
        if (renderedDosageInstruction != null) {
          fields.add(renderedDosageInstruction!);
        }
      case 'effectiveDosePeriod':
        if (effectiveDosePeriod != null) {
          fields.add(effectiveDosePeriod!);
        }
      case 'dosageInstruction':
        if (dosageInstruction != null) {
          fields.addAll(dosageInstruction!);
        }
      case 'dispenseRequest':
        if (dispenseRequest != null) {
          fields.add(dispenseRequest!);
        }
      case 'substitution':
        if (substitution != null) {
          fields.add(substitution!);
        }
      case 'eventHistory':
        if (eventHistory != null) {
          fields.addAll(eventHistory!);
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
      case 'priorPrescription':
        {
          if (child is ReferenceBuilder) {
            priorPrescription = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'groupIdentifier':
        {
          if (child is IdentifierBuilder) {
            groupIdentifier = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is MedicationrequestStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = MedicationrequestStatusBuilder(stringValue);
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
      case 'statusChanged':
        {
          if (child is FhirDateTimeBuilder) {
            statusChanged = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                statusChanged = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'intent':
        {
          if (child is MedicationRequestIntentBuilder) {
            intent = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = MedicationRequestIntentBuilder(stringValue);
                intent = converted;
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
      case 'priority':
        {
          if (child is RequestPriorityBuilder) {
            priority = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = RequestPriorityBuilder(stringValue);
                priority = converted;
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
      case 'doNotPerform':
        {
          if (child is FhirBooleanBuilder) {
            doNotPerform = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                doNotPerform = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'medication':
        {
          if (child is CodeableReferenceBuilder) {
            medication = child;
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
      case 'informationSource':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            informationSource = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            informationSource = [
              ...(informationSource ?? []),
              child,
            ];
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
      case 'authoredOn':
        {
          if (child is FhirDateTimeBuilder) {
            authoredOn = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                authoredOn = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'requester':
        {
          if (child is ReferenceBuilder) {
            requester = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reported':
        {
          if (child is FhirBooleanBuilder) {
            reported = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                reported = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'performerType':
        {
          if (child is CodeableConceptBuilder) {
            performerType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'performer':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            performer = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            performer = [
              ...(performer ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'device':
        {
          if (child is List<CodeableReferenceBuilder>) {
            // Replace or create new list
            device = child;
            return;
          } else if (child is CodeableReferenceBuilder) {
            // Add single element to existing list or create new list
            device = [
              ...(device ?? []),
              child,
            ];
            return;
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
      case 'courseOfTherapyType':
        {
          if (child is CodeableConceptBuilder) {
            courseOfTherapyType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'insurance':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            insurance = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            insurance = [
              ...(insurance ?? []),
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
      case 'renderedDosageInstruction':
        {
          if (child is FhirMarkdownBuilder) {
            renderedDosageInstruction = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                renderedDosageInstruction = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'effectiveDosePeriod':
        {
          if (child is PeriodBuilder) {
            effectiveDosePeriod = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'dosageInstruction':
        {
          if (child is List<DosageBuilder>) {
            // Replace or create new list
            dosageInstruction = child;
            return;
          } else if (child is DosageBuilder) {
            // Add single element to existing list or create new list
            dosageInstruction = [
              ...(dosageInstruction ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'dispenseRequest':
        {
          if (child is MedicationRequestDispenseRequestBuilder) {
            dispenseRequest = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'substitution':
        {
          if (child is MedicationRequestSubstitutionBuilder) {
            substitution = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'eventHistory':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            eventHistory = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            eventHistory = [
              ...(eventHistory ?? []),
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
      case 'basedOn':
        return ['ReferenceBuilder'];
      case 'priorPrescription':
        return ['ReferenceBuilder'];
      case 'groupIdentifier':
        return ['IdentifierBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'statusReason':
        return ['CodeableConceptBuilder'];
      case 'statusChanged':
        return ['FhirDateTimeBuilder'];
      case 'intent':
        return ['FhirCodeEnumBuilder'];
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'priority':
        return ['FhirCodeEnumBuilder'];
      case 'doNotPerform':
        return ['FhirBooleanBuilder'];
      case 'medication':
        return ['CodeableReferenceBuilder'];
      case 'subject':
        return ['ReferenceBuilder'];
      case 'informationSource':
        return ['ReferenceBuilder'];
      case 'encounter':
        return ['ReferenceBuilder'];
      case 'supportingInformation':
        return ['ReferenceBuilder'];
      case 'authoredOn':
        return ['FhirDateTimeBuilder'];
      case 'requester':
        return ['ReferenceBuilder'];
      case 'reported':
        return ['FhirBooleanBuilder'];
      case 'performerType':
        return ['CodeableConceptBuilder'];
      case 'performer':
        return ['ReferenceBuilder'];
      case 'device':
        return ['CodeableReferenceBuilder'];
      case 'recorder':
        return ['ReferenceBuilder'];
      case 'reason':
        return ['CodeableReferenceBuilder'];
      case 'courseOfTherapyType':
        return ['CodeableConceptBuilder'];
      case 'insurance':
        return ['ReferenceBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      case 'renderedDosageInstruction':
        return ['FhirMarkdownBuilder'];
      case 'effectiveDosePeriod':
        return ['PeriodBuilder'];
      case 'dosageInstruction':
        return ['DosageBuilder'];
      case 'dispenseRequest':
        return ['MedicationRequestDispenseRequestBuilder'];
      case 'substitution':
        return ['MedicationRequestSubstitutionBuilder'];
      case 'eventHistory':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationRequestBuilder]
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
      case 'basedOn':
        {
          basedOn = <ReferenceBuilder>[];
          return;
        }
      case 'priorPrescription':
        {
          priorPrescription = ReferenceBuilder.empty();
          return;
        }
      case 'groupIdentifier':
        {
          groupIdentifier = IdentifierBuilder.empty();
          return;
        }
      case 'status':
        {
          status = MedicationrequestStatusBuilder.empty();
          return;
        }
      case 'statusReason':
        {
          statusReason = CodeableConceptBuilder.empty();
          return;
        }
      case 'statusChanged':
        {
          statusChanged = FhirDateTimeBuilder.empty();
          return;
        }
      case 'intent':
        {
          intent = MedicationRequestIntentBuilder.empty();
          return;
        }
      case 'category':
        {
          category = <CodeableConceptBuilder>[];
          return;
        }
      case 'priority':
        {
          priority = RequestPriorityBuilder.empty();
          return;
        }
      case 'doNotPerform':
        {
          doNotPerform = FhirBooleanBuilder.empty();
          return;
        }
      case 'medication':
        {
          medication = CodeableReferenceBuilder.empty();
          return;
        }
      case 'subject':
        {
          subject = ReferenceBuilder.empty();
          return;
        }
      case 'informationSource':
        {
          informationSource = <ReferenceBuilder>[];
          return;
        }
      case 'encounter':
        {
          encounter = ReferenceBuilder.empty();
          return;
        }
      case 'supportingInformation':
        {
          supportingInformation = <ReferenceBuilder>[];
          return;
        }
      case 'authoredOn':
        {
          authoredOn = FhirDateTimeBuilder.empty();
          return;
        }
      case 'requester':
        {
          requester = ReferenceBuilder.empty();
          return;
        }
      case 'reported':
        {
          reported = FhirBooleanBuilder.empty();
          return;
        }
      case 'performerType':
        {
          performerType = CodeableConceptBuilder.empty();
          return;
        }
      case 'performer':
        {
          performer = <ReferenceBuilder>[];
          return;
        }
      case 'device':
        {
          device = <CodeableReferenceBuilder>[];
          return;
        }
      case 'recorder':
        {
          recorder = ReferenceBuilder.empty();
          return;
        }
      case 'reason':
        {
          reason = <CodeableReferenceBuilder>[];
          return;
        }
      case 'courseOfTherapyType':
        {
          courseOfTherapyType = CodeableConceptBuilder.empty();
          return;
        }
      case 'insurance':
        {
          insurance = <ReferenceBuilder>[];
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      case 'renderedDosageInstruction':
        {
          renderedDosageInstruction = FhirMarkdownBuilder.empty();
          return;
        }
      case 'effectiveDosePeriod':
        {
          effectiveDosePeriod = PeriodBuilder.empty();
          return;
        }
      case 'dosageInstruction':
        {
          dosageInstruction = <DosageBuilder>[];
          return;
        }
      case 'dispenseRequest':
        {
          dispenseRequest = MedicationRequestDispenseRequestBuilder.empty();
          return;
        }
      case 'substitution':
        {
          substitution = MedicationRequestSubstitutionBuilder.empty();
          return;
        }
      case 'eventHistory':
        {
          eventHistory = <ReferenceBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MedicationRequestBuilder clone() => throw UnimplementedError();
  @override
  MedicationRequestBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    List<ReferenceBuilder>? basedOn,
    ReferenceBuilder? priorPrescription,
    IdentifierBuilder? groupIdentifier,
    MedicationrequestStatusBuilder? status,
    CodeableConceptBuilder? statusReason,
    FhirDateTimeBuilder? statusChanged,
    MedicationRequestIntentBuilder? intent,
    List<CodeableConceptBuilder>? category,
    RequestPriorityBuilder? priority,
    FhirBooleanBuilder? doNotPerform,
    CodeableReferenceBuilder? medication,
    ReferenceBuilder? subject,
    List<ReferenceBuilder>? informationSource,
    ReferenceBuilder? encounter,
    List<ReferenceBuilder>? supportingInformation,
    FhirDateTimeBuilder? authoredOn,
    ReferenceBuilder? requester,
    FhirBooleanBuilder? reported,
    CodeableConceptBuilder? performerType,
    List<ReferenceBuilder>? performer,
    List<CodeableReferenceBuilder>? device,
    ReferenceBuilder? recorder,
    List<CodeableReferenceBuilder>? reason,
    CodeableConceptBuilder? courseOfTherapyType,
    List<ReferenceBuilder>? insurance,
    List<AnnotationBuilder>? note,
    FhirMarkdownBuilder? renderedDosageInstruction,
    PeriodBuilder? effectiveDosePeriod,
    List<DosageBuilder>? dosageInstruction,
    MedicationRequestDispenseRequestBuilder? dispenseRequest,
    MedicationRequestSubstitutionBuilder? substitution,
    List<ReferenceBuilder>? eventHistory,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = MedicationRequestBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      basedOn: basedOn ?? this.basedOn,
      priorPrescription: priorPrescription ?? this.priorPrescription,
      groupIdentifier: groupIdentifier ?? this.groupIdentifier,
      status: status ?? this.status,
      statusReason: statusReason ?? this.statusReason,
      statusChanged: statusChanged ?? this.statusChanged,
      intent: intent ?? this.intent,
      category: category ?? this.category,
      priority: priority ?? this.priority,
      doNotPerform: doNotPerform ?? this.doNotPerform,
      medication: medication ?? this.medication,
      subject: subject ?? this.subject,
      informationSource: informationSource ?? this.informationSource,
      encounter: encounter ?? this.encounter,
      supportingInformation:
          supportingInformation ?? this.supportingInformation,
      authoredOn: authoredOn ?? this.authoredOn,
      requester: requester ?? this.requester,
      reported: reported ?? this.reported,
      performerType: performerType ?? this.performerType,
      performer: performer ?? this.performer,
      device: device ?? this.device,
      recorder: recorder ?? this.recorder,
      reason: reason ?? this.reason,
      courseOfTherapyType: courseOfTherapyType ?? this.courseOfTherapyType,
      insurance: insurance ?? this.insurance,
      note: note ?? this.note,
      renderedDosageInstruction:
          renderedDosageInstruction ?? this.renderedDosageInstruction,
      effectiveDosePeriod: effectiveDosePeriod ?? this.effectiveDosePeriod,
      dosageInstruction: dosageInstruction ?? this.dosageInstruction,
      dispenseRequest: dispenseRequest ?? this.dispenseRequest,
      substitution: substitution ?? this.substitution,
      eventHistory: eventHistory ?? this.eventHistory,
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
    if (o is! MedicationRequestBuilder) {
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
    if (!listEquals<ReferenceBuilder>(
      basedOn,
      o.basedOn,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      priorPrescription,
      o.priorPrescription,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      groupIdentifier,
      o.groupIdentifier,
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
    if (!equalsDeepWithNull(
      statusChanged,
      o.statusChanged,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      intent,
      o.intent,
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
      priority,
      o.priority,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      doNotPerform,
      o.doNotPerform,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      medication,
      o.medication,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      subject,
      o.subject,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      informationSource,
      o.informationSource,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      encounter,
      o.encounter,
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
      authoredOn,
      o.authoredOn,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      requester,
      o.requester,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reported,
      o.reported,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      performerType,
      o.performerType,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      performer,
      o.performer,
    )) {
      return false;
    }
    if (!listEquals<CodeableReferenceBuilder>(
      device,
      o.device,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      recorder,
      o.recorder,
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
      courseOfTherapyType,
      o.courseOfTherapyType,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      insurance,
      o.insurance,
    )) {
      return false;
    }
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      renderedDosageInstruction,
      o.renderedDosageInstruction,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      effectiveDosePeriod,
      o.effectiveDosePeriod,
    )) {
      return false;
    }
    if (!listEquals<DosageBuilder>(
      dosageInstruction,
      o.dosageInstruction,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      dispenseRequest,
      o.dispenseRequest,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      substitution,
      o.substitution,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      eventHistory,
      o.eventHistory,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationRequestDispenseRequestBuilder]
/// Indicates the specific details for the dispense or medication supply
/// part of a medication request (also known as a Medication Prescription
/// or Medication Order). Note that this information is not always sent
/// with the order. There may be in some settings (e.g. hospitals)
/// institutional or system support for completing the dispense details in
/// the pharmacy department.
class MedicationRequestDispenseRequestBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MedicationRequestDispenseRequestBuilder]

  MedicationRequestDispenseRequestBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.initialFill,
    this.dispenseInterval,
    this.validityPeriod,
    this.numberOfRepeatsAllowed,
    this.quantity,
    this.expectedSupplyDuration,
    this.dispenser,
    this.dispenserInstruction,
    this.doseAdministrationAid,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationRequest.dispenseRequest',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicationRequestDispenseRequestBuilder.empty() =>
      MedicationRequestDispenseRequestBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationRequestDispenseRequestBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationRequest.dispenseRequest';
    return MedicationRequestDispenseRequestBuilder(
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
      initialFill: JsonParser.parseObject<MedicationRequestInitialFillBuilder>(
        json,
        'initialFill',
        MedicationRequestInitialFillBuilder.fromJson,
        '$objectPath.initialFill',
      ),
      dispenseInterval: JsonParser.parseObject<FhirDurationBuilder>(
        json,
        'dispenseInterval',
        FhirDurationBuilder.fromJson,
        '$objectPath.dispenseInterval',
      ),
      validityPeriod: JsonParser.parseObject<PeriodBuilder>(
        json,
        'validityPeriod',
        PeriodBuilder.fromJson,
        '$objectPath.validityPeriod',
      ),
      numberOfRepeatsAllowed: JsonParser.parsePrimitive<FhirUnsignedIntBuilder>(
        json,
        'numberOfRepeatsAllowed',
        FhirUnsignedIntBuilder.fromJson,
        '$objectPath.numberOfRepeatsAllowed',
      ),
      quantity: JsonParser.parseObject<QuantityBuilder>(
        json,
        'quantity',
        QuantityBuilder.fromJson,
        '$objectPath.quantity',
      ),
      expectedSupplyDuration: JsonParser.parseObject<FhirDurationBuilder>(
        json,
        'expectedSupplyDuration',
        FhirDurationBuilder.fromJson,
        '$objectPath.expectedSupplyDuration',
      ),
      dispenser: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'dispenser',
        ReferenceBuilder.fromJson,
        '$objectPath.dispenser',
      ),
      dispenserInstruction: (json['dispenserInstruction'] as List<dynamic>?)
          ?.map<AnnotationBuilder>(
            (v) => AnnotationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.dispenserInstruction',
              },
            ),
          )
          .toList(),
      doseAdministrationAid: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'doseAdministrationAid',
        CodeableConceptBuilder.fromJson,
        '$objectPath.doseAdministrationAid',
      ),
    );
  }

  /// Deserialize [MedicationRequestDispenseRequestBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicationRequestDispenseRequestBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationRequestDispenseRequestBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationRequestDispenseRequestBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationRequestDispenseRequestBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationRequestDispenseRequestBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationRequestDispenseRequestBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationRequestDispenseRequestBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationRequestDispenseRequest';

  /// [initialFill]
  /// Indicates the quantity or duration for the first dispense of the
  /// medication.
  MedicationRequestInitialFillBuilder? initialFill;

  /// [dispenseInterval]
  /// The minimum period of time that must occur between dispenses of the
  /// medication.
  FhirDurationBuilder? dispenseInterval;

  /// [validityPeriod]
  /// This indicates the validity period of a prescription (stale dating the
  /// Prescription).
  PeriodBuilder? validityPeriod;

  /// [numberOfRepeatsAllowed]
  /// An integer indicating the number of times, in addition to the original
  /// dispense, (aka refills or repeats) that the patient can receive the
  /// prescribed medication. Usage Notes: This integer does not include the
  /// original order dispense. This means that if an order indicates dispense
  /// 30 tablets plus "3 repeats", then the order can be dispensed a total of
  /// 4 times and the patient can receive a total of 120 tablets. A
  /// prescriber may explicitly say that zero refills are permitted after the
  /// initial dispense.
  FhirUnsignedIntBuilder? numberOfRepeatsAllowed;

  /// [quantity]
  /// The amount that is to be dispensed for one fill.
  QuantityBuilder? quantity;

  /// [expectedSupplyDuration]
  /// Identifies the period time over which the supplied product is expected
  /// to be used, or the length of time the dispense is expected to last.
  FhirDurationBuilder? expectedSupplyDuration;

  /// [dispenser]
  /// Indicates the intended performing Organization that will dispense the
  /// medication as specified by the prescriber.
  ReferenceBuilder? dispenser;

  /// [dispenserInstruction]
  /// Provides additional information to the dispenser, for example,
  /// counselling to be provided to the patient.
  List<AnnotationBuilder>? dispenserInstruction;

  /// [doseAdministrationAid]
  /// Provides information about the type of adherence packaging to be
  /// supplied for the medication dispense.
  CodeableConceptBuilder? doseAdministrationAid;

  /// Converts a [MedicationRequestDispenseRequestBuilder]
  /// to [MedicationRequestDispenseRequest]
  @override
  MedicationRequestDispenseRequest build() =>
      MedicationRequestDispenseRequest.fromJson(toJson());

  /// Converts a [MedicationRequestDispenseRequestBuilder]
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
    addField('initialFill', initialFill);
    addField('dispenseInterval', dispenseInterval);
    addField('validityPeriod', validityPeriod);
    addField('numberOfRepeatsAllowed', numberOfRepeatsAllowed);
    addField('quantity', quantity);
    addField('expectedSupplyDuration', expectedSupplyDuration);
    addField('dispenser', dispenser);
    addField('dispenserInstruction', dispenserInstruction);
    addField('doseAdministrationAid', doseAdministrationAid);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'initialFill',
      'dispenseInterval',
      'validityPeriod',
      'numberOfRepeatsAllowed',
      'quantity',
      'expectedSupplyDuration',
      'dispenser',
      'dispenserInstruction',
      'doseAdministrationAid',
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
      case 'initialFill':
        if (initialFill != null) {
          fields.add(initialFill!);
        }
      case 'dispenseInterval':
        if (dispenseInterval != null) {
          fields.add(dispenseInterval!);
        }
      case 'validityPeriod':
        if (validityPeriod != null) {
          fields.add(validityPeriod!);
        }
      case 'numberOfRepeatsAllowed':
        if (numberOfRepeatsAllowed != null) {
          fields.add(numberOfRepeatsAllowed!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'expectedSupplyDuration':
        if (expectedSupplyDuration != null) {
          fields.add(expectedSupplyDuration!);
        }
      case 'dispenser':
        if (dispenser != null) {
          fields.add(dispenser!);
        }
      case 'dispenserInstruction':
        if (dispenserInstruction != null) {
          fields.addAll(dispenserInstruction!);
        }
      case 'doseAdministrationAid':
        if (doseAdministrationAid != null) {
          fields.add(doseAdministrationAid!);
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
      case 'initialFill':
        {
          if (child is MedicationRequestInitialFillBuilder) {
            initialFill = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'dispenseInterval':
        {
          if (child is FhirDurationBuilder) {
            dispenseInterval = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'validityPeriod':
        {
          if (child is PeriodBuilder) {
            validityPeriod = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'numberOfRepeatsAllowed':
        {
          if (child is FhirUnsignedIntBuilder) {
            numberOfRepeatsAllowed = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirUnsignedIntBuilder.tryParse(numValue);
                if (converted != null) {
                  numberOfRepeatsAllowed = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'quantity':
        {
          if (child is QuantityBuilder) {
            quantity = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'expectedSupplyDuration':
        {
          if (child is FhirDurationBuilder) {
            expectedSupplyDuration = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'dispenser':
        {
          if (child is ReferenceBuilder) {
            dispenser = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'dispenserInstruction':
        {
          if (child is List<AnnotationBuilder>) {
            // Replace or create new list
            dispenserInstruction = child;
            return;
          } else if (child is AnnotationBuilder) {
            // Add single element to existing list or create new list
            dispenserInstruction = [
              ...(dispenserInstruction ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'doseAdministrationAid':
        {
          if (child is CodeableConceptBuilder) {
            doseAdministrationAid = child;
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
      case 'initialFill':
        return ['MedicationRequestInitialFillBuilder'];
      case 'dispenseInterval':
        return ['FhirDurationBuilder'];
      case 'validityPeriod':
        return ['PeriodBuilder'];
      case 'numberOfRepeatsAllowed':
        return ['FhirUnsignedIntBuilder'];
      case 'quantity':
        return ['QuantityBuilder'];
      case 'expectedSupplyDuration':
        return ['FhirDurationBuilder'];
      case 'dispenser':
        return ['ReferenceBuilder'];
      case 'dispenserInstruction':
        return ['AnnotationBuilder'];
      case 'doseAdministrationAid':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationRequestDispenseRequestBuilder]
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
      case 'initialFill':
        {
          initialFill = MedicationRequestInitialFillBuilder.empty();
          return;
        }
      case 'dispenseInterval':
        {
          dispenseInterval = FhirDurationBuilder.empty();
          return;
        }
      case 'validityPeriod':
        {
          validityPeriod = PeriodBuilder.empty();
          return;
        }
      case 'numberOfRepeatsAllowed':
        {
          numberOfRepeatsAllowed = FhirUnsignedIntBuilder.empty();
          return;
        }
      case 'quantity':
        {
          quantity = QuantityBuilder.empty();
          return;
        }
      case 'expectedSupplyDuration':
        {
          expectedSupplyDuration = FhirDurationBuilder.empty();
          return;
        }
      case 'dispenser':
        {
          dispenser = ReferenceBuilder.empty();
          return;
        }
      case 'dispenserInstruction':
        {
          dispenserInstruction = <AnnotationBuilder>[];
          return;
        }
      case 'doseAdministrationAid':
        {
          doseAdministrationAid = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MedicationRequestDispenseRequestBuilder clone() => throw UnimplementedError();
  @override
  MedicationRequestDispenseRequestBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    MedicationRequestInitialFillBuilder? initialFill,
    FhirDurationBuilder? dispenseInterval,
    PeriodBuilder? validityPeriod,
    FhirUnsignedIntBuilder? numberOfRepeatsAllowed,
    QuantityBuilder? quantity,
    FhirDurationBuilder? expectedSupplyDuration,
    ReferenceBuilder? dispenser,
    List<AnnotationBuilder>? dispenserInstruction,
    CodeableConceptBuilder? doseAdministrationAid,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MedicationRequestDispenseRequestBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      initialFill: initialFill ?? this.initialFill,
      dispenseInterval: dispenseInterval ?? this.dispenseInterval,
      validityPeriod: validityPeriod ?? this.validityPeriod,
      numberOfRepeatsAllowed:
          numberOfRepeatsAllowed ?? this.numberOfRepeatsAllowed,
      quantity: quantity ?? this.quantity,
      expectedSupplyDuration:
          expectedSupplyDuration ?? this.expectedSupplyDuration,
      dispenser: dispenser ?? this.dispenser,
      dispenserInstruction: dispenserInstruction ?? this.dispenserInstruction,
      doseAdministrationAid:
          doseAdministrationAid ?? this.doseAdministrationAid,
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
    if (o is! MedicationRequestDispenseRequestBuilder) {
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
      initialFill,
      o.initialFill,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      dispenseInterval,
      o.dispenseInterval,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      validityPeriod,
      o.validityPeriod,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      numberOfRepeatsAllowed,
      o.numberOfRepeatsAllowed,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      expectedSupplyDuration,
      o.expectedSupplyDuration,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      dispenser,
      o.dispenser,
    )) {
      return false;
    }
    if (!listEquals<AnnotationBuilder>(
      dispenserInstruction,
      o.dispenserInstruction,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      doseAdministrationAid,
      o.doseAdministrationAid,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationRequestInitialFillBuilder]
/// Indicates the quantity or duration for the first dispense of the
/// medication.
class MedicationRequestInitialFillBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MedicationRequestInitialFillBuilder]

  MedicationRequestInitialFillBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.quantity,
    this.duration,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationRequest.dispenseRequest.initialFill',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicationRequestInitialFillBuilder.empty() =>
      MedicationRequestInitialFillBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationRequestInitialFillBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationRequest.dispenseRequest.initialFill';
    return MedicationRequestInitialFillBuilder(
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
      quantity: JsonParser.parseObject<QuantityBuilder>(
        json,
        'quantity',
        QuantityBuilder.fromJson,
        '$objectPath.quantity',
      ),
      duration: JsonParser.parseObject<FhirDurationBuilder>(
        json,
        'duration',
        FhirDurationBuilder.fromJson,
        '$objectPath.duration',
      ),
    );
  }

  /// Deserialize [MedicationRequestInitialFillBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicationRequestInitialFillBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationRequestInitialFillBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationRequestInitialFillBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationRequestInitialFillBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationRequestInitialFillBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationRequestInitialFillBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationRequestInitialFillBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationRequestInitialFill';

  /// [quantity]
  /// The amount or quantity to provide as part of the first dispense.
  QuantityBuilder? quantity;

  /// [duration]
  /// The length of time that the first dispense is expected to last.
  FhirDurationBuilder? duration;

  /// Converts a [MedicationRequestInitialFillBuilder]
  /// to [MedicationRequestInitialFill]
  @override
  MedicationRequestInitialFill build() =>
      MedicationRequestInitialFill.fromJson(toJson());

  /// Converts a [MedicationRequestInitialFillBuilder]
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
    addField('quantity', quantity);
    addField('duration', duration);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'quantity',
      'duration',
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
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'duration':
        if (duration != null) {
          fields.add(duration!);
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
      case 'quantity':
        {
          if (child is QuantityBuilder) {
            quantity = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'duration':
        {
          if (child is FhirDurationBuilder) {
            duration = child;
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
      case 'quantity':
        return ['QuantityBuilder'];
      case 'duration':
        return ['FhirDurationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationRequestInitialFillBuilder]
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
      case 'quantity':
        {
          quantity = QuantityBuilder.empty();
          return;
        }
      case 'duration':
        {
          duration = FhirDurationBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MedicationRequestInitialFillBuilder clone() => throw UnimplementedError();
  @override
  MedicationRequestInitialFillBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    QuantityBuilder? quantity,
    FhirDurationBuilder? duration,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MedicationRequestInitialFillBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      quantity: quantity ?? this.quantity,
      duration: duration ?? this.duration,
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
    if (o is! MedicationRequestInitialFillBuilder) {
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
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      duration,
      o.duration,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationRequestSubstitutionBuilder]
/// Indicates whether or not substitution can or should be part of the
/// dispense. In some cases, substitution must happen, in other cases
/// substitution must not happen. This block explains the prescriber's
/// intent. If nothing is specified substitution may be done.
class MedicationRequestSubstitutionBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MedicationRequestSubstitutionBuilder]

  MedicationRequestSubstitutionBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    AllowedXMedicationRequestSubstitutionBuilder? allowedX,
    FhirBooleanBuilder? allowedBoolean,
    CodeableConceptBuilder? allowedCodeableConcept,
    this.reason,
    super.disallowExtensions,
  })  : allowedX = allowedX ?? allowedBoolean ?? allowedCodeableConcept,
        super(
          objectPath: 'MedicationRequest.substitution',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicationRequestSubstitutionBuilder.empty() =>
      MedicationRequestSubstitutionBuilder(
        allowedX: FhirBooleanBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationRequestSubstitutionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationRequest.substitution';
    return MedicationRequestSubstitutionBuilder(
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
      allowedX: JsonParser.parsePolymorphic<
          AllowedXMedicationRequestSubstitutionBuilder>(
        json,
        {
          'allowedBoolean': FhirBooleanBuilder.fromJson,
          'allowedCodeableConcept': CodeableConceptBuilder.fromJson,
        },
        objectPath,
      ),
      reason: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'reason',
        CodeableConceptBuilder.fromJson,
        '$objectPath.reason',
      ),
    );
  }

  /// Deserialize [MedicationRequestSubstitutionBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicationRequestSubstitutionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationRequestSubstitutionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationRequestSubstitutionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationRequestSubstitutionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationRequestSubstitutionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationRequestSubstitutionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationRequestSubstitutionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationRequestSubstitution';

  /// [allowedX]
  /// True if the prescriber allows a different drug to be dispensed from
  /// what was prescribed.
  AllowedXMedicationRequestSubstitutionBuilder? allowedX;

  /// Getter for [allowedBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get allowedBoolean =>
      allowedX?.isAs<FhirBooleanBuilder>();

  /// Getter for [allowedCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get allowedCodeableConcept =>
      allowedX?.isAs<CodeableConceptBuilder>();

  /// [reason]
  /// Indicates the reason for the substitution, or why substitution must or
  /// must not be performed.
  CodeableConceptBuilder? reason;

  /// Converts a [MedicationRequestSubstitutionBuilder]
  /// to [MedicationRequestSubstitution]
  @override
  MedicationRequestSubstitution build() =>
      MedicationRequestSubstitution.fromJson(toJson());

  /// Converts a [MedicationRequestSubstitutionBuilder]
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
    if (allowedX != null) {
      final fhirType = allowedX!.fhirType;
      addField('allowed${fhirType.capitalizeFirstLetter()}', allowedX);
    }

    addField('reason', reason);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'allowedX',
      'reason',
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
      case 'allowed':
        if (allowedX != null) {
          fields.add(allowedX!);
        }
      case 'allowedX':
        if (allowedX != null) {
          fields.add(allowedX!);
        }
      case 'allowedBoolean':
        if (allowedX is FhirBooleanBuilder) {
          fields.add(allowedX!);
        }
      case 'allowedCodeableConcept':
        if (allowedX is CodeableConceptBuilder) {
          fields.add(allowedX!);
        }
      case 'reason':
        if (reason != null) {
          fields.add(reason!);
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
      case 'allowed':
      case 'allowedX':
        {
          if (child is AllowedXMedicationRequestSubstitutionBuilder) {
            allowedX = child;
            return;
          } else {
            if (child is FhirBooleanBuilder) {
              allowedX = child;
              return;
            }
            if (child is CodeableConceptBuilder) {
              allowedX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'allowedBoolean':
        {
          if (child is FhirBooleanBuilder) {
            allowedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'allowedCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            allowedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reason':
        {
          if (child is CodeableConceptBuilder) {
            reason = child;
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
      case 'allowed':
      case 'allowedX':
        return [
          'FhirBooleanBuilder',
          'CodeableConceptBuilder',
        ];
      case 'allowedBoolean':
        return ['FhirBooleanBuilder'];
      case 'allowedCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'reason':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationRequestSubstitutionBuilder]
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
      case 'allowed':
      case 'allowedX':
      case 'allowedBoolean':
        {
          allowedX = FhirBooleanBuilder.empty();
          return;
        }
      case 'allowedCodeableConcept':
        {
          allowedX = CodeableConceptBuilder.empty();
          return;
        }
      case 'reason':
        {
          reason = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MedicationRequestSubstitutionBuilder clone() => throw UnimplementedError();
  @override
  MedicationRequestSubstitutionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    AllowedXMedicationRequestSubstitutionBuilder? allowedX,
    CodeableConceptBuilder? reason,
    FhirBooleanBuilder? allowedBoolean,
    CodeableConceptBuilder? allowedCodeableConcept,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MedicationRequestSubstitutionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      allowedX:
          allowedX ?? allowedBoolean ?? allowedCodeableConcept ?? this.allowedX,
      reason: reason ?? this.reason,
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
    if (o is! MedicationRequestSubstitutionBuilder) {
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
      allowedX,
      o.allowedX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reason,
      o.reason,
    )) {
      return false;
    }
    return true;
  }
}
