import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'care_plan.g.dart';

/// [CarePlan]
/// Describes the intention of how one or more practitioners intend to
/// deliver care for a particular patient, group or community for a period
/// of time, possibly limited to care for a specific condition or set of
/// conditions.
class CarePlan extends DomainResource {
  /// Primary constructor for
  /// [CarePlan]

  const CarePlan({
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
    this.replaces,
    this.partOf,
    required this.status,
    required this.intent,
    this.category,
    this.title,
    this.description,
    required this.subject,
    this.encounter,
    this.period,
    this.created,
    this.custodian,
    this.contributor,
    this.careTeam,
    this.addresses,
    this.supportingInfo,
    this.goal,
    this.activity,
    this.note,
  }) : super(
          resourceType: R5ResourceType.CarePlan,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CarePlan.fromJson(
    Map<String, dynamic> json,
  ) {
    return CarePlan(
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
      replaces: (json['replaces'] as List<dynamic>?)
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
      status: JsonParser.parsePrimitive<RequestStatus>(
        json,
        'status',
        RequestStatus.fromJson,
      )!,
      intent: JsonParser.parsePrimitive<CarePlanIntent>(
        json,
        'intent',
        CarePlanIntent.fromJson,
      )!,
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
      ),
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
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
      ),
      created: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'created',
        FhirDateTime.fromJson,
      ),
      custodian: JsonParser.parseObject<Reference>(
        json,
        'custodian',
        Reference.fromJson,
      ),
      contributor: (json['contributor'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      careTeam: (json['careTeam'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      addresses: (json['addresses'] as List<dynamic>?)
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
      goal: (json['goal'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      activity: (json['activity'] as List<dynamic>?)
          ?.map<CarePlanActivity>(
            (v) => CarePlanActivity.fromJson(
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
    );
  }

  /// Deserialize [CarePlan]
  /// from a [String] or [YamlMap] object
  factory CarePlan.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CarePlan.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CarePlan.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CarePlan '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CarePlan]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CarePlan.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CarePlan.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CarePlan';

  /// [identifier]
  /// Business identifiers assigned to this care plan by the performer or
  /// other systems which remain constant as the resource is updated and
  /// propagates from server to server.
  final List<Identifier>? identifier;

  /// [instantiatesCanonical]
  /// The URL pointing to a FHIR-defined protocol, guideline, questionnaire
  /// or other definition that is adhered to in whole or in part by this
  /// CarePlan.
  final List<FhirCanonical>? instantiatesCanonical;

  /// [instantiatesUri]
  /// The URL pointing to an externally maintained protocol, guideline,
  /// questionnaire or other definition that is adhered to in whole or in
  /// part by this CarePlan.
  final List<FhirUri>? instantiatesUri;

  /// [basedOn]
  /// A higher-level request resource (i.e. a plan, proposal or order) that
  /// is fulfilled in whole or in part by this care plan.
  final List<Reference>? basedOn;

  /// [replaces]
  /// Completed or terminated care plan whose function is taken by this new
  /// care plan.
  final List<Reference>? replaces;

  /// [partOf]
  /// A larger care plan of which this particular care plan is a component or
  /// step.
  final List<Reference>? partOf;

  /// [status]
  /// Indicates whether the plan is currently being acted upon, represents
  /// future intentions or is now a historical record.
  final RequestStatus status;

  /// [intent]
  /// Indicates the level of authority/intentionality associated with the
  /// care plan and where the care plan fits into the workflow chain.
  final CarePlanIntent intent;

  /// [category]
  /// Identifies what "kind" of plan this is to support differentiation
  /// between multiple co-existing plans; e.g. "Home health", "psychiatric",
  /// "asthma", "disease management", "wellness plan", etc.
  final List<CodeableConcept>? category;

  /// [title]
  /// Human-friendly name for the care plan.
  final FhirString? title;

  /// [description]
  /// A description of the scope and nature of the plan.
  final FhirString? description;

  /// [subject]
  /// Identifies the patient or group whose intended care is described by the
  /// plan.
  final Reference subject;

  /// [encounter]
  /// The Encounter during which this CarePlan was created or to which the
  /// creation of this record is tightly associated.
  final Reference? encounter;

  /// [period]
  /// Indicates when the plan did (or is intended to) come into effect and
  /// end.
  final Period? period;

  /// [created]
  /// Represents when this particular CarePlan record was created in the
  /// system, which is often a system-generated date.
  final FhirDateTime? created;

  /// [custodian]
  /// When populated, the custodian is responsible for the care plan. The
  /// care plan is attributed to the custodian.
  final Reference? custodian;

  /// [contributor]
  /// Identifies the individual(s), organization or device who provided the
  /// contents of the care plan.
  final List<Reference>? contributor;

  /// [careTeam]
  /// Identifies all people and organizations who are expected to be involved
  /// in the care envisioned by this plan.
  final List<Reference>? careTeam;

  /// [addresses]
  /// Identifies the conditions/problems/concerns/diagnoses/etc. whose
  /// management and/or mitigation are handled by this plan.
  final List<CodeableReference>? addresses;

  /// [supportingInfo]
  /// Identifies portions of the patient's record that specifically
  /// influenced the formation of the plan. These might include
  /// comorbidities, recent procedures, limitations, recent assessments, etc.
  final List<Reference>? supportingInfo;

  /// [goal]
  /// Describes the intended objective(s) of carrying out the care plan.
  final List<Reference>? goal;

  /// [activity]
  /// Identifies an action that has occurred or is a planned action to occur
  /// as part of the plan. For example, a medication to be used, lab tests to
  /// perform, self-monitoring that has occurred, education etc.
  final List<CarePlanActivity>? activity;

  /// [note]
  /// General notes about the care plan not covered elsewhere.
  final List<Annotation>? note;
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
      'replaces',
      replaces,
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
      'intent',
      intent,
    );
    addField(
      'category',
      category,
    );
    addField(
      'title',
      title,
    );
    addField(
      'description',
      description,
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
      'period',
      period,
    );
    addField(
      'created',
      created,
    );
    addField(
      'custodian',
      custodian,
    );
    addField(
      'contributor',
      contributor,
    );
    addField(
      'careTeam',
      careTeam,
    );
    addField(
      'addresses',
      addresses,
    );
    addField(
      'supportingInfo',
      supportingInfo,
    );
    addField(
      'goal',
      goal,
    );
    addField(
      'activity',
      activity,
    );
    addField(
      'note',
      note,
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
      'replaces',
      'partOf',
      'status',
      'intent',
      'category',
      'title',
      'description',
      'subject',
      'encounter',
      'period',
      'created',
      'custodian',
      'contributor',
      'careTeam',
      'addresses',
      'supportingInfo',
      'goal',
      'activity',
      'note',
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
      case 'replaces':
        if (replaces != null) {
          fields.addAll(replaces!);
        }
      case 'partOf':
        if (partOf != null) {
          fields.addAll(partOf!);
        }
      case 'status':
        fields.add(status);
      case 'intent':
        fields.add(intent);
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'subject':
        fields.add(subject);
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      case 'created':
        if (created != null) {
          fields.add(created!);
        }
      case 'custodian':
        if (custodian != null) {
          fields.add(custodian!);
        }
      case 'contributor':
        if (contributor != null) {
          fields.addAll(contributor!);
        }
      case 'careTeam':
        if (careTeam != null) {
          fields.addAll(careTeam!);
        }
      case 'addresses':
        if (addresses != null) {
          fields.addAll(addresses!);
        }
      case 'supportingInfo':
        if (supportingInfo != null) {
          fields.addAll(supportingInfo!);
        }
      case 'goal':
        if (goal != null) {
          fields.addAll(goal!);
        }
      case 'activity':
        if (activity != null) {
          fields.addAll(activity!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
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
  CarePlan clone() => copyWith();

  /// Copy function for [CarePlan]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $CarePlanCopyWith<CarePlan> get copyWith => _$CarePlanCopyWithImpl<CarePlan>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CarePlan) {
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
      replaces,
      o.replaces,
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
      title,
      o.title,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
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
    if (!equalsDeepWithNull(
      period,
      o.period,
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
      custodian,
      o.custodian,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      contributor,
      o.contributor,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      careTeam,
      o.careTeam,
    )) {
      return false;
    }
    if (!listEquals<CodeableReference>(
      addresses,
      o.addresses,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      supportingInfo,
      o.supportingInfo,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      goal,
      o.goal,
    )) {
      return false;
    }
    if (!listEquals<CarePlanActivity>(
      activity,
      o.activity,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    return true;
  }
}

/// [CarePlanActivity]
/// Identifies an action that has occurred or is a planned action to occur
/// as part of the plan. For example, a medication to be used, lab tests to
/// perform, self-monitoring that has occurred, education etc.
class CarePlanActivity extends BackboneElement {
  /// Primary constructor for
  /// [CarePlanActivity]

  const CarePlanActivity({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.performedActivity,
    this.progress,
    this.plannedActivityReference,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CarePlanActivity.fromJson(
    Map<String, dynamic> json,
  ) {
    return CarePlanActivity(
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
      performedActivity: (json['performedActivity'] as List<dynamic>?)
          ?.map<CodeableReference>(
            (v) => CodeableReference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      progress: (json['progress'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      plannedActivityReference: JsonParser.parseObject<Reference>(
        json,
        'plannedActivityReference',
        Reference.fromJson,
      ),
    );
  }

  /// Deserialize [CarePlanActivity]
  /// from a [String] or [YamlMap] object
  factory CarePlanActivity.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CarePlanActivity.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CarePlanActivity.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CarePlanActivity '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CarePlanActivity]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CarePlanActivity.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CarePlanActivity.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CarePlanActivity';

  /// [performedActivity]
  /// Identifies the activity that was performed. For example, an activity
  /// could be patient education, exercise, or a medication administration.
  /// The reference to an "event" resource, such as Procedure or Encounter or
  /// Observation, represents the activity that was performed. The requested
  /// activity can be conveyed using the
  /// CarePlan.activity.plannedActivityReference (a reference to a “request”
  /// resource).
  final List<CodeableReference>? performedActivity;

  /// [progress]
  /// Notes about the adherence/status/progress of the activity.
  final List<Annotation>? progress;

  /// [plannedActivityReference]
  /// The details of the proposed activity represented in a specific
  /// resource.
  final Reference? plannedActivityReference;
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
      'performedActivity',
      performedActivity,
    );
    addField(
      'progress',
      progress,
    );
    addField(
      'plannedActivityReference',
      plannedActivityReference,
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
      'performedActivity',
      'progress',
      'plannedActivityReference',
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
      case 'performedActivity':
        if (performedActivity != null) {
          fields.addAll(performedActivity!);
        }
      case 'progress':
        if (progress != null) {
          fields.addAll(progress!);
        }
      case 'plannedActivityReference':
        if (plannedActivityReference != null) {
          fields.add(plannedActivityReference!);
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
  CarePlanActivity clone() => copyWith();

  /// Copy function for [CarePlanActivity]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $CarePlanActivityCopyWith<CarePlanActivity> get copyWith =>
      _$CarePlanActivityCopyWithImpl<CarePlanActivity>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CarePlanActivity) {
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
    if (!listEquals<CodeableReference>(
      performedActivity,
      o.performedActivity,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      progress,
      o.progress,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      plannedActivityReference,
      o.plannedActivityReference,
    )) {
      return false;
    }
    return true;
  }
}
