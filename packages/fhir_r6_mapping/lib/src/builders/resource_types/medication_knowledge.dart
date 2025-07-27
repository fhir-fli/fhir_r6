// ignore_for_file: lines_longer_than_80_chars

import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        MedicationKnowledge,
        MedicationKnowledgeCost,
        MedicationKnowledgeDefinitional,
        MedicationKnowledgeDosage,
        MedicationKnowledgeDosingGuideline,
        MedicationKnowledgeDrugCharacteristic,
        MedicationKnowledgeEnvironmentalSetting,
        MedicationKnowledgeIndicationGuideline,
        MedicationKnowledgeIngredient,
        MedicationKnowledgeMaxDispense,
        MedicationKnowledgeMedicineClassification,
        MedicationKnowledgeMonitoringProgram,
        MedicationKnowledgeMonograph,
        MedicationKnowledgePackaging,
        MedicationKnowledgePatientCharacteristic,
        MedicationKnowledgeRegulatory,
        MedicationKnowledgeRelatedMedicationKnowledge,
        MedicationKnowledgeStorageGuideline,
        MedicationKnowledgeSubstitution,
        R5ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [MedicationKnowledgeBuilder]
/// Information about a medication that is used to support knowledge.
class MedicationKnowledgeBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [MedicationKnowledgeBuilder]

  MedicationKnowledgeBuilder({
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
          objectPath: 'MedicationKnowledge',
          resourceType: R5ResourceType.MedicationKnowledge,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicationKnowledgeBuilder.empty() => MedicationKnowledgeBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationKnowledge';
    return MedicationKnowledgeBuilder(
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
      code: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'code',
        CodeableConceptBuilder.fromJson,
        '$objectPath.code',
      ),
      status: JsonParser.parsePrimitive<MedicationKnowledgeStatusCodesBuilder>(
        json,
        'status',
        MedicationKnowledgeStatusCodesBuilder.fromJson,
        '$objectPath.status',
      ),
      author: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'author',
        ReferenceBuilder.fromJson,
        '$objectPath.author',
      ),
      intendedJurisdiction: (json['intendedJurisdiction'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.intendedJurisdiction',
              },
            ),
          )
          .toList(),
      name: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      relatedMedicationKnowledge: (json['relatedMedicationKnowledge']
              as List<dynamic>?)
          ?.map<MedicationKnowledgeRelatedMedicationKnowledgeBuilder>(
            (v) =>
                MedicationKnowledgeRelatedMedicationKnowledgeBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.relatedMedicationKnowledge',
              },
            ),
          )
          .toList(),
      associatedMedication: (json['associatedMedication'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.associatedMedication',
              },
            ),
          )
          .toList(),
      productType: (json['productType'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.productType',
              },
            ),
          )
          .toList(),
      monograph: (json['monograph'] as List<dynamic>?)
          ?.map<MedicationKnowledgeMonographBuilder>(
            (v) => MedicationKnowledgeMonographBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.monograph',
              },
            ),
          )
          .toList(),
      preparationInstruction: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'preparationInstruction',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.preparationInstruction',
      ),
      cost: (json['cost'] as List<dynamic>?)
          ?.map<MedicationKnowledgeCostBuilder>(
            (v) => MedicationKnowledgeCostBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.cost',
              },
            ),
          )
          .toList(),
      monitoringProgram: (json['monitoringProgram'] as List<dynamic>?)
          ?.map<MedicationKnowledgeMonitoringProgramBuilder>(
            (v) => MedicationKnowledgeMonitoringProgramBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.monitoringProgram',
              },
            ),
          )
          .toList(),
      indicationGuideline: (json['indicationGuideline'] as List<dynamic>?)
          ?.map<MedicationKnowledgeIndicationGuidelineBuilder>(
            (v) => MedicationKnowledgeIndicationGuidelineBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.indicationGuideline',
              },
            ),
          )
          .toList(),
      medicineClassification: (json['medicineClassification'] as List<dynamic>?)
          ?.map<MedicationKnowledgeMedicineClassificationBuilder>(
            (v) => MedicationKnowledgeMedicineClassificationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.medicineClassification',
              },
            ),
          )
          .toList(),
      packaging: (json['packaging'] as List<dynamic>?)
          ?.map<MedicationKnowledgePackagingBuilder>(
            (v) => MedicationKnowledgePackagingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.packaging',
              },
            ),
          )
          .toList(),
      clinicalUseIssue: (json['clinicalUseIssue'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.clinicalUseIssue',
              },
            ),
          )
          .toList(),
      storageGuideline: (json['storageGuideline'] as List<dynamic>?)
          ?.map<MedicationKnowledgeStorageGuidelineBuilder>(
            (v) => MedicationKnowledgeStorageGuidelineBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.storageGuideline',
              },
            ),
          )
          .toList(),
      regulatory: (json['regulatory'] as List<dynamic>?)
          ?.map<MedicationKnowledgeRegulatoryBuilder>(
            (v) => MedicationKnowledgeRegulatoryBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.regulatory',
              },
            ),
          )
          .toList(),
      definitional:
          JsonParser.parseObject<MedicationKnowledgeDefinitionalBuilder>(
        json,
        'definitional',
        MedicationKnowledgeDefinitionalBuilder.fromJson,
        '$objectPath.definitional',
      ),
    );
  }

  /// Deserialize [MedicationKnowledgeBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledge';

  /// [identifier]
  /// Business identifier for this medication.
  List<IdentifierBuilder>? identifier;

  /// [code]
  /// A code that specifies this medication, or a textual description if no
  /// code is available. Usage note: This could be a standard medication code
  /// such as a code from RxNorm, SNOMED CT, IDMP etc. It could also be a
  /// national or local formulary code, optionally with translations to other
  /// code systems.
  CodeableConceptBuilder? code;

  /// [status]
  /// A code to indicate if the medication referred to by this
  /// MedicationKnowledge is in active use within the drug database or
  /// inventory system. The status refers to the validity about the
  /// information of the medication and not to its medicinal properties.
  MedicationKnowledgeStatusCodesBuilder? status;

  /// [author]
  /// The creator or owner of the knowledge or information about the
  /// medication.
  ReferenceBuilder? author;

  /// [intendedJurisdiction]
  /// Lists the jurisdictions that this medication knowledge was written for.
  List<CodeableConceptBuilder>? intendedJurisdiction;

  /// [name]
  /// All of the names for a medication, for example, the name(s) given to a
  /// medication in different countries. For example, acetaminophen and
  /// paracetamol or salbutamol and albuterol.
  List<FhirStringBuilder>? name;

  /// [relatedMedicationKnowledge]
  /// Associated or related medications. For example, if the medication is a
  /// branded product (e.g. Crestor), this is the Therapeutic Moeity (e.g.
  /// Rosuvastatin) or if this is a generic medication (e.g. Rosuvastatin),
  /// this would link to a branded product (e.g. Crestor.
  List<MedicationKnowledgeRelatedMedicationKnowledgeBuilder>?
      relatedMedicationKnowledge;

  /// [associatedMedication]
  /// Links to associated medications that could be prescribed, dispensed or
  /// administered.
  List<ReferenceBuilder>? associatedMedication;

  /// [productType]
  /// Category of the medication or product (e.g. branded product,
  /// therapeutic moeity, generic product, innovator product, etc.).
  List<CodeableConceptBuilder>? productType;

  /// [monograph]
  /// Associated documentation about the medication.
  List<MedicationKnowledgeMonographBuilder>? monograph;

  /// [preparationInstruction]
  /// The instructions for preparing the medication.
  FhirMarkdownBuilder? preparationInstruction;

  /// [cost]
  /// The price of the medication.
  List<MedicationKnowledgeCostBuilder>? cost;

  /// [monitoringProgram]
  /// The program under which the medication is reviewed.
  List<MedicationKnowledgeMonitoringProgramBuilder>? monitoringProgram;

  /// [indicationGuideline]
  /// Guidelines or protocols that are applicable for the administration of
  /// the medication based on indication.
  List<MedicationKnowledgeIndicationGuidelineBuilder>? indicationGuideline;

  /// [medicineClassification]
  /// Categorization of the medication within a formulary or classification
  /// system.
  List<MedicationKnowledgeMedicineClassificationBuilder>?
      medicineClassification;

  /// [packaging]
  /// Information that only applies to packages (not products).
  List<MedicationKnowledgePackagingBuilder>? packaging;

  /// [clinicalUseIssue]
  /// Potential clinical issue with or between medication(s) (for example,
  /// drug-drug interaction, drug-disease contraindication, drug-allergy
  /// interaction, etc.).
  List<ReferenceBuilder>? clinicalUseIssue;

  /// [storageGuideline]
  /// Information on how the medication should be stored, for example,
  /// refrigeration temperatures and length of stability at a given
  /// temperature.
  List<MedicationKnowledgeStorageGuidelineBuilder>? storageGuideline;

  /// [regulatory]
  /// Regulatory information about a medication.
  List<MedicationKnowledgeRegulatoryBuilder>? regulatory;

  /// [definitional]
  /// Along with the link to a Medicinal Product Definition resource, this
  /// information provides common definitional elements that are needed to
  /// understand the specific medication that is being described.
  MedicationKnowledgeDefinitionalBuilder? definitional;

  /// Converts a [MedicationKnowledgeBuilder]
  /// to [MedicationKnowledge]
  @override
  MedicationKnowledge build() => MedicationKnowledge.fromJson(toJson());

  /// Converts a [MedicationKnowledgeBuilder]
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
    addField('code', code);
    addField('status', status);
    addField('author', author);
    addField('intendedJurisdiction', intendedJurisdiction);
    addField('name', name);
    addField('relatedMedicationKnowledge', relatedMedicationKnowledge);
    addField('associatedMedication', associatedMedication);
    addField('productType', productType);
    addField('monograph', monograph);
    addField('preparationInstruction', preparationInstruction);
    addField('cost', cost);
    addField('monitoringProgram', monitoringProgram);
    addField('indicationGuideline', indicationGuideline);
    addField('medicineClassification', medicineClassification);
    addField('packaging', packaging);
    addField('clinicalUseIssue', clinicalUseIssue);
    addField('storageGuideline', storageGuideline);
    addField('regulatory', regulatory);
    addField('definitional', definitional);
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
      case 'code':
        {
          if (child is CodeableConceptBuilder) {
            code = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is MedicationKnowledgeStatusCodesBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted =
                    MedicationKnowledgeStatusCodesBuilder(stringValue);
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
      case 'author':
        {
          if (child is ReferenceBuilder) {
            author = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'intendedJurisdiction':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            intendedJurisdiction = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            intendedJurisdiction = [
              ...(intendedJurisdiction ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'name':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            name = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            name = [
              ...(name ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirStringBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirStringBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              name = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                name = [
                  ...(name ?? []),
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
      case 'relatedMedicationKnowledge':
        {
          if (child
              is List<MedicationKnowledgeRelatedMedicationKnowledgeBuilder>) {
            // Replace or create new list
            relatedMedicationKnowledge = child;
            return;
          } else if (child
              is MedicationKnowledgeRelatedMedicationKnowledgeBuilder) {
            // Add single element to existing list or create new list
            relatedMedicationKnowledge = [
              ...(relatedMedicationKnowledge ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'associatedMedication':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            associatedMedication = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            associatedMedication = [
              ...(associatedMedication ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'productType':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            productType = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            productType = [
              ...(productType ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'monograph':
        {
          if (child is List<MedicationKnowledgeMonographBuilder>) {
            // Replace or create new list
            monograph = child;
            return;
          } else if (child is MedicationKnowledgeMonographBuilder) {
            // Add single element to existing list or create new list
            monograph = [
              ...(monograph ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'preparationInstruction':
        {
          if (child is FhirMarkdownBuilder) {
            preparationInstruction = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                preparationInstruction = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'cost':
        {
          if (child is List<MedicationKnowledgeCostBuilder>) {
            // Replace or create new list
            cost = child;
            return;
          } else if (child is MedicationKnowledgeCostBuilder) {
            // Add single element to existing list or create new list
            cost = [
              ...(cost ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'monitoringProgram':
        {
          if (child is List<MedicationKnowledgeMonitoringProgramBuilder>) {
            // Replace or create new list
            monitoringProgram = child;
            return;
          } else if (child is MedicationKnowledgeMonitoringProgramBuilder) {
            // Add single element to existing list or create new list
            monitoringProgram = [
              ...(monitoringProgram ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'indicationGuideline':
        {
          if (child is List<MedicationKnowledgeIndicationGuidelineBuilder>) {
            // Replace or create new list
            indicationGuideline = child;
            return;
          } else if (child is MedicationKnowledgeIndicationGuidelineBuilder) {
            // Add single element to existing list or create new list
            indicationGuideline = [
              ...(indicationGuideline ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'medicineClassification':
        {
          if (child is List<MedicationKnowledgeMedicineClassificationBuilder>) {
            // Replace or create new list
            medicineClassification = child;
            return;
          } else if (child
              is MedicationKnowledgeMedicineClassificationBuilder) {
            // Add single element to existing list or create new list
            medicineClassification = [
              ...(medicineClassification ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'packaging':
        {
          if (child is List<MedicationKnowledgePackagingBuilder>) {
            // Replace or create new list
            packaging = child;
            return;
          } else if (child is MedicationKnowledgePackagingBuilder) {
            // Add single element to existing list or create new list
            packaging = [
              ...(packaging ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'clinicalUseIssue':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            clinicalUseIssue = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            clinicalUseIssue = [
              ...(clinicalUseIssue ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'storageGuideline':
        {
          if (child is List<MedicationKnowledgeStorageGuidelineBuilder>) {
            // Replace or create new list
            storageGuideline = child;
            return;
          } else if (child is MedicationKnowledgeStorageGuidelineBuilder) {
            // Add single element to existing list or create new list
            storageGuideline = [
              ...(storageGuideline ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'regulatory':
        {
          if (child is List<MedicationKnowledgeRegulatoryBuilder>) {
            // Replace or create new list
            regulatory = child;
            return;
          } else if (child is MedicationKnowledgeRegulatoryBuilder) {
            // Add single element to existing list or create new list
            regulatory = [
              ...(regulatory ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'definitional':
        {
          if (child is MedicationKnowledgeDefinitionalBuilder) {
            definitional = child;
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
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'author':
        return ['ReferenceBuilder'];
      case 'intendedJurisdiction':
        return ['CodeableConceptBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      case 'relatedMedicationKnowledge':
        return ['MedicationKnowledgeRelatedMedicationKnowledgeBuilder'];
      case 'associatedMedication':
        return ['ReferenceBuilder'];
      case 'productType':
        return ['CodeableConceptBuilder'];
      case 'monograph':
        return ['MedicationKnowledgeMonographBuilder'];
      case 'preparationInstruction':
        return ['FhirMarkdownBuilder'];
      case 'cost':
        return ['MedicationKnowledgeCostBuilder'];
      case 'monitoringProgram':
        return ['MedicationKnowledgeMonitoringProgramBuilder'];
      case 'indicationGuideline':
        return ['MedicationKnowledgeIndicationGuidelineBuilder'];
      case 'medicineClassification':
        return ['MedicationKnowledgeMedicineClassificationBuilder'];
      case 'packaging':
        return ['MedicationKnowledgePackagingBuilder'];
      case 'clinicalUseIssue':
        return ['ReferenceBuilder'];
      case 'storageGuideline':
        return ['MedicationKnowledgeStorageGuidelineBuilder'];
      case 'regulatory':
        return ['MedicationKnowledgeRegulatoryBuilder'];
      case 'definitional':
        return ['MedicationKnowledgeDefinitionalBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationKnowledgeBuilder]
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
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
          return;
        }
      case 'status':
        {
          status = MedicationKnowledgeStatusCodesBuilder.empty();
          return;
        }
      case 'author':
        {
          author = ReferenceBuilder.empty();
          return;
        }
      case 'intendedJurisdiction':
        {
          intendedJurisdiction = <CodeableConceptBuilder>[];
          return;
        }
      case 'name':
        {
          name = <FhirStringBuilder>[];
          return;
        }
      case 'relatedMedicationKnowledge':
        {
          relatedMedicationKnowledge =
              <MedicationKnowledgeRelatedMedicationKnowledgeBuilder>[];
          return;
        }
      case 'associatedMedication':
        {
          associatedMedication = <ReferenceBuilder>[];
          return;
        }
      case 'productType':
        {
          productType = <CodeableConceptBuilder>[];
          return;
        }
      case 'monograph':
        {
          monograph = <MedicationKnowledgeMonographBuilder>[];
          return;
        }
      case 'preparationInstruction':
        {
          preparationInstruction = FhirMarkdownBuilder.empty();
          return;
        }
      case 'cost':
        {
          cost = <MedicationKnowledgeCostBuilder>[];
          return;
        }
      case 'monitoringProgram':
        {
          monitoringProgram = <MedicationKnowledgeMonitoringProgramBuilder>[];
          return;
        }
      case 'indicationGuideline':
        {
          indicationGuideline =
              <MedicationKnowledgeIndicationGuidelineBuilder>[];
          return;
        }
      case 'medicineClassification':
        {
          medicineClassification =
              <MedicationKnowledgeMedicineClassificationBuilder>[];
          return;
        }
      case 'packaging':
        {
          packaging = <MedicationKnowledgePackagingBuilder>[];
          return;
        }
      case 'clinicalUseIssue':
        {
          clinicalUseIssue = <ReferenceBuilder>[];
          return;
        }
      case 'storageGuideline':
        {
          storageGuideline = <MedicationKnowledgeStorageGuidelineBuilder>[];
          return;
        }
      case 'regulatory':
        {
          regulatory = <MedicationKnowledgeRegulatoryBuilder>[];
          return;
        }
      case 'definitional':
        {
          definitional = MedicationKnowledgeDefinitionalBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MedicationKnowledgeBuilder clone() => throw UnimplementedError();
  @override
  MedicationKnowledgeBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    CodeableConceptBuilder? code,
    MedicationKnowledgeStatusCodesBuilder? status,
    ReferenceBuilder? author,
    List<CodeableConceptBuilder>? intendedJurisdiction,
    List<FhirStringBuilder>? name,
    List<MedicationKnowledgeRelatedMedicationKnowledgeBuilder>?
        relatedMedicationKnowledge,
    List<ReferenceBuilder>? associatedMedication,
    List<CodeableConceptBuilder>? productType,
    List<MedicationKnowledgeMonographBuilder>? monograph,
    FhirMarkdownBuilder? preparationInstruction,
    List<MedicationKnowledgeCostBuilder>? cost,
    List<MedicationKnowledgeMonitoringProgramBuilder>? monitoringProgram,
    List<MedicationKnowledgeIndicationGuidelineBuilder>? indicationGuideline,
    List<MedicationKnowledgeMedicineClassificationBuilder>?
        medicineClassification,
    List<MedicationKnowledgePackagingBuilder>? packaging,
    List<ReferenceBuilder>? clinicalUseIssue,
    List<MedicationKnowledgeStorageGuidelineBuilder>? storageGuideline,
    List<MedicationKnowledgeRegulatoryBuilder>? regulatory,
    MedicationKnowledgeDefinitionalBuilder? definitional,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = MedicationKnowledgeBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      code: code ?? this.code,
      status: status ?? this.status,
      author: author ?? this.author,
      intendedJurisdiction: intendedJurisdiction ?? this.intendedJurisdiction,
      name: name ?? this.name,
      relatedMedicationKnowledge:
          relatedMedicationKnowledge ?? this.relatedMedicationKnowledge,
      associatedMedication: associatedMedication ?? this.associatedMedication,
      productType: productType ?? this.productType,
      monograph: monograph ?? this.monograph,
      preparationInstruction:
          preparationInstruction ?? this.preparationInstruction,
      cost: cost ?? this.cost,
      monitoringProgram: monitoringProgram ?? this.monitoringProgram,
      indicationGuideline: indicationGuideline ?? this.indicationGuideline,
      medicineClassification:
          medicineClassification ?? this.medicineClassification,
      packaging: packaging ?? this.packaging,
      clinicalUseIssue: clinicalUseIssue ?? this.clinicalUseIssue,
      storageGuideline: storageGuideline ?? this.storageGuideline,
      regulatory: regulatory ?? this.regulatory,
      definitional: definitional ?? this.definitional,
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
    if (o is! MedicationKnowledgeBuilder) {
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
    if (!listEquals<CodeableConceptBuilder>(
      intendedJurisdiction,
      o.intendedJurisdiction,
    )) {
      return false;
    }
    if (!listEquals<FhirStringBuilder>(
      name,
      o.name,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgeRelatedMedicationKnowledgeBuilder>(
      relatedMedicationKnowledge,
      o.relatedMedicationKnowledge,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      associatedMedication,
      o.associatedMedication,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      productType,
      o.productType,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgeMonographBuilder>(
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
    if (!listEquals<MedicationKnowledgeCostBuilder>(
      cost,
      o.cost,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgeMonitoringProgramBuilder>(
      monitoringProgram,
      o.monitoringProgram,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgeIndicationGuidelineBuilder>(
      indicationGuideline,
      o.indicationGuideline,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgeMedicineClassificationBuilder>(
      medicineClassification,
      o.medicineClassification,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgePackagingBuilder>(
      packaging,
      o.packaging,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      clinicalUseIssue,
      o.clinicalUseIssue,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgeStorageGuidelineBuilder>(
      storageGuideline,
      o.storageGuideline,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgeRegulatoryBuilder>(
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

/// [MedicationKnowledgeRelatedMedicationKnowledgeBuilder]
/// Associated or related medications. For example, if the medication is a
/// branded product (e.g. Crestor), this is the Therapeutic Moeity (e.g.
/// Rosuvastatin) or if this is a generic medication (e.g. Rosuvastatin),
/// this would link to a branded product (e.g. Crestor.
class MedicationKnowledgeRelatedMedicationKnowledgeBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MedicationKnowledgeRelatedMedicationKnowledgeBuilder]

  MedicationKnowledgeRelatedMedicationKnowledgeBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.reference,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationKnowledge.relatedMedicationKnowledge',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicationKnowledgeRelatedMedicationKnowledgeBuilder.empty() =>
      MedicationKnowledgeRelatedMedicationKnowledgeBuilder(
        type: CodeableConceptBuilder.empty(),
        reference: <ReferenceBuilder>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeRelatedMedicationKnowledgeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationKnowledge.relatedMedicationKnowledge';
    return MedicationKnowledgeRelatedMedicationKnowledgeBuilder(
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
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      reference: (json['reference'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reference',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MedicationKnowledgeRelatedMedicationKnowledgeBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeRelatedMedicationKnowledgeBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeRelatedMedicationKnowledgeBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeRelatedMedicationKnowledgeBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeRelatedMedicationKnowledgeBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeRelatedMedicationKnowledgeBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeRelatedMedicationKnowledgeBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeRelatedMedicationKnowledgeBuilder.fromJson(
        json,
      );
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeRelatedMedicationKnowledge';

  /// [type]
  /// The category of the associated medication knowledge reference.
  CodeableConceptBuilder? type;

  /// [reference]
  /// Associated documentation about the associated medication knowledge.
  List<ReferenceBuilder>? reference;

  /// Converts a [MedicationKnowledgeRelatedMedicationKnowledgeBuilder]
  /// to [MedicationKnowledgeRelatedMedicationKnowledge]
  @override
  MedicationKnowledgeRelatedMedicationKnowledge build() =>
      MedicationKnowledgeRelatedMedicationKnowledge.fromJson(toJson());

  /// Converts a [MedicationKnowledgeRelatedMedicationKnowledgeBuilder]
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
    addField('type', type);
    addField('reference', reference);
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'reference':
        if (reference != null) {
          fields.addAll(reference!);
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
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reference':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            reference = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            reference = [
              ...(reference ?? []),
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
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'reference':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationKnowledgeRelatedMedicationKnowledgeBuilder]
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
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'reference':
        {
          reference = <ReferenceBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MedicationKnowledgeRelatedMedicationKnowledgeBuilder clone() =>
      throw UnimplementedError();
  @override
  MedicationKnowledgeRelatedMedicationKnowledgeBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    List<ReferenceBuilder>? reference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MedicationKnowledgeRelatedMedicationKnowledgeBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      reference: reference ?? this.reference,
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
    if (o is! MedicationKnowledgeRelatedMedicationKnowledgeBuilder) {
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
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      reference,
      o.reference,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgeMonographBuilder]
/// Associated documentation about the medication.
class MedicationKnowledgeMonographBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MedicationKnowledgeMonographBuilder]

  MedicationKnowledgeMonographBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.source,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationKnowledge.monograph',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicationKnowledgeMonographBuilder.empty() =>
      MedicationKnowledgeMonographBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeMonographBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationKnowledge.monograph';
    return MedicationKnowledgeMonographBuilder(
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
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      source: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'source',
        ReferenceBuilder.fromJson,
        '$objectPath.source',
      ),
    );
  }

  /// Deserialize [MedicationKnowledgeMonographBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeMonographBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeMonographBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeMonographBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeMonographBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeMonographBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeMonographBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeMonographBuilder.fromJson(json);
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
  CodeableConceptBuilder? type;

  /// [source]
  /// Associated documentation about the medication.
  ReferenceBuilder? source;

  /// Converts a [MedicationKnowledgeMonographBuilder]
  /// to [MedicationKnowledgeMonograph]
  @override
  MedicationKnowledgeMonograph build() =>
      MedicationKnowledgeMonograph.fromJson(toJson());

  /// Converts a [MedicationKnowledgeMonographBuilder]
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
    addField('type', type);
    addField('source', source);
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
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'source':
        {
          if (child is ReferenceBuilder) {
            source = child;
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
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'source':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationKnowledgeMonographBuilder]
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
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'source':
        {
          source = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MedicationKnowledgeMonographBuilder clone() => throw UnimplementedError();
  @override
  MedicationKnowledgeMonographBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    ReferenceBuilder? source,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MedicationKnowledgeMonographBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      source: source ?? this.source,
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
    if (o is! MedicationKnowledgeMonographBuilder) {
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

/// [MedicationKnowledgeCostBuilder]
/// The price of the medication.
class MedicationKnowledgeCostBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MedicationKnowledgeCostBuilder]

  MedicationKnowledgeCostBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.effectiveDate,
    this.type,
    this.source,
    CostXMedicationKnowledgeCostBuilder? costX,
    MoneyBuilder? costMoney,
    CodeableConceptBuilder? costCodeableConcept,
    super.disallowExtensions,
  })  : costX = costX ?? costMoney ?? costCodeableConcept,
        super(
          objectPath: 'MedicationKnowledge.cost',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicationKnowledgeCostBuilder.empty() =>
      MedicationKnowledgeCostBuilder(
        type: CodeableConceptBuilder.empty(),
        costX: MoneyBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeCostBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationKnowledge.cost';
    return MedicationKnowledgeCostBuilder(
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
      effectiveDate: (json['effectiveDate'] as List<dynamic>?)
          ?.map<PeriodBuilder>(
            (v) => PeriodBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.effectiveDate',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      source: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'source',
        FhirStringBuilder.fromJson,
        '$objectPath.source',
      ),
      costX: JsonParser.parsePolymorphic<CostXMedicationKnowledgeCostBuilder>(
        json,
        {
          'costMoney': MoneyBuilder.fromJson,
          'costCodeableConcept': CodeableConceptBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [MedicationKnowledgeCostBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeCostBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeCostBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeCostBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeCostBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeCostBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeCostBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeCostBuilder.fromJson(json);
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
  List<PeriodBuilder>? effectiveDate;

  /// [type]
  /// The category of the cost information. For example, manufacturers' cost,
  /// patient cost, claim reimbursement cost, actual acquisition cost.
  CodeableConceptBuilder? type;

  /// [source]
  /// The source or owner that assigns the price to the medication.
  FhirStringBuilder? source;

  /// [costX]
  /// The price or representation of the cost (for example, Band A, Band B or
  /// $, $$) of the medication.
  CostXMedicationKnowledgeCostBuilder? costX;

  /// Getter for [costMoney] as a MoneyBuilder
  MoneyBuilder? get costMoney => costX?.isAs<MoneyBuilder>();

  /// Getter for [costCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get costCodeableConcept =>
      costX?.isAs<CodeableConceptBuilder>();

  /// Converts a [MedicationKnowledgeCostBuilder]
  /// to [MedicationKnowledgeCost]
  @override
  MedicationKnowledgeCost build() => MedicationKnowledgeCost.fromJson(toJson());

  /// Converts a [MedicationKnowledgeCostBuilder]
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
    addField('effectiveDate', effectiveDate);
    addField('type', type);
    addField('source', source);
    if (costX != null) {
      final fhirType = costX!.fhirType;
      addField('cost${fhirType.capitalizeFirstLetter()}', costX);
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
      'effectiveDate',
      'type',
      'source',
      'costX',
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
      case 'effectiveDate':
        if (effectiveDate != null) {
          fields.addAll(effectiveDate!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'source':
        if (source != null) {
          fields.add(source!);
        }
      case 'cost':
        if (costX != null) {
          fields.add(costX!);
        }
      case 'costX':
        if (costX != null) {
          fields.add(costX!);
        }
      case 'costMoney':
        if (costX is MoneyBuilder) {
          fields.add(costX!);
        }
      case 'costCodeableConcept':
        if (costX is CodeableConceptBuilder) {
          fields.add(costX!);
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
      case 'effectiveDate':
        {
          if (child is List<PeriodBuilder>) {
            // Replace or create new list
            effectiveDate = child;
            return;
          } else if (child is PeriodBuilder) {
            // Add single element to existing list or create new list
            effectiveDate = [
              ...(effectiveDate ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'source':
        {
          if (child is FhirStringBuilder) {
            source = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                source = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'cost':
      case 'costX':
        {
          if (child is CostXMedicationKnowledgeCostBuilder) {
            costX = child;
            return;
          } else {
            if (child is MoneyBuilder) {
              costX = child;
              return;
            }
            if (child is CodeableConceptBuilder) {
              costX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'costMoney':
        {
          if (child is MoneyBuilder) {
            costX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'costCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            costX = child;
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
      case 'effectiveDate':
        return ['PeriodBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'source':
        return ['FhirStringBuilder'];
      case 'cost':
      case 'costX':
        return [
          'MoneyBuilder',
          'CodeableConceptBuilder',
        ];
      case 'costMoney':
        return ['MoneyBuilder'];
      case 'costCodeableConcept':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationKnowledgeCostBuilder]
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
      case 'effectiveDate':
        {
          effectiveDate = <PeriodBuilder>[];
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'source':
        {
          source = FhirStringBuilder.empty();
          return;
        }
      case 'cost':
      case 'costX':
      case 'costMoney':
        {
          costX = MoneyBuilder.empty();
          return;
        }
      case 'costCodeableConcept':
        {
          costX = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MedicationKnowledgeCostBuilder clone() => throw UnimplementedError();
  @override
  MedicationKnowledgeCostBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<PeriodBuilder>? effectiveDate,
    CodeableConceptBuilder? type,
    FhirStringBuilder? source,
    CostXMedicationKnowledgeCostBuilder? costX,
    MoneyBuilder? costMoney,
    CodeableConceptBuilder? costCodeableConcept,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MedicationKnowledgeCostBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      effectiveDate: effectiveDate ?? this.effectiveDate,
      type: type ?? this.type,
      source: source ?? this.source,
      costX: costX ?? costMoney ?? costCodeableConcept ?? this.costX,
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
    if (o is! MedicationKnowledgeCostBuilder) {
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
    if (!listEquals<PeriodBuilder>(
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

/// [MedicationKnowledgeMonitoringProgramBuilder]
/// The program under which the medication is reviewed.
class MedicationKnowledgeMonitoringProgramBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MedicationKnowledgeMonitoringProgramBuilder]

  MedicationKnowledgeMonitoringProgramBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.name,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationKnowledge.monitoringProgram',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicationKnowledgeMonitoringProgramBuilder.empty() =>
      MedicationKnowledgeMonitoringProgramBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeMonitoringProgramBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationKnowledge.monitoringProgram';
    return MedicationKnowledgeMonitoringProgramBuilder(
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
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
    );
  }

  /// Deserialize [MedicationKnowledgeMonitoringProgramBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeMonitoringProgramBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeMonitoringProgramBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeMonitoringProgramBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeMonitoringProgramBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeMonitoringProgramBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeMonitoringProgramBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeMonitoringProgramBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeMonitoringProgram';

  /// [type]
  /// Type of program under which the medication is monitored.
  CodeableConceptBuilder? type;

  /// [name]
  /// Name of the reviewing program.
  FhirStringBuilder? name;

  /// Converts a [MedicationKnowledgeMonitoringProgramBuilder]
  /// to [MedicationKnowledgeMonitoringProgram]
  @override
  MedicationKnowledgeMonitoringProgram build() =>
      MedicationKnowledgeMonitoringProgram.fromJson(toJson());

  /// Converts a [MedicationKnowledgeMonitoringProgramBuilder]
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
    addField('type', type);
    addField('name', name);
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
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'name':
        {
          if (child is FhirStringBuilder) {
            name = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                name = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
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
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationKnowledgeMonitoringProgramBuilder]
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
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MedicationKnowledgeMonitoringProgramBuilder clone() =>
      throw UnimplementedError();
  @override
  MedicationKnowledgeMonitoringProgramBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    FhirStringBuilder? name,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MedicationKnowledgeMonitoringProgramBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      name: name ?? this.name,
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
    if (o is! MedicationKnowledgeMonitoringProgramBuilder) {
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

/// [MedicationKnowledgeIndicationGuidelineBuilder]
/// Guidelines or protocols that are applicable for the administration of
/// the medication based on indication.
class MedicationKnowledgeIndicationGuidelineBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MedicationKnowledgeIndicationGuidelineBuilder]

  MedicationKnowledgeIndicationGuidelineBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.indication,
    this.dosingGuideline,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationKnowledge.indicationGuideline',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicationKnowledgeIndicationGuidelineBuilder.empty() =>
      MedicationKnowledgeIndicationGuidelineBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeIndicationGuidelineBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationKnowledge.indicationGuideline';
    return MedicationKnowledgeIndicationGuidelineBuilder(
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
      indication: (json['indication'] as List<dynamic>?)
          ?.map<CodeableReferenceBuilder>(
            (v) => CodeableReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.indication',
              },
            ),
          )
          .toList(),
      dosingGuideline: (json['dosingGuideline'] as List<dynamic>?)
          ?.map<MedicationKnowledgeDosingGuidelineBuilder>(
            (v) => MedicationKnowledgeDosingGuidelineBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.dosingGuideline',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MedicationKnowledgeIndicationGuidelineBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeIndicationGuidelineBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeIndicationGuidelineBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeIndicationGuidelineBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeIndicationGuidelineBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeIndicationGuidelineBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeIndicationGuidelineBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeIndicationGuidelineBuilder.fromJson(json);
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
  List<CodeableReferenceBuilder>? indication;

  /// [dosingGuideline]
  /// The guidelines for the dosage of the medication for the indication.
  List<MedicationKnowledgeDosingGuidelineBuilder>? dosingGuideline;

  /// Converts a [MedicationKnowledgeIndicationGuidelineBuilder]
  /// to [MedicationKnowledgeIndicationGuideline]
  @override
  MedicationKnowledgeIndicationGuideline build() =>
      MedicationKnowledgeIndicationGuideline.fromJson(toJson());

  /// Converts a [MedicationKnowledgeIndicationGuidelineBuilder]
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
    addField('indication', indication);
    addField('dosingGuideline', dosingGuideline);
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
      case 'indication':
        {
          if (child is List<CodeableReferenceBuilder>) {
            // Replace or create new list
            indication = child;
            return;
          } else if (child is CodeableReferenceBuilder) {
            // Add single element to existing list or create new list
            indication = [
              ...(indication ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'dosingGuideline':
        {
          if (child is List<MedicationKnowledgeDosingGuidelineBuilder>) {
            // Replace or create new list
            dosingGuideline = child;
            return;
          } else if (child is MedicationKnowledgeDosingGuidelineBuilder) {
            // Add single element to existing list or create new list
            dosingGuideline = [
              ...(dosingGuideline ?? []),
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
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'indication':
        return ['CodeableReferenceBuilder'];
      case 'dosingGuideline':
        return ['MedicationKnowledgeDosingGuidelineBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationKnowledgeIndicationGuidelineBuilder]
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
      case 'indication':
        {
          indication = <CodeableReferenceBuilder>[];
          return;
        }
      case 'dosingGuideline':
        {
          dosingGuideline = <MedicationKnowledgeDosingGuidelineBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MedicationKnowledgeIndicationGuidelineBuilder clone() =>
      throw UnimplementedError();
  @override
  MedicationKnowledgeIndicationGuidelineBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<CodeableReferenceBuilder>? indication,
    List<MedicationKnowledgeDosingGuidelineBuilder>? dosingGuideline,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MedicationKnowledgeIndicationGuidelineBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      indication: indication ?? this.indication,
      dosingGuideline: dosingGuideline ?? this.dosingGuideline,
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
    if (o is! MedicationKnowledgeIndicationGuidelineBuilder) {
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
    if (!listEquals<CodeableReferenceBuilder>(
      indication,
      o.indication,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgeDosingGuidelineBuilder>(
      dosingGuideline,
      o.dosingGuideline,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgeDosingGuidelineBuilder]
/// The guidelines for the dosage of the medication for the indication.
class MedicationKnowledgeDosingGuidelineBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MedicationKnowledgeDosingGuidelineBuilder]

  MedicationKnowledgeDosingGuidelineBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.treatmentIntent,
    this.dosage,
    this.administrationTreatment,
    this.patientCharacteristic,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationKnowledge.indicationGuideline.dosingGuideline',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicationKnowledgeDosingGuidelineBuilder.empty() =>
      MedicationKnowledgeDosingGuidelineBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeDosingGuidelineBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath =
        'MedicationKnowledge.indicationGuideline.dosingGuideline';
    return MedicationKnowledgeDosingGuidelineBuilder(
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
      treatmentIntent: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'treatmentIntent',
        CodeableConceptBuilder.fromJson,
        '$objectPath.treatmentIntent',
      ),
      dosage: (json['dosage'] as List<dynamic>?)
          ?.map<MedicationKnowledgeDosageBuilder>(
            (v) => MedicationKnowledgeDosageBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.dosage',
              },
            ),
          )
          .toList(),
      administrationTreatment: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'administrationTreatment',
        CodeableConceptBuilder.fromJson,
        '$objectPath.administrationTreatment',
      ),
      patientCharacteristic: (json['patientCharacteristic'] as List<dynamic>?)
          ?.map<MedicationKnowledgePatientCharacteristicBuilder>(
            (v) => MedicationKnowledgePatientCharacteristicBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.patientCharacteristic',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MedicationKnowledgeDosingGuidelineBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeDosingGuidelineBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeDosingGuidelineBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeDosingGuidelineBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeDosingGuidelineBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeDosingGuidelineBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeDosingGuidelineBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeDosingGuidelineBuilder.fromJson(json);
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
  CodeableConceptBuilder? treatmentIntent;

  /// [dosage]
  /// Dosage for the medication for the specific guidelines.
  List<MedicationKnowledgeDosageBuilder>? dosage;

  /// [administrationTreatment]
  /// The type of the treatment that the guideline applies to, for example,
  /// long term therapy, first line treatment, etc.
  CodeableConceptBuilder? administrationTreatment;

  /// [patientCharacteristic]
  /// Characteristics of the patient that are relevant to the administration
  /// guidelines (for example, height, weight, gender, etc.).
  List<MedicationKnowledgePatientCharacteristicBuilder>? patientCharacteristic;

  /// Converts a [MedicationKnowledgeDosingGuidelineBuilder]
  /// to [MedicationKnowledgeDosingGuideline]
  @override
  MedicationKnowledgeDosingGuideline build() =>
      MedicationKnowledgeDosingGuideline.fromJson(toJson());

  /// Converts a [MedicationKnowledgeDosingGuidelineBuilder]
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
    addField('treatmentIntent', treatmentIntent);
    addField('dosage', dosage);
    addField('administrationTreatment', administrationTreatment);
    addField('patientCharacteristic', patientCharacteristic);
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
      case 'treatmentIntent':
        {
          if (child is CodeableConceptBuilder) {
            treatmentIntent = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'dosage':
        {
          if (child is List<MedicationKnowledgeDosageBuilder>) {
            // Replace or create new list
            dosage = child;
            return;
          } else if (child is MedicationKnowledgeDosageBuilder) {
            // Add single element to existing list or create new list
            dosage = [
              ...(dosage ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'administrationTreatment':
        {
          if (child is CodeableConceptBuilder) {
            administrationTreatment = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'patientCharacteristic':
        {
          if (child is List<MedicationKnowledgePatientCharacteristicBuilder>) {
            // Replace or create new list
            patientCharacteristic = child;
            return;
          } else if (child is MedicationKnowledgePatientCharacteristicBuilder) {
            // Add single element to existing list or create new list
            patientCharacteristic = [
              ...(patientCharacteristic ?? []),
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
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'treatmentIntent':
        return ['CodeableConceptBuilder'];
      case 'dosage':
        return ['MedicationKnowledgeDosageBuilder'];
      case 'administrationTreatment':
        return ['CodeableConceptBuilder'];
      case 'patientCharacteristic':
        return ['MedicationKnowledgePatientCharacteristicBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationKnowledgeDosingGuidelineBuilder]
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
      case 'treatmentIntent':
        {
          treatmentIntent = CodeableConceptBuilder.empty();
          return;
        }
      case 'dosage':
        {
          dosage = <MedicationKnowledgeDosageBuilder>[];
          return;
        }
      case 'administrationTreatment':
        {
          administrationTreatment = CodeableConceptBuilder.empty();
          return;
        }
      case 'patientCharacteristic':
        {
          patientCharacteristic =
              <MedicationKnowledgePatientCharacteristicBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MedicationKnowledgeDosingGuidelineBuilder clone() =>
      throw UnimplementedError();
  @override
  MedicationKnowledgeDosingGuidelineBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? treatmentIntent,
    List<MedicationKnowledgeDosageBuilder>? dosage,
    CodeableConceptBuilder? administrationTreatment,
    List<MedicationKnowledgePatientCharacteristicBuilder>?
        patientCharacteristic,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MedicationKnowledgeDosingGuidelineBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      treatmentIntent: treatmentIntent ?? this.treatmentIntent,
      dosage: dosage ?? this.dosage,
      administrationTreatment:
          administrationTreatment ?? this.administrationTreatment,
      patientCharacteristic:
          patientCharacteristic ?? this.patientCharacteristic,
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
    if (o is! MedicationKnowledgeDosingGuidelineBuilder) {
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
      treatmentIntent,
      o.treatmentIntent,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgeDosageBuilder>(
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
    if (!listEquals<MedicationKnowledgePatientCharacteristicBuilder>(
      patientCharacteristic,
      o.patientCharacteristic,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgeDosageBuilder]
/// Dosage for the medication for the specific guidelines.
class MedicationKnowledgeDosageBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MedicationKnowledgeDosageBuilder]

  MedicationKnowledgeDosageBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.dosage,
    super.disallowExtensions,
  }) : super(
          objectPath:
              'MedicationKnowledge.indicationGuideline.dosingGuideline.dosage',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicationKnowledgeDosageBuilder.empty() =>
      MedicationKnowledgeDosageBuilder(
        type: CodeableConceptBuilder.empty(),
        dosage: <DosageBuilder>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeDosageBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath =
        'MedicationKnowledge.indicationGuideline.dosingGuideline.dosage';
    return MedicationKnowledgeDosageBuilder(
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
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      dosage: (json['dosage'] as List<dynamic>?)
          ?.map<DosageBuilder>(
            (v) => DosageBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.dosage',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MedicationKnowledgeDosageBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeDosageBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeDosageBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeDosageBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeDosageBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeDosageBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeDosageBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeDosageBuilder.fromJson(json);
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
  CodeableConceptBuilder? type;

  /// [dosage]
  /// Dosage for the medication for the specific guidelines.
  List<DosageBuilder>? dosage;

  /// Converts a [MedicationKnowledgeDosageBuilder]
  /// to [MedicationKnowledgeDosage]
  @override
  MedicationKnowledgeDosage build() =>
      MedicationKnowledgeDosage.fromJson(toJson());

  /// Converts a [MedicationKnowledgeDosageBuilder]
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
    addField('type', type);
    addField('dosage', dosage);
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'dosage':
        if (dosage != null) {
          fields.addAll(dosage!);
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
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'dosage':
        {
          if (child is List<DosageBuilder>) {
            // Replace or create new list
            dosage = child;
            return;
          } else if (child is DosageBuilder) {
            // Add single element to existing list or create new list
            dosage = [
              ...(dosage ?? []),
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
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'dosage':
        return ['DosageBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationKnowledgeDosageBuilder]
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
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'dosage':
        {
          dosage = <DosageBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MedicationKnowledgeDosageBuilder clone() => throw UnimplementedError();
  @override
  MedicationKnowledgeDosageBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    List<DosageBuilder>? dosage,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MedicationKnowledgeDosageBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      dosage: dosage ?? this.dosage,
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
    if (o is! MedicationKnowledgeDosageBuilder) {
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
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<DosageBuilder>(
      dosage,
      o.dosage,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgePatientCharacteristicBuilder]
/// Characteristics of the patient that are relevant to the administration
/// guidelines (for example, height, weight, gender, etc.).
class MedicationKnowledgePatientCharacteristicBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MedicationKnowledgePatientCharacteristicBuilder]

  MedicationKnowledgePatientCharacteristicBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    ValueXMedicationKnowledgePatientCharacteristicBuilder? valueX,
    CodeableConceptBuilder? valueCodeableConcept,
    QuantityBuilder? valueQuantity,
    RangeBuilder? valueRange,
    super.disallowExtensions,
  })  : valueX = valueX ?? valueCodeableConcept ?? valueQuantity ?? valueRange,
        super(
          objectPath:
              'MedicationKnowledge.indicationGuideline.dosingGuideline.patientCharacteristic',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicationKnowledgePatientCharacteristicBuilder.empty() =>
      MedicationKnowledgePatientCharacteristicBuilder(
        type: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgePatientCharacteristicBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath =
        'MedicationKnowledge.indicationGuideline.dosingGuideline.patientCharacteristic';
    return MedicationKnowledgePatientCharacteristicBuilder(
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
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      valueX: JsonParser.parsePolymorphic<
          ValueXMedicationKnowledgePatientCharacteristicBuilder>(
        json,
        {
          'valueCodeableConcept': CodeableConceptBuilder.fromJson,
          'valueQuantity': QuantityBuilder.fromJson,
          'valueRange': RangeBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [MedicationKnowledgePatientCharacteristicBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgePatientCharacteristicBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgePatientCharacteristicBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgePatientCharacteristicBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgePatientCharacteristicBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgePatientCharacteristicBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgePatientCharacteristicBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgePatientCharacteristicBuilder.fromJson(json);
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
  CodeableConceptBuilder? type;

  /// [valueX]
  /// The specific characteristic (e.g. height, weight, gender, etc.).
  ValueXMedicationKnowledgePatientCharacteristicBuilder? valueX;

  /// Getter for [valueCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get valueCodeableConcept =>
      valueX?.isAs<CodeableConceptBuilder>();

  /// Getter for [valueQuantity] as a QuantityBuilder
  QuantityBuilder? get valueQuantity => valueX?.isAs<QuantityBuilder>();

  /// Getter for [valueRange] as a RangeBuilder
  RangeBuilder? get valueRange => valueX?.isAs<RangeBuilder>();

  /// Converts a [MedicationKnowledgePatientCharacteristicBuilder]
  /// to [MedicationKnowledgePatientCharacteristic]
  @override
  MedicationKnowledgePatientCharacteristic build() =>
      MedicationKnowledgePatientCharacteristic.fromJson(toJson());

  /// Converts a [MedicationKnowledgePatientCharacteristicBuilder]
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
    addField('type', type);
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField('value${fhirType.capitalizeFirstLetter()}', valueX);
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'value':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueX':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueCodeableConcept':
        if (valueX is CodeableConceptBuilder) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is QuantityBuilder) {
          fields.add(valueX!);
        }
      case 'valueRange':
        if (valueX is RangeBuilder) {
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
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'value':
      case 'valueX':
        {
          if (child is ValueXMedicationKnowledgePatientCharacteristicBuilder) {
            valueX = child;
            return;
          } else {
            if (child is CodeableConceptBuilder) {
              valueX = child;
              return;
            }
            if (child is QuantityBuilder) {
              valueX = child;
              return;
            }
            if (child is RangeBuilder) {
              valueX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueQuantity':
        {
          if (child is QuantityBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueRange':
        {
          if (child is RangeBuilder) {
            valueX = child;
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
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'value':
      case 'valueX':
        return [
          'CodeableConceptBuilder',
          'QuantityBuilder',
          'RangeBuilder',
        ];
      case 'valueCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'valueQuantity':
        return ['QuantityBuilder'];
      case 'valueRange':
        return ['RangeBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationKnowledgePatientCharacteristicBuilder]
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
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'value':
      case 'valueX':
      case 'valueCodeableConcept':
        {
          valueX = CodeableConceptBuilder.empty();
          return;
        }
      case 'valueQuantity':
        {
          valueX = QuantityBuilder.empty();
          return;
        }
      case 'valueRange':
        {
          valueX = RangeBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MedicationKnowledgePatientCharacteristicBuilder clone() =>
      throw UnimplementedError();
  @override
  MedicationKnowledgePatientCharacteristicBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    ValueXMedicationKnowledgePatientCharacteristicBuilder? valueX,
    CodeableConceptBuilder? valueCodeableConcept,
    QuantityBuilder? valueQuantity,
    RangeBuilder? valueRange,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MedicationKnowledgePatientCharacteristicBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueX: valueX ??
          valueCodeableConcept ??
          valueQuantity ??
          valueRange ??
          this.valueX,
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
    if (o is! MedicationKnowledgePatientCharacteristicBuilder) {
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

/// [MedicationKnowledgeMedicineClassificationBuilder]
/// Categorization of the medication within a formulary or classification
/// system.
class MedicationKnowledgeMedicineClassificationBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MedicationKnowledgeMedicineClassificationBuilder]

  MedicationKnowledgeMedicineClassificationBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    SourceXMedicationKnowledgeMedicineClassificationBuilder? sourceX,
    FhirStringBuilder? sourceString,
    FhirUriBuilder? sourceUri,
    this.classification,
    super.disallowExtensions,
  })  : sourceX = sourceX ?? sourceString ?? sourceUri,
        super(
          objectPath: 'MedicationKnowledge.medicineClassification',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicationKnowledgeMedicineClassificationBuilder.empty() =>
      MedicationKnowledgeMedicineClassificationBuilder(
        type: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeMedicineClassificationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationKnowledge.medicineClassification';
    return MedicationKnowledgeMedicineClassificationBuilder(
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
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      sourceX: JsonParser.parsePolymorphic<
          SourceXMedicationKnowledgeMedicineClassificationBuilder>(
        json,
        {
          'sourceString': FhirStringBuilder.fromJson,
          'sourceUri': FhirUriBuilder.fromJson,
        },
        objectPath,
      ),
      classification: (json['classification'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.classification',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MedicationKnowledgeMedicineClassificationBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeMedicineClassificationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeMedicineClassificationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeMedicineClassificationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeMedicineClassificationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeMedicineClassificationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeMedicineClassificationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeMedicineClassificationBuilder.fromJson(json);
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
  CodeableConceptBuilder? type;

  /// [sourceX]
  /// Either a textual source of the classification or a reference to an
  /// online source.
  SourceXMedicationKnowledgeMedicineClassificationBuilder? sourceX;

  /// Getter for [sourceString] as a FhirStringBuilder
  FhirStringBuilder? get sourceString => sourceX?.isAs<FhirStringBuilder>();

  /// Getter for [sourceUri] as a FhirUriBuilder
  FhirUriBuilder? get sourceUri => sourceX?.isAs<FhirUriBuilder>();

  /// [classification]
  /// Specific category assigned to the medication (e.g. anti-infective,
  /// anti-hypertensive, antibiotic, etc.).
  List<CodeableConceptBuilder>? classification;

  /// Converts a [MedicationKnowledgeMedicineClassificationBuilder]
  /// to [MedicationKnowledgeMedicineClassification]
  @override
  MedicationKnowledgeMedicineClassification build() =>
      MedicationKnowledgeMedicineClassification.fromJson(toJson());

  /// Converts a [MedicationKnowledgeMedicineClassificationBuilder]
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
    addField('type', type);
    if (sourceX != null) {
      final fhirType = sourceX!.fhirType;
      addField('source${fhirType.capitalizeFirstLetter()}', sourceX);
    }

    addField('classification', classification);
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'source':
        if (sourceX != null) {
          fields.add(sourceX!);
        }
      case 'sourceX':
        if (sourceX != null) {
          fields.add(sourceX!);
        }
      case 'sourceString':
        if (sourceX is FhirStringBuilder) {
          fields.add(sourceX!);
        }
      case 'sourceUri':
        if (sourceX is FhirUriBuilder) {
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
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'source':
      case 'sourceX':
        {
          if (child
              is SourceXMedicationKnowledgeMedicineClassificationBuilder) {
            sourceX = child;
            return;
          } else {
            if (child is FhirStringBuilder) {
              sourceX = child;
              return;
            }
            if (child is FhirUriBuilder) {
              sourceX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'sourceString':
        {
          if (child is FhirStringBuilder) {
            sourceX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sourceUri':
        {
          if (child is FhirUriBuilder) {
            sourceX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'classification':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            classification = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            classification = [
              ...(classification ?? []),
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
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'source':
      case 'sourceX':
        return [
          'FhirStringBuilder',
          'FhirUriBuilder',
        ];
      case 'sourceString':
        return ['FhirStringBuilder'];
      case 'sourceUri':
        return ['FhirUriBuilder'];
      case 'classification':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationKnowledgeMedicineClassificationBuilder]
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
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'source':
      case 'sourceX':
      case 'sourceString':
        {
          sourceX = FhirStringBuilder.empty();
          return;
        }
      case 'sourceUri':
        {
          sourceX = FhirUriBuilder.empty();
          return;
        }
      case 'classification':
        {
          classification = <CodeableConceptBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MedicationKnowledgeMedicineClassificationBuilder clone() =>
      throw UnimplementedError();
  @override
  MedicationKnowledgeMedicineClassificationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    SourceXMedicationKnowledgeMedicineClassificationBuilder? sourceX,
    List<CodeableConceptBuilder>? classification,
    FhirStringBuilder? sourceString,
    FhirUriBuilder? sourceUri,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MedicationKnowledgeMedicineClassificationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      sourceX: sourceX ?? sourceString ?? sourceUri ?? this.sourceX,
      classification: classification ?? this.classification,
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
    if (o is! MedicationKnowledgeMedicineClassificationBuilder) {
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
    if (!listEquals<CodeableConceptBuilder>(
      classification,
      o.classification,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgePackagingBuilder]
/// Information that only applies to packages (not products).
class MedicationKnowledgePackagingBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MedicationKnowledgePackagingBuilder]

  MedicationKnowledgePackagingBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.cost,
    this.packagedProduct,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationKnowledge.packaging',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicationKnowledgePackagingBuilder.empty() =>
      MedicationKnowledgePackagingBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgePackagingBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationKnowledge.packaging';
    return MedicationKnowledgePackagingBuilder(
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
      cost: (json['cost'] as List<dynamic>?)
          ?.map<MedicationKnowledgeCostBuilder>(
            (v) => MedicationKnowledgeCostBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.cost',
              },
            ),
          )
          .toList(),
      packagedProduct: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'packagedProduct',
        ReferenceBuilder.fromJson,
        '$objectPath.packagedProduct',
      ),
    );
  }

  /// Deserialize [MedicationKnowledgePackagingBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgePackagingBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgePackagingBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgePackagingBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgePackagingBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgePackagingBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgePackagingBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgePackagingBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgePackaging';

  /// [cost]
  /// The cost of the packaged medication.
  List<MedicationKnowledgeCostBuilder>? cost;

  /// [packagedProduct]
  /// A reference to a PackagedProductDefinition that provides the details of
  /// the product that is in the packaging and is being priced.
  ReferenceBuilder? packagedProduct;

  /// Converts a [MedicationKnowledgePackagingBuilder]
  /// to [MedicationKnowledgePackaging]
  @override
  MedicationKnowledgePackaging build() =>
      MedicationKnowledgePackaging.fromJson(toJson());

  /// Converts a [MedicationKnowledgePackagingBuilder]
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
    addField('cost', cost);
    addField('packagedProduct', packagedProduct);
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
      case 'cost':
        {
          if (child is List<MedicationKnowledgeCostBuilder>) {
            // Replace or create new list
            cost = child;
            return;
          } else if (child is MedicationKnowledgeCostBuilder) {
            // Add single element to existing list or create new list
            cost = [
              ...(cost ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'packagedProduct':
        {
          if (child is ReferenceBuilder) {
            packagedProduct = child;
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
      case 'cost':
        return ['MedicationKnowledgeCostBuilder'];
      case 'packagedProduct':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationKnowledgePackagingBuilder]
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
      case 'cost':
        {
          cost = <MedicationKnowledgeCostBuilder>[];
          return;
        }
      case 'packagedProduct':
        {
          packagedProduct = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MedicationKnowledgePackagingBuilder clone() => throw UnimplementedError();
  @override
  MedicationKnowledgePackagingBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<MedicationKnowledgeCostBuilder>? cost,
    ReferenceBuilder? packagedProduct,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MedicationKnowledgePackagingBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      cost: cost ?? this.cost,
      packagedProduct: packagedProduct ?? this.packagedProduct,
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
    if (o is! MedicationKnowledgePackagingBuilder) {
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
    if (!listEquals<MedicationKnowledgeCostBuilder>(
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

/// [MedicationKnowledgeStorageGuidelineBuilder]
/// Information on how the medication should be stored, for example,
/// refrigeration temperatures and length of stability at a given
/// temperature.
class MedicationKnowledgeStorageGuidelineBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MedicationKnowledgeStorageGuidelineBuilder]

  MedicationKnowledgeStorageGuidelineBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.reference,
    this.note,
    this.stabilityDuration,
    this.environmentalSetting,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationKnowledge.storageGuideline',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicationKnowledgeStorageGuidelineBuilder.empty() =>
      MedicationKnowledgeStorageGuidelineBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeStorageGuidelineBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationKnowledge.storageGuideline';
    return MedicationKnowledgeStorageGuidelineBuilder(
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
      reference: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'reference',
        FhirUriBuilder.fromJson,
        '$objectPath.reference',
      ),
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
      stabilityDuration: JsonParser.parseObject<FhirDurationBuilder>(
        json,
        'stabilityDuration',
        FhirDurationBuilder.fromJson,
        '$objectPath.stabilityDuration',
      ),
      environmentalSetting: (json['environmentalSetting'] as List<dynamic>?)
          ?.map<MedicationKnowledgeEnvironmentalSettingBuilder>(
            (v) => MedicationKnowledgeEnvironmentalSettingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.environmentalSetting',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MedicationKnowledgeStorageGuidelineBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeStorageGuidelineBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeStorageGuidelineBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeStorageGuidelineBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeStorageGuidelineBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeStorageGuidelineBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeStorageGuidelineBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeStorageGuidelineBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeStorageGuideline';

  /// [reference]
  /// Reference to additional information about the storage guidelines.
  FhirUriBuilder? reference;

  /// [note]
  /// Additional notes about the storage.
  List<AnnotationBuilder>? note;

  /// [stabilityDuration]
  /// Duration that the medication remains stable if the environmentalSetting
  /// is respected.
  FhirDurationBuilder? stabilityDuration;

  /// [environmentalSetting]
  /// Describes a setting/value on the environment for the adequate storage
  /// of the medication and other substances. Environment settings may
  /// involve temperature, humidity, or exposure to light.
  List<MedicationKnowledgeEnvironmentalSettingBuilder>? environmentalSetting;

  /// Converts a [MedicationKnowledgeStorageGuidelineBuilder]
  /// to [MedicationKnowledgeStorageGuideline]
  @override
  MedicationKnowledgeStorageGuideline build() =>
      MedicationKnowledgeStorageGuideline.fromJson(toJson());

  /// Converts a [MedicationKnowledgeStorageGuidelineBuilder]
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
    addField('reference', reference);
    addField('note', note);
    addField('stabilityDuration', stabilityDuration);
    addField('environmentalSetting', environmentalSetting);
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
      case 'reference':
        {
          if (child is FhirUriBuilder) {
            reference = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                reference = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
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
      case 'stabilityDuration':
        {
          if (child is FhirDurationBuilder) {
            stabilityDuration = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'environmentalSetting':
        {
          if (child is List<MedicationKnowledgeEnvironmentalSettingBuilder>) {
            // Replace or create new list
            environmentalSetting = child;
            return;
          } else if (child is MedicationKnowledgeEnvironmentalSettingBuilder) {
            // Add single element to existing list or create new list
            environmentalSetting = [
              ...(environmentalSetting ?? []),
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
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'reference':
        return ['FhirUriBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      case 'stabilityDuration':
        return ['FhirDurationBuilder'];
      case 'environmentalSetting':
        return ['MedicationKnowledgeEnvironmentalSettingBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationKnowledgeStorageGuidelineBuilder]
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
      case 'reference':
        {
          reference = FhirUriBuilder.empty();
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      case 'stabilityDuration':
        {
          stabilityDuration = FhirDurationBuilder.empty();
          return;
        }
      case 'environmentalSetting':
        {
          environmentalSetting =
              <MedicationKnowledgeEnvironmentalSettingBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MedicationKnowledgeStorageGuidelineBuilder clone() =>
      throw UnimplementedError();
  @override
  MedicationKnowledgeStorageGuidelineBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirUriBuilder? reference,
    List<AnnotationBuilder>? note,
    FhirDurationBuilder? stabilityDuration,
    List<MedicationKnowledgeEnvironmentalSettingBuilder>? environmentalSetting,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MedicationKnowledgeStorageGuidelineBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      reference: reference ?? this.reference,
      note: note ?? this.note,
      stabilityDuration: stabilityDuration ?? this.stabilityDuration,
      environmentalSetting: environmentalSetting ?? this.environmentalSetting,
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
    if (o is! MedicationKnowledgeStorageGuidelineBuilder) {
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
      reference,
      o.reference,
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
      stabilityDuration,
      o.stabilityDuration,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgeEnvironmentalSettingBuilder>(
      environmentalSetting,
      o.environmentalSetting,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgeEnvironmentalSettingBuilder]
/// Describes a setting/value on the environment for the adequate storage
/// of the medication and other substances. Environment settings may
/// involve temperature, humidity, or exposure to light.
class MedicationKnowledgeEnvironmentalSettingBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MedicationKnowledgeEnvironmentalSettingBuilder]

  MedicationKnowledgeEnvironmentalSettingBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    ValueXMedicationKnowledgeEnvironmentalSettingBuilder? valueX,
    QuantityBuilder? valueQuantity,
    RangeBuilder? valueRange,
    CodeableConceptBuilder? valueCodeableConcept,
    super.disallowExtensions,
  })  : valueX = valueX ?? valueQuantity ?? valueRange ?? valueCodeableConcept,
        super(
          objectPath:
              'MedicationKnowledge.storageGuideline.environmentalSetting',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicationKnowledgeEnvironmentalSettingBuilder.empty() =>
      MedicationKnowledgeEnvironmentalSettingBuilder(
        type: CodeableConceptBuilder.empty(),
        valueX: QuantityBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeEnvironmentalSettingBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath =
        'MedicationKnowledge.storageGuideline.environmentalSetting';
    return MedicationKnowledgeEnvironmentalSettingBuilder(
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
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      valueX: JsonParser.parsePolymorphic<
          ValueXMedicationKnowledgeEnvironmentalSettingBuilder>(
        json,
        {
          'valueQuantity': QuantityBuilder.fromJson,
          'valueRange': RangeBuilder.fromJson,
          'valueCodeableConcept': CodeableConceptBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [MedicationKnowledgeEnvironmentalSettingBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeEnvironmentalSettingBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeEnvironmentalSettingBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeEnvironmentalSettingBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeEnvironmentalSettingBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeEnvironmentalSettingBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeEnvironmentalSettingBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeEnvironmentalSettingBuilder.fromJson(json);
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
  CodeableConceptBuilder? type;

  /// [valueX]
  /// Value associated to the setting. E.g., 40° – 50°F for temperature.
  ValueXMedicationKnowledgeEnvironmentalSettingBuilder? valueX;

  /// Getter for [valueQuantity] as a QuantityBuilder
  QuantityBuilder? get valueQuantity => valueX?.isAs<QuantityBuilder>();

  /// Getter for [valueRange] as a RangeBuilder
  RangeBuilder? get valueRange => valueX?.isAs<RangeBuilder>();

  /// Getter for [valueCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get valueCodeableConcept =>
      valueX?.isAs<CodeableConceptBuilder>();

  /// Converts a [MedicationKnowledgeEnvironmentalSettingBuilder]
  /// to [MedicationKnowledgeEnvironmentalSetting]
  @override
  MedicationKnowledgeEnvironmentalSetting build() =>
      MedicationKnowledgeEnvironmentalSetting.fromJson(toJson());

  /// Converts a [MedicationKnowledgeEnvironmentalSettingBuilder]
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
    addField('type', type);
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField('value${fhirType.capitalizeFirstLetter()}', valueX);
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'value':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueX':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is QuantityBuilder) {
          fields.add(valueX!);
        }
      case 'valueRange':
        if (valueX is RangeBuilder) {
          fields.add(valueX!);
        }
      case 'valueCodeableConcept':
        if (valueX is CodeableConceptBuilder) {
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
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'value':
      case 'valueX':
        {
          if (child is ValueXMedicationKnowledgeEnvironmentalSettingBuilder) {
            valueX = child;
            return;
          } else {
            if (child is QuantityBuilder) {
              valueX = child;
              return;
            }
            if (child is RangeBuilder) {
              valueX = child;
              return;
            }
            if (child is CodeableConceptBuilder) {
              valueX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueQuantity':
        {
          if (child is QuantityBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueRange':
        {
          if (child is RangeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            valueX = child;
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
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'value':
      case 'valueX':
        return [
          'QuantityBuilder',
          'RangeBuilder',
          'CodeableConceptBuilder',
        ];
      case 'valueQuantity':
        return ['QuantityBuilder'];
      case 'valueRange':
        return ['RangeBuilder'];
      case 'valueCodeableConcept':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationKnowledgeEnvironmentalSettingBuilder]
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
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'value':
      case 'valueX':
      case 'valueQuantity':
        {
          valueX = QuantityBuilder.empty();
          return;
        }
      case 'valueRange':
        {
          valueX = RangeBuilder.empty();
          return;
        }
      case 'valueCodeableConcept':
        {
          valueX = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MedicationKnowledgeEnvironmentalSettingBuilder clone() =>
      throw UnimplementedError();
  @override
  MedicationKnowledgeEnvironmentalSettingBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    ValueXMedicationKnowledgeEnvironmentalSettingBuilder? valueX,
    QuantityBuilder? valueQuantity,
    RangeBuilder? valueRange,
    CodeableConceptBuilder? valueCodeableConcept,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MedicationKnowledgeEnvironmentalSettingBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueX: valueX ??
          valueQuantity ??
          valueRange ??
          valueCodeableConcept ??
          this.valueX,
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
    if (o is! MedicationKnowledgeEnvironmentalSettingBuilder) {
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

/// [MedicationKnowledgeRegulatoryBuilder]
/// Regulatory information about a medication.
class MedicationKnowledgeRegulatoryBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MedicationKnowledgeRegulatoryBuilder]

  MedicationKnowledgeRegulatoryBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.regulatoryAuthority,
    this.substitution,
    this.schedule,
    this.maxDispense,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationKnowledge.regulatory',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicationKnowledgeRegulatoryBuilder.empty() =>
      MedicationKnowledgeRegulatoryBuilder(
        regulatoryAuthority: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeRegulatoryBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationKnowledge.regulatory';
    return MedicationKnowledgeRegulatoryBuilder(
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
      regulatoryAuthority: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'regulatoryAuthority',
        ReferenceBuilder.fromJson,
        '$objectPath.regulatoryAuthority',
      ),
      substitution: (json['substitution'] as List<dynamic>?)
          ?.map<MedicationKnowledgeSubstitutionBuilder>(
            (v) => MedicationKnowledgeSubstitutionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.substitution',
              },
            ),
          )
          .toList(),
      schedule: (json['schedule'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.schedule',
              },
            ),
          )
          .toList(),
      maxDispense:
          JsonParser.parseObject<MedicationKnowledgeMaxDispenseBuilder>(
        json,
        'maxDispense',
        MedicationKnowledgeMaxDispenseBuilder.fromJson,
        '$objectPath.maxDispense',
      ),
    );
  }

  /// Deserialize [MedicationKnowledgeRegulatoryBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeRegulatoryBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeRegulatoryBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeRegulatoryBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeRegulatoryBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeRegulatoryBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeRegulatoryBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeRegulatoryBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeRegulatory';

  /// [regulatoryAuthority]
  /// The authority that is specifying the regulations.
  ReferenceBuilder? regulatoryAuthority;

  /// [substitution]
  /// Specifies if changes are allowed when dispensing a medication from a
  /// regulatory perspective.
  List<MedicationKnowledgeSubstitutionBuilder>? substitution;

  /// [schedule]
  /// Specifies the schedule of a medication in jurisdiction.
  List<CodeableConceptBuilder>? schedule;

  /// [maxDispense]
  /// The maximum number of units of the medication that can be dispensed in
  /// a period.
  MedicationKnowledgeMaxDispenseBuilder? maxDispense;

  /// Converts a [MedicationKnowledgeRegulatoryBuilder]
  /// to [MedicationKnowledgeRegulatory]
  @override
  MedicationKnowledgeRegulatory build() =>
      MedicationKnowledgeRegulatory.fromJson(toJson());

  /// Converts a [MedicationKnowledgeRegulatoryBuilder]
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
    addField('regulatoryAuthority', regulatoryAuthority);
    addField('substitution', substitution);
    addField('schedule', schedule);
    addField('maxDispense', maxDispense);
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
      case 'regulatoryAuthority':
        if (regulatoryAuthority != null) {
          fields.add(regulatoryAuthority!);
        }
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
      case 'regulatoryAuthority':
        {
          if (child is ReferenceBuilder) {
            regulatoryAuthority = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'substitution':
        {
          if (child is List<MedicationKnowledgeSubstitutionBuilder>) {
            // Replace or create new list
            substitution = child;
            return;
          } else if (child is MedicationKnowledgeSubstitutionBuilder) {
            // Add single element to existing list or create new list
            substitution = [
              ...(substitution ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'schedule':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            schedule = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            schedule = [
              ...(schedule ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'maxDispense':
        {
          if (child is MedicationKnowledgeMaxDispenseBuilder) {
            maxDispense = child;
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
      case 'regulatoryAuthority':
        return ['ReferenceBuilder'];
      case 'substitution':
        return ['MedicationKnowledgeSubstitutionBuilder'];
      case 'schedule':
        return ['CodeableConceptBuilder'];
      case 'maxDispense':
        return ['MedicationKnowledgeMaxDispenseBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationKnowledgeRegulatoryBuilder]
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
      case 'regulatoryAuthority':
        {
          regulatoryAuthority = ReferenceBuilder.empty();
          return;
        }
      case 'substitution':
        {
          substitution = <MedicationKnowledgeSubstitutionBuilder>[];
          return;
        }
      case 'schedule':
        {
          schedule = <CodeableConceptBuilder>[];
          return;
        }
      case 'maxDispense':
        {
          maxDispense = MedicationKnowledgeMaxDispenseBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MedicationKnowledgeRegulatoryBuilder clone() => throw UnimplementedError();
  @override
  MedicationKnowledgeRegulatoryBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ReferenceBuilder? regulatoryAuthority,
    List<MedicationKnowledgeSubstitutionBuilder>? substitution,
    List<CodeableConceptBuilder>? schedule,
    MedicationKnowledgeMaxDispenseBuilder? maxDispense,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MedicationKnowledgeRegulatoryBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      regulatoryAuthority: regulatoryAuthority ?? this.regulatoryAuthority,
      substitution: substitution ?? this.substitution,
      schedule: schedule ?? this.schedule,
      maxDispense: maxDispense ?? this.maxDispense,
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
    if (o is! MedicationKnowledgeRegulatoryBuilder) {
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
      regulatoryAuthority,
      o.regulatoryAuthority,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgeSubstitutionBuilder>(
      substitution,
      o.substitution,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
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

/// [MedicationKnowledgeSubstitutionBuilder]
/// Specifies if changes are allowed when dispensing a medication from a
/// regulatory perspective.
class MedicationKnowledgeSubstitutionBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MedicationKnowledgeSubstitutionBuilder]

  MedicationKnowledgeSubstitutionBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.allowed,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationKnowledge.regulatory.substitution',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicationKnowledgeSubstitutionBuilder.empty() =>
      MedicationKnowledgeSubstitutionBuilder(
        type: CodeableConceptBuilder.empty(),
        allowed: FhirBooleanBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeSubstitutionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationKnowledge.regulatory.substitution';
    return MedicationKnowledgeSubstitutionBuilder(
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
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      allowed: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'allowed',
        FhirBooleanBuilder.fromJson,
        '$objectPath.allowed',
      ),
    );
  }

  /// Deserialize [MedicationKnowledgeSubstitutionBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeSubstitutionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeSubstitutionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeSubstitutionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeSubstitutionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeSubstitutionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeSubstitutionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeSubstitutionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeSubstitution';

  /// [type]
  /// Specifies the type of substitution allowed.
  CodeableConceptBuilder? type;

  /// [allowed]
  /// Specifies if regulation allows for changes in the medication when
  /// dispensing.
  FhirBooleanBuilder? allowed;

  /// Converts a [MedicationKnowledgeSubstitutionBuilder]
  /// to [MedicationKnowledgeSubstitution]
  @override
  MedicationKnowledgeSubstitution build() =>
      MedicationKnowledgeSubstitution.fromJson(toJson());

  /// Converts a [MedicationKnowledgeSubstitutionBuilder]
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
    addField('type', type);
    addField('allowed', allowed);
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'allowed':
        if (allowed != null) {
          fields.add(allowed!);
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
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'allowed':
        {
          if (child is FhirBooleanBuilder) {
            allowed = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                allowed = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
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
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'allowed':
        return ['FhirBooleanBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationKnowledgeSubstitutionBuilder]
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
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'allowed':
        {
          allowed = FhirBooleanBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MedicationKnowledgeSubstitutionBuilder clone() => throw UnimplementedError();
  @override
  MedicationKnowledgeSubstitutionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    FhirBooleanBuilder? allowed,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MedicationKnowledgeSubstitutionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      allowed: allowed ?? this.allowed,
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
    if (o is! MedicationKnowledgeSubstitutionBuilder) {
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

/// [MedicationKnowledgeMaxDispenseBuilder]
/// The maximum number of units of the medication that can be dispensed in
/// a period.
class MedicationKnowledgeMaxDispenseBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MedicationKnowledgeMaxDispenseBuilder]

  MedicationKnowledgeMaxDispenseBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.quantity,
    this.period,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationKnowledge.regulatory.maxDispense',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicationKnowledgeMaxDispenseBuilder.empty() =>
      MedicationKnowledgeMaxDispenseBuilder(
        quantity: QuantityBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeMaxDispenseBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationKnowledge.regulatory.maxDispense';
    return MedicationKnowledgeMaxDispenseBuilder(
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
      period: JsonParser.parseObject<FhirDurationBuilder>(
        json,
        'period',
        FhirDurationBuilder.fromJson,
        '$objectPath.period',
      ),
    );
  }

  /// Deserialize [MedicationKnowledgeMaxDispenseBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeMaxDispenseBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeMaxDispenseBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeMaxDispenseBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeMaxDispenseBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeMaxDispenseBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeMaxDispenseBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeMaxDispenseBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeMaxDispense';

  /// [quantity]
  /// The maximum number of units of the medication that can be dispensed.
  QuantityBuilder? quantity;

  /// [period]
  /// The period that applies to the maximum number of units.
  FhirDurationBuilder? period;

  /// Converts a [MedicationKnowledgeMaxDispenseBuilder]
  /// to [MedicationKnowledgeMaxDispense]
  @override
  MedicationKnowledgeMaxDispense build() =>
      MedicationKnowledgeMaxDispense.fromJson(toJson());

  /// Converts a [MedicationKnowledgeMaxDispenseBuilder]
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
      'quantity',
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
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
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
      case 'quantity':
        {
          if (child is QuantityBuilder) {
            quantity = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'period':
        {
          if (child is FhirDurationBuilder) {
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
      case 'quantity':
        return ['QuantityBuilder'];
      case 'period':
        return ['FhirDurationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationKnowledgeMaxDispenseBuilder]
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
      case 'period':
        {
          period = FhirDurationBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MedicationKnowledgeMaxDispenseBuilder clone() => throw UnimplementedError();
  @override
  MedicationKnowledgeMaxDispenseBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    QuantityBuilder? quantity,
    FhirDurationBuilder? period,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MedicationKnowledgeMaxDispenseBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      quantity: quantity ?? this.quantity,
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
    if (o is! MedicationKnowledgeMaxDispenseBuilder) {
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
      period,
      o.period,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgeDefinitionalBuilder]
/// Along with the link to a Medicinal Product Definition resource, this
/// information provides common definitional elements that are needed to
/// understand the specific medication that is being described.
class MedicationKnowledgeDefinitionalBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MedicationKnowledgeDefinitionalBuilder]

  MedicationKnowledgeDefinitionalBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.definition,
    this.doseForm,
    this.intendedRoute,
    this.ingredient,
    this.drugCharacteristic,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationKnowledge.definitional',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicationKnowledgeDefinitionalBuilder.empty() =>
      MedicationKnowledgeDefinitionalBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeDefinitionalBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationKnowledge.definitional';
    return MedicationKnowledgeDefinitionalBuilder(
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
      definition: (json['definition'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.definition',
              },
            ),
          )
          .toList(),
      doseForm: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'doseForm',
        CodeableConceptBuilder.fromJson,
        '$objectPath.doseForm',
      ),
      intendedRoute: (json['intendedRoute'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.intendedRoute',
              },
            ),
          )
          .toList(),
      ingredient: (json['ingredient'] as List<dynamic>?)
          ?.map<MedicationKnowledgeIngredientBuilder>(
            (v) => MedicationKnowledgeIngredientBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.ingredient',
              },
            ),
          )
          .toList(),
      drugCharacteristic: (json['drugCharacteristic'] as List<dynamic>?)
          ?.map<MedicationKnowledgeDrugCharacteristicBuilder>(
            (v) => MedicationKnowledgeDrugCharacteristicBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.drugCharacteristic',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MedicationKnowledgeDefinitionalBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeDefinitionalBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeDefinitionalBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeDefinitionalBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeDefinitionalBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeDefinitionalBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeDefinitionalBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeDefinitionalBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationKnowledgeDefinitional';

  /// [definition]
  /// Associated definitions for this medication.
  List<ReferenceBuilder>? definition;

  /// [doseForm]
  /// Describes the form of the item. Powder; tablets; capsule.
  CodeableConceptBuilder? doseForm;

  /// [intendedRoute]
  /// The intended or approved route of administration.
  List<CodeableConceptBuilder>? intendedRoute;

  /// [ingredient]
  /// Identifies a particular constituent of interest in the product.
  List<MedicationKnowledgeIngredientBuilder>? ingredient;

  /// [drugCharacteristic]
  /// Specifies descriptive properties of the medicine, such as color, shape,
  /// imprints, etc.
  List<MedicationKnowledgeDrugCharacteristicBuilder>? drugCharacteristic;

  /// Converts a [MedicationKnowledgeDefinitionalBuilder]
  /// to [MedicationKnowledgeDefinitional]
  @override
  MedicationKnowledgeDefinitional build() =>
      MedicationKnowledgeDefinitional.fromJson(toJson());

  /// Converts a [MedicationKnowledgeDefinitionalBuilder]
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
    addField('definition', definition);
    addField('doseForm', doseForm);
    addField('intendedRoute', intendedRoute);
    addField('ingredient', ingredient);
    addField('drugCharacteristic', drugCharacteristic);
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
      case 'definition':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            definition = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            definition = [
              ...(definition ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'doseForm':
        {
          if (child is CodeableConceptBuilder) {
            doseForm = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'intendedRoute':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            intendedRoute = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            intendedRoute = [
              ...(intendedRoute ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'ingredient':
        {
          if (child is List<MedicationKnowledgeIngredientBuilder>) {
            // Replace or create new list
            ingredient = child;
            return;
          } else if (child is MedicationKnowledgeIngredientBuilder) {
            // Add single element to existing list or create new list
            ingredient = [
              ...(ingredient ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'drugCharacteristic':
        {
          if (child is List<MedicationKnowledgeDrugCharacteristicBuilder>) {
            // Replace or create new list
            drugCharacteristic = child;
            return;
          } else if (child is MedicationKnowledgeDrugCharacteristicBuilder) {
            // Add single element to existing list or create new list
            drugCharacteristic = [
              ...(drugCharacteristic ?? []),
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
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'definition':
        return ['ReferenceBuilder'];
      case 'doseForm':
        return ['CodeableConceptBuilder'];
      case 'intendedRoute':
        return ['CodeableConceptBuilder'];
      case 'ingredient':
        return ['MedicationKnowledgeIngredientBuilder'];
      case 'drugCharacteristic':
        return ['MedicationKnowledgeDrugCharacteristicBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationKnowledgeDefinitionalBuilder]
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
      case 'definition':
        {
          definition = <ReferenceBuilder>[];
          return;
        }
      case 'doseForm':
        {
          doseForm = CodeableConceptBuilder.empty();
          return;
        }
      case 'intendedRoute':
        {
          intendedRoute = <CodeableConceptBuilder>[];
          return;
        }
      case 'ingredient':
        {
          ingredient = <MedicationKnowledgeIngredientBuilder>[];
          return;
        }
      case 'drugCharacteristic':
        {
          drugCharacteristic = <MedicationKnowledgeDrugCharacteristicBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MedicationKnowledgeDefinitionalBuilder clone() => throw UnimplementedError();
  @override
  MedicationKnowledgeDefinitionalBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<ReferenceBuilder>? definition,
    CodeableConceptBuilder? doseForm,
    List<CodeableConceptBuilder>? intendedRoute,
    List<MedicationKnowledgeIngredientBuilder>? ingredient,
    List<MedicationKnowledgeDrugCharacteristicBuilder>? drugCharacteristic,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MedicationKnowledgeDefinitionalBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      definition: definition ?? this.definition,
      doseForm: doseForm ?? this.doseForm,
      intendedRoute: intendedRoute ?? this.intendedRoute,
      ingredient: ingredient ?? this.ingredient,
      drugCharacteristic: drugCharacteristic ?? this.drugCharacteristic,
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
    if (o is! MedicationKnowledgeDefinitionalBuilder) {
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
    if (!listEquals<ReferenceBuilder>(
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
    if (!listEquals<CodeableConceptBuilder>(
      intendedRoute,
      o.intendedRoute,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgeIngredientBuilder>(
      ingredient,
      o.ingredient,
    )) {
      return false;
    }
    if (!listEquals<MedicationKnowledgeDrugCharacteristicBuilder>(
      drugCharacteristic,
      o.drugCharacteristic,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationKnowledgeIngredientBuilder]
/// Identifies a particular constituent of interest in the product.
class MedicationKnowledgeIngredientBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MedicationKnowledgeIngredientBuilder]

  MedicationKnowledgeIngredientBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.item,
    this.type,
    StrengthXMedicationKnowledgeIngredientBuilder? strengthX,
    RatioBuilder? strengthRatio,
    CodeableConceptBuilder? strengthCodeableConcept,
    QuantityBuilder? strengthQuantity,
    super.disallowExtensions,
  })  : strengthX = strengthX ??
            strengthRatio ??
            strengthCodeableConcept ??
            strengthQuantity,
        super(
          objectPath: 'MedicationKnowledge.definitional.ingredient',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicationKnowledgeIngredientBuilder.empty() =>
      MedicationKnowledgeIngredientBuilder(
        item: CodeableReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeIngredientBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationKnowledge.definitional.ingredient';
    return MedicationKnowledgeIngredientBuilder(
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
      item: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'item',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.item',
      ),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      strengthX: JsonParser.parsePolymorphic<
          StrengthXMedicationKnowledgeIngredientBuilder>(
        json,
        {
          'strengthRatio': RatioBuilder.fromJson,
          'strengthCodeableConcept': CodeableConceptBuilder.fromJson,
          'strengthQuantity': QuantityBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [MedicationKnowledgeIngredientBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeIngredientBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeIngredientBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeIngredientBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeIngredientBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeIngredientBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeIngredientBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeIngredientBuilder.fromJson(json);
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
  CodeableReferenceBuilder? item;

  /// [type]
  /// Indication of whether this ingredient affects the therapeutic action of
  /// the drug.
  CodeableConceptBuilder? type;

  /// [strengthX]
  /// Specifies how many (or how much) of the items there are in this
  /// Medication. For example, 250 mg per tablet. This is expressed as a
  /// ratio where the numerator is 250mg and the denominator is 1 tablet but
  /// can also be expressed a quantity when the denominator is assumed to be
  /// 1 tablet.
  StrengthXMedicationKnowledgeIngredientBuilder? strengthX;

  /// Getter for [strengthRatio] as a RatioBuilder
  RatioBuilder? get strengthRatio => strengthX?.isAs<RatioBuilder>();

  /// Getter for [strengthCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get strengthCodeableConcept =>
      strengthX?.isAs<CodeableConceptBuilder>();

  /// Getter for [strengthQuantity] as a QuantityBuilder
  QuantityBuilder? get strengthQuantity => strengthX?.isAs<QuantityBuilder>();

  /// Converts a [MedicationKnowledgeIngredientBuilder]
  /// to [MedicationKnowledgeIngredient]
  @override
  MedicationKnowledgeIngredient build() =>
      MedicationKnowledgeIngredient.fromJson(toJson());

  /// Converts a [MedicationKnowledgeIngredientBuilder]
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
    addField('item', item);
    addField('type', type);
    if (strengthX != null) {
      final fhirType = strengthX!.fhirType;
      addField('strength${fhirType.capitalizeFirstLetter()}', strengthX);
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
      case 'item':
        if (item != null) {
          fields.add(item!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'strength':
        if (strengthX != null) {
          fields.add(strengthX!);
        }
      case 'strengthX':
        if (strengthX != null) {
          fields.add(strengthX!);
        }
      case 'strengthRatio':
        if (strengthX is RatioBuilder) {
          fields.add(strengthX!);
        }
      case 'strengthCodeableConcept':
        if (strengthX is CodeableConceptBuilder) {
          fields.add(strengthX!);
        }
      case 'strengthQuantity':
        if (strengthX is QuantityBuilder) {
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
      case 'item':
        {
          if (child is CodeableReferenceBuilder) {
            item = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'strength':
      case 'strengthX':
        {
          if (child is StrengthXMedicationKnowledgeIngredientBuilder) {
            strengthX = child;
            return;
          } else {
            if (child is RatioBuilder) {
              strengthX = child;
              return;
            }
            if (child is CodeableConceptBuilder) {
              strengthX = child;
              return;
            }
            if (child is QuantityBuilder) {
              strengthX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'strengthRatio':
        {
          if (child is RatioBuilder) {
            strengthX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'strengthCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            strengthX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'strengthQuantity':
        {
          if (child is QuantityBuilder) {
            strengthX = child;
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
      case 'item':
        return ['CodeableReferenceBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'strength':
      case 'strengthX':
        return [
          'RatioBuilder',
          'CodeableConceptBuilder',
          'QuantityBuilder',
        ];
      case 'strengthRatio':
        return ['RatioBuilder'];
      case 'strengthCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'strengthQuantity':
        return ['QuantityBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationKnowledgeIngredientBuilder]
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
      case 'item':
        {
          item = CodeableReferenceBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'strength':
      case 'strengthX':
      case 'strengthRatio':
        {
          strengthX = RatioBuilder.empty();
          return;
        }
      case 'strengthCodeableConcept':
        {
          strengthX = CodeableConceptBuilder.empty();
          return;
        }
      case 'strengthQuantity':
        {
          strengthX = QuantityBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MedicationKnowledgeIngredientBuilder clone() => throw UnimplementedError();
  @override
  MedicationKnowledgeIngredientBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableReferenceBuilder? item,
    CodeableConceptBuilder? type,
    StrengthXMedicationKnowledgeIngredientBuilder? strengthX,
    RatioBuilder? strengthRatio,
    CodeableConceptBuilder? strengthCodeableConcept,
    QuantityBuilder? strengthQuantity,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MedicationKnowledgeIngredientBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      item: item ?? this.item,
      type: type ?? this.type,
      strengthX: strengthX ??
          strengthRatio ??
          strengthCodeableConcept ??
          strengthQuantity ??
          this.strengthX,
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
    if (o is! MedicationKnowledgeIngredientBuilder) {
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

/// [MedicationKnowledgeDrugCharacteristicBuilder]
/// Specifies descriptive properties of the medicine, such as color, shape,
/// imprints, etc.
class MedicationKnowledgeDrugCharacteristicBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MedicationKnowledgeDrugCharacteristicBuilder]

  MedicationKnowledgeDrugCharacteristicBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    ValueXMedicationKnowledgeDrugCharacteristicBuilder? valueX,
    CodeableConceptBuilder? valueCodeableConcept,
    FhirStringBuilder? valueString,
    QuantityBuilder? valueQuantity,
    FhirBase64BinaryBuilder? valueBase64Binary,
    AttachmentBuilder? valueAttachment,
    super.disallowExtensions,
  })  : valueX = valueX ??
            valueCodeableConcept ??
            valueString ??
            valueQuantity ??
            valueBase64Binary ??
            valueAttachment,
        super(
          objectPath: 'MedicationKnowledge.definitional.drugCharacteristic',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicationKnowledgeDrugCharacteristicBuilder.empty() =>
      MedicationKnowledgeDrugCharacteristicBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeDrugCharacteristicBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationKnowledge.definitional.drugCharacteristic';
    return MedicationKnowledgeDrugCharacteristicBuilder(
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
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      valueX: JsonParser.parsePolymorphic<
          ValueXMedicationKnowledgeDrugCharacteristicBuilder>(
        json,
        {
          'valueCodeableConcept': CodeableConceptBuilder.fromJson,
          'valueString': FhirStringBuilder.fromJson,
          'valueQuantity': QuantityBuilder.fromJson,
          'valueBase64Binary': FhirBase64BinaryBuilder.fromJson,
          'valueAttachment': AttachmentBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [MedicationKnowledgeDrugCharacteristicBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicationKnowledgeDrugCharacteristicBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationKnowledgeDrugCharacteristicBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationKnowledgeDrugCharacteristicBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationKnowledgeDrugCharacteristicBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationKnowledgeDrugCharacteristicBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationKnowledgeDrugCharacteristicBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationKnowledgeDrugCharacteristicBuilder.fromJson(json);
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
  CodeableConceptBuilder? type;

  /// [valueX]
  /// Description of the characteristic.
  ValueXMedicationKnowledgeDrugCharacteristicBuilder? valueX;

  /// Getter for [valueCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get valueCodeableConcept =>
      valueX?.isAs<CodeableConceptBuilder>();

  /// Getter for [valueString] as a FhirStringBuilder
  FhirStringBuilder? get valueString => valueX?.isAs<FhirStringBuilder>();

  /// Getter for [valueQuantity] as a QuantityBuilder
  QuantityBuilder? get valueQuantity => valueX?.isAs<QuantityBuilder>();

  /// Getter for [valueBase64Binary] as a FhirBase64BinaryBuilder
  FhirBase64BinaryBuilder? get valueBase64Binary =>
      valueX?.isAs<FhirBase64BinaryBuilder>();

  /// Getter for [valueAttachment] as a AttachmentBuilder
  AttachmentBuilder? get valueAttachment => valueX?.isAs<AttachmentBuilder>();

  /// Converts a [MedicationKnowledgeDrugCharacteristicBuilder]
  /// to [MedicationKnowledgeDrugCharacteristic]
  @override
  MedicationKnowledgeDrugCharacteristic build() =>
      MedicationKnowledgeDrugCharacteristic.fromJson(toJson());

  /// Converts a [MedicationKnowledgeDrugCharacteristicBuilder]
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
    addField('type', type);
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField('value${fhirType.capitalizeFirstLetter()}', valueX);
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'value':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueX':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueCodeableConcept':
        if (valueX is CodeableConceptBuilder) {
          fields.add(valueX!);
        }
      case 'valueString':
        if (valueX is FhirStringBuilder) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is QuantityBuilder) {
          fields.add(valueX!);
        }
      case 'valueBase64Binary':
        if (valueX is FhirBase64BinaryBuilder) {
          fields.add(valueX!);
        }
      case 'valueAttachment':
        if (valueX is AttachmentBuilder) {
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
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'value':
      case 'valueX':
        {
          if (child is ValueXMedicationKnowledgeDrugCharacteristicBuilder) {
            valueX = child;
            return;
          } else {
            if (child is CodeableConceptBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              valueX = child;
              return;
            }
            if (child is QuantityBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirBase64BinaryBuilder) {
              valueX = child;
              return;
            }
            if (child is AttachmentBuilder) {
              valueX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueString':
        {
          if (child is FhirStringBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueQuantity':
        {
          if (child is QuantityBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueBase64Binary':
        {
          if (child is FhirBase64BinaryBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueAttachment':
        {
          if (child is AttachmentBuilder) {
            valueX = child;
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
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'value':
      case 'valueX':
        return [
          'CodeableConceptBuilder',
          'FhirStringBuilder',
          'QuantityBuilder',
          'FhirBase64BinaryBuilder',
          'AttachmentBuilder',
        ];
      case 'valueCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'valueString':
        return ['FhirStringBuilder'];
      case 'valueQuantity':
        return ['QuantityBuilder'];
      case 'valueBase64Binary':
        return ['FhirBase64BinaryBuilder'];
      case 'valueAttachment':
        return ['AttachmentBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationKnowledgeDrugCharacteristicBuilder]
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
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'value':
      case 'valueX':
      case 'valueCodeableConcept':
        {
          valueX = CodeableConceptBuilder.empty();
          return;
        }
      case 'valueString':
        {
          valueX = FhirStringBuilder.empty();
          return;
        }
      case 'valueQuantity':
        {
          valueX = QuantityBuilder.empty();
          return;
        }
      case 'valueBase64Binary':
        {
          valueX = FhirBase64BinaryBuilder.empty();
          return;
        }
      case 'valueAttachment':
        {
          valueX = AttachmentBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MedicationKnowledgeDrugCharacteristicBuilder clone() =>
      throw UnimplementedError();
  @override
  MedicationKnowledgeDrugCharacteristicBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    ValueXMedicationKnowledgeDrugCharacteristicBuilder? valueX,
    CodeableConceptBuilder? valueCodeableConcept,
    FhirStringBuilder? valueString,
    QuantityBuilder? valueQuantity,
    FhirBase64BinaryBuilder? valueBase64Binary,
    AttachmentBuilder? valueAttachment,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MedicationKnowledgeDrugCharacteristicBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueX: valueX ??
          valueCodeableConcept ??
          valueString ??
          valueQuantity ??
          valueBase64Binary ??
          valueAttachment ??
          this.valueX,
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
    if (o is! MedicationKnowledgeDrugCharacteristicBuilder) {
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
