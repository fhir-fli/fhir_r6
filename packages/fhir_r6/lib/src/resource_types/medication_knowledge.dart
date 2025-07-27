import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'medication_knowledge.g.dart';

/// [MedicationKnowledge]
/// Information about a medication that is used to support knowledge.
class MedicationKnowledge extends DomainResource {
  /// Primary constructor for
  /// [MedicationKnowledge]

  const MedicationKnowledge({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.code,
    this.status,
    this.author,
    this.intendedJurisdiction,
    this.name,
    this.relatedMedicationKnowledge,
    this.associatedMedication,
    this.productType,
    this.monograph,
    this.preparationInstruction,
    this.cost,
    this.monitoringProgram,
    this.indicationGuideline,
    this.medicineClassification,
    this.packaging,
    this.clinicalUseIssue,
    this.storageGuideline,
    this.regulatory,
    this.definitional,
  }) : super(
          resourceType: R6ResourceType.MedicationKnowledge,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledge.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicationKnowledge(
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
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      ),
      status: JsonParser.parsePrimitive<MedicationKnowledgeStatusCodes>(
        json,
        'status',
        MedicationKnowledgeStatusCodes.fromJson,
      ),
      author: JsonParser.parseObject<Reference>(
        json,
        'author',
        Reference.fromJson,
      ),
      intendedJurisdiction: (json['intendedJurisdiction'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      name: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      ),
      relatedMedicationKnowledge:
          (json['relatedMedicationKnowledge'] as List<dynamic>?)
              ?.map<MedicationKnowledgeRelatedMedicationKnowledge>(
                (v) => MedicationKnowledgeRelatedMedicationKnowledge.fromJson(
                  {...v as Map<String, dynamic>},
                ),
              )
              .toList(),
      associatedMedication: (json['associatedMedication'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      productType: (json['productType'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      monograph: (json['monograph'] as List<dynamic>?)
          ?.map<MedicationKnowledgeMonograph>(
            (v) => MedicationKnowledgeMonograph.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      preparationInstruction: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'preparationInstruction',
        FhirMarkdown.fromJson,
      ),
      cost: (json['cost'] as List<dynamic>?)
          ?.map<MedicationKnowledgeCost>(
            (v) => MedicationKnowledgeCost.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      monitoringProgram: (json['monitoringProgram'] as List<dynamic>?)
          ?.map<MedicationKnowledgeMonitoringProgram>(
            (v) => MedicationKnowledgeMonitoringProgram.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      indicationGuideline: (json['indicationGuideline'] as List<dynamic>?)
          ?.map<MedicationKnowledgeIndicationGuideline>(
            (v) => MedicationKnowledgeIndicationGuideline.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      medicineClassification: (json['medicineClassification'] as List<dynamic>?)
          ?.map<MedicationKnowledgeMedicineClassification>(
            (v) => MedicationKnowledgeMedicineClassification.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      packaging: (json['packaging'] as List<dynamic>?)
          ?.map<MedicationKnowledgePackaging>(
            (v) => MedicationKnowledgePackaging.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      clinicalUseIssue: (json['clinicalUseIssue'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      storageGuideline: (json['storageGuideline'] as List<dynamic>?)
          ?.map<MedicationKnowledgeStorageGuideline>(
            (v) => MedicationKnowledgeStorageGuideline.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      regulatory: (json['regulatory'] as List<dynamic>?)
          ?.map<MedicationKnowledgeRegulatory>(
            (v) => MedicationKnowledgeRegulatory.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      definitional: JsonParser.parseObject<MedicationKnowledgeDefinitional>(
        json,
        'definitional',
        MedicationKnowledgeDefinitional.fromJson,
      ),
    );
  }

  /// Deserialize [MedicationKnowledge]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledge.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledge.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledge.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledge '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledge]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledge.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledge.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledge';

  /// [identifier]
  /// Business identifier for this medication.
  final List<Identifier>? identifier;

  /// [code]
  /// A code that specifies this medication, or a textual description if no
  /// code is available. Usage note: This could be a standard medication code
  /// such as a code from RxNorm, SNOMED CT, IDMP etc. It could also be a
  /// national or local formulary code, optionally with translations to other
  /// code systems.
  final CodeableConcept? code;

  /// [status]
  /// A code to indicate if the medication referred to by this
  /// MedicationKnowledge is in active use within the drug database or
  /// inventory system. The status refers to the validity about the
  /// information of the medication and not to its medicinal properties.
  final MedicationKnowledgeStatusCodes? status;

  /// [author]
  /// The creator or owner of the knowledge or information about the
  /// medication.
  final Reference? author;

  /// [intendedJurisdiction]
  /// Lists the jurisdictions that this medication knowledge was written for.
  final List<CodeableConcept>? intendedJurisdiction;

  /// [name]
  /// All of the names for a medication, for example, the name(s) given to a
  /// medication in different countries. For example, acetaminophen and
  /// paracetamol or salbutamol and albuterol.
  final List<FhirString>? name;

  /// [relatedMedicationKnowledge]
  /// Associated or related medications. For example, if the medication is a
  /// branded product (e.g. Crestor), this is the Therapeutic Moeity (e.g.
  /// Rosuvastatin) or if this is a generic medication (e.g. Rosuvastatin),
  /// this would link to a branded product (e.g. Crestor.
  final List<MedicationKnowledgeRelatedMedicationKnowledge>?
      relatedMedicationKnowledge;

  /// [associatedMedication]
  /// Links to associated medications that could be prescribed, dispensed or
  /// administered.
  final List<Reference>? associatedMedication;

  /// [productType]
  /// Category of the medication or product (e.g. branded product,
  /// therapeutic moeity, generic product, innovator product, etc.).
  final List<CodeableConcept>? productType;

  /// [monograph]
  /// Associated documentation about the medication.
  final List<MedicationKnowledgeMonograph>? monograph;

  /// [preparationInstruction]
  /// The instructions for preparing the medication.
  final FhirMarkdown? preparationInstruction;

  /// [cost]
  /// The price of the medication.
  final List<MedicationKnowledgeCost>? cost;

  /// [monitoringProgram]
  /// The program under which the medication is reviewed.
  final List<MedicationKnowledgeMonitoringProgram>? monitoringProgram;

  /// [indicationGuideline]
  /// Guidelines or protocols that are applicable for the administration of
  /// the medication based on indication.
  final List<MedicationKnowledgeIndicationGuideline>? indicationGuideline;

  /// [medicineClassification]
  /// Categorization of the medication within a formulary or classification
  /// system.
  final List<MedicationKnowledgeMedicineClassification>? medicineClassification;

  /// [packaging]
  /// Information that only applies to packages (not products).
  final List<MedicationKnowledgePackaging>? packaging;

  /// [clinicalUseIssue]
  /// Potential clinical issue with or between medication(s) (for example,
  /// drug-drug interaction, drug-disease contraindication, drug-allergy
  /// interaction, etc.).
  final List<Reference>? clinicalUseIssue;

  /// [storageGuideline]
  /// Information on how the medication should be stored, for example,
  /// refrigeration temperatures and length of stability at a given
  /// temperature.
  final List<MedicationKnowledgeStorageGuideline>? storageGuideline;

  /// [regulatory]
  /// Regulatory information about a medication.
  final List<MedicationKnowledgeRegulatory>? regulatory;

  /// [definitional]
  /// Along with the link to a Medicinal Product Definition resource, this
  /// information provides common definitional elements that are needed to
  /// understand the specific medication that is being described.
  final MedicationKnowledgeDefinitional? definitional;
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
      'code',
      code,
    );
    addField(
      'status',
      status,
    );
    addField(
      'author',
      author,
    );
    addField(
      'intendedJurisdiction',
      intendedJurisdiction,
    );
    addField(
      'name',
      name,
    );
    addField(
      'relatedMedicationKnowledge',
      relatedMedicationKnowledge,
    );
    addField(
      'associatedMedication',
      associatedMedication,
    );
    addField(
      'productType',
      productType,
    );
    addField(
      'monograph',
      monograph,
    );
    addField(
      'preparationInstruction',
      preparationInstruction,
    );
    addField(
      'cost',
      cost,
    );
    addField(
      'monitoringProgram',
      monitoringProgram,
    );
    addField(
      'indicationGuideline',
      indicationGuideline,
    );
    addField(
      'medicineClassification',
      medicineClassification,
    );
    addField(
      'packaging',
      packaging,
    );
    addField(
      'clinicalUseIssue',
      clinicalUseIssue,
    );
    addField(
      'storageGuideline',
      storageGuideline,
    );
    addField(
      'regulatory',
      regulatory,
    );
    addField(
      'definitional',
      definitional,
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
      'code',
      'status',
      'author',
      'intendedJurisdiction',
      'name',
      'relatedMedicationKnowledge',
      'associatedMedication',
      'productType',
      'monograph',
      'preparationInstruction',
      'cost',
      'monitoringProgram',
      'indicationGuideline',
      'medicineClassification',
      'packaging',
      'clinicalUseIssue',
      'storageGuideline',
      'regulatory',
      'definitional',
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
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'author':
        if (author != null) {
          fields.add(author!);
        }
      case 'intendedJurisdiction':
        if (intendedJurisdiction != null) {
          fields.addAll(intendedJurisdiction!);
        }
      case 'name':
        if (name != null) {
          fields.addAll(name!);
        }
      case 'relatedMedicationKnowledge':
        if (relatedMedicationKnowledge != null) {
          fields.addAll(relatedMedicationKnowledge!);
        }
      case 'associatedMedication':
        if (associatedMedication != null) {
          fields.addAll(associatedMedication!);
        }
      case 'productType':
        if (productType != null) {
          fields.addAll(productType!);
        }
      case 'monograph':
        if (monograph != null) {
          fields.addAll(monograph!);
        }
      case 'preparationInstruction':
        if (preparationInstruction != null) {
          fields.add(preparationInstruction!);
        }
      case 'cost':
        if (cost != null) {
          fields.addAll(cost!);
        }
      case 'monitoringProgram':
        if (monitoringProgram != null) {
          fields.addAll(monitoringProgram!);
        }
      case 'indicationGuideline':
        if (indicationGuideline != null) {
          fields.addAll(indicationGuideline!);
        }
      case 'medicineClassification':
        if (medicineClassification != null) {
          fields.addAll(medicineClassification!);
        }
      case 'packaging':
        if (packaging != null) {
          fields.addAll(packaging!);
        }
      case 'clinicalUseIssue':
        if (clinicalUseIssue != null) {
          fields.addAll(clinicalUseIssue!);
        }
      case 'storageGuideline':
        if (storageGuideline != null) {
          fields.addAll(storageGuideline!);
        }
      case 'regulatory':
        if (regulatory != null) {
          fields.addAll(regulatory!);
        }
      case 'definitional':
        if (definitional != null) {
          fields.add(definitional!);
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
  MedicationKnowledge clone() => copyWith();

  /// Copy function for [MedicationKnowledge]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MedicationKnowledgeCopyWith<MedicationKnowledge> get copyWith =>
      _$MedicationKnowledgeCopyWithImpl<MedicationKnowledge>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationKnowledge) {
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
      code,
      o.code,
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
      author,
      o.author,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      intendedJurisdiction,
      o.intendedJurisdiction,
    )) {
      return false;
    }
    if (!listEquals<FhirString>(
      name,
      o.name,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgeRelatedMedicationKnowledge>(
      relatedMedicationKnowledge,
      o.relatedMedicationKnowledge,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      associatedMedication,
      o.associatedMedication,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      productType,
      o.productType,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgeMonograph>(
      monograph,
      o.monograph,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      preparationInstruction,
      o.preparationInstruction,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgeCost>(
      cost,
      o.cost,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgeMonitoringProgram>(
      monitoringProgram,
      o.monitoringProgram,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgeIndicationGuideline>(
      indicationGuideline,
      o.indicationGuideline,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgeMedicineClassification>(
      medicineClassification,
      o.medicineClassification,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgePackaging>(
      packaging,
      o.packaging,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      clinicalUseIssue,
      o.clinicalUseIssue,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgeStorageGuideline>(
      storageGuideline,
      o.storageGuideline,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgeRegulatory>(
      regulatory,
      o.regulatory,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      definitional,
      o.definitional,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgeRelatedMedicationKnowledge]
/// Associated or related medications. For example, if the medication is a
/// branded product (e.g. Crestor), this is the Therapeutic Moeity (e.g.
/// Rosuvastatin) or if this is a generic medication (e.g. Rosuvastatin),
/// this would link to a branded product (e.g. Crestor.
class MedicationKnowledgeRelatedMedicationKnowledge extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeRelatedMedicationKnowledge]

  const MedicationKnowledgeRelatedMedicationKnowledge({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.reference,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeRelatedMedicationKnowledge.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicationKnowledgeRelatedMedicationKnowledge(
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
      )!,
      reference: (json['reference'] as List<dynamic>)
          .map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MedicationKnowledgeRelatedMedicationKnowledge]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeRelatedMedicationKnowledge.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeRelatedMedicationKnowledge.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeRelatedMedicationKnowledge.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeRelatedMedicationKnowledge '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeRelatedMedicationKnowledge]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeRelatedMedicationKnowledge.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeRelatedMedicationKnowledge.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeRelatedMedicationKnowledge';

  /// [type]
  /// The category of the associated medication knowledge reference.
  final CodeableConcept type;

  /// [reference]
  /// Associated documentation about the associated medication knowledge.
  final List<Reference> reference;
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
      'reference',
      reference,
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
      'reference',
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
        fields.add(type);
      case 'reference':
        fields.addAll(reference);
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
  MedicationKnowledgeRelatedMedicationKnowledge clone() => copyWith();

  /// Copy function for [MedicationKnowledgeRelatedMedicationKnowledge]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MedicationKnowledgeRelatedMedicationKnowledgeCopyWith<
          MedicationKnowledgeRelatedMedicationKnowledge>
      get copyWith =>
          _$MedicationKnowledgeRelatedMedicationKnowledgeCopyWithImpl<
              MedicationKnowledgeRelatedMedicationKnowledge>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationKnowledgeRelatedMedicationKnowledge) {
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
    if (!listEquals<Reference>(
      reference,
      o.reference,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgeMonograph]
/// Associated documentation about the medication.
class MedicationKnowledgeMonograph extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeMonograph]

  const MedicationKnowledgeMonograph({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.source,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeMonograph.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicationKnowledgeMonograph(
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
      source: JsonParser.parseObject<Reference>(
        json,
        'source',
        Reference.fromJson,
      ),
    );
  }

  /// Deserialize [MedicationKnowledgeMonograph]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeMonograph.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeMonograph.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeMonograph.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeMonograph '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeMonograph]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeMonograph.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeMonograph.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeMonograph';

  /// [type]
  /// The category of documentation about the medication. (e.g. professional
  /// monograph, patient education monograph).
  final CodeableConcept? type;

  /// [source]
  /// Associated documentation about the medication.
  final Reference? source;
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
      'source',
      source,
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
      'source',
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
      case 'source':
        if (source != null) {
          fields.add(source!);
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
  MedicationKnowledgeMonograph clone() => copyWith();

  /// Copy function for [MedicationKnowledgeMonograph]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MedicationKnowledgeMonographCopyWith<MedicationKnowledgeMonograph>
      get copyWith => _$MedicationKnowledgeMonographCopyWithImpl<
              MedicationKnowledgeMonograph>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationKnowledgeMonograph) {
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
      source,
      o.source,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgeCost]
/// The price of the medication.
class MedicationKnowledgeCost extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeCost]

  const MedicationKnowledgeCost({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.effectiveDate,
    required this.type,
    this.source,
    required this.costX,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeCost.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicationKnowledgeCost(
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
      effectiveDate: (json['effectiveDate'] as List<dynamic>?)
          ?.map<Period>(
            (v) => Period.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      )!,
      source: JsonParser.parsePrimitive<FhirString>(
        json,
        'source',
        FhirString.fromJson,
      ),
      costX: JsonParser.parsePolymorphic<CostXMedicationKnowledgeCost>(
        json,
        {
          'costMoney': Money.fromJson,
          'costCodeableConcept': CodeableConcept.fromJson,
        },
      )!,
    );
  }

  /// Deserialize [MedicationKnowledgeCost]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeCost.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeCost.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeCost.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeCost '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeCost]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeCost.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeCost.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeCost';

  /// [effectiveDate]
  /// The date range for which the cost information of the medication is
  /// effective.
  final List<Period>? effectiveDate;

  /// [type]
  /// The category of the cost information. For example, manufacturers' cost,
  /// patient cost, claim reimbursement cost, actual acquisition cost.
  final CodeableConcept type;

  /// [source]
  /// The source or owner that assigns the price to the medication.
  final FhirString? source;

  /// [costX]
  /// The price or representation of the cost (for example, Band A, Band B or
  /// $, $$) of the medication.
  final CostXMedicationKnowledgeCost costX;

  /// Getter for [costMoney] as a Money
  Money? get costMoney => costX.isAs<Money>();

  /// Getter for [costCodeableConcept] as a CodeableConcept
  CodeableConcept? get costCodeableConcept => costX.isAs<CodeableConcept>();
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
      'effectiveDate',
      effectiveDate,
    );
    addField(
      'type',
      type,
    );
    addField(
      'source',
      source,
    );
    final costXFhirType = costX.fhirType;
    addField(
      'cost${costXFhirType.capitalize()}',
      costX,
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
      'effectiveDate',
      'type',
      'source',
      'costX',
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
      case 'effectiveDate':
        if (effectiveDate != null) {
          fields.addAll(effectiveDate!);
        }
      case 'type':
        fields.add(type);
      case 'source':
        if (source != null) {
          fields.add(source!);
        }
      case 'cost':
        fields.add(costX);
      case 'costX':
        fields.add(costX);
      case 'costMoney':
        if (costX is Money) {
          fields.add(costX);
        }
      case 'costCodeableConcept':
        if (costX is CodeableConcept) {
          fields.add(costX);
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
  MedicationKnowledgeCost clone() => copyWith();

  /// Copy function for [MedicationKnowledgeCost]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MedicationKnowledgeCostCopyWith<MedicationKnowledgeCost> get copyWith =>
      _$MedicationKnowledgeCostCopyWithImpl<MedicationKnowledgeCost>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationKnowledgeCost) {
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
    if (!listEquals<Period>(
      effectiveDate,
      o.effectiveDate,
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
      source,
      o.source,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      costX,
      o.costX,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgeMonitoringProgram]
/// The program under which the medication is reviewed.
class MedicationKnowledgeMonitoringProgram extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeMonitoringProgram]

  const MedicationKnowledgeMonitoringProgram({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.name,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeMonitoringProgram.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicationKnowledgeMonitoringProgram(
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
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [MedicationKnowledgeMonitoringProgram]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeMonitoringProgram.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeMonitoringProgram.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeMonitoringProgram.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeMonitoringProgram '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeMonitoringProgram]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeMonitoringProgram.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeMonitoringProgram.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeMonitoringProgram';

  /// [type]
  /// Type of program under which the medication is monitored.
  final CodeableConcept? type;

  /// [name]
  /// Name of the reviewing program.
  final FhirString? name;
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
      'name',
      name,
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
      'name',
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
      case 'name':
        if (name != null) {
          fields.add(name!);
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
  MedicationKnowledgeMonitoringProgram clone() => copyWith();

  /// Copy function for [MedicationKnowledgeMonitoringProgram]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MedicationKnowledgeMonitoringProgramCopyWith<
          MedicationKnowledgeMonitoringProgram>
      get copyWith => _$MedicationKnowledgeMonitoringProgramCopyWithImpl<
              MedicationKnowledgeMonitoringProgram>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationKnowledgeMonitoringProgram) {
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
      name,
      o.name,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgeIndicationGuideline]
/// Guidelines or protocols that are applicable for the administration of
/// the medication based on indication.
class MedicationKnowledgeIndicationGuideline extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeIndicationGuideline]

  const MedicationKnowledgeIndicationGuideline({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.indication,
    this.dosingGuideline,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeIndicationGuideline.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicationKnowledgeIndicationGuideline(
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
      indication: (json['indication'] as List<dynamic>?)
          ?.map<CodeableReference>(
            (v) => CodeableReference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      dosingGuideline: (json['dosingGuideline'] as List<dynamic>?)
          ?.map<MedicationKnowledgeDosingGuideline>(
            (v) => MedicationKnowledgeDosingGuideline.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MedicationKnowledgeIndicationGuideline]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeIndicationGuideline.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeIndicationGuideline.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeIndicationGuideline.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeIndicationGuideline '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeIndicationGuideline]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeIndicationGuideline.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeIndicationGuideline.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeIndicationGuideline';

  /// [indication]
  /// Indication or reason for use of the medication that applies to the
  /// specific administration guideline.
  final List<CodeableReference>? indication;

  /// [dosingGuideline]
  /// The guidelines for the dosage of the medication for the indication.
  final List<MedicationKnowledgeDosingGuideline>? dosingGuideline;
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
      'indication',
      indication,
    );
    addField(
      'dosingGuideline',
      dosingGuideline,
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
      'indication',
      'dosingGuideline',
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
      case 'indication':
        if (indication != null) {
          fields.addAll(indication!);
        }
      case 'dosingGuideline':
        if (dosingGuideline != null) {
          fields.addAll(dosingGuideline!);
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
  MedicationKnowledgeIndicationGuideline clone() => copyWith();

  /// Copy function for [MedicationKnowledgeIndicationGuideline]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MedicationKnowledgeIndicationGuidelineCopyWith<
          MedicationKnowledgeIndicationGuideline>
      get copyWith => _$MedicationKnowledgeIndicationGuidelineCopyWithImpl<
              MedicationKnowledgeIndicationGuideline>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationKnowledgeIndicationGuideline) {
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
      indication,
      o.indication,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgeDosingGuideline>(
      dosingGuideline,
      o.dosingGuideline,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgeDosingGuideline]
/// The guidelines for the dosage of the medication for the indication.
class MedicationKnowledgeDosingGuideline extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeDosingGuideline]

  const MedicationKnowledgeDosingGuideline({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.treatmentIntent,
    this.dosage,
    this.administrationTreatment,
    this.patientCharacteristic,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeDosingGuideline.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicationKnowledgeDosingGuideline(
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
      treatmentIntent: JsonParser.parseObject<CodeableConcept>(
        json,
        'treatmentIntent',
        CodeableConcept.fromJson,
      ),
      dosage: (json['dosage'] as List<dynamic>?)
          ?.map<MedicationKnowledgeDosage>(
            (v) => MedicationKnowledgeDosage.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      administrationTreatment: JsonParser.parseObject<CodeableConcept>(
        json,
        'administrationTreatment',
        CodeableConcept.fromJson,
      ),
      patientCharacteristic: (json['patientCharacteristic'] as List<dynamic>?)
          ?.map<MedicationKnowledgePatientCharacteristic>(
            (v) => MedicationKnowledgePatientCharacteristic.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MedicationKnowledgeDosingGuideline]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeDosingGuideline.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeDosingGuideline.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeDosingGuideline.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeDosingGuideline '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeDosingGuideline]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeDosingGuideline.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeDosingGuideline.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeDosingGuideline';

  /// [treatmentIntent]
  /// The overall intention of the treatment, for example, prophylactic,
  /// supporative, curative, etc.
  final CodeableConcept? treatmentIntent;

  /// [dosage]
  /// Dosage for the medication for the specific guidelines.
  final List<MedicationKnowledgeDosage>? dosage;

  /// [administrationTreatment]
  /// The type of the treatment that the guideline applies to, for example,
  /// long term therapy, first line treatment, etc.
  final CodeableConcept? administrationTreatment;

  /// [patientCharacteristic]
  /// Characteristics of the patient that are relevant to the administration
  /// guidelines (for example, height, weight, gender, etc.).
  final List<MedicationKnowledgePatientCharacteristic>? patientCharacteristic;
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
      'treatmentIntent',
      treatmentIntent,
    );
    addField(
      'dosage',
      dosage,
    );
    addField(
      'administrationTreatment',
      administrationTreatment,
    );
    addField(
      'patientCharacteristic',
      patientCharacteristic,
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
      'treatmentIntent',
      'dosage',
      'administrationTreatment',
      'patientCharacteristic',
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
      case 'treatmentIntent':
        if (treatmentIntent != null) {
          fields.add(treatmentIntent!);
        }
      case 'dosage':
        if (dosage != null) {
          fields.addAll(dosage!);
        }
      case 'administrationTreatment':
        if (administrationTreatment != null) {
          fields.add(administrationTreatment!);
        }
      case 'patientCharacteristic':
        if (patientCharacteristic != null) {
          fields.addAll(patientCharacteristic!);
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
  MedicationKnowledgeDosingGuideline clone() => copyWith();

  /// Copy function for [MedicationKnowledgeDosingGuideline]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MedicationKnowledgeDosingGuidelineCopyWith<
          MedicationKnowledgeDosingGuideline>
      get copyWith => _$MedicationKnowledgeDosingGuidelineCopyWithImpl<
              MedicationKnowledgeDosingGuideline>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationKnowledgeDosingGuideline) {
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
      treatmentIntent,
      o.treatmentIntent,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgeDosage>(
      dosage,
      o.dosage,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      administrationTreatment,
      o.administrationTreatment,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgePatientCharacteristic>(
      patientCharacteristic,
      o.patientCharacteristic,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgeDosage]
/// Dosage for the medication for the specific guidelines.
class MedicationKnowledgeDosage extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeDosage]

  const MedicationKnowledgeDosage({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.dosage,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeDosage.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicationKnowledgeDosage(
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
      )!,
      dosage: (json['dosage'] as List<dynamic>)
          .map<Dosage>(
            (v) => Dosage.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MedicationKnowledgeDosage]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeDosage.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeDosage.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeDosage.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeDosage '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeDosage]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeDosage.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeDosage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeDosage';

  /// [type]
  /// The type or category of dosage for a given medication (for example,
  /// prophylaxis, maintenance, therapeutic, etc.).
  final CodeableConcept type;

  /// [dosage]
  /// Dosage for the medication for the specific guidelines.
  final List<Dosage> dosage;
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
      'dosage',
      dosage,
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
      'dosage',
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
        fields.add(type);
      case 'dosage':
        fields.addAll(dosage);
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
  MedicationKnowledgeDosage clone() => copyWith();

  /// Copy function for [MedicationKnowledgeDosage]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MedicationKnowledgeDosageCopyWith<MedicationKnowledgeDosage> get copyWith =>
      _$MedicationKnowledgeDosageCopyWithImpl<MedicationKnowledgeDosage>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationKnowledgeDosage) {
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
    if (!listEquals<Dosage>(
      dosage,
      o.dosage,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgePatientCharacteristic]
/// Characteristics of the patient that are relevant to the administration
/// guidelines (for example, height, weight, gender, etc.).
class MedicationKnowledgePatientCharacteristic extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgePatientCharacteristic]

  const MedicationKnowledgePatientCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    ValueXMedicationKnowledgePatientCharacteristic? valueX,
    CodeableConcept? valueCodeableConcept,
    Quantity? valueQuantity,
    Range? valueRange,
    super.disallowExtensions,
  })  : valueX = valueX ?? valueCodeableConcept ?? valueQuantity ?? valueRange,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgePatientCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicationKnowledgePatientCharacteristic(
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
      )!,
      valueX: JsonParser.parsePolymorphic<
          ValueXMedicationKnowledgePatientCharacteristic>(
        json,
        {
          'valueCodeableConcept': CodeableConcept.fromJson,
          'valueQuantity': Quantity.fromJson,
          'valueRange': Range.fromJson,
        },
      ),
    );
  }

  /// Deserialize [MedicationKnowledgePatientCharacteristic]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgePatientCharacteristic.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgePatientCharacteristic.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgePatientCharacteristic.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgePatientCharacteristic '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgePatientCharacteristic]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgePatientCharacteristic.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgePatientCharacteristic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgePatientCharacteristic';

  /// [type]
  /// The categorization of the specific characteristic that is relevant to
  /// the administration guideline (e.g. height, weight, gender).
  final CodeableConcept type;

  /// [valueX]
  /// The specific characteristic (e.g. height, weight, gender, etc.).
  final ValueXMedicationKnowledgePatientCharacteristic? valueX;

  /// Getter for [valueCodeableConcept] as a CodeableConcept
  CodeableConcept? get valueCodeableConcept => valueX?.isAs<CodeableConcept>();

  /// Getter for [valueQuantity] as a Quantity
  Quantity? get valueQuantity => valueX?.isAs<Quantity>();

  /// Getter for [valueRange] as a Range
  Range? get valueRange => valueX?.isAs<Range>();
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
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField(
        'value${fhirType.capitalize()}',
        valueX,
      );
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
      'type',
      'valueX',
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
        fields.add(type);
      case 'value':
        fields.add(valueX!);
      case 'valueX':
        fields.add(valueX!);
      case 'valueCodeableConcept':
        if (valueX is CodeableConcept) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is Quantity) {
          fields.add(valueX!);
        }
      case 'valueRange':
        if (valueX is Range) {
          fields.add(valueX!);
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
  MedicationKnowledgePatientCharacteristic clone() => copyWith();

  /// Copy function for [MedicationKnowledgePatientCharacteristic]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MedicationKnowledgePatientCharacteristicCopyWith<
          MedicationKnowledgePatientCharacteristic>
      get copyWith => _$MedicationKnowledgePatientCharacteristicCopyWithImpl<
              MedicationKnowledgePatientCharacteristic>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationKnowledgePatientCharacteristic) {
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
      valueX,
      o.valueX,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgeMedicineClassification]
/// Categorization of the medication within a formulary or classification
/// system.
class MedicationKnowledgeMedicineClassification extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeMedicineClassification]

  const MedicationKnowledgeMedicineClassification({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    SourceXMedicationKnowledgeMedicineClassification? sourceX,
    FhirString? sourceString,
    FhirUri? sourceUri,
    this.classification,
    super.disallowExtensions,
  })  : sourceX = sourceX ?? sourceString ?? sourceUri,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeMedicineClassification.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicationKnowledgeMedicineClassification(
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
      )!,
      sourceX: JsonParser.parsePolymorphic<
          SourceXMedicationKnowledgeMedicineClassification>(
        json,
        {
          'sourceString': FhirString.fromJson,
          'sourceUri': FhirUri.fromJson,
        },
      ),
      classification: (json['classification'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MedicationKnowledgeMedicineClassification]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeMedicineClassification.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeMedicineClassification.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeMedicineClassification.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeMedicineClassification '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeMedicineClassification]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeMedicineClassification.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeMedicineClassification.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeMedicineClassification';

  /// [type]
  /// The type of category for the medication (for example, therapeutic
  /// classification, therapeutic sub-classification).
  final CodeableConcept type;

  /// [sourceX]
  /// Either a textual source of the classification or a reference to an
  /// online source.
  final SourceXMedicationKnowledgeMedicineClassification? sourceX;

  /// Getter for [sourceString] as a FhirString
  FhirString? get sourceString => sourceX?.isAs<FhirString>();

  /// Getter for [sourceUri] as a FhirUri
  FhirUri? get sourceUri => sourceX?.isAs<FhirUri>();

  /// [classification]
  /// Specific category assigned to the medication (e.g. anti-infective,
  /// anti-hypertensive, antibiotic, etc.).
  final List<CodeableConcept>? classification;
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
    if (sourceX != null) {
      final fhirType = sourceX!.fhirType;
      addField(
        'source${fhirType.capitalize()}',
        sourceX,
      );
    }

    addField(
      'classification',
      classification,
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
      'sourceX',
      'classification',
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
        fields.add(type);
      case 'source':
        fields.add(sourceX!);
      case 'sourceX':
        fields.add(sourceX!);
      case 'sourceString':
        if (sourceX is FhirString) {
          fields.add(sourceX!);
        }
      case 'sourceUri':
        if (sourceX is FhirUri) {
          fields.add(sourceX!);
        }
      case 'classification':
        if (classification != null) {
          fields.addAll(classification!);
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
  MedicationKnowledgeMedicineClassification clone() => copyWith();

  /// Copy function for [MedicationKnowledgeMedicineClassification]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MedicationKnowledgeMedicineClassificationCopyWith<
          MedicationKnowledgeMedicineClassification>
      get copyWith => _$MedicationKnowledgeMedicineClassificationCopyWithImpl<
              MedicationKnowledgeMedicineClassification>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationKnowledgeMedicineClassification) {
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
      sourceX,
      o.sourceX,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      classification,
      o.classification,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgePackaging]
/// Information that only applies to packages (not products).
class MedicationKnowledgePackaging extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgePackaging]

  const MedicationKnowledgePackaging({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.cost,
    this.packagedProduct,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgePackaging.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicationKnowledgePackaging(
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
      cost: (json['cost'] as List<dynamic>?)
          ?.map<MedicationKnowledgeCost>(
            (v) => MedicationKnowledgeCost.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      packagedProduct: JsonParser.parseObject<Reference>(
        json,
        'packagedProduct',
        Reference.fromJson,
      ),
    );
  }

  /// Deserialize [MedicationKnowledgePackaging]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgePackaging.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgePackaging.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgePackaging.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgePackaging '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgePackaging]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgePackaging.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgePackaging.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgePackaging';

  /// [cost]
  /// The cost of the packaged medication.
  final List<MedicationKnowledgeCost>? cost;

  /// [packagedProduct]
  /// A reference to a PackagedProductDefinition that provides the details of
  /// the product that is in the packaging and is being priced.
  final Reference? packagedProduct;
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
      'cost',
      cost,
    );
    addField(
      'packagedProduct',
      packagedProduct,
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
      'cost',
      'packagedProduct',
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
      case 'cost':
        if (cost != null) {
          fields.addAll(cost!);
        }
      case 'packagedProduct':
        if (packagedProduct != null) {
          fields.add(packagedProduct!);
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
  MedicationKnowledgePackaging clone() => copyWith();

  /// Copy function for [MedicationKnowledgePackaging]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MedicationKnowledgePackagingCopyWith<MedicationKnowledgePackaging>
      get copyWith => _$MedicationKnowledgePackagingCopyWithImpl<
              MedicationKnowledgePackaging>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationKnowledgePackaging) {
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
    if (!listEquals<MedicationKnowledgeCost>(
      cost,
      o.cost,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      packagedProduct,
      o.packagedProduct,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgeStorageGuideline]
/// Information on how the medication should be stored, for example,
/// refrigeration temperatures and length of stability at a given
/// temperature.
class MedicationKnowledgeStorageGuideline extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeStorageGuideline]

  const MedicationKnowledgeStorageGuideline({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.reference,
    this.note,
    this.stabilityDuration,
    this.environmentalSetting,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeStorageGuideline.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicationKnowledgeStorageGuideline(
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
      reference: JsonParser.parsePrimitive<FhirUri>(
        json,
        'reference',
        FhirUri.fromJson,
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      stabilityDuration: JsonParser.parseObject<FhirDuration>(
        json,
        'stabilityDuration',
        FhirDuration.fromJson,
      ),
      environmentalSetting: (json['environmentalSetting'] as List<dynamic>?)
          ?.map<MedicationKnowledgeEnvironmentalSetting>(
            (v) => MedicationKnowledgeEnvironmentalSetting.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MedicationKnowledgeStorageGuideline]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeStorageGuideline.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeStorageGuideline.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeStorageGuideline.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeStorageGuideline '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeStorageGuideline]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeStorageGuideline.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeStorageGuideline.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeStorageGuideline';

  /// [reference]
  /// Reference to additional information about the storage guidelines.
  final FhirUri? reference;

  /// [note]
  /// Additional notes about the storage.
  final List<Annotation>? note;

  /// [stabilityDuration]
  /// Duration that the medication remains stable if the environmentalSetting
  /// is respected.
  final FhirDuration? stabilityDuration;

  /// [environmentalSetting]
  /// Describes a setting/value on the environment for the adequate storage
  /// of the medication and other substances. Environment settings may
  /// involve temperature, humidity, or exposure to light.
  final List<MedicationKnowledgeEnvironmentalSetting>? environmentalSetting;
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
      'reference',
      reference,
    );
    addField(
      'note',
      note,
    );
    addField(
      'stabilityDuration',
      stabilityDuration,
    );
    addField(
      'environmentalSetting',
      environmentalSetting,
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
      'reference',
      'note',
      'stabilityDuration',
      'environmentalSetting',
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
      case 'reference':
        if (reference != null) {
          fields.add(reference!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'stabilityDuration':
        if (stabilityDuration != null) {
          fields.add(stabilityDuration!);
        }
      case 'environmentalSetting':
        if (environmentalSetting != null) {
          fields.addAll(environmentalSetting!);
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
  MedicationKnowledgeStorageGuideline clone() => copyWith();

  /// Copy function for [MedicationKnowledgeStorageGuideline]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MedicationKnowledgeStorageGuidelineCopyWith<
          MedicationKnowledgeStorageGuideline>
      get copyWith => _$MedicationKnowledgeStorageGuidelineCopyWithImpl<
              MedicationKnowledgeStorageGuideline>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationKnowledgeStorageGuideline) {
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
      reference,
      o.reference,
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
      stabilityDuration,
      o.stabilityDuration,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgeEnvironmentalSetting>(
      environmentalSetting,
      o.environmentalSetting,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgeEnvironmentalSetting]
/// Describes a setting/value on the environment for the adequate storage
/// of the medication and other substances. Environment settings may
/// involve temperature, humidity, or exposure to light.
class MedicationKnowledgeEnvironmentalSetting extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeEnvironmentalSetting]

  const MedicationKnowledgeEnvironmentalSetting({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.valueX,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeEnvironmentalSetting.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicationKnowledgeEnvironmentalSetting(
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
      )!,
      valueX: JsonParser.parsePolymorphic<
          ValueXMedicationKnowledgeEnvironmentalSetting>(
        json,
        {
          'valueQuantity': Quantity.fromJson,
          'valueRange': Range.fromJson,
          'valueCodeableConcept': CodeableConcept.fromJson,
        },
      )!,
    );
  }

  /// Deserialize [MedicationKnowledgeEnvironmentalSetting]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeEnvironmentalSetting.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeEnvironmentalSetting.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeEnvironmentalSetting.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeEnvironmentalSetting '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeEnvironmentalSetting]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeEnvironmentalSetting.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeEnvironmentalSetting.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeEnvironmentalSetting';

  /// [type]
  /// Identifies the category or type of setting (e.g., type of location,
  /// temperature, humidity).
  final CodeableConcept type;

  /// [valueX]
  /// Value associated to the setting. E.g., 40° – 50°F for temperature.
  final ValueXMedicationKnowledgeEnvironmentalSetting valueX;

  /// Getter for [valueQuantity] as a Quantity
  Quantity? get valueQuantity => valueX.isAs<Quantity>();

  /// Getter for [valueRange] as a Range
  Range? get valueRange => valueX.isAs<Range>();

  /// Getter for [valueCodeableConcept] as a CodeableConcept
  CodeableConcept? get valueCodeableConcept => valueX.isAs<CodeableConcept>();
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
    final valueXFhirType = valueX.fhirType;
    addField(
      'value${valueXFhirType.capitalize()}',
      valueX,
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
      'valueX',
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
        fields.add(type);
      case 'value':
        fields.add(valueX);
      case 'valueX':
        fields.add(valueX);
      case 'valueQuantity':
        if (valueX is Quantity) {
          fields.add(valueX);
        }
      case 'valueRange':
        if (valueX is Range) {
          fields.add(valueX);
        }
      case 'valueCodeableConcept':
        if (valueX is CodeableConcept) {
          fields.add(valueX);
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
  MedicationKnowledgeEnvironmentalSetting clone() => copyWith();

  /// Copy function for [MedicationKnowledgeEnvironmentalSetting]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MedicationKnowledgeEnvironmentalSettingCopyWith<
          MedicationKnowledgeEnvironmentalSetting>
      get copyWith => _$MedicationKnowledgeEnvironmentalSettingCopyWithImpl<
              MedicationKnowledgeEnvironmentalSetting>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationKnowledgeEnvironmentalSetting) {
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
      valueX,
      o.valueX,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgeRegulatory]
/// Regulatory information about a medication.
class MedicationKnowledgeRegulatory extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeRegulatory]

  const MedicationKnowledgeRegulatory({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.regulatoryAuthority,
    this.substitution,
    this.schedule,
    this.maxDispense,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeRegulatory.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicationKnowledgeRegulatory(
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
      regulatoryAuthority: JsonParser.parseObject<Reference>(
        json,
        'regulatoryAuthority',
        Reference.fromJson,
      )!,
      substitution: (json['substitution'] as List<dynamic>?)
          ?.map<MedicationKnowledgeSubstitution>(
            (v) => MedicationKnowledgeSubstitution.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      schedule: (json['schedule'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      maxDispense: JsonParser.parseObject<MedicationKnowledgeMaxDispense>(
        json,
        'maxDispense',
        MedicationKnowledgeMaxDispense.fromJson,
      ),
    );
  }

  /// Deserialize [MedicationKnowledgeRegulatory]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeRegulatory.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeRegulatory.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeRegulatory.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeRegulatory '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeRegulatory]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeRegulatory.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeRegulatory.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeRegulatory';

  /// [regulatoryAuthority]
  /// The authority that is specifying the regulations.
  final Reference regulatoryAuthority;

  /// [substitution]
  /// Specifies if changes are allowed when dispensing a medication from a
  /// regulatory perspective.
  final List<MedicationKnowledgeSubstitution>? substitution;

  /// [schedule]
  /// Specifies the schedule of a medication in jurisdiction.
  final List<CodeableConcept>? schedule;

  /// [maxDispense]
  /// The maximum number of units of the medication that can be dispensed in
  /// a period.
  final MedicationKnowledgeMaxDispense? maxDispense;
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
      'regulatoryAuthority',
      regulatoryAuthority,
    );
    addField(
      'substitution',
      substitution,
    );
    addField(
      'schedule',
      schedule,
    );
    addField(
      'maxDispense',
      maxDispense,
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
      'regulatoryAuthority',
      'substitution',
      'schedule',
      'maxDispense',
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
      case 'regulatoryAuthority':
        fields.add(regulatoryAuthority);
      case 'substitution':
        if (substitution != null) {
          fields.addAll(substitution!);
        }
      case 'schedule':
        if (schedule != null) {
          fields.addAll(schedule!);
        }
      case 'maxDispense':
        if (maxDispense != null) {
          fields.add(maxDispense!);
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
  MedicationKnowledgeRegulatory clone() => copyWith();

  /// Copy function for [MedicationKnowledgeRegulatory]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MedicationKnowledgeRegulatoryCopyWith<MedicationKnowledgeRegulatory>
      get copyWith => _$MedicationKnowledgeRegulatoryCopyWithImpl<
              MedicationKnowledgeRegulatory>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationKnowledgeRegulatory) {
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
      regulatoryAuthority,
      o.regulatoryAuthority,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgeSubstitution>(
      substitution,
      o.substitution,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      schedule,
      o.schedule,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      maxDispense,
      o.maxDispense,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgeSubstitution]
/// Specifies if changes are allowed when dispensing a medication from a
/// regulatory perspective.
class MedicationKnowledgeSubstitution extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeSubstitution]

  const MedicationKnowledgeSubstitution({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.allowed,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeSubstitution.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicationKnowledgeSubstitution(
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
      )!,
      allowed: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'allowed',
        FhirBoolean.fromJson,
      )!,
    );
  }

  /// Deserialize [MedicationKnowledgeSubstitution]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeSubstitution.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeSubstitution.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeSubstitution.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeSubstitution '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeSubstitution]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeSubstitution.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeSubstitution.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeSubstitution';

  /// [type]
  /// Specifies the type of substitution allowed.
  final CodeableConcept type;

  /// [allowed]
  /// Specifies if regulation allows for changes in the medication when
  /// dispensing.
  final FhirBoolean allowed;
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
      'allowed',
      allowed,
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
      'allowed',
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
        fields.add(type);
      case 'allowed':
        fields.add(allowed);
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
  MedicationKnowledgeSubstitution clone() => copyWith();

  /// Copy function for [MedicationKnowledgeSubstitution]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MedicationKnowledgeSubstitutionCopyWith<MedicationKnowledgeSubstitution>
      get copyWith => _$MedicationKnowledgeSubstitutionCopyWithImpl<
              MedicationKnowledgeSubstitution>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationKnowledgeSubstitution) {
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
      allowed,
      o.allowed,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgeMaxDispense]
/// The maximum number of units of the medication that can be dispensed in
/// a period.
class MedicationKnowledgeMaxDispense extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeMaxDispense]

  const MedicationKnowledgeMaxDispense({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.quantity,
    this.period,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeMaxDispense.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicationKnowledgeMaxDispense(
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
      )!,
      period: JsonParser.parseObject<FhirDuration>(
        json,
        'period',
        FhirDuration.fromJson,
      ),
    );
  }

  /// Deserialize [MedicationKnowledgeMaxDispense]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeMaxDispense.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeMaxDispense.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeMaxDispense.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeMaxDispense '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeMaxDispense]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeMaxDispense.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeMaxDispense.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeMaxDispense';

  /// [quantity]
  /// The maximum number of units of the medication that can be dispensed.
  final Quantity quantity;

  /// [period]
  /// The period that applies to the maximum number of units.
  final FhirDuration? period;
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
      'quantity',
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
      case 'quantity':
        fields.add(quantity);
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
  MedicationKnowledgeMaxDispense clone() => copyWith();

  /// Copy function for [MedicationKnowledgeMaxDispense]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MedicationKnowledgeMaxDispenseCopyWith<MedicationKnowledgeMaxDispense>
      get copyWith => _$MedicationKnowledgeMaxDispenseCopyWithImpl<
              MedicationKnowledgeMaxDispense>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationKnowledgeMaxDispense) {
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
      period,
      o.period,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgeDefinitional]
/// Along with the link to a Medicinal Product Definition resource, this
/// information provides common definitional elements that are needed to
/// understand the specific medication that is being described.
class MedicationKnowledgeDefinitional extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeDefinitional]

  const MedicationKnowledgeDefinitional({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.definition,
    this.doseForm,
    this.intendedRoute,
    this.ingredient,
    this.drugCharacteristic,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeDefinitional.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicationKnowledgeDefinitional(
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
      definition: (json['definition'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      doseForm: JsonParser.parseObject<CodeableConcept>(
        json,
        'doseForm',
        CodeableConcept.fromJson,
      ),
      intendedRoute: (json['intendedRoute'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      ingredient: (json['ingredient'] as List<dynamic>?)
          ?.map<MedicationKnowledgeIngredient>(
            (v) => MedicationKnowledgeIngredient.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      drugCharacteristic: (json['drugCharacteristic'] as List<dynamic>?)
          ?.map<MedicationKnowledgeDrugCharacteristic>(
            (v) => MedicationKnowledgeDrugCharacteristic.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MedicationKnowledgeDefinitional]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeDefinitional.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeDefinitional.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeDefinitional.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeDefinitional '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeDefinitional]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeDefinitional.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeDefinitional.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeDefinitional';

  /// [definition]
  /// Associated definitions for this medication.
  final List<Reference>? definition;

  /// [doseForm]
  /// Describes the form of the item. Powder; tablets; capsule.
  final CodeableConcept? doseForm;

  /// [intendedRoute]
  /// The intended or approved route of administration.
  final List<CodeableConcept>? intendedRoute;

  /// [ingredient]
  /// Identifies a particular constituent of interest in the product.
  final List<MedicationKnowledgeIngredient>? ingredient;

  /// [drugCharacteristic]
  /// Specifies descriptive properties of the medicine, such as color, shape,
  /// imprints, etc.
  final List<MedicationKnowledgeDrugCharacteristic>? drugCharacteristic;
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
      'definition',
      definition,
    );
    addField(
      'doseForm',
      doseForm,
    );
    addField(
      'intendedRoute',
      intendedRoute,
    );
    addField(
      'ingredient',
      ingredient,
    );
    addField(
      'drugCharacteristic',
      drugCharacteristic,
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
      'definition',
      'doseForm',
      'intendedRoute',
      'ingredient',
      'drugCharacteristic',
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
      case 'definition':
        if (definition != null) {
          fields.addAll(definition!);
        }
      case 'doseForm':
        if (doseForm != null) {
          fields.add(doseForm!);
        }
      case 'intendedRoute':
        if (intendedRoute != null) {
          fields.addAll(intendedRoute!);
        }
      case 'ingredient':
        if (ingredient != null) {
          fields.addAll(ingredient!);
        }
      case 'drugCharacteristic':
        if (drugCharacteristic != null) {
          fields.addAll(drugCharacteristic!);
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
  MedicationKnowledgeDefinitional clone() => copyWith();

  /// Copy function for [MedicationKnowledgeDefinitional]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MedicationKnowledgeDefinitionalCopyWith<MedicationKnowledgeDefinitional>
      get copyWith => _$MedicationKnowledgeDefinitionalCopyWithImpl<
              MedicationKnowledgeDefinitional>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationKnowledgeDefinitional) {
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
    if (!listEquals<Reference>(
      definition,
      o.definition,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      doseForm,
      o.doseForm,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      intendedRoute,
      o.intendedRoute,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgeIngredient>(
      ingredient,
      o.ingredient,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgeDrugCharacteristic>(
      drugCharacteristic,
      o.drugCharacteristic,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgeIngredient]
/// Identifies a particular constituent of interest in the product.
class MedicationKnowledgeIngredient extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeIngredient]

  const MedicationKnowledgeIngredient({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.item,
    this.type,
    StrengthXMedicationKnowledgeIngredient? strengthX,
    Ratio? strengthRatio,
    CodeableConcept? strengthCodeableConcept,
    Quantity? strengthQuantity,
    super.disallowExtensions,
  })  : strengthX = strengthX ??
            strengthRatio ??
            strengthCodeableConcept ??
            strengthQuantity,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeIngredient.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicationKnowledgeIngredient(
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
      item: JsonParser.parseObject<CodeableReference>(
        json,
        'item',
        CodeableReference.fromJson,
      )!,
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      strengthX:
          JsonParser.parsePolymorphic<StrengthXMedicationKnowledgeIngredient>(
        json,
        {
          'strengthRatio': Ratio.fromJson,
          'strengthCodeableConcept': CodeableConcept.fromJson,
          'strengthQuantity': Quantity.fromJson,
        },
      ),
    );
  }

  /// Deserialize [MedicationKnowledgeIngredient]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeIngredient.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeIngredient.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeIngredient.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeIngredient '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeIngredient]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeIngredient.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeIngredient.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeIngredient';

  /// [item]
  /// A reference to the resource that provides information about the
  /// ingredient.
  final CodeableReference item;

  /// [type]
  /// Indication of whether this ingredient affects the therapeutic action of
  /// the drug.
  final CodeableConcept? type;

  /// [strengthX]
  /// Specifies how many (or how much) of the items there are in this
  /// Medication. For example, 250 mg per tablet. This is expressed as a
  /// ratio where the numerator is 250mg and the denominator is 1 tablet but
  /// can also be expressed a quantity when the denominator is assumed to be
  /// 1 tablet.
  final StrengthXMedicationKnowledgeIngredient? strengthX;

  /// Getter for [strengthRatio] as a Ratio
  Ratio? get strengthRatio => strengthX?.isAs<Ratio>();

  /// Getter for [strengthCodeableConcept] as a CodeableConcept
  CodeableConcept? get strengthCodeableConcept =>
      strengthX?.isAs<CodeableConcept>();

  /// Getter for [strengthQuantity] as a Quantity
  Quantity? get strengthQuantity => strengthX?.isAs<Quantity>();
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
      'item',
      item,
    );
    addField(
      'type',
      type,
    );
    if (strengthX != null) {
      final fhirType = strengthX!.fhirType;
      addField(
        'strength${fhirType.capitalize()}',
        strengthX,
      );
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
      'item',
      'type',
      'strengthX',
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
      case 'item':
        fields.add(item);
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'strength':
        fields.add(strengthX!);
      case 'strengthX':
        fields.add(strengthX!);
      case 'strengthRatio':
        if (strengthX is Ratio) {
          fields.add(strengthX!);
        }
      case 'strengthCodeableConcept':
        if (strengthX is CodeableConcept) {
          fields.add(strengthX!);
        }
      case 'strengthQuantity':
        if (strengthX is Quantity) {
          fields.add(strengthX!);
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
  MedicationKnowledgeIngredient clone() => copyWith();

  /// Copy function for [MedicationKnowledgeIngredient]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MedicationKnowledgeIngredientCopyWith<MedicationKnowledgeIngredient>
      get copyWith => _$MedicationKnowledgeIngredientCopyWithImpl<
              MedicationKnowledgeIngredient>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationKnowledgeIngredient) {
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
      item,
      o.item,
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
      strengthX,
      o.strengthX,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgeDrugCharacteristic]
/// Specifies descriptive properties of the medicine, such as color, shape,
/// imprints, etc.
class MedicationKnowledgeDrugCharacteristic extends BackboneElement {
  /// Primary constructor for
  /// [MedicationKnowledgeDrugCharacteristic]

  const MedicationKnowledgeDrugCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    ValueXMedicationKnowledgeDrugCharacteristic? valueX,
    CodeableConcept? valueCodeableConcept,
    FhirString? valueString,
    Quantity? valueQuantity,
    FhirBase64Binary? valueBase64Binary,
    Attachment? valueAttachment,
    super.disallowExtensions,
  })  : valueX = valueX ??
            valueCodeableConcept ??
            valueString ??
            valueQuantity ??
            valueBase64Binary ??
            valueAttachment,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeDrugCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicationKnowledgeDrugCharacteristic(
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
      valueX: JsonParser.parsePolymorphic<
          ValueXMedicationKnowledgeDrugCharacteristic>(
        json,
        {
          'valueCodeableConcept': CodeableConcept.fromJson,
          'valueString': FhirString.fromJson,
          'valueQuantity': Quantity.fromJson,
          'valueBase64Binary': FhirBase64Binary.fromJson,
          'valueAttachment': Attachment.fromJson,
        },
      ),
    );
  }

  /// Deserialize [MedicationKnowledgeDrugCharacteristic]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeDrugCharacteristic.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeDrugCharacteristic.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeDrugCharacteristic.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeDrugCharacteristic '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeDrugCharacteristic]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeDrugCharacteristic.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeDrugCharacteristic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeDrugCharacteristic';

  /// [type]
  /// A code specifying which characteristic of the medicine is being
  /// described (for example, colour, shape, imprint).
  final CodeableConcept? type;

  /// [valueX]
  /// Description of the characteristic.
  final ValueXMedicationKnowledgeDrugCharacteristic? valueX;

  /// Getter for [valueCodeableConcept] as a CodeableConcept
  CodeableConcept? get valueCodeableConcept => valueX?.isAs<CodeableConcept>();

  /// Getter for [valueString] as a FhirString
  FhirString? get valueString => valueX?.isAs<FhirString>();

  /// Getter for [valueQuantity] as a Quantity
  Quantity? get valueQuantity => valueX?.isAs<Quantity>();

  /// Getter for [valueBase64Binary] as a FhirBase64Binary
  FhirBase64Binary? get valueBase64Binary => valueX?.isAs<FhirBase64Binary>();

  /// Getter for [valueAttachment] as a Attachment
  Attachment? get valueAttachment => valueX?.isAs<Attachment>();
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
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField(
        'value${fhirType.capitalize()}',
        valueX,
      );
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
      'type',
      'valueX',
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
      case 'value':
        fields.add(valueX!);
      case 'valueX':
        fields.add(valueX!);
      case 'valueCodeableConcept':
        if (valueX is CodeableConcept) {
          fields.add(valueX!);
        }
      case 'valueString':
        if (valueX is FhirString) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is Quantity) {
          fields.add(valueX!);
        }
      case 'valueBase64Binary':
        if (valueX is FhirBase64Binary) {
          fields.add(valueX!);
        }
      case 'valueAttachment':
        if (valueX is Attachment) {
          fields.add(valueX!);
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
  MedicationKnowledgeDrugCharacteristic clone() => copyWith();

  /// Copy function for [MedicationKnowledgeDrugCharacteristic]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MedicationKnowledgeDrugCharacteristicCopyWith<
          MedicationKnowledgeDrugCharacteristic>
      get copyWith => _$MedicationKnowledgeDrugCharacteristicCopyWithImpl<
              MedicationKnowledgeDrugCharacteristic>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationKnowledgeDrugCharacteristic) {
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
      valueX,
      o.valueX,
    )) {
      return false;
    }
    return true;
  }
}
