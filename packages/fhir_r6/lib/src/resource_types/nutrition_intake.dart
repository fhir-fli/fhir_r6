import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'nutrition_intake.g.dart';

/// [NutritionIntake]
/// A record of intake by a patient. A NutritionIntake may indicate that
/// the patient may be consuming the food (i.e., solid and/or liquid),
/// breastmilk, infant formula, supplements, enteral formula now or has
/// consumed it in the past. The source of this information can be the
/// patient, significant other (such as a family member or spouse), or a
/// clinician. A common scenario where this information is captured is
/// during the history taking process during a patient visit or stay or
/// through an app that tracks food (i.e., solid and/or liquid),
/// breastmilk, infant formula, supplements, enteral formula consumed. The
/// consumption information may come from sources such as the patient's
/// memory, from a nutrition label, or from a clinician documenting
/// observed intake.
class NutritionIntake extends DomainResource {
  /// Primary constructor for
  /// [NutritionIntake]

  const NutritionIntake({
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
    this.statusReason,
    this.code,
    required this.subject,
    this.encounter,
    OccurrenceXNutritionIntake? occurrenceX,
    FhirDateTime? occurrenceDateTime,
    Period? occurrencePeriod,
    this.recorded,
    ReportedXNutritionIntake? reportedX,
    FhirBoolean? reportedBoolean,
    Reference? reportedReference,
    this.nutritionItem,
    this.performer,
    this.location,
    this.derivedFrom,
    this.reason,
    this.note,
  })  : occurrenceX = occurrenceX ?? occurrenceDateTime ?? occurrencePeriod,
        reportedX = reportedX ?? reportedBoolean ?? reportedReference,
        super(
          resourceType: R6ResourceType.NutritionIntake,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionIntake.fromJson(
    Map<String, dynamic> json,
  ) {
    return NutritionIntake(
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
      status: JsonParser.parsePrimitive<EventStatus>(
        json,
        'status',
        EventStatus.fromJson,
      )!,
      statusReason: (json['statusReason'] as List<dynamic>?)
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
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
      ),
      occurrenceX: JsonParser.parsePolymorphic<OccurrenceXNutritionIntake>(
        json,
        {
          'occurrenceDateTime': FhirDateTime.fromJson,
          'occurrencePeriod': Period.fromJson,
        },
      ),
      recorded: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'recorded',
        FhirDateTime.fromJson,
      ),
      reportedX: JsonParser.parsePolymorphic<ReportedXNutritionIntake>(
        json,
        {
          'reportedBoolean': FhirBoolean.fromJson,
          'reportedReference': Reference.fromJson,
        },
      ),
      nutritionItem: (json['nutritionItem'] as List<dynamic>?)
          ?.map<NutritionIntakeNutritionItem>(
            (v) => NutritionIntakeNutritionItem.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<NutritionIntakePerformer>(
            (v) => NutritionIntakePerformer.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      location: JsonParser.parseObject<Reference>(
        json,
        'location',
        Reference.fromJson,
      ),
      derivedFrom: (json['derivedFrom'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      reason: (json['reason'] as List<dynamic>?)
          ?.map<CodeableReference>(
            (v) => CodeableReference.fromJson(
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

  /// Deserialize [NutritionIntake]
  /// from a [String] or [YamlMap] object
  factory NutritionIntake.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionIntake.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionIntake.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionIntake '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionIntake]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionIntake.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return NutritionIntake.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'NutritionIntake';

  /// [identifier]
  /// Identifiers associated with this Nutrition Intake that are defined by
  /// business processes and/or used to refer to it when a direct URL
  /// reference to the resource itself is not appropriate. They are business
  /// identifiers assigned to this resource by the performer or other systems
  /// and remain constant as the resource is updated and propagates from
  /// server to server.
  final List<Identifier>? identifier;

  /// [basedOn]
  /// A plan, proposal or order that is fulfilled in whole or in part by this
  /// event.
  final List<Reference>? basedOn;

  /// [partOf]
  /// A larger event of which this particular event is a component or step.
  final List<Reference>? partOf;

  /// [status]
  /// A code representing the patient or other source's judgment about the
  /// state of the intake that this assertion is about. Generally, this will
  /// be active or completed.
  final EventStatus status;

  /// [statusReason]
  /// Captures the reason for the current state of the NutritionIntake.
  final List<CodeableConcept>? statusReason;

  /// [code]
  /// Overall type of nutrition intake.
  final CodeableConcept? code;

  /// [subject]
  /// The person or group who is/was consuming the food (i.e. solid and/or
  /// liquid).
  final Reference subject;

  /// [encounter]
  /// The encounter that establishes the context for this NutritionIntake.
  final Reference? encounter;

  /// [occurrenceX]
  /// The interval of time during which it is being asserted that the patient
  /// is/was consuming the food (i.e. solid and/or liquid).
  final OccurrenceXNutritionIntake? occurrenceX;

  /// Getter for [occurrenceDateTime] as a FhirDateTime
  FhirDateTime? get occurrenceDateTime => occurrenceX?.isAs<FhirDateTime>();

  /// Getter for [occurrencePeriod] as a Period
  Period? get occurrencePeriod => occurrenceX?.isAs<Period>();

  /// [recorded]
  /// The date when the Nutrition Intake was asserted by the information
  /// source.
  final FhirDateTime? recorded;

  /// [reportedX]
  /// Indicates if this record was captured as a secondary 'reported' record
  /// rather than as an original primary source-of-truth. It may also
  /// indicate the source that provided the information about the
  /// consumption.
  final ReportedXNutritionIntake? reportedX;

  /// Getter for [reportedBoolean] as a FhirBoolean
  FhirBoolean? get reportedBoolean => reportedX?.isAs<FhirBoolean>();

  /// Getter for [reportedReference] as a Reference
  Reference? get reportedReference => reportedX?.isAs<Reference>();

  /// [nutritionItem]
  /// The nutrition product intended for consumption and/or administration.
  final List<NutritionIntakeNutritionItem>? nutritionItem;

  /// [performer]
  /// Who or what performed the intake and how they were involved.
  final List<NutritionIntakePerformer>? performer;

  /// [location]
  /// Where the intake occurred.
  final Reference? location;

  /// [derivedFrom]
  /// Allows linking the NutritionIntake to the underlying NutritionOrder, or
  /// to other information, such as AllergyIntolerance, that supports or is
  /// used to derive the NutritionIntake.
  final List<Reference>? derivedFrom;

  /// [reason]
  /// A reason, Condition or observation for why the food (i.e. solid and/or
  /// liquid) is /was consumed.
  final List<CodeableReference>? reason;

  /// [note]
  /// Provides extra information about the Nutrition Intake that is not
  /// conveyed by the other attributes.
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
      'code',
      code,
    );
    addField(
      'subject',
      subject,
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
    if (reportedX != null) {
      final fhirType = reportedX!.fhirType;
      addField(
        'reported${fhirType.capitalize()}',
        reportedX,
      );
    }

    addField(
      'nutritionItem',
      nutritionItem,
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
      'derivedFrom',
      derivedFrom,
    );
    addField(
      'reason',
      reason,
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
      'basedOn',
      'partOf',
      'status',
      'statusReason',
      'code',
      'subject',
      'encounter',
      'occurrenceX',
      'recorded',
      'reportedX',
      'nutritionItem',
      'performer',
      'location',
      'derivedFrom',
      'reason',
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
          fields.addAll(statusReason!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'subject':
        fields.add(subject);
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
        if (occurrenceX is FhirDateTime) {
          fields.add(occurrenceX!);
        }
      case 'occurrencePeriod':
        if (occurrenceX is Period) {
          fields.add(occurrenceX!);
        }
      case 'recorded':
        if (recorded != null) {
          fields.add(recorded!);
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
        if (reportedX is FhirBoolean) {
          fields.add(reportedX!);
        }
      case 'reportedReference':
        if (reportedX is Reference) {
          fields.add(reportedX!);
        }
      case 'nutritionItem':
        if (nutritionItem != null) {
          fields.addAll(nutritionItem!);
        }
      case 'performer':
        if (performer != null) {
          fields.addAll(performer!);
        }
      case 'location':
        if (location != null) {
          fields.add(location!);
        }
      case 'derivedFrom':
        if (derivedFrom != null) {
          fields.addAll(derivedFrom!);
        }
      case 'reason':
        if (reason != null) {
          fields.addAll(reason!);
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
  NutritionIntake clone() => copyWith();

  /// Copy function for [NutritionIntake]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $NutritionIntakeCopyWith<NutritionIntake> get copyWith =>
      _$NutritionIntakeCopyWithImpl<NutritionIntake>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! NutritionIntake) {
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
    if (!listEquals<CodeableConcept>(
      statusReason,
      o.statusReason,
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
      reportedX,
      o.reportedX,
    )) {
      return false;
    }
    if (!listEquals<NutritionIntakeNutritionItem>(
      nutritionItem,
      o.nutritionItem,
    )) {
      return false;
    }
    if (!listEquals<NutritionIntakePerformer>(
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
      derivedFrom,
      o.derivedFrom,
    )) {
      return false;
    }
    if (!listEquals<CodeableReference>(
      reason,
      o.reason,
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

/// [NutritionIntakeNutritionItem]
/// The nutrition product intended for consumption and/or administration.
class NutritionIntakeNutritionItem extends BackboneElement {
  /// Primary constructor for
  /// [NutritionIntakeNutritionItem]

  const NutritionIntakeNutritionItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.nutritionProduct,
    this.consumedItem,
    this.notConsumedItem,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionIntakeNutritionItem.fromJson(
    Map<String, dynamic> json,
  ) {
    return NutritionIntakeNutritionItem(
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
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      nutritionProduct: JsonParser.parseObject<CodeableReference>(
        json,
        'nutritionProduct',
        CodeableReference.fromJson,
      ),
      consumedItem: (json['consumedItem'] as List<dynamic>?)
          ?.map<NutritionIntakeConsumedItem>(
            (v) => NutritionIntakeConsumedItem.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      notConsumedItem: (json['notConsumedItem'] as List<dynamic>?)
          ?.map<NutritionIntakeNotConsumedItem>(
            (v) => NutritionIntakeNotConsumedItem.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [NutritionIntakeNutritionItem]
  /// from a [String] or [YamlMap] object
  factory NutritionIntakeNutritionItem.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionIntakeNutritionItem.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionIntakeNutritionItem.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionIntakeNutritionItem '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionIntakeNutritionItem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionIntakeNutritionItem.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return NutritionIntakeNutritionItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'NutritionIntakeNutritionItem';

  /// [type]
  /// Indicates what a category of item that is intended to be consumed:
  /// e.g., food (i.e. solid and/or liquid), breastmilk, infant formula,
  /// supplements, enteral formula.
  final CodeableConcept? type;

  /// [nutritionProduct]
  /// Identifies the food (i.e. solid and/or liquid) product that is to be
  /// consumed. This is potentially a link to a resource representing the
  /// details of the food product or a simple attribute carrying a code that
  /// identifies the food from a known list of foods.
  final CodeableReference? nutritionProduct;

  /// [consumedItem]
  /// What nutrition item was consumed.
  final List<NutritionIntakeConsumedItem>? consumedItem;

  /// [notConsumedItem]
  /// What nutrition item was not consumed.
  final List<NutritionIntakeNotConsumedItem>? notConsumedItem;
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
      'nutritionProduct',
      nutritionProduct,
    );
    addField(
      'consumedItem',
      consumedItem,
    );
    addField(
      'notConsumedItem',
      notConsumedItem,
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
      'nutritionProduct',
      'consumedItem',
      'notConsumedItem',
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
          fields.add(type!);
        }
      case 'nutritionProduct':
        if (nutritionProduct != null) {
          fields.add(nutritionProduct!);
        }
      case 'consumedItem':
        if (consumedItem != null) {
          fields.addAll(consumedItem!);
        }
      case 'notConsumedItem':
        if (notConsumedItem != null) {
          fields.addAll(notConsumedItem!);
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
  NutritionIntakeNutritionItem clone() => copyWith();

  /// Copy function for [NutritionIntakeNutritionItem]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $NutritionIntakeNutritionItemCopyWith<NutritionIntakeNutritionItem>
      get copyWith => _$NutritionIntakeNutritionItemCopyWithImpl<
              NutritionIntakeNutritionItem>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! NutritionIntakeNutritionItem) {
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
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      nutritionProduct,
      o.nutritionProduct,
    )) {
      return false;
    }
    if (!listEquals<NutritionIntakeConsumedItem>(
      consumedItem,
      o.consumedItem,
    )) {
      return false;
    }
    if (!listEquals<NutritionIntakeNotConsumedItem>(
      notConsumedItem,
      o.notConsumedItem,
    )) {
      return false;
    }
    return true;
  }
}

/// [NutritionIntakeConsumedItem]
/// What nutrition item was consumed.
class NutritionIntakeConsumedItem extends BackboneElement {
  /// Primary constructor for
  /// [NutritionIntakeConsumedItem]

  const NutritionIntakeConsumedItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.schedule,
    this.amount,
    RateXNutritionIntakeConsumedItem? rateX,
    Quantity? rateQuantity,
    Ratio? rateRatio,
    this.totalIntake,
    super.disallowExtensions,
  })  : rateX = rateX ?? rateQuantity ?? rateRatio,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionIntakeConsumedItem.fromJson(
    Map<String, dynamic> json,
  ) {
    return NutritionIntakeConsumedItem(
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
      schedule: JsonParser.parseObject<Timing>(
        json,
        'schedule',
        Timing.fromJson,
      ),
      amount: JsonParser.parseObject<Quantity>(
        json,
        'amount',
        Quantity.fromJson,
      ),
      rateX: JsonParser.parsePolymorphic<RateXNutritionIntakeConsumedItem>(
        json,
        {
          'rateQuantity': Quantity.fromJson,
          'rateRatio': Ratio.fromJson,
        },
      ),
      totalIntake: (json['totalIntake'] as List<dynamic>?)
          ?.map<NutritionIntakeTotalIntake>(
            (v) => NutritionIntakeTotalIntake.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [NutritionIntakeConsumedItem]
  /// from a [String] or [YamlMap] object
  factory NutritionIntakeConsumedItem.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionIntakeConsumedItem.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionIntakeConsumedItem.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionIntakeConsumedItem '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionIntakeConsumedItem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionIntakeConsumedItem.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return NutritionIntakeConsumedItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'NutritionIntakeConsumedItem';

  /// [schedule]
  /// Scheduled frequency of consumption.
  final Timing? schedule;

  /// [amount]
  /// Quantity of the specified food (i.e. solid and/or liquid).
  final Quantity? amount;

  /// [rateX]
  /// Rate of enteral feeding administration.
  final RateXNutritionIntakeConsumedItem? rateX;

  /// Getter for [rateQuantity] as a Quantity
  Quantity? get rateQuantity => rateX?.isAs<Quantity>();

  /// Getter for [rateRatio] as a Ratio
  Ratio? get rateRatio => rateX?.isAs<Ratio>();

  /// [totalIntake]
  /// Nutrients and/or energy contained in the intake.
  final List<NutritionIntakeTotalIntake>? totalIntake;
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
      'schedule',
      schedule,
    );
    addField(
      'amount',
      amount,
    );
    if (rateX != null) {
      final fhirType = rateX!.fhirType;
      addField(
        'rate${fhirType.capitalize()}',
        rateX,
      );
    }

    addField(
      'totalIntake',
      totalIntake,
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
      'schedule',
      'amount',
      'rateX',
      'totalIntake',
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
      case 'schedule':
        if (schedule != null) {
          fields.add(schedule!);
        }
      case 'amount':
        if (amount != null) {
          fields.add(amount!);
        }
      case 'rate':
        if (rateX != null) {
          fields.add(rateX!);
        }
      case 'rateX':
        if (rateX != null) {
          fields.add(rateX!);
        }
      case 'rateQuantity':
        if (rateX is Quantity) {
          fields.add(rateX!);
        }
      case 'rateRatio':
        if (rateX is Ratio) {
          fields.add(rateX!);
        }
      case 'totalIntake':
        if (totalIntake != null) {
          fields.addAll(totalIntake!);
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
  NutritionIntakeConsumedItem clone() => copyWith();

  /// Copy function for [NutritionIntakeConsumedItem]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $NutritionIntakeConsumedItemCopyWith<NutritionIntakeConsumedItem>
      get copyWith => _$NutritionIntakeConsumedItemCopyWithImpl<
              NutritionIntakeConsumedItem>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! NutritionIntakeConsumedItem) {
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
      schedule,
      o.schedule,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      amount,
      o.amount,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      rateX,
      o.rateX,
    )) {
      return false;
    }
    if (!listEquals<NutritionIntakeTotalIntake>(
      totalIntake,
      o.totalIntake,
    )) {
      return false;
    }
    return true;
  }
}

/// [NutritionIntakeTotalIntake]
/// Nutrients and/or energy contained in the intake.
class NutritionIntakeTotalIntake extends BackboneElement {
  /// Primary constructor for
  /// [NutritionIntakeTotalIntake]

  const NutritionIntakeTotalIntake({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.nutrient,
    required this.amount,
    this.energy,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionIntakeTotalIntake.fromJson(
    Map<String, dynamic> json,
  ) {
    return NutritionIntakeTotalIntake(
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
      nutrient: JsonParser.parseObject<CodeableReference>(
        json,
        'nutrient',
        CodeableReference.fromJson,
      )!,
      amount: JsonParser.parseObject<Quantity>(
        json,
        'amount',
        Quantity.fromJson,
      )!,
      energy: JsonParser.parseObject<Quantity>(
        json,
        'energy',
        Quantity.fromJson,
      ),
    );
  }

  /// Deserialize [NutritionIntakeTotalIntake]
  /// from a [String] or [YamlMap] object
  factory NutritionIntakeTotalIntake.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionIntakeTotalIntake.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionIntakeTotalIntake.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionIntakeTotalIntake '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionIntakeTotalIntake]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionIntakeTotalIntake.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return NutritionIntakeTotalIntake.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'NutritionIntakeTotalIntake';

  /// [nutrient]
  /// Type of nutrient consumed. This could be a macronutrient (protein, fat,
  /// carbohydrate), or a vitamin and mineral.
  final CodeableReference nutrient;

  /// [amount]
  /// Total amount of nutrient consumed.
  final Quantity amount;

  /// [energy]
  /// Total energy consumed in kilocalories or kilojoules.
  final Quantity? energy;
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
      'nutrient',
      nutrient,
    );
    addField(
      'amount',
      amount,
    );
    addField(
      'energy',
      energy,
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
      'nutrient',
      'amount',
      'energy',
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
      case 'nutrient':
        fields.add(nutrient);
      case 'amount':
        fields.add(amount);
      case 'energy':
        if (energy != null) {
          fields.add(energy!);
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
  NutritionIntakeTotalIntake clone() => copyWith();

  /// Copy function for [NutritionIntakeTotalIntake]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $NutritionIntakeTotalIntakeCopyWith<NutritionIntakeTotalIntake>
      get copyWith =>
          _$NutritionIntakeTotalIntakeCopyWithImpl<NutritionIntakeTotalIntake>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! NutritionIntakeTotalIntake) {
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
      nutrient,
      o.nutrient,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      amount,
      o.amount,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      energy,
      o.energy,
    )) {
      return false;
    }
    return true;
  }
}

/// [NutritionIntakeNotConsumedItem]
/// What nutrition item was not consumed.
class NutritionIntakeNotConsumedItem extends BackboneElement {
  /// Primary constructor for
  /// [NutritionIntakeNotConsumedItem]

  const NutritionIntakeNotConsumedItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.reason,
    this.schedule,
    this.amount,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionIntakeNotConsumedItem.fromJson(
    Map<String, dynamic> json,
  ) {
    return NutritionIntakeNotConsumedItem(
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
      reason: JsonParser.parseObject<CodeableConcept>(
        json,
        'reason',
        CodeableConcept.fromJson,
      ),
      schedule: JsonParser.parseObject<Timing>(
        json,
        'schedule',
        Timing.fromJson,
      ),
      amount: JsonParser.parseObject<Quantity>(
        json,
        'amount',
        Quantity.fromJson,
      ),
    );
  }

  /// Deserialize [NutritionIntakeNotConsumedItem]
  /// from a [String] or [YamlMap] object
  factory NutritionIntakeNotConsumedItem.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionIntakeNotConsumedItem.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionIntakeNotConsumedItem.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionIntakeNotConsumedItem '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionIntakeNotConsumedItem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionIntakeNotConsumedItem.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return NutritionIntakeNotConsumedItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'NutritionIntakeNotConsumedItem';

  /// [reason]
  /// Document the reason the nutrition item was not consumed, such as
  /// refused, held, etc.
  final CodeableConcept? reason;

  /// [schedule]
  /// The intended frequency of consumption that was not followed.
  final Timing? schedule;

  /// [amount]
  /// Quantity of the specified food (i.e. solid and/or liquid) that was not
  /// consumed.
  final Quantity? amount;
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
      'reason',
      reason,
    );
    addField(
      'schedule',
      schedule,
    );
    addField(
      'amount',
      amount,
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
      'reason',
      'schedule',
      'amount',
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
      case 'reason':
        if (reason != null) {
          fields.add(reason!);
        }
      case 'schedule':
        if (schedule != null) {
          fields.add(schedule!);
        }
      case 'amount':
        if (amount != null) {
          fields.add(amount!);
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
  NutritionIntakeNotConsumedItem clone() => copyWith();

  /// Copy function for [NutritionIntakeNotConsumedItem]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $NutritionIntakeNotConsumedItemCopyWith<NutritionIntakeNotConsumedItem>
      get copyWith => _$NutritionIntakeNotConsumedItemCopyWithImpl<
              NutritionIntakeNotConsumedItem>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! NutritionIntakeNotConsumedItem) {
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
      reason,
      o.reason,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      schedule,
      o.schedule,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      amount,
      o.amount,
    )) {
      return false;
    }
    return true;
  }
}

/// [NutritionIntakePerformer]
/// Who or what performed the intake and how they were involved.
class NutritionIntakePerformer extends BackboneElement {
  /// Primary constructor for
  /// [NutritionIntakePerformer]

  const NutritionIntakePerformer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    required this.actor,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionIntakePerformer.fromJson(
    Map<String, dynamic> json,
  ) {
    return NutritionIntakePerformer(
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

  /// Deserialize [NutritionIntakePerformer]
  /// from a [String] or [YamlMap] object
  factory NutritionIntakePerformer.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionIntakePerformer.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionIntakePerformer.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionIntakePerformer '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionIntakePerformer]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionIntakePerformer.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return NutritionIntakePerformer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'NutritionIntakePerformer';

  /// [function_]
  /// Type of performance.
  final CodeableConcept? function_;

  /// [actor]
  /// Who or what performed the intake.
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
  NutritionIntakePerformer clone() => copyWith();

  /// Copy function for [NutritionIntakePerformer]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $NutritionIntakePerformerCopyWith<NutritionIntakePerformer> get copyWith =>
      _$NutritionIntakePerformerCopyWithImpl<NutritionIntakePerformer>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! NutritionIntakePerformer) {
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
