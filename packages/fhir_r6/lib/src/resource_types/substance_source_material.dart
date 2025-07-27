import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'substance_source_material.g.dart';

/// [SubstanceSourceMaterial]
/// Source material shall capture information on the taxonomic and
/// anatomical origins as well as the fraction of a material that can
/// result in or can be modified to form a substance. This set of data
/// elements shall be used to define polymer substances isolated from
/// biological matrices. Taxonomic and anatomical origins shall be
/// described using a controlled vocabulary as required. This information
/// is captured for naturally derived polymers ( . starch) and structurally
/// diverse substances. For Organisms belonging to the Kingdom Plantae the
/// Substance level defines the fresh material of a single species or
/// infraspecies, the Herbal Drug and the Herbal preparation. For Herbal
/// preparations, the fraction information will be captured at the
/// Substance information level and additional information for herbal
/// extracts will be captured at the Specified Substance Group 1
/// information level. See for further explanation the Substance Class:
/// Structurally Diverse and the herbal annex.
class SubstanceSourceMaterial extends DomainResource {
  /// Primary constructor for
  /// [SubstanceSourceMaterial]

  const SubstanceSourceMaterial({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.sourceMaterialClass,
    this.sourceMaterialType,
    this.sourceMaterialState,
    this.organismId,
    this.organismName,
    this.parentSubstanceId,
    this.parentSubstanceName,
    this.countryOfOrigin,
    this.geographicalLocation,
    this.developmentStage,
    this.fractionDescription,
    this.organism,
    this.partDescription,
  }) : super(
          resourceType: R6ResourceType.SubstanceSourceMaterial,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceSourceMaterial.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubstanceSourceMaterial(
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
      sourceMaterialClass: JsonParser.parseObject<CodeableConcept>(
        json,
        'sourceMaterialClass',
        CodeableConcept.fromJson,
      ),
      sourceMaterialType: JsonParser.parseObject<CodeableConcept>(
        json,
        'sourceMaterialType',
        CodeableConcept.fromJson,
      ),
      sourceMaterialState: JsonParser.parseObject<CodeableConcept>(
        json,
        'sourceMaterialState',
        CodeableConcept.fromJson,
      ),
      organismId: JsonParser.parseObject<Identifier>(
        json,
        'organismId',
        Identifier.fromJson,
      ),
      organismName: JsonParser.parsePrimitive<FhirString>(
        json,
        'organismName',
        FhirString.fromJson,
      ),
      parentSubstanceId: (json['parentSubstanceId'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      parentSubstanceName: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'parentSubstanceName',
        FhirString.fromJson,
      ),
      countryOfOrigin: (json['countryOfOrigin'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      geographicalLocation: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'geographicalLocation',
        FhirString.fromJson,
      ),
      developmentStage: JsonParser.parseObject<CodeableConcept>(
        json,
        'developmentStage',
        CodeableConcept.fromJson,
      ),
      fractionDescription: (json['fractionDescription'] as List<dynamic>?)
          ?.map<SubstanceSourceMaterialFractionDescription>(
            (v) => SubstanceSourceMaterialFractionDescription.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      organism: JsonParser.parseObject<SubstanceSourceMaterialOrganism>(
        json,
        'organism',
        SubstanceSourceMaterialOrganism.fromJson,
      ),
      partDescription: (json['partDescription'] as List<dynamic>?)
          ?.map<SubstanceSourceMaterialPartDescription>(
            (v) => SubstanceSourceMaterialPartDescription.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SubstanceSourceMaterial]
  /// from a [String] or [YamlMap] object
  factory SubstanceSourceMaterial.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceSourceMaterial.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceSourceMaterial.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceSourceMaterial '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceSourceMaterial]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceSourceMaterial.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceSourceMaterial.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceSourceMaterial';

  /// [sourceMaterialClass]
  /// General high level classification of the source material specific to
  /// the origin of the material.
  final CodeableConcept? sourceMaterialClass;

  /// [sourceMaterialType]
  /// The type of the source material shall be specified based on a
  /// controlled vocabulary. For vaccines, this subclause refers to the class
  /// of infectious agent.
  final CodeableConcept? sourceMaterialType;

  /// [sourceMaterialState]
  /// The state of the source material when extracted.
  final CodeableConcept? sourceMaterialState;

  /// [organismId]
  /// The unique identifier associated with the source material parent
  /// organism shall be specified.
  final Identifier? organismId;

  /// [organismName]
  /// The organism accepted Scientific name shall be provided based on the
  /// organism taxonomy.
  final FhirString? organismName;

  /// [parentSubstanceId]
  /// The parent of the herbal drug Ginkgo biloba, Leaf is the substance ID
  /// of the substance (fresh) of Ginkgo biloba L. or Ginkgo biloba L. (Whole
  /// plant).
  final List<Identifier>? parentSubstanceId;

  /// [parentSubstanceName]
  /// The parent substance of the Herbal Drug, or Herbal preparation.
  final List<FhirString>? parentSubstanceName;

  /// [countryOfOrigin]
  /// The country where the plant material is harvested or the countries
  /// where the plasma is sourced from as laid down in accordance with the
  /// Plasma Master File. For “Plasma-derived substances” the attribute
  /// country of origin provides information about the countries used for the
  /// manufacturing of the Cryopoor plama or Crioprecipitate.
  final List<CodeableConcept>? countryOfOrigin;

  /// [geographicalLocation]
  /// The place/region where the plant is harvested or the places/regions
  /// where the animal source material has its habitat.
  final List<FhirString>? geographicalLocation;

  /// [developmentStage]
  /// Stage of life for animals, plants, insects and microorganisms. This
  /// information shall be provided only when the substance is significantly
  /// different in these stages (e.g. foetal bovine serum).
  final CodeableConcept? developmentStage;

  /// [fractionDescription]
  /// Many complex materials are fractions of parts of plants, animals, or
  /// minerals. Fraction elements are often necessary to define both
  /// Substances and Specified Group 1 Substances. For substances derived
  /// from Plants, fraction information will be captured at the Substance
  /// information level ( . Oils, Juices and Exudates). Additional
  /// information for Extracts, such as extraction solvent composition, will
  /// be captured at the Specified Substance Group 1 information level. For
  /// plasma-derived products fraction information will be captured at the
  /// Substance and the Specified Substance Group 1 levels.
  final List<SubstanceSourceMaterialFractionDescription>? fractionDescription;

  /// [organism]
  /// This subclause describes the organism which the substance is derived
  /// from. For vaccines, the parent organism shall be specified based on
  /// these subclause elements. As an example, full taxonomy will be
  /// described for the Substance Name: ., Leaf.
  final SubstanceSourceMaterialOrganism? organism;

  /// [partDescription]
  /// To do.
  final List<SubstanceSourceMaterialPartDescription>? partDescription;
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
      'sourceMaterialClass',
      sourceMaterialClass,
    );
    addField(
      'sourceMaterialType',
      sourceMaterialType,
    );
    addField(
      'sourceMaterialState',
      sourceMaterialState,
    );
    addField(
      'organismId',
      organismId,
    );
    addField(
      'organismName',
      organismName,
    );
    addField(
      'parentSubstanceId',
      parentSubstanceId,
    );
    addField(
      'parentSubstanceName',
      parentSubstanceName,
    );
    addField(
      'countryOfOrigin',
      countryOfOrigin,
    );
    addField(
      'geographicalLocation',
      geographicalLocation,
    );
    addField(
      'developmentStage',
      developmentStage,
    );
    addField(
      'fractionDescription',
      fractionDescription,
    );
    addField(
      'organism',
      organism,
    );
    addField(
      'partDescription',
      partDescription,
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
      'sourceMaterialClass',
      'sourceMaterialType',
      'sourceMaterialState',
      'organismId',
      'organismName',
      'parentSubstanceId',
      'parentSubstanceName',
      'countryOfOrigin',
      'geographicalLocation',
      'developmentStage',
      'fractionDescription',
      'organism',
      'partDescription',
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
      case 'sourceMaterialClass':
        if (sourceMaterialClass != null) {
          fields.add(sourceMaterialClass!);
        }
      case 'sourceMaterialType':
        if (sourceMaterialType != null) {
          fields.add(sourceMaterialType!);
        }
      case 'sourceMaterialState':
        if (sourceMaterialState != null) {
          fields.add(sourceMaterialState!);
        }
      case 'organismId':
        if (organismId != null) {
          fields.add(organismId!);
        }
      case 'organismName':
        if (organismName != null) {
          fields.add(organismName!);
        }
      case 'parentSubstanceId':
        if (parentSubstanceId != null) {
          fields.addAll(parentSubstanceId!);
        }
      case 'parentSubstanceName':
        if (parentSubstanceName != null) {
          fields.addAll(parentSubstanceName!);
        }
      case 'countryOfOrigin':
        if (countryOfOrigin != null) {
          fields.addAll(countryOfOrigin!);
        }
      case 'geographicalLocation':
        if (geographicalLocation != null) {
          fields.addAll(geographicalLocation!);
        }
      case 'developmentStage':
        if (developmentStage != null) {
          fields.add(developmentStage!);
        }
      case 'fractionDescription':
        if (fractionDescription != null) {
          fields.addAll(fractionDescription!);
        }
      case 'organism':
        if (organism != null) {
          fields.add(organism!);
        }
      case 'partDescription':
        if (partDescription != null) {
          fields.addAll(partDescription!);
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
  SubstanceSourceMaterial clone() => copyWith();

  /// Copy function for [SubstanceSourceMaterial]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubstanceSourceMaterialCopyWith<SubstanceSourceMaterial> get copyWith =>
      _$SubstanceSourceMaterialCopyWithImpl<SubstanceSourceMaterial>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstanceSourceMaterial) {
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
    if (!equalsDeepWithNull(
      sourceMaterialClass,
      o.sourceMaterialClass,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sourceMaterialType,
      o.sourceMaterialType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sourceMaterialState,
      o.sourceMaterialState,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      organismId,
      o.organismId,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      organismName,
      o.organismName,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
      parentSubstanceId,
      o.parentSubstanceId,
    )) {
      return false;
    }
    if (!listEquals<FhirString>(
      parentSubstanceName,
      o.parentSubstanceName,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      countryOfOrigin,
      o.countryOfOrigin,
    )) {
      return false;
    }
    if (!listEquals<FhirString>(
      geographicalLocation,
      o.geographicalLocation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      developmentStage,
      o.developmentStage,
    )) {
      return false;
    }
    if (!listEquals<SubstanceSourceMaterialFractionDescription>(
      fractionDescription,
      o.fractionDescription,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      organism,
      o.organism,
    )) {
      return false;
    }
    if (!listEquals<SubstanceSourceMaterialPartDescription>(
      partDescription,
      o.partDescription,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstanceSourceMaterialFractionDescription]
/// Many complex materials are fractions of parts of plants, animals, or
/// minerals. Fraction elements are often necessary to define both
/// Substances and Specified Group 1 Substances. For substances derived
/// from Plants, fraction information will be captured at the Substance
/// information level ( . Oils, Juices and Exudates). Additional
/// information for Extracts, such as extraction solvent composition, will
/// be captured at the Specified Substance Group 1 information level. For
/// plasma-derived products fraction information will be captured at the
/// Substance and the Specified Substance Group 1 levels.
class SubstanceSourceMaterialFractionDescription extends BackboneElement {
  /// Primary constructor for
  /// [SubstanceSourceMaterialFractionDescription]

  const SubstanceSourceMaterialFractionDescription({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.fraction,
    this.materialType,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceSourceMaterialFractionDescription.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubstanceSourceMaterialFractionDescription(
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
      fraction: JsonParser.parsePrimitive<FhirString>(
        json,
        'fraction',
        FhirString.fromJson,
      ),
      materialType: JsonParser.parseObject<CodeableConcept>(
        json,
        'materialType',
        CodeableConcept.fromJson,
      ),
    );
  }

  /// Deserialize [SubstanceSourceMaterialFractionDescription]
  /// from a [String] or [YamlMap] object
  factory SubstanceSourceMaterialFractionDescription.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceSourceMaterialFractionDescription.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceSourceMaterialFractionDescription.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceSourceMaterialFractionDescription '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceSourceMaterialFractionDescription]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceSourceMaterialFractionDescription.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceSourceMaterialFractionDescription.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceSourceMaterialFractionDescription';

  /// [fraction]
  /// This element is capturing information about the fraction of a plant
  /// part, or human plasma for fractionation.
  final FhirString? fraction;

  /// [materialType]
  /// The specific type of the material constituting the component. For
  /// Herbal preparations the particulars of the extracts (liquid/dry) is
  /// described in Specified Substance Group 1.
  final CodeableConcept? materialType;
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
      'fraction',
      fraction,
    );
    addField(
      'materialType',
      materialType,
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
      'fraction',
      'materialType',
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
      case 'fraction':
        if (fraction != null) {
          fields.add(fraction!);
        }
      case 'materialType':
        if (materialType != null) {
          fields.add(materialType!);
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
  SubstanceSourceMaterialFractionDescription clone() => copyWith();

  /// Copy function for [SubstanceSourceMaterialFractionDescription]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubstanceSourceMaterialFractionDescriptionCopyWith<
          SubstanceSourceMaterialFractionDescription>
      get copyWith => _$SubstanceSourceMaterialFractionDescriptionCopyWithImpl<
              SubstanceSourceMaterialFractionDescription>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstanceSourceMaterialFractionDescription) {
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
      fraction,
      o.fraction,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      materialType,
      o.materialType,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstanceSourceMaterialOrganism]
/// This subclause describes the organism which the substance is derived
/// from. For vaccines, the parent organism shall be specified based on
/// these subclause elements. As an example, full taxonomy will be
/// described for the Substance Name: ., Leaf.
class SubstanceSourceMaterialOrganism extends BackboneElement {
  /// Primary constructor for
  /// [SubstanceSourceMaterialOrganism]

  const SubstanceSourceMaterialOrganism({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.family,
    this.genus,
    this.species,
    this.intraspecificType,
    this.intraspecificDescription,
    this.author,
    this.hybrid,
    this.organismGeneral,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceSourceMaterialOrganism.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubstanceSourceMaterialOrganism(
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
      family: JsonParser.parseObject<CodeableConcept>(
        json,
        'family',
        CodeableConcept.fromJson,
      ),
      genus: JsonParser.parseObject<CodeableConcept>(
        json,
        'genus',
        CodeableConcept.fromJson,
      ),
      species: JsonParser.parseObject<CodeableConcept>(
        json,
        'species',
        CodeableConcept.fromJson,
      ),
      intraspecificType: JsonParser.parseObject<CodeableConcept>(
        json,
        'intraspecificType',
        CodeableConcept.fromJson,
      ),
      intraspecificDescription: JsonParser.parsePrimitive<FhirString>(
        json,
        'intraspecificDescription',
        FhirString.fromJson,
      ),
      author: (json['author'] as List<dynamic>?)
          ?.map<SubstanceSourceMaterialAuthor>(
            (v) => SubstanceSourceMaterialAuthor.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      hybrid: JsonParser.parseObject<SubstanceSourceMaterialHybrid>(
        json,
        'hybrid',
        SubstanceSourceMaterialHybrid.fromJson,
      ),
      organismGeneral:
          JsonParser.parseObject<SubstanceSourceMaterialOrganismGeneral>(
        json,
        'organismGeneral',
        SubstanceSourceMaterialOrganismGeneral.fromJson,
      ),
    );
  }

  /// Deserialize [SubstanceSourceMaterialOrganism]
  /// from a [String] or [YamlMap] object
  factory SubstanceSourceMaterialOrganism.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceSourceMaterialOrganism.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceSourceMaterialOrganism.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceSourceMaterialOrganism '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceSourceMaterialOrganism]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceSourceMaterialOrganism.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceSourceMaterialOrganism.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceSourceMaterialOrganism';

  /// [family]
  /// The family of an organism shall be specified.
  final CodeableConcept? family;

  /// [genus]
  /// The genus of an organism shall be specified; refers to the Latin
  /// epithet of the genus element of the plant/animal scientific name; it is
  /// present in names for genera, species and infraspecies.
  final CodeableConcept? genus;

  /// [species]
  /// The species of an organism shall be specified; refers to the Latin
  /// epithet of the species of the plant/animal; it is present in names for
  /// species and infraspecies.
  final CodeableConcept? species;

  /// [intraspecificType]
  /// The Intraspecific type of an organism shall be specified.
  final CodeableConcept? intraspecificType;

  /// [intraspecificDescription]
  /// The intraspecific description of an organism shall be specified based
  /// on a controlled vocabulary. For Influenza Vaccine, the intraspecific
  /// description shall contain the syntax of the antigen in line with the
  /// WHO convention.
  final FhirString? intraspecificDescription;

  /// [author]
  /// 4.9.13.6.1 Author type (Conditional).
  final List<SubstanceSourceMaterialAuthor>? author;

  /// [hybrid]
  /// 4.9.13.8.1 Hybrid species maternal organism ID (Optional).
  final SubstanceSourceMaterialHybrid? hybrid;

  /// [organismGeneral]
  /// 4.9.13.7.1 Kingdom (Conditional).
  final SubstanceSourceMaterialOrganismGeneral? organismGeneral;
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
      'family',
      family,
    );
    addField(
      'genus',
      genus,
    );
    addField(
      'species',
      species,
    );
    addField(
      'intraspecificType',
      intraspecificType,
    );
    addField(
      'intraspecificDescription',
      intraspecificDescription,
    );
    addField(
      'author',
      author,
    );
    addField(
      'hybrid',
      hybrid,
    );
    addField(
      'organismGeneral',
      organismGeneral,
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
      'family',
      'genus',
      'species',
      'intraspecificType',
      'intraspecificDescription',
      'author',
      'hybrid',
      'organismGeneral',
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
      case 'family':
        if (family != null) {
          fields.add(family!);
        }
      case 'genus':
        if (genus != null) {
          fields.add(genus!);
        }
      case 'species':
        if (species != null) {
          fields.add(species!);
        }
      case 'intraspecificType':
        if (intraspecificType != null) {
          fields.add(intraspecificType!);
        }
      case 'intraspecificDescription':
        if (intraspecificDescription != null) {
          fields.add(intraspecificDescription!);
        }
      case 'author':
        if (author != null) {
          fields.addAll(author!);
        }
      case 'hybrid':
        if (hybrid != null) {
          fields.add(hybrid!);
        }
      case 'organismGeneral':
        if (organismGeneral != null) {
          fields.add(organismGeneral!);
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
  SubstanceSourceMaterialOrganism clone() => copyWith();

  /// Copy function for [SubstanceSourceMaterialOrganism]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubstanceSourceMaterialOrganismCopyWith<SubstanceSourceMaterialOrganism>
      get copyWith => _$SubstanceSourceMaterialOrganismCopyWithImpl<
              SubstanceSourceMaterialOrganism>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstanceSourceMaterialOrganism) {
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
      family,
      o.family,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      genus,
      o.genus,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      species,
      o.species,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      intraspecificType,
      o.intraspecificType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      intraspecificDescription,
      o.intraspecificDescription,
    )) {
      return false;
    }
    if (!listEquals<SubstanceSourceMaterialAuthor>(
      author,
      o.author,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      hybrid,
      o.hybrid,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      organismGeneral,
      o.organismGeneral,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstanceSourceMaterialAuthor]
/// 4.9.13.6.1 Author type (Conditional).
class SubstanceSourceMaterialAuthor extends BackboneElement {
  /// Primary constructor for
  /// [SubstanceSourceMaterialAuthor]

  const SubstanceSourceMaterialAuthor({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.authorType,
    this.authorDescription,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceSourceMaterialAuthor.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubstanceSourceMaterialAuthor(
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
      authorType: JsonParser.parseObject<CodeableConcept>(
        json,
        'authorType',
        CodeableConcept.fromJson,
      ),
      authorDescription: JsonParser.parsePrimitive<FhirString>(
        json,
        'authorDescription',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [SubstanceSourceMaterialAuthor]
  /// from a [String] or [YamlMap] object
  factory SubstanceSourceMaterialAuthor.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceSourceMaterialAuthor.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceSourceMaterialAuthor.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceSourceMaterialAuthor '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceSourceMaterialAuthor]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceSourceMaterialAuthor.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceSourceMaterialAuthor.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceSourceMaterialAuthor';

  /// [authorType]
  /// The type of author of an organism species shall be specified. The
  /// parenthetical author of an organism species refers to the first author
  /// who published the plant/animal name (of any rank). The primary author
  /// of an organism species refers to the first author(s), who validly
  /// published the plant/animal name.
  final CodeableConcept? authorType;

  /// [authorDescription]
  /// The author of an organism species shall be specified. The author year
  /// of an organism shall also be specified when applicable; refers to the
  /// year in which the first author(s) published the infraspecific
  /// plant/animal name (of any rank).
  final FhirString? authorDescription;
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
      'authorType',
      authorType,
    );
    addField(
      'authorDescription',
      authorDescription,
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
      'authorType',
      'authorDescription',
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
      case 'authorType':
        if (authorType != null) {
          fields.add(authorType!);
        }
      case 'authorDescription':
        if (authorDescription != null) {
          fields.add(authorDescription!);
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
  SubstanceSourceMaterialAuthor clone() => copyWith();

  /// Copy function for [SubstanceSourceMaterialAuthor]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubstanceSourceMaterialAuthorCopyWith<SubstanceSourceMaterialAuthor>
      get copyWith => _$SubstanceSourceMaterialAuthorCopyWithImpl<
              SubstanceSourceMaterialAuthor>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstanceSourceMaterialAuthor) {
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
      authorType,
      o.authorType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      authorDescription,
      o.authorDescription,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstanceSourceMaterialHybrid]
/// 4.9.13.8.1 Hybrid species maternal organism ID (Optional).
class SubstanceSourceMaterialHybrid extends BackboneElement {
  /// Primary constructor for
  /// [SubstanceSourceMaterialHybrid]

  const SubstanceSourceMaterialHybrid({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.maternalOrganismId,
    this.maternalOrganismName,
    this.paternalOrganismId,
    this.paternalOrganismName,
    this.hybridType,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceSourceMaterialHybrid.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubstanceSourceMaterialHybrid(
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
      maternalOrganismId: JsonParser.parsePrimitive<FhirString>(
        json,
        'maternalOrganismId',
        FhirString.fromJson,
      ),
      maternalOrganismName: JsonParser.parsePrimitive<FhirString>(
        json,
        'maternalOrganismName',
        FhirString.fromJson,
      ),
      paternalOrganismId: JsonParser.parsePrimitive<FhirString>(
        json,
        'paternalOrganismId',
        FhirString.fromJson,
      ),
      paternalOrganismName: JsonParser.parsePrimitive<FhirString>(
        json,
        'paternalOrganismName',
        FhirString.fromJson,
      ),
      hybridType: JsonParser.parseObject<CodeableConcept>(
        json,
        'hybridType',
        CodeableConcept.fromJson,
      ),
    );
  }

  /// Deserialize [SubstanceSourceMaterialHybrid]
  /// from a [String] or [YamlMap] object
  factory SubstanceSourceMaterialHybrid.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceSourceMaterialHybrid.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceSourceMaterialHybrid.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceSourceMaterialHybrid '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceSourceMaterialHybrid]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceSourceMaterialHybrid.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceSourceMaterialHybrid.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceSourceMaterialHybrid';

  /// [maternalOrganismId]
  /// The identifier of the maternal species constituting the hybrid organism
  /// shall be specified based on a controlled vocabulary. For plants, the
  /// parents aren’t always known, and it is unlikely that it will be known
  /// which is maternal and which is paternal.
  final FhirString? maternalOrganismId;

  /// [maternalOrganismName]
  /// The name of the maternal species constituting the hybrid organism shall
  /// be specified. For plants, the parents aren’t always known, and it is
  /// unlikely that it will be known which is maternal and which is paternal.
  final FhirString? maternalOrganismName;

  /// [paternalOrganismId]
  /// The identifier of the paternal species constituting the hybrid organism
  /// shall be specified based on a controlled vocabulary.
  final FhirString? paternalOrganismId;

  /// [paternalOrganismName]
  /// The name of the paternal species constituting the hybrid organism shall
  /// be specified.
  final FhirString? paternalOrganismName;

  /// [hybridType]
  /// The hybrid type of an organism shall be specified.
  final CodeableConcept? hybridType;
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
      'maternalOrganismId',
      maternalOrganismId,
    );
    addField(
      'maternalOrganismName',
      maternalOrganismName,
    );
    addField(
      'paternalOrganismId',
      paternalOrganismId,
    );
    addField(
      'paternalOrganismName',
      paternalOrganismName,
    );
    addField(
      'hybridType',
      hybridType,
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
      'maternalOrganismId',
      'maternalOrganismName',
      'paternalOrganismId',
      'paternalOrganismName',
      'hybridType',
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
      case 'maternalOrganismId':
        if (maternalOrganismId != null) {
          fields.add(maternalOrganismId!);
        }
      case 'maternalOrganismName':
        if (maternalOrganismName != null) {
          fields.add(maternalOrganismName!);
        }
      case 'paternalOrganismId':
        if (paternalOrganismId != null) {
          fields.add(paternalOrganismId!);
        }
      case 'paternalOrganismName':
        if (paternalOrganismName != null) {
          fields.add(paternalOrganismName!);
        }
      case 'hybridType':
        if (hybridType != null) {
          fields.add(hybridType!);
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
  SubstanceSourceMaterialHybrid clone() => copyWith();

  /// Copy function for [SubstanceSourceMaterialHybrid]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubstanceSourceMaterialHybridCopyWith<SubstanceSourceMaterialHybrid>
      get copyWith => _$SubstanceSourceMaterialHybridCopyWithImpl<
              SubstanceSourceMaterialHybrid>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstanceSourceMaterialHybrid) {
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
      maternalOrganismId,
      o.maternalOrganismId,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      maternalOrganismName,
      o.maternalOrganismName,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      paternalOrganismId,
      o.paternalOrganismId,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      paternalOrganismName,
      o.paternalOrganismName,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      hybridType,
      o.hybridType,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstanceSourceMaterialOrganismGeneral]
/// 4.9.13.7.1 Kingdom (Conditional).
class SubstanceSourceMaterialOrganismGeneral extends BackboneElement {
  /// Primary constructor for
  /// [SubstanceSourceMaterialOrganismGeneral]

  const SubstanceSourceMaterialOrganismGeneral({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.kingdom,
    this.phylum,
    this.class_,
    this.order,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceSourceMaterialOrganismGeneral.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubstanceSourceMaterialOrganismGeneral(
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
      kingdom: JsonParser.parseObject<CodeableConcept>(
        json,
        'kingdom',
        CodeableConcept.fromJson,
      ),
      phylum: JsonParser.parseObject<CodeableConcept>(
        json,
        'phylum',
        CodeableConcept.fromJson,
      ),
      class_: JsonParser.parseObject<CodeableConcept>(
        json,
        'class',
        CodeableConcept.fromJson,
      ),
      order: JsonParser.parseObject<CodeableConcept>(
        json,
        'order',
        CodeableConcept.fromJson,
      ),
    );
  }

  /// Deserialize [SubstanceSourceMaterialOrganismGeneral]
  /// from a [String] or [YamlMap] object
  factory SubstanceSourceMaterialOrganismGeneral.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceSourceMaterialOrganismGeneral.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceSourceMaterialOrganismGeneral.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceSourceMaterialOrganismGeneral '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceSourceMaterialOrganismGeneral]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceSourceMaterialOrganismGeneral.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceSourceMaterialOrganismGeneral.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceSourceMaterialOrganismGeneral';

  /// [kingdom]
  /// The kingdom of an organism shall be specified.
  final CodeableConcept? kingdom;

  /// [phylum]
  /// The phylum of an organism shall be specified.
  final CodeableConcept? phylum;

  /// [class_]
  /// The class of an organism shall be specified.
  final CodeableConcept? class_;

  /// [order]
  /// The order of an organism shall be specified,.
  final CodeableConcept? order;
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
      'kingdom',
      kingdom,
    );
    addField(
      'phylum',
      phylum,
    );
    addField(
      'class',
      class_,
    );
    addField(
      'order',
      order,
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
      'kingdom',
      'phylum',
      'class',
      'order',
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
      case 'kingdom':
        if (kingdom != null) {
          fields.add(kingdom!);
        }
      case 'phylum':
        if (phylum != null) {
          fields.add(phylum!);
        }
      case 'class':
        if (class_ != null) {
          fields.add(class_!);
        }
      case 'order':
        if (order != null) {
          fields.add(order!);
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
  SubstanceSourceMaterialOrganismGeneral clone() => copyWith();

  /// Copy function for [SubstanceSourceMaterialOrganismGeneral]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubstanceSourceMaterialOrganismGeneralCopyWith<
          SubstanceSourceMaterialOrganismGeneral>
      get copyWith => _$SubstanceSourceMaterialOrganismGeneralCopyWithImpl<
              SubstanceSourceMaterialOrganismGeneral>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstanceSourceMaterialOrganismGeneral) {
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
      kingdom,
      o.kingdom,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      phylum,
      o.phylum,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      class_,
      o.class_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      order,
      o.order,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstanceSourceMaterialPartDescription]
/// To do.
class SubstanceSourceMaterialPartDescription extends BackboneElement {
  /// Primary constructor for
  /// [SubstanceSourceMaterialPartDescription]

  const SubstanceSourceMaterialPartDescription({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.part_,
    this.partLocation,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceSourceMaterialPartDescription.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubstanceSourceMaterialPartDescription(
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
      part_: JsonParser.parseObject<CodeableConcept>(
        json,
        'part',
        CodeableConcept.fromJson,
      ),
      partLocation: JsonParser.parseObject<CodeableConcept>(
        json,
        'partLocation',
        CodeableConcept.fromJson,
      ),
    );
  }

  /// Deserialize [SubstanceSourceMaterialPartDescription]
  /// from a [String] or [YamlMap] object
  factory SubstanceSourceMaterialPartDescription.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceSourceMaterialPartDescription.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceSourceMaterialPartDescription.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceSourceMaterialPartDescription '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceSourceMaterialPartDescription]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceSourceMaterialPartDescription.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceSourceMaterialPartDescription.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceSourceMaterialPartDescription';

  /// [part_]
  /// Entity of anatomical origin of source material within an organism.
  final CodeableConcept? part_;

  /// [partLocation]
  /// The detailed anatomic location when the part can be extracted from
  /// different anatomical locations of the organism. Multiple alternative
  /// locations may apply.
  final CodeableConcept? partLocation;
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
      'part',
      part_,
    );
    addField(
      'partLocation',
      partLocation,
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
      'part',
      'partLocation',
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
      case 'part':
        if (part_ != null) {
          fields.add(part_!);
        }
      case 'partLocation':
        if (partLocation != null) {
          fields.add(partLocation!);
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
  SubstanceSourceMaterialPartDescription clone() => copyWith();

  /// Copy function for [SubstanceSourceMaterialPartDescription]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubstanceSourceMaterialPartDescriptionCopyWith<
          SubstanceSourceMaterialPartDescription>
      get copyWith => _$SubstanceSourceMaterialPartDescriptionCopyWithImpl<
              SubstanceSourceMaterialPartDescription>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstanceSourceMaterialPartDescription) {
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
      part_,
      o.part_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      partLocation,
      o.partLocation,
    )) {
      return false;
    }
    return true;
  }
}
