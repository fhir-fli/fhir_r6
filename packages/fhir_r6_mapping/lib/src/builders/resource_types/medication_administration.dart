import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        MedicationAdministration,
        MedicationAdministrationDosage,
        MedicationAdministrationPerformer,
        R5ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [MedicationAdministrationBuilder]
/// Describes the event of a patient consuming or otherwise being
/// administered a medication. This may be as simple as swallowing a tablet
/// or it may be a long running infusion. Related resources tie this event
/// to the authorizing prescription, and the specific encounter between
/// patient and health care practitioner.
class MedicationAdministrationBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [MedicationAdministrationBuilder]

  MedicationAdministrationBuilder({
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
    this.status,
    this.statusReason,
    this.category,
    this.medication,
    this.subject,
    this.encounter,
    this.supportingInformation,
    OccurenceXMedicationAdministrationBuilder? occurenceX,
    FhirDateTimeBuilder? occurenceDateTime,
    PeriodBuilder? occurencePeriod,
    TimingBuilder? occurenceTiming,
    this.recorded,
    this.isSubPotent,
    this.subPotentReason,
    this.performer,
    this.reason,
    this.request,
    this.device,
    this.note,
    this.dosage,
    this.eventHistory,
  })  : occurenceX = occurenceX ??
            occurenceDateTime ??
            occurencePeriod ??
            occurenceTiming,
        super(
          objectPath: 'MedicationAdministration',
          resourceType: R5ResourceType.MedicationAdministration,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicationAdministrationBuilder.empty() =>
      MedicationAdministrationBuilder(
        status: MedicationAdministrationStatusCodesBuilder.values.first,
        medication: CodeableReferenceBuilder.empty(),
        subject: ReferenceBuilder.empty(),
        occurenceX: FhirDateTimeBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationAdministrationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationAdministration';
    return MedicationAdministrationBuilder(
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
      status:
          JsonParser.parsePrimitive<MedicationAdministrationStatusCodesBuilder>(
        json,
        'status',
        MedicationAdministrationStatusCodesBuilder.fromJson,
        '$objectPath.status',
      ),
      statusReason: (json['statusReason'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.statusReason',
              },
            ),
          )
          .toList(),
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
      occurenceX: JsonParser.parsePolymorphic<
          OccurenceXMedicationAdministrationBuilder>(
        json,
        {
          'occurenceDateTime': FhirDateTimeBuilder.fromJson,
          'occurencePeriod': PeriodBuilder.fromJson,
          'occurenceTiming': TimingBuilder.fromJson,
        },
        objectPath,
      ),
      recorded: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'recorded',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.recorded',
      ),
      isSubPotent: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'isSubPotent',
        FhirBooleanBuilder.fromJson,
        '$objectPath.isSubPotent',
      ),
      subPotentReason: (json['subPotentReason'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subPotentReason',
              },
            ),
          )
          .toList(),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<MedicationAdministrationPerformerBuilder>(
            (v) => MedicationAdministrationPerformerBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.performer',
              },
            ),
          )
          .toList(),
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
      request: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'request',
        ReferenceBuilder.fromJson,
        '$objectPath.request',
      ),
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
      dosage: JsonParser.parseObject<MedicationAdministrationDosageBuilder>(
        json,
        'dosage',
        MedicationAdministrationDosageBuilder.fromJson,
        '$objectPath.dosage',
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

  /// Deserialize [MedicationAdministrationBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicationAdministrationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationAdministrationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationAdministrationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationAdministrationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationAdministrationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationAdministrationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationAdministrationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationAdministration';

  /// [identifier]
  /// Identifiers associated with this Medication Administration that are
  /// defined by business processes and/or used to refer to it when a direct
  /// URL reference to the resource itself is not appropriate. They are
  /// business identifiers assigned to this resource by the performer or
  /// other systems and remain constant as the resource is updated and
  /// propagates from server to server.
  List<IdentifierBuilder>? identifier;

  /// [basedOn]
  /// A plan that is fulfilled in whole or in part by this
  /// MedicationAdministration.
  List<ReferenceBuilder>? basedOn;

  /// [partOf]
  /// A larger event of which this particular event is a component or step.
  List<ReferenceBuilder>? partOf;

  /// [status]
  /// Will generally be set to show that the administration has been
  /// completed. For some long running administrations such as infusions, it
  /// is possible for an administration to be started but not completed or it
  /// may be paused while some other process is under way.
  MedicationAdministrationStatusCodesBuilder? status;

  /// [statusReason]
  /// A code indicating why the administration was not performed.
  List<CodeableConceptBuilder>? statusReason;

  /// [category]
  /// The type of medication administration (for example, drug classification
  /// like ATC, where meds would be administered, legal category of the
  /// medication).
  List<CodeableConceptBuilder>? category;

  /// [medication]
  /// Identifies the medication that was administered. This is either a link
  /// to a resource representing the details of the medication or a simple
  /// attribute carrying a code that identifies the medication from a known
  /// list of medications.
  CodeableReferenceBuilder? medication;

  /// [subject]
  /// The person or animal or group receiving the medication.
  ReferenceBuilder? subject;

  /// [encounter]
  /// The visit, admission, or other contact between patient and health care
  /// provider during which the medication administration was performed.
  ReferenceBuilder? encounter;

  /// [supportingInformation]
  /// Additional information (for example, patient height and weight) that
  /// supports the administration of the medication. This attribute can be
  /// used to provide documentation of specific characteristics of the
  /// patient present at the time of administration. For example, if the dose
  /// says "give "x" if the heartrate exceeds "y"", then the heart rate can
  /// be included using this attribute.
  List<ReferenceBuilder>? supportingInformation;

  /// [occurenceX]
  /// A specific date/time or interval of time during which the
  /// administration took place (or did not take place). For many
  /// administrations, such as swallowing a tablet the use of dateTime is
  /// more appropriate.
  OccurenceXMedicationAdministrationBuilder? occurenceX;

  /// Getter for [occurenceDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get occurenceDateTime =>
      occurenceX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [occurencePeriod] as a PeriodBuilder
  PeriodBuilder? get occurencePeriod => occurenceX?.isAs<PeriodBuilder>();

  /// Getter for [occurenceTiming] as a TimingBuilder
  TimingBuilder? get occurenceTiming => occurenceX?.isAs<TimingBuilder>();

  /// [recorded]
  /// The date the occurrence of the MedicationAdministration was first
  /// captured in the record - potentially significantly after the occurrence
  /// of the event.
  FhirDateTimeBuilder? recorded;

  /// [isSubPotent]
  /// An indication that the full dose was not administered.
  FhirBooleanBuilder? isSubPotent;

  /// [subPotentReason]
  /// The reason or reasons why the full dose was not administered.
  List<CodeableConceptBuilder>? subPotentReason;

  /// [performer]
  /// The performer of the medication treatment. For devices this is the
  /// device that performed the administration of the medication. An IV Pump
  /// would be an example of a device that is performing the administration.
  /// Both the IV Pump and the practitioner that set the rate or bolus on the
  /// pump can be listed as performers.
  List<MedicationAdministrationPerformerBuilder>? performer;

  /// [reason]
  /// A code, Condition or observation that supports why the medication was
  /// administered.
  List<CodeableReferenceBuilder>? reason;

  /// [request]
  /// The original request, instruction or authority to perform the
  /// administration.
  ReferenceBuilder? request;

  /// [device]
  /// The device that is to be used for the administration of the medication
  /// (for example, PCA Pump).
  List<CodeableReferenceBuilder>? device;

  /// [note]
  /// Extra information about the medication administration that is not
  /// conveyed by the other attributes.
  List<AnnotationBuilder>? note;

  /// [dosage]
  /// Describes the medication dosage information details e.g. dose, rate,
  /// site, route, etc.
  MedicationAdministrationDosageBuilder? dosage;

  /// [eventHistory]
  /// A summary of the events of interest that have occurred, such as when
  /// the administration was verified.
  List<ReferenceBuilder>? eventHistory;

  /// Converts a [MedicationAdministrationBuilder]
  /// to [MedicationAdministration]
  @override
  MedicationAdministration build() =>
      MedicationAdministration.fromJson(toJson());

  /// Converts a [MedicationAdministrationBuilder]
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
    addField('partOf', partOf);
    addField('status', status);
    addField('statusReason', statusReason);
    addField('category', category);
    addField('medication', medication);
    addField('subject', subject);
    addField('encounter', encounter);
    addField('supportingInformation', supportingInformation);
    if (occurenceX != null) {
      final fhirType = occurenceX!.fhirType;
      addField('occurence${fhirType.capitalizeFirstLetter()}', occurenceX);
    }

    addField('recorded', recorded);
    addField('isSubPotent', isSubPotent);
    addField('subPotentReason', subPotentReason);
    addField('performer', performer);
    addField('reason', reason);
    addField('request', request);
    addField('device', device);
    addField('note', note);
    addField('dosage', dosage);
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
      'partOf',
      'status',
      'statusReason',
      'category',
      'medication',
      'subject',
      'encounter',
      'supportingInformation',
      'occurenceX',
      'recorded',
      'isSubPotent',
      'subPotentReason',
      'performer',
      'reason',
      'request',
      'device',
      'note',
      'dosage',
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
          fields.addAll(statusReason!);
        }
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'medication':
        if (medication != null) {
          fields.add(medication!);
        }
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'supportingInformation':
        if (supportingInformation != null) {
          fields.addAll(supportingInformation!);
        }
      case 'occurence':
        if (occurenceX != null) {
          fields.add(occurenceX!);
        }
      case 'occurenceX':
        if (occurenceX != null) {
          fields.add(occurenceX!);
        }
      case 'occurenceDateTime':
        if (occurenceX is FhirDateTimeBuilder) {
          fields.add(occurenceX!);
        }
      case 'occurencePeriod':
        if (occurenceX is PeriodBuilder) {
          fields.add(occurenceX!);
        }
      case 'occurenceTiming':
        if (occurenceX is TimingBuilder) {
          fields.add(occurenceX!);
        }
      case 'recorded':
        if (recorded != null) {
          fields.add(recorded!);
        }
      case 'isSubPotent':
        if (isSubPotent != null) {
          fields.add(isSubPotent!);
        }
      case 'subPotentReason':
        if (subPotentReason != null) {
          fields.addAll(subPotentReason!);
        }
      case 'performer':
        if (performer != null) {
          fields.addAll(performer!);
        }
      case 'reason':
        if (reason != null) {
          fields.addAll(reason!);
        }
      case 'request':
        if (request != null) {
          fields.add(request!);
        }
      case 'device':
        if (device != null) {
          fields.addAll(device!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'dosage':
        if (dosage != null) {
          fields.add(dosage!);
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
          if (child is MedicationAdministrationStatusCodesBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted =
                    MedicationAdministrationStatusCodesBuilder(stringValue);
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
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            statusReason = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            statusReason = [
              ...(statusReason ?? []),
              child,
            ];
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
      case 'occurence':
      case 'occurenceX':
        {
          if (child is OccurenceXMedicationAdministrationBuilder) {
            occurenceX = child;
            return;
          } else {
            if (child is FhirDateTimeBuilder) {
              occurenceX = child;
              return;
            }
            if (child is PeriodBuilder) {
              occurenceX = child;
              return;
            }
            if (child is TimingBuilder) {
              occurenceX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'occurenceDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            occurenceX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'occurencePeriod':
        {
          if (child is PeriodBuilder) {
            occurenceX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'occurenceTiming':
        {
          if (child is TimingBuilder) {
            occurenceX = child;
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
      case 'isSubPotent':
        {
          if (child is FhirBooleanBuilder) {
            isSubPotent = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                isSubPotent = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subPotentReason':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            subPotentReason = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            subPotentReason = [
              ...(subPotentReason ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'performer':
        {
          if (child is List<MedicationAdministrationPerformerBuilder>) {
            // Replace or create new list
            performer = child;
            return;
          } else if (child is MedicationAdministrationPerformerBuilder) {
            // Add single element to existing list or create new list
            performer = [
              ...(performer ?? []),
              child,
            ];
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
      case 'request':
        {
          if (child is ReferenceBuilder) {
            request = child;
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
      case 'dosage':
        {
          if (child is MedicationAdministrationDosageBuilder) {
            dosage = child;
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
      case 'partOf':
        return ['ReferenceBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'statusReason':
        return ['CodeableConceptBuilder'];
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'medication':
        return ['CodeableReferenceBuilder'];
      case 'subject':
        return ['ReferenceBuilder'];
      case 'encounter':
        return ['ReferenceBuilder'];
      case 'supportingInformation':
        return ['ReferenceBuilder'];
      case 'occurence':
      case 'occurenceX':
        return [
          'FhirDateTimeBuilder',
          'PeriodBuilder',
          'TimingBuilder',
        ];
      case 'occurenceDateTime':
        return ['FhirDateTimeBuilder'];
      case 'occurencePeriod':
        return ['PeriodBuilder'];
      case 'occurenceTiming':
        return ['TimingBuilder'];
      case 'recorded':
        return ['FhirDateTimeBuilder'];
      case 'isSubPotent':
        return ['FhirBooleanBuilder'];
      case 'subPotentReason':
        return ['CodeableConceptBuilder'];
      case 'performer':
        return ['MedicationAdministrationPerformerBuilder'];
      case 'reason':
        return ['CodeableReferenceBuilder'];
      case 'request':
        return ['ReferenceBuilder'];
      case 'device':
        return ['CodeableReferenceBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      case 'dosage':
        return ['MedicationAdministrationDosageBuilder'];
      case 'eventHistory':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationAdministrationBuilder]
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
      case 'partOf':
        {
          partOf = <ReferenceBuilder>[];
          return;
        }
      case 'status':
        {
          status = MedicationAdministrationStatusCodesBuilder.empty();
          return;
        }
      case 'statusReason':
        {
          statusReason = <CodeableConceptBuilder>[];
          return;
        }
      case 'category':
        {
          category = <CodeableConceptBuilder>[];
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
      case 'occurence':
      case 'occurenceX':
      case 'occurenceDateTime':
        {
          occurenceX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'occurencePeriod':
        {
          occurenceX = PeriodBuilder.empty();
          return;
        }
      case 'occurenceTiming':
        {
          occurenceX = TimingBuilder.empty();
          return;
        }
      case 'recorded':
        {
          recorded = FhirDateTimeBuilder.empty();
          return;
        }
      case 'isSubPotent':
        {
          isSubPotent = FhirBooleanBuilder.empty();
          return;
        }
      case 'subPotentReason':
        {
          subPotentReason = <CodeableConceptBuilder>[];
          return;
        }
      case 'performer':
        {
          performer = <MedicationAdministrationPerformerBuilder>[];
          return;
        }
      case 'reason':
        {
          reason = <CodeableReferenceBuilder>[];
          return;
        }
      case 'request':
        {
          request = ReferenceBuilder.empty();
          return;
        }
      case 'device':
        {
          device = <CodeableReferenceBuilder>[];
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      case 'dosage':
        {
          dosage = MedicationAdministrationDosageBuilder.empty();
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
  MedicationAdministrationBuilder clone() => throw UnimplementedError();
  @override
  MedicationAdministrationBuilder copyWith({
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
    List<ReferenceBuilder>? partOf,
    MedicationAdministrationStatusCodesBuilder? status,
    List<CodeableConceptBuilder>? statusReason,
    List<CodeableConceptBuilder>? category,
    CodeableReferenceBuilder? medication,
    ReferenceBuilder? subject,
    ReferenceBuilder? encounter,
    List<ReferenceBuilder>? supportingInformation,
    OccurenceXMedicationAdministrationBuilder? occurenceX,
    FhirDateTimeBuilder? recorded,
    FhirBooleanBuilder? isSubPotent,
    List<CodeableConceptBuilder>? subPotentReason,
    List<MedicationAdministrationPerformerBuilder>? performer,
    List<CodeableReferenceBuilder>? reason,
    ReferenceBuilder? request,
    List<CodeableReferenceBuilder>? device,
    List<AnnotationBuilder>? note,
    MedicationAdministrationDosageBuilder? dosage,
    List<ReferenceBuilder>? eventHistory,
    FhirDateTimeBuilder? occurenceDateTime,
    PeriodBuilder? occurencePeriod,
    TimingBuilder? occurenceTiming,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = MedicationAdministrationBuilder(
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
      partOf: partOf ?? this.partOf,
      status: status ?? this.status,
      statusReason: statusReason ?? this.statusReason,
      category: category ?? this.category,
      medication: medication ?? this.medication,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      supportingInformation:
          supportingInformation ?? this.supportingInformation,
      occurenceX: occurenceX ??
          occurenceDateTime ??
          occurencePeriod ??
          occurenceTiming ??
          this.occurenceX,
      recorded: recorded ?? this.recorded,
      isSubPotent: isSubPotent ?? this.isSubPotent,
      subPotentReason: subPotentReason ?? this.subPotentReason,
      performer: performer ?? this.performer,
      reason: reason ?? this.reason,
      request: request ?? this.request,
      device: device ?? this.device,
      note: note ?? this.note,
      dosage: dosage ?? this.dosage,
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
    if (o is! MedicationAdministrationBuilder) {
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
    if (!listEquals<CodeableConceptBuilder>(
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
    if (!listEquals<ReferenceBuilder>(
      supportingInformation,
      o.supportingInformation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      occurenceX,
      o.occurenceX,
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
      isSubPotent,
      o.isSubPotent,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      subPotentReason,
      o.subPotentReason,
    )) {
      return false;
    }
    if (!listEquals<MedicationAdministrationPerformerBuilder>(
      performer,
      o.performer,
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
      request,
      o.request,
    )) {
      return false;
    }
    if (!listEquals<CodeableReferenceBuilder>(
      device,
      o.device,
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
      dosage,
      o.dosage,
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

/// [MedicationAdministrationPerformerBuilder]
/// The performer of the medication treatment. For devices this is the
/// device that performed the administration of the medication. An IV Pump
/// would be an example of a device that is performing the administration.
/// Both the IV Pump and the practitioner that set the rate or bolus on the
/// pump can be listed as performers.
class MedicationAdministrationPerformerBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MedicationAdministrationPerformerBuilder]

  MedicationAdministrationPerformerBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    this.actor,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationAdministration.performer',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicationAdministrationPerformerBuilder.empty() =>
      MedicationAdministrationPerformerBuilder(
        actor: CodeableReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationAdministrationPerformerBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationAdministration.performer';
    return MedicationAdministrationPerformerBuilder(
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
      actor: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'actor',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.actor',
      ),
    );
  }

  /// Deserialize [MedicationAdministrationPerformerBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicationAdministrationPerformerBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationAdministrationPerformerBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationAdministrationPerformerBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationAdministrationPerformerBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationAdministrationPerformerBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationAdministrationPerformerBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationAdministrationPerformerBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationAdministrationPerformer';

  /// [function_]
  /// Distinguishes the type of involvement of the performer in the
  /// medication administration.
  CodeableConceptBuilder? function_;

  /// [actor]
  /// Indicates who or what performed the medication administration.
  CodeableReferenceBuilder? actor;

  /// Converts a [MedicationAdministrationPerformerBuilder]
  /// to [MedicationAdministrationPerformer]
  @override
  MedicationAdministrationPerformer build() =>
      MedicationAdministrationPerformer.fromJson(toJson());

  /// Converts a [MedicationAdministrationPerformerBuilder]
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
          if (child is CodeableReferenceBuilder) {
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
      case 'function':
        return ['CodeableConceptBuilder'];
      case 'actor':
        return ['CodeableReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationAdministrationPerformerBuilder]
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
          actor = CodeableReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MedicationAdministrationPerformerBuilder clone() =>
      throw UnimplementedError();
  @override
  MedicationAdministrationPerformerBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? function_,
    CodeableReferenceBuilder? actor,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MedicationAdministrationPerformerBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      function_: function_ ?? this.function_,
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
    if (o is! MedicationAdministrationPerformerBuilder) {
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
    return true;
  }
}

/// [MedicationAdministrationDosageBuilder]
/// Describes the medication dosage information details e.g. dose, rate,
/// site, route, etc.
class MedicationAdministrationDosageBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MedicationAdministrationDosageBuilder]

  MedicationAdministrationDosageBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.text,
    this.site,
    this.route,
    this.method,
    this.dose,
    RateXMedicationAdministrationDosageBuilder? rateX,
    RatioBuilder? rateRatio,
    QuantityBuilder? rateQuantity,
    super.disallowExtensions,
  })  : rateX = rateX ?? rateRatio ?? rateQuantity,
        super(
          objectPath: 'MedicationAdministration.dosage',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicationAdministrationDosageBuilder.empty() =>
      MedicationAdministrationDosageBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationAdministrationDosageBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationAdministration.dosage';
    return MedicationAdministrationDosageBuilder(
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
      text: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'text',
        FhirStringBuilder.fromJson,
        '$objectPath.text',
      ),
      site: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'site',
        CodeableConceptBuilder.fromJson,
        '$objectPath.site',
      ),
      route: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'route',
        CodeableConceptBuilder.fromJson,
        '$objectPath.route',
      ),
      method: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'method',
        CodeableConceptBuilder.fromJson,
        '$objectPath.method',
      ),
      dose: JsonParser.parseObject<QuantityBuilder>(
        json,
        'dose',
        QuantityBuilder.fromJson,
        '$objectPath.dose',
      ),
      rateX: JsonParser.parsePolymorphic<
          RateXMedicationAdministrationDosageBuilder>(
        json,
        {
          'rateRatio': RatioBuilder.fromJson,
          'rateQuantity': QuantityBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [MedicationAdministrationDosageBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicationAdministrationDosageBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationAdministrationDosageBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationAdministrationDosageBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationAdministrationDosageBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationAdministrationDosageBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationAdministrationDosageBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationAdministrationDosageBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationAdministrationDosage';

  /// [text]
  /// Free text dosage can be used for cases where the dosage administered is
  /// too complex to code. When coded dosage is present, the free text dosage
  /// may still be present for display to humans. The dosage instructions
  /// should reflect the dosage of the medication that was administered.
  FhirStringBuilder? text;

  /// [site]
  /// A coded specification of the anatomic site where the medication first
  /// entered the body. For example, "left arm".
  CodeableConceptBuilder? site;

  /// [route]
  /// A code specifying the route or physiological path of administration of
  /// a therapeutic agent into or onto the patient. For example, topical,
  /// intravenous, etc.
  CodeableConceptBuilder? route;

  /// [method]
  /// A coded value indicating the method by which the medication is intended
  /// to be or was introduced into or on the body. This attribute will most
  /// often NOT be populated. It is most commonly used for injections. For
  /// example, Slow Push, Deep IV.
  CodeableConceptBuilder? method;

  /// [dose]
  /// The amount of the medication given at one administration event. Use
  /// this value when the administration is essentially an instantaneous
  /// event such as a swallowing a tablet or giving an injection.
  QuantityBuilder? dose;

  /// [rateX]
  /// Identifies the speed with which the medication was or will be
  /// introduced into the patient. Typically, the rate for an infusion e.g.
  /// 100 ml per 1 hour or 100 ml/hr. May also be expressed as a rate per
  /// unit of time, e.g. 500 ml per 2 hours. Other examples: 200 mcg/min or
  /// 200 mcg/1 minute; 1 liter/8 hours.
  RateXMedicationAdministrationDosageBuilder? rateX;

  /// Getter for [rateRatio] as a RatioBuilder
  RatioBuilder? get rateRatio => rateX?.isAs<RatioBuilder>();

  /// Getter for [rateQuantity] as a QuantityBuilder
  QuantityBuilder? get rateQuantity => rateX?.isAs<QuantityBuilder>();

  /// Converts a [MedicationAdministrationDosageBuilder]
  /// to [MedicationAdministrationDosage]
  @override
  MedicationAdministrationDosage build() =>
      MedicationAdministrationDosage.fromJson(toJson());

  /// Converts a [MedicationAdministrationDosageBuilder]
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
    addField('text', text);
    addField('site', site);
    addField('route', route);
    addField('method', method);
    addField('dose', dose);
    if (rateX != null) {
      final fhirType = rateX!.fhirType;
      addField('rate${fhirType.capitalizeFirstLetter()}', rateX);
    }

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'text',
      'site',
      'route',
      'method',
      'dose',
      'rateX',
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
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'site':
        if (site != null) {
          fields.add(site!);
        }
      case 'route':
        if (route != null) {
          fields.add(route!);
        }
      case 'method':
        if (method != null) {
          fields.add(method!);
        }
      case 'dose':
        if (dose != null) {
          fields.add(dose!);
        }
      case 'rate':
        if (rateX != null) {
          fields.add(rateX!);
        }
      case 'rateX':
        if (rateX != null) {
          fields.add(rateX!);
        }
      case 'rateRatio':
        if (rateX is RatioBuilder) {
          fields.add(rateX!);
        }
      case 'rateQuantity':
        if (rateX is QuantityBuilder) {
          fields.add(rateX!);
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
      case 'text':
        {
          if (child is FhirStringBuilder) {
            text = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                text = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'site':
        {
          if (child is CodeableConceptBuilder) {
            site = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'route':
        {
          if (child is CodeableConceptBuilder) {
            route = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'method':
        {
          if (child is CodeableConceptBuilder) {
            method = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'dose':
        {
          if (child is QuantityBuilder) {
            dose = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'rate':
      case 'rateX':
        {
          if (child is RateXMedicationAdministrationDosageBuilder) {
            rateX = child;
            return;
          } else {
            if (child is RatioBuilder) {
              rateX = child;
              return;
            }
            if (child is QuantityBuilder) {
              rateX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'rateRatio':
        {
          if (child is RatioBuilder) {
            rateX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'rateQuantity':
        {
          if (child is QuantityBuilder) {
            rateX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
      case 'text':
        return ['FhirStringBuilder'];
      case 'site':
        return ['CodeableConceptBuilder'];
      case 'route':
        return ['CodeableConceptBuilder'];
      case 'method':
        return ['CodeableConceptBuilder'];
      case 'dose':
        return ['QuantityBuilder'];
      case 'rate':
      case 'rateX':
        return [
          'RatioBuilder',
          'QuantityBuilder',
        ];
      case 'rateRatio':
        return ['RatioBuilder'];
      case 'rateQuantity':
        return ['QuantityBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationAdministrationDosageBuilder]
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
      case 'text':
        {
          text = FhirStringBuilder.empty();
          return;
        }
      case 'site':
        {
          site = CodeableConceptBuilder.empty();
          return;
        }
      case 'route':
        {
          route = CodeableConceptBuilder.empty();
          return;
        }
      case 'method':
        {
          method = CodeableConceptBuilder.empty();
          return;
        }
      case 'dose':
        {
          dose = QuantityBuilder.empty();
          return;
        }
      case 'rate':
      case 'rateX':
      case 'rateRatio':
        {
          rateX = RatioBuilder.empty();
          return;
        }
      case 'rateQuantity':
        {
          rateX = QuantityBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MedicationAdministrationDosageBuilder clone() => throw UnimplementedError();
  @override
  MedicationAdministrationDosageBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? text,
    CodeableConceptBuilder? site,
    CodeableConceptBuilder? route,
    CodeableConceptBuilder? method,
    QuantityBuilder? dose,
    RateXMedicationAdministrationDosageBuilder? rateX,
    RatioBuilder? rateRatio,
    QuantityBuilder? rateQuantity,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MedicationAdministrationDosageBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      text: text ?? this.text,
      site: site ?? this.site,
      route: route ?? this.route,
      method: method ?? this.method,
      dose: dose ?? this.dose,
      rateX: rateX ?? rateRatio ?? rateQuantity ?? this.rateX,
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
    if (o is! MedicationAdministrationDosageBuilder) {
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
      text,
      o.text,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      site,
      o.site,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      route,
      o.route,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      method,
      o.method,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      dose,
      o.dose,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      rateX,
      o.rateX,
    )) {
      return false;
    }
    return true;
  }
}
