import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'medication_dispense.g.dart';

/// [MedicationDispense]
/// Indicates that a medication product is to be or has been dispensed for
/// a named person/patient. This includes a description of the medication
/// product (supply) provided and the instructions for administering the
/// medication. The medication dispense is the result of a pharmacy system
/// responding to a medication order.
class MedicationDispense extends DomainResource {
  /// Primary constructor for
  /// [MedicationDispense]

  const MedicationDispense({
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
    this.partOf,
    required this.status,
    this.notPerformedReason,
    this.statusChanged,
    this.category,
    required this.medication,
    required this.subject,
    this.encounter,
    this.supportingInformation,
    this.performer,
    this.location,
    this.authorizingPrescription,
    this.type,
    this.quantity,
    this.daysSupply,
    this.recorded,
    this.whenPrepared,
    this.whenHandedOver,
    this.destination,
    this.receiver,
    this.note,
    this.renderedDosageInstruction,
    this.dosageInstruction,
    this.substitution,
    this.eventHistory,
  }) : super(
          resourceType: R6ResourceType.MedicationDispense,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationDispense.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicationDispense(
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
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<MedicationDispenseStatusCodes>(
        json,
        'status',
        MedicationDispenseStatusCodes.fromJson,
      )!,
      notPerformedReason: JsonParser.parseObject<CodeableReference>(
        json,
        'notPerformedReason',
        CodeableReference.fromJson,
      ),
      statusChanged: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'statusChanged',
        FhirDateTime.fromJson,
      ),
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
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
      performer: (json['performer'] as List<dynamic>?)
          ?.map<MedicationDispensePerformer>(
            (v) => MedicationDispensePerformer.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      location: JsonParser.parseObject<Reference>(
        json,
        'location',
        Reference.fromJson,
      ),
      authorizingPrescription:
          (json['authorizingPrescription'] as List<dynamic>?)
              ?.map<Reference>(
                (v) => Reference.fromJson(
                  {...v as Map<String, dynamic>},
                ),
              )
              .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
      ),
      daysSupply: JsonParser.parseObject<Quantity>(
        json,
        'daysSupply',
        Quantity.fromJson,
      ),
      recorded: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'recorded',
        FhirDateTime.fromJson,
      ),
      whenPrepared: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'whenPrepared',
        FhirDateTime.fromJson,
      ),
      whenHandedOver: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'whenHandedOver',
        FhirDateTime.fromJson,
      ),
      destination: JsonParser.parseObject<Reference>(
        json,
        'destination',
        Reference.fromJson,
      ),
      receiver: (json['receiver'] as List<dynamic>?)
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
      dosageInstruction: (json['dosageInstruction'] as List<dynamic>?)
          ?.map<Dosage>(
            (v) => Dosage.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      substitution: JsonParser.parseObject<MedicationDispenseSubstitution>(
        json,
        'substitution',
        MedicationDispenseSubstitution.fromJson,
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

  /// Deserialize [MedicationDispense]
  /// from a [String] or [YamlMap] object
  factory MedicationDispense.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationDispense.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationDispense.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationDispense '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationDispense]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationDispense.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationDispense.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationDispense';

  /// [identifier]
  /// Identifiers associated with this Medication Dispense that are defined
  /// by business processes and/or used to refer to it when a direct URL
  /// reference to the resource itself is not appropriate. They are business
  /// identifiers assigned to this resource by the performer or other systems
  /// and remain constant as the resource is updated and propagates from
  /// server to server.
  final List<Identifier>? identifier;

  /// [basedOn]
  /// A plan that is fulfilled in whole or in part by this
  /// MedicationDispense.
  final List<Reference>? basedOn;

  /// [partOf]
  /// The procedure or medication administration that triggered the dispense.
  final List<Reference>? partOf;

  /// [status]
  /// A code specifying the state of the set of dispense events.
  final MedicationDispenseStatusCodes status;

  /// [notPerformedReason]
  /// Indicates the reason why a dispense was not performed.
  final CodeableReference? notPerformedReason;

  /// [statusChanged]
  /// The date (and maybe time) when the status of the dispense record
  /// changed.
  final FhirDateTime? statusChanged;

  /// [category]
  /// Indicates the type of medication dispense (for example, drug
  /// classification like ATC, where meds would be administered, legal
  /// category of the medication.).
  final List<CodeableConcept>? category;

  /// [medication]
  /// Identifies the medication supplied. This is either a link to a resource
  /// representing the details of the medication or a simple attribute
  /// carrying a code that identifies the medication from a known list of
  /// medications.
  final CodeableReference medication;

  /// [subject]
  /// A link to a resource representing the person or the group to whom the
  /// medication will be given.
  final Reference subject;

  /// [encounter]
  /// The encounter that establishes the context for this event.
  final Reference? encounter;

  /// [supportingInformation]
  /// Additional information that supports the medication being dispensed.
  /// For example, there may be requirements that a specific lab test has
  /// been completed prior to dispensing or the patient's weight at the time
  /// of dispensing is documented.
  final List<Reference>? supportingInformation;

  /// [performer]
  /// Indicates who or what performed the event.
  final List<MedicationDispensePerformer>? performer;

  /// [location]
  /// The principal physical location where the dispense was performed.
  final Reference? location;

  /// [authorizingPrescription]
  /// Indicates the medication order that is being dispensed against.
  final List<Reference>? authorizingPrescription;

  /// [type]
  /// Indicates the type of dispensing event that is performed. For example,
  /// Trial Fill, Completion of Trial, Partial Fill, Emergency Fill, Samples,
  /// etc.
  final CodeableConcept? type;

  /// [quantity]
  /// The amount of medication that has been dispensed. Includes unit of
  /// measure.
  final Quantity? quantity;

  /// [daysSupply]
  /// The amount of medication expressed as a timing amount.
  final Quantity? daysSupply;

  /// [recorded]
  /// The date (and maybe time) when the dispense activity started if
  /// whenPrepared or whenHandedOver is not populated.
  final FhirDateTime? recorded;

  /// [whenPrepared]
  /// The time when the dispensed product was packaged and reviewed.
  final FhirDateTime? whenPrepared;

  /// [whenHandedOver]
  /// The time the dispensed product was provided to the patient or their
  /// representative.
  final FhirDateTime? whenHandedOver;

  /// [destination]
  /// Identification of the facility/location where the medication was/will
  /// be shipped to, as part of the dispense event.
  final Reference? destination;

  /// [receiver]
  /// Identifies the person who picked up the medication or the location of
  /// where the medication was delivered. This will usually be a patient or
  /// their caregiver, but some cases exist where it can be a healthcare
  /// professional or a location.
  final List<Reference>? receiver;

  /// [note]
  /// Extra information about the dispense that could not be conveyed in the
  /// other attributes.
  final List<Annotation>? note;

  /// [renderedDosageInstruction]
  /// The full representation of the dose of the medication included in all
  /// dosage instructions. To be used when multiple dosage instructions are
  /// included to represent complex dosing such as increasing or tapering
  /// doses.
  final FhirMarkdown? renderedDosageInstruction;

  /// [dosageInstruction]
  /// Indicates how the medication is to be used by the patient.
  final List<Dosage>? dosageInstruction;

  /// [substitution]
  /// Indicates whether or not substitution was made as part of the dispense.
  /// In some cases, substitution will be expected but does not happen, in
  /// other cases substitution is not expected but does happen. This block
  /// explains what substitution did or did not happen and why. If nothing is
  /// specified, substitution was not done.
  final MedicationDispenseSubstitution? substitution;

  /// [eventHistory]
  /// A summary of the events of interest that have occurred, such as when
  /// the dispense was verified.
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
      'partOf',
      partOf,
    );
    addField(
      'status',
      status,
    );
    addField(
      'notPerformedReason',
      notPerformedReason,
    );
    addField(
      'statusChanged',
      statusChanged,
    );
    addField(
      'category',
      category,
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
      'encounter',
      encounter,
    );
    addField(
      'supportingInformation',
      supportingInformation,
    );
    addField(
      'performer',
      performer,
    );
    addField(
      'location',
      location,
    );
    addField(
      'authorizingPrescription',
      authorizingPrescription,
    );
    addField(
      'type',
      type,
    );
    addField(
      'quantity',
      quantity,
    );
    addField(
      'daysSupply',
      daysSupply,
    );
    addField(
      'recorded',
      recorded,
    );
    addField(
      'whenPrepared',
      whenPrepared,
    );
    addField(
      'whenHandedOver',
      whenHandedOver,
    );
    addField(
      'destination',
      destination,
    );
    addField(
      'receiver',
      receiver,
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
      'dosageInstruction',
      dosageInstruction,
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
      'partOf',
      'status',
      'notPerformedReason',
      'statusChanged',
      'category',
      'medication',
      'subject',
      'encounter',
      'supportingInformation',
      'performer',
      'location',
      'authorizingPrescription',
      'type',
      'quantity',
      'daysSupply',
      'recorded',
      'whenPrepared',
      'whenHandedOver',
      'destination',
      'receiver',
      'note',
      'renderedDosageInstruction',
      'dosageInstruction',
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
      case 'partOf':
        if (partOf != null) {
          fields.addAll(partOf!);
        }
      case 'status':
        fields.add(status);
      case 'notPerformedReason':
        if (notPerformedReason != null) {
          fields.add(notPerformedReason!);
        }
      case 'statusChanged':
        if (statusChanged != null) {
          fields.add(statusChanged!);
        }
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'medication':
        fields.add(medication);
      case 'subject':
        fields.add(subject);
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'supportingInformation':
        if (supportingInformation != null) {
          fields.addAll(supportingInformation!);
        }
      case 'performer':
        if (performer != null) {
          fields.addAll(performer!);
        }
      case 'location':
        if (location != null) {
          fields.add(location!);
        }
      case 'authorizingPrescription':
        if (authorizingPrescription != null) {
          fields.addAll(authorizingPrescription!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'daysSupply':
        if (daysSupply != null) {
          fields.add(daysSupply!);
        }
      case 'recorded':
        if (recorded != null) {
          fields.add(recorded!);
        }
      case 'whenPrepared':
        if (whenPrepared != null) {
          fields.add(whenPrepared!);
        }
      case 'whenHandedOver':
        if (whenHandedOver != null) {
          fields.add(whenHandedOver!);
        }
      case 'destination':
        if (destination != null) {
          fields.add(destination!);
        }
      case 'receiver':
        if (receiver != null) {
          fields.addAll(receiver!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'renderedDosageInstruction':
        if (renderedDosageInstruction != null) {
          fields.add(renderedDosageInstruction!);
        }
      case 'dosageInstruction':
        if (dosageInstruction != null) {
          fields.addAll(dosageInstruction!);
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
  MedicationDispense clone() => copyWith();

  /// Copy function for [MedicationDispense]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MedicationDispenseCopyWith<MedicationDispense> get copyWith =>
      _$MedicationDispenseCopyWithImpl<MedicationDispense>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationDispense) {
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
      notPerformedReason,
      o.notPerformedReason,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      statusChanged,
      o.statusChanged,
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
    if (!listEquals<MedicationDispensePerformer>(
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
    if (!listEquals<Reference>(
      authorizingPrescription,
      o.authorizingPrescription,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
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
      daysSupply,
      o.daysSupply,
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
      whenPrepared,
      o.whenPrepared,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      whenHandedOver,
      o.whenHandedOver,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      destination,
      o.destination,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      receiver,
      o.receiver,
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
    if (!listEquals<Dosage>(
      dosageInstruction,
      o.dosageInstruction,
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

/// [MedicationDispensePerformer]
/// Indicates who or what performed the event.
class MedicationDispensePerformer extends BackboneElement {
  /// Primary constructor for
  /// [MedicationDispensePerformer]

  const MedicationDispensePerformer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    required this.actor,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationDispensePerformer.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicationDispensePerformer(
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
    );
  }

  /// Deserialize [MedicationDispensePerformer]
  /// from a [String] or [YamlMap] object
  factory MedicationDispensePerformer.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationDispensePerformer.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationDispensePerformer.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationDispensePerformer '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationDispensePerformer]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationDispensePerformer.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationDispensePerformer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationDispensePerformer';

  /// [function_]
  /// Distinguishes the type of performer in the dispense. For example, date
  /// enterer, packager, final checker.
  final CodeableConcept? function_;

  /// [actor]
  /// The device, practitioner, etc. who performed the action. It should be
  /// assumed that the actor is the dispenser of the medication.
  final Reference actor;
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
  MedicationDispensePerformer clone() => copyWith();

  /// Copy function for [MedicationDispensePerformer]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MedicationDispensePerformerCopyWith<MedicationDispensePerformer>
      get copyWith => _$MedicationDispensePerformerCopyWithImpl<
              MedicationDispensePerformer>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationDispensePerformer) {
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
    return true;
  }
}

/// [MedicationDispenseSubstitution]
/// Indicates whether or not substitution was made as part of the dispense.
/// In some cases, substitution will be expected but does not happen, in
/// other cases substitution is not expected but does happen. This block
/// explains what substitution did or did not happen and why. If nothing is
/// specified, substitution was not done.
class MedicationDispenseSubstitution extends BackboneElement {
  /// Primary constructor for
  /// [MedicationDispenseSubstitution]

  const MedicationDispenseSubstitution({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.wasSubstituted,
    this.type,
    this.reason,
    this.responsibleParty,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationDispenseSubstitution.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicationDispenseSubstitution(
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
      wasSubstituted: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'wasSubstituted',
        FhirBoolean.fromJson,
      )!,
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      reason: (json['reason'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      responsibleParty: JsonParser.parseObject<Reference>(
        json,
        'responsibleParty',
        Reference.fromJson,
      ),
    );
  }

  /// Deserialize [MedicationDispenseSubstitution]
  /// from a [String] or [YamlMap] object
  factory MedicationDispenseSubstitution.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationDispenseSubstitution.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationDispenseSubstitution.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationDispenseSubstitution '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationDispenseSubstitution]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationDispenseSubstitution.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationDispenseSubstitution.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationDispenseSubstitution';

  /// [wasSubstituted]
  /// True if the dispenser dispensed a different drug or product from what
  /// was prescribed.
  final FhirBoolean wasSubstituted;

  /// [type]
  /// A code signifying whether a different drug was dispensed from what was
  /// prescribed.
  final CodeableConcept? type;

  /// [reason]
  /// Indicates the reason for the substitution (or lack of substitution)
  /// from what was prescribed.
  final List<CodeableConcept>? reason;

  /// [responsibleParty]
  /// The person or organization that has primary responsibility for the
  /// substitution.
  final Reference? responsibleParty;
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
      'wasSubstituted',
      wasSubstituted,
    );
    addField(
      'type',
      type,
    );
    addField(
      'reason',
      reason,
    );
    addField(
      'responsibleParty',
      responsibleParty,
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
      'wasSubstituted',
      'type',
      'reason',
      'responsibleParty',
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
      case 'wasSubstituted':
        fields.add(wasSubstituted);
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'reason':
        if (reason != null) {
          fields.addAll(reason!);
        }
      case 'responsibleParty':
        if (responsibleParty != null) {
          fields.add(responsibleParty!);
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
  MedicationDispenseSubstitution clone() => copyWith();

  /// Copy function for [MedicationDispenseSubstitution]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MedicationDispenseSubstitutionCopyWith<MedicationDispenseSubstitution>
      get copyWith => _$MedicationDispenseSubstitutionCopyWithImpl<
              MedicationDispenseSubstitution>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationDispenseSubstitution) {
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
      wasSubstituted,
      o.wasSubstituted,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      reason,
      o.reason,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      responsibleParty,
      o.responsibleParty,
    )) {
      return false;
    }
    return true;
  }
}
