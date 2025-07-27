import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'medication_request.g.dart';

/// [MedicationRequest]
/// An order or request for both supply of the medication and the
/// instructions for administration of the medication to a patient. The
/// resource is called "MedicationRequest" rather than
/// "MedicationPrescription" or "MedicationOrder" to generalize the use
/// across inpatient and outpatient settings, including care plans, etc.,
/// and to harmonize with workflow patterns.
class MedicationRequest extends DomainResource {
  /// Primary constructor for
  /// [MedicationRequest]

  const MedicationRequest({
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
    required this.status,
    this.statusReason,
    this.statusChanged,
    required this.intent,
    this.category,
    this.priority,
    this.doNotPerform,
    required this.medication,
    required this.subject,
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
          resourceType: R6ResourceType.MedicationRequest,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationRequest.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicationRequest(
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
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      priorPrescription: JsonParser.parseObject<Reference>(
        json,
        'priorPrescription',
        Reference.fromJson,
      ),
      groupIdentifier: JsonParser.parseObject<Identifier>(
        json,
        'groupIdentifier',
        Identifier.fromJson,
      ),
      status: JsonParser.parsePrimitive<MedicationrequestStatus>(
        json,
        'status',
        MedicationrequestStatus.fromJson,
      )!,
      statusReason: JsonParser.parseObject<CodeableConcept>(
        json,
        'statusReason',
        CodeableConcept.fromJson,
      ),
      statusChanged: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'statusChanged',
        FhirDateTime.fromJson,
      ),
      intent: JsonParser.parsePrimitive<MedicationRequestIntent>(
        json,
        'intent',
        MedicationRequestIntent.fromJson,
      )!,
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      priority: JsonParser.parsePrimitive<RequestPriority>(
        json,
        'priority',
        RequestPriority.fromJson,
      ),
      doNotPerform: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'doNotPerform',
        FhirBoolean.fromJson,
      ),
      medication: JsonParser.parseObject<CodeableReference>(
        json,
        'medication',
        CodeableReference.fromJson,
      )!,
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
      )!,
      informationSource: (json['informationSource'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
      ),
      supportingInformation: (json['supportingInformation'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      authoredOn: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'authoredOn',
        FhirDateTime.fromJson,
      ),
      requester: JsonParser.parseObject<Reference>(
        json,
        'requester',
        Reference.fromJson,
      ),
      reported: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'reported',
        FhirBoolean.fromJson,
      ),
      performerType: JsonParser.parseObject<CodeableConcept>(
        json,
        'performerType',
        CodeableConcept.fromJson,
      ),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      device: (json['device'] as List<dynamic>?)
          ?.map<CodeableReference>(
            (v) => CodeableReference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      recorder: JsonParser.parseObject<Reference>(
        json,
        'recorder',
        Reference.fromJson,
      ),
      reason: (json['reason'] as List<dynamic>?)
          ?.map<CodeableReference>(
            (v) => CodeableReference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      courseOfTherapyType: JsonParser.parseObject<CodeableConcept>(
        json,
        'courseOfTherapyType',
        CodeableConcept.fromJson,
      ),
      insurance: (json['insurance'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
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
      renderedDosageInstruction: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'renderedDosageInstruction',
        FhirMarkdown.fromJson,
      ),
      effectiveDosePeriod: JsonParser.parseObject<Period>(
        json,
        'effectiveDosePeriod',
        Period.fromJson,
      ),
      dosageInstruction: (json['dosageInstruction'] as List<dynamic>?)
          ?.map<Dosage>(
            (v) => Dosage.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      dispenseRequest: JsonParser.parseObject<MedicationRequestDispenseRequest>(
        json,
        'dispenseRequest',
        MedicationRequestDispenseRequest.fromJson,
      ),
      substitution: JsonParser.parseObject<MedicationRequestSubstitution>(
        json,
        'substitution',
        MedicationRequestSubstitution.fromJson,
      ),
      eventHistory: (json['eventHistory'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MedicationRequest]
  /// from a [String] or [YamlMap] object
  factory MedicationRequest.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationRequest.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationRequest.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationRequest '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationRequest]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationRequest.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationRequest.fromJson(json);
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
  final List<Identifier>? identifier;

  /// [basedOn]
  /// A plan or request that is fulfilled in whole or in part by this
  /// medication request.
  final List<Reference>? basedOn;

  /// [priorPrescription]
  /// Reference to an order/prescription that is being replaced by this
  /// MedicationRequest.
  final Reference? priorPrescription;

  /// [groupIdentifier]
  /// A shared identifier common to multiple independent Request instances
  /// that were activated/authorized more or less simultaneously by a single
  /// author. The presence of the same identifier on each request ties those
  /// requests together and may have business ramifications in terms of
  /// reporting of results, billing, etc. E.g. a requisition number shared by
  /// a set of lab tests ordered together, or a prescription number shared by
  /// all meds ordered at one time.
  final Identifier? groupIdentifier;

  /// [status]
  /// A code specifying the current state of the order. Generally, this will
  /// be active or completed state.
  final MedicationrequestStatus status;

  /// [statusReason]
  /// Captures the reason for the current state of the MedicationRequest.
  final CodeableConcept? statusReason;

  /// [statusChanged]
  /// The date (and perhaps time) when the status was changed.
  final FhirDateTime? statusChanged;

  /// [intent]
  /// Whether the request is a proposal, plan, or an original order.
  final MedicationRequestIntent intent;

  /// [category]
  /// An arbitrary categorization or grouping of the medication request. It
  /// could be used for indicating where meds are intended to be
  /// administered, eg. in an inpatient setting or in a patient's home, or a
  /// legal category of the medication.
  final List<CodeableConcept>? category;

  /// [priority]
  /// Indicates how quickly the Medication Request should be addressed with
  /// respect to other requests.
  final RequestPriority? priority;

  /// [doNotPerform]
  /// If true, indicates that the provider is asking for the patient to
  /// either stop taking or to not start taking the specified medication. For
  /// example, the patient is taking an existing medication and the provider
  /// is changing their medication. They want to create two seperate
  /// requests: one to stop using the current medication and another to start
  /// the new medication.
  final FhirBoolean? doNotPerform;

  /// [medication]
  /// Identifies the medication being requested. This is a link to a resource
  /// that represents the medication which may be the details of the
  /// medication or simply an attribute carrying a code that identifies the
  /// medication from a known list of medications.
  final CodeableReference medication;

  /// [subject]
  /// The individual or group for whom the medication has been requested.
  final Reference subject;

  /// [informationSource]
  /// The person or organization who provided the information about this
  /// request, if the source is someone other than the requestor. This is
  /// often used when the MedicationRequest is reported by another person.
  final List<Reference>? informationSource;

  /// [encounter]
  /// The Encounter during which this [x] was created or to which the
  /// creation of this record is tightly associated.
  final Reference? encounter;

  /// [supportingInformation]
  /// Information to support fulfilling (i.e. dispensing or administering) of
  /// the medication, for example, patient height and weight, a
  /// MedicationStatement for the patient).
  final List<Reference>? supportingInformation;

  /// [authoredOn]
  /// The date (and perhaps time) when the prescription was initially written
  /// or authored on.
  final FhirDateTime? authoredOn;

  /// [requester]
  /// The individual, organization, or device that initiated the request and
  /// has responsibility for its activation.
  final Reference? requester;

  /// [reported]
  /// Indicates if this record was captured as a secondary 'reported' record
  /// rather than as an original primary source-of-truth record. It may also
  /// indicate the source of the report.
  final FhirBoolean? reported;

  /// [performerType]
  /// Indicates the type of performer of the administration of the
  /// medication.
  final CodeableConcept? performerType;

  /// [performer]
  /// The specified desired performer of the medication treatment (e.g. the
  /// performer of the medication administration). For devices, this is the
  /// device that is intended to perform the administration of the
  /// medication. An IV Pump would be an example of a device that is
  /// performing the administration. Both the IV Pump and the practitioner
  /// that set the rate or bolus on the pump can be listed as performers.
  final List<Reference>? performer;

  /// [device]
  /// The intended type of device that is to be used for the administration
  /// of the medication (for example, PCA Pump).
  final List<CodeableReference>? device;

  /// [recorder]
  /// The person who entered the order on behalf of another individual for
  /// example in the case of a verbal or a telephone order.
  final Reference? recorder;

  /// [reason]
  /// The reason or the indication for ordering or not ordering the
  /// medication.
  final List<CodeableReference>? reason;

  /// [courseOfTherapyType]
  /// The description of the overall pattern of the administration of the
  /// medication to the patient.
  final CodeableConcept? courseOfTherapyType;

  /// [insurance]
  /// Insurance plans, coverage extensions, pre-authorizations and/or
  /// pre-determinations that may be required for delivering the requested
  /// service.
  final List<Reference>? insurance;

  /// [note]
  /// Extra information about the prescription that could not be conveyed by
  /// the other attributes.
  final List<Annotation>? note;

  /// [renderedDosageInstruction]
  /// The full representation of the dose of the medication included in all
  /// dosage instructions. To be used when multiple dosage instructions are
  /// included to represent complex dosing such as increasing or tapering
  /// doses.
  final FhirMarkdown? renderedDosageInstruction;

  /// [effectiveDosePeriod]
  /// The period over which the medication is to be taken. Where there are
  /// multiple dosageInstruction lines (for example, tapering doses), this is
  /// the earliest date and the latest end date of the dosageInstructions.
  final Period? effectiveDosePeriod;

  /// [dosageInstruction]
  /// Specific instructions for how the medication is to be used by the
  /// patient.
  final List<Dosage>? dosageInstruction;

  /// [dispenseRequest]
  /// Indicates the specific details for the dispense or medication supply
  /// part of a medication request (also known as a Medication Prescription
  /// or Medication Order). Note that this information is not always sent
  /// with the order. There may be in some settings (e.g. hospitals)
  /// institutional or system support for completing the dispense details in
  /// the pharmacy department.
  final MedicationRequestDispenseRequest? dispenseRequest;

  /// [substitution]
  /// Indicates whether or not substitution can or should be part of the
  /// dispense. In some cases, substitution must happen, in other cases
  /// substitution must not happen. This block explains the prescriber's
  /// intent. If nothing is specified substitution may be done.
  final MedicationRequestSubstitution? substitution;

  /// [eventHistory]
  /// Links to Provenance records for past versions of this resource or
  /// fulfilling request or event resources that identify key state
  /// transitions or updates that are likely to be relevant to a user looking
  /// at the current version of the resource.
  final List<Reference>? eventHistory;
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
      'basedOn',
      basedOn,
    );
    addField(
      'priorPrescription',
      priorPrescription,
    );
    addField(
      'groupIdentifier',
      groupIdentifier,
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
      'statusChanged',
      statusChanged,
    );
    addField(
      'intent',
      intent,
    );
    addField(
      'category',
      category,
    );
    addField(
      'priority',
      priority,
    );
    addField(
      'doNotPerform',
      doNotPerform,
    );
    addField(
      'medication',
      medication,
    );
    addField(
      'subject',
      subject,
    );
    addField(
      'informationSource',
      informationSource,
    );
    addField(
      'encounter',
      encounter,
    );
    addField(
      'supportingInformation',
      supportingInformation,
    );
    addField(
      'authoredOn',
      authoredOn,
    );
    addField(
      'requester',
      requester,
    );
    addField(
      'reported',
      reported,
    );
    addField(
      'performerType',
      performerType,
    );
    addField(
      'performer',
      performer,
    );
    addField(
      'device',
      device,
    );
    addField(
      'recorder',
      recorder,
    );
    addField(
      'reason',
      reason,
    );
    addField(
      'courseOfTherapyType',
      courseOfTherapyType,
    );
    addField(
      'insurance',
      insurance,
    );
    addField(
      'note',
      note,
    );
    addField(
      'renderedDosageInstruction',
      renderedDosageInstruction,
    );
    addField(
      'effectiveDosePeriod',
      effectiveDosePeriod,
    );
    addField(
      'dosageInstruction',
      dosageInstruction,
    );
    addField(
      'dispenseRequest',
      dispenseRequest,
    );
    addField(
      'substitution',
      substitution,
    );
    addField(
      'eventHistory',
      eventHistory,
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
        fields.add(status);
      case 'statusReason':
        if (statusReason != null) {
          fields.add(statusReason!);
        }
      case 'statusChanged':
        if (statusChanged != null) {
          fields.add(statusChanged!);
        }
      case 'intent':
        fields.add(intent);
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
        fields.add(medication);
      case 'subject':
        fields.add(subject);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  MedicationRequest clone() => copyWith();

  /// Copy function for [MedicationRequest]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MedicationRequestCopyWith<MedicationRequest> get copyWith =>
      _$MedicationRequestCopyWithImpl<MedicationRequest>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationRequest) {
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
    if (!listEquals<Reference>(
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
    if (!listEquals<CodeableConcept>(
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
    if (!listEquals<Reference>(
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
    if (!listEquals<Reference>(
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
    if (!listEquals<Reference>(
      performer,
      o.performer,
    )) {
      return false;
    }
    if (!listEquals<CodeableReference>(
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
    if (!listEquals<CodeableReference>(
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
    if (!listEquals<Reference>(
      insurance,
      o.insurance,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
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
    if (!listEquals<Dosage>(
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
    if (!listEquals<Reference>(
      eventHistory,
      o.eventHistory,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationRequestDispenseRequest]
/// Indicates the specific details for the dispense or medication supply
/// part of a medication request (also known as a Medication Prescription
/// or Medication Order). Note that this information is not always sent
/// with the order. There may be in some settings (e.g. hospitals)
/// institutional or system support for completing the dispense details in
/// the pharmacy department.
class MedicationRequestDispenseRequest extends BackboneElement {
  /// Primary constructor for
  /// [MedicationRequestDispenseRequest]

  const MedicationRequestDispenseRequest({
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationRequestDispenseRequest.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicationRequestDispenseRequest(
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
      initialFill: JsonParser.parseObject<MedicationRequestInitialFill>(
        json,
        'initialFill',
        MedicationRequestInitialFill.fromJson,
      ),
      dispenseInterval: JsonParser.parseObject<FhirDuration>(
        json,
        'dispenseInterval',
        FhirDuration.fromJson,
      ),
      validityPeriod: JsonParser.parseObject<Period>(
        json,
        'validityPeriod',
        Period.fromJson,
      ),
      numberOfRepeatsAllowed: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'numberOfRepeatsAllowed',
        FhirUnsignedInt.fromJson,
      ),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
      ),
      expectedSupplyDuration: JsonParser.parseObject<FhirDuration>(
        json,
        'expectedSupplyDuration',
        FhirDuration.fromJson,
      ),
      dispenser: JsonParser.parseObject<Reference>(
        json,
        'dispenser',
        Reference.fromJson,
      ),
      dispenserInstruction: (json['dispenserInstruction'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      doseAdministrationAid: JsonParser.parseObject<CodeableConcept>(
        json,
        'doseAdministrationAid',
        CodeableConcept.fromJson,
      ),
    );
  }

  /// Deserialize [MedicationRequestDispenseRequest]
  /// from a [String] or [YamlMap] object
  factory MedicationRequestDispenseRequest.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationRequestDispenseRequest.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationRequestDispenseRequest.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationRequestDispenseRequest '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationRequestDispenseRequest]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationRequestDispenseRequest.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationRequestDispenseRequest.fromJson(json);
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
  final MedicationRequestInitialFill? initialFill;

  /// [dispenseInterval]
  /// The minimum period of time that must occur between dispenses of the
  /// medication.
  final FhirDuration? dispenseInterval;

  /// [validityPeriod]
  /// This indicates the validity period of a prescription (stale dating the
  /// Prescription).
  final Period? validityPeriod;

  /// [numberOfRepeatsAllowed]
  /// An integer indicating the number of times, in addition to the original
  /// dispense, (aka refills or repeats) that the patient can receive the
  /// prescribed medication. Usage Notes: This integer does not include the
  /// original order dispense. This means that if an order indicates dispense
  /// 30 tablets plus "3 repeats", then the order can be dispensed a total of
  /// 4 times and the patient can receive a total of 120 tablets. A
  /// prescriber may explicitly say that zero refills are permitted after the
  /// initial dispense.
  final FhirUnsignedInt? numberOfRepeatsAllowed;

  /// [quantity]
  /// The amount that is to be dispensed for one fill.
  final Quantity? quantity;

  /// [expectedSupplyDuration]
  /// Identifies the period time over which the supplied product is expected
  /// to be used, or the length of time the dispense is expected to last.
  final FhirDuration? expectedSupplyDuration;

  /// [dispenser]
  /// Indicates the intended performing Organization that will dispense the
  /// medication as specified by the prescriber.
  final Reference? dispenser;

  /// [dispenserInstruction]
  /// Provides additional information to the dispenser, for example,
  /// counselling to be provided to the patient.
  final List<Annotation>? dispenserInstruction;

  /// [doseAdministrationAid]
  /// Provides information about the type of adherence packaging to be
  /// supplied for the medication dispense.
  final CodeableConcept? doseAdministrationAid;
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
      'initialFill',
      initialFill,
    );
    addField(
      'dispenseInterval',
      dispenseInterval,
    );
    addField(
      'validityPeriod',
      validityPeriod,
    );
    addField(
      'numberOfRepeatsAllowed',
      numberOfRepeatsAllowed,
    );
    addField(
      'quantity',
      quantity,
    );
    addField(
      'expectedSupplyDuration',
      expectedSupplyDuration,
    );
    addField(
      'dispenser',
      dispenser,
    );
    addField(
      'dispenserInstruction',
      dispenserInstruction,
    );
    addField(
      'doseAdministrationAid',
      doseAdministrationAid,
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  MedicationRequestDispenseRequest clone() => copyWith();

  /// Copy function for [MedicationRequestDispenseRequest]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MedicationRequestDispenseRequestCopyWith<MedicationRequestDispenseRequest>
      get copyWith => _$MedicationRequestDispenseRequestCopyWithImpl<
              MedicationRequestDispenseRequest>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationRequestDispenseRequest) {
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
    if (!listEquals<Annotation>(
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

/// [MedicationRequestInitialFill]
/// Indicates the quantity or duration for the first dispense of the
/// medication.
class MedicationRequestInitialFill extends BackboneElement {
  /// Primary constructor for
  /// [MedicationRequestInitialFill]

  const MedicationRequestInitialFill({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.quantity,
    this.duration,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationRequestInitialFill.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicationRequestInitialFill(
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
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
      ),
      duration: JsonParser.parseObject<FhirDuration>(
        json,
        'duration',
        FhirDuration.fromJson,
      ),
    );
  }

  /// Deserialize [MedicationRequestInitialFill]
  /// from a [String] or [YamlMap] object
  factory MedicationRequestInitialFill.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationRequestInitialFill.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationRequestInitialFill.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationRequestInitialFill '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationRequestInitialFill]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationRequestInitialFill.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationRequestInitialFill.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationRequestInitialFill';

  /// [quantity]
  /// The amount or quantity to provide as part of the first dispense.
  final Quantity? quantity;

  /// [duration]
  /// The length of time that the first dispense is expected to last.
  final FhirDuration? duration;
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
      'quantity',
      quantity,
    );
    addField(
      'duration',
      duration,
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
      'quantity',
      'duration',
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  MedicationRequestInitialFill clone() => copyWith();

  /// Copy function for [MedicationRequestInitialFill]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MedicationRequestInitialFillCopyWith<MedicationRequestInitialFill>
      get copyWith => _$MedicationRequestInitialFillCopyWithImpl<
              MedicationRequestInitialFill>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationRequestInitialFill) {
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

/// [MedicationRequestSubstitution]
/// Indicates whether or not substitution can or should be part of the
/// dispense. In some cases, substitution must happen, in other cases
/// substitution must not happen. This block explains the prescriber's
/// intent. If nothing is specified substitution may be done.
class MedicationRequestSubstitution extends BackboneElement {
  /// Primary constructor for
  /// [MedicationRequestSubstitution]

  const MedicationRequestSubstitution({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.allowedX,
    this.reason,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationRequestSubstitution.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicationRequestSubstitution(
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
      allowedX:
          JsonParser.parsePolymorphic<AllowedXMedicationRequestSubstitution>(
        json,
        {
          'allowedBoolean': FhirBoolean.fromJson,
          'allowedCodeableConcept': CodeableConcept.fromJson,
        },
      )!,
      reason: JsonParser.parseObject<CodeableConcept>(
        json,
        'reason',
        CodeableConcept.fromJson,
      ),
    );
  }

  /// Deserialize [MedicationRequestSubstitution]
  /// from a [String] or [YamlMap] object
  factory MedicationRequestSubstitution.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationRequestSubstitution.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationRequestSubstitution.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationRequestSubstitution '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationRequestSubstitution]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationRequestSubstitution.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationRequestSubstitution.fromJson(json);
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
  final AllowedXMedicationRequestSubstitution allowedX;

  /// Getter for [allowedBoolean] as a FhirBoolean
  FhirBoolean? get allowedBoolean => allowedX.isAs<FhirBoolean>();

  /// Getter for [allowedCodeableConcept] as a CodeableConcept
  CodeableConcept? get allowedCodeableConcept =>
      allowedX.isAs<CodeableConcept>();

  /// [reason]
  /// Indicates the reason for the substitution, or why substitution must or
  /// must not be performed.
  final CodeableConcept? reason;
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
    final allowedXFhirType = allowedX.fhirType;
    addField(
      'allowed${allowedXFhirType.capitalize()}',
      allowedX,
    );

    addField(
      'reason',
      reason,
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
      'allowedX',
      'reason',
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
      case 'allowed':
        fields.add(allowedX);
      case 'allowedX':
        fields.add(allowedX);
      case 'allowedBoolean':
        if (allowedX is FhirBoolean) {
          fields.add(allowedX);
        }
      case 'allowedCodeableConcept':
        if (allowedX is CodeableConcept) {
          fields.add(allowedX);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  MedicationRequestSubstitution clone() => copyWith();

  /// Copy function for [MedicationRequestSubstitution]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MedicationRequestSubstitutionCopyWith<MedicationRequestSubstitution>
      get copyWith => _$MedicationRequestSubstitutionCopyWithImpl<
              MedicationRequestSubstitution>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationRequestSubstitution) {
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
