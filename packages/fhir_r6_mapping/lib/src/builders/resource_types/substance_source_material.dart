import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        R5ResourceType,
        SubstanceSourceMaterial,
        SubstanceSourceMaterialAuthor,
        SubstanceSourceMaterialFractionDescription,
        SubstanceSourceMaterialHybrid,
        SubstanceSourceMaterialOrganism,
        SubstanceSourceMaterialOrganismGeneral,
        SubstanceSourceMaterialPartDescription,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [SubstanceSourceMaterialBuilder]
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
class SubstanceSourceMaterialBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [SubstanceSourceMaterialBuilder]

  SubstanceSourceMaterialBuilder({
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
          objectPath: 'SubstanceSourceMaterial',
          resourceType: R5ResourceType.SubstanceSourceMaterial,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SubstanceSourceMaterialBuilder.empty() =>
      SubstanceSourceMaterialBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceSourceMaterialBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstanceSourceMaterial';
    return SubstanceSourceMaterialBuilder(
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
      sourceMaterialClass: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'sourceMaterialClass',
        CodeableConceptBuilder.fromJson,
        '$objectPath.sourceMaterialClass',
      ),
      sourceMaterialType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'sourceMaterialType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.sourceMaterialType',
      ),
      sourceMaterialState: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'sourceMaterialState',
        CodeableConceptBuilder.fromJson,
        '$objectPath.sourceMaterialState',
      ),
      organismId: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'organismId',
        IdentifierBuilder.fromJson,
        '$objectPath.organismId',
      ),
      organismName: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'organismName',
        FhirStringBuilder.fromJson,
        '$objectPath.organismName',
      ),
      parentSubstanceId: (json['parentSubstanceId'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.parentSubstanceId',
              },
            ),
          )
          .toList(),
      parentSubstanceName: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'parentSubstanceName',
        FhirStringBuilder.fromJson,
        '$objectPath.parentSubstanceName',
      ),
      countryOfOrigin: (json['countryOfOrigin'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.countryOfOrigin',
              },
            ),
          )
          .toList(),
      geographicalLocation: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'geographicalLocation',
        FhirStringBuilder.fromJson,
        '$objectPath.geographicalLocation',
      ),
      developmentStage: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'developmentStage',
        CodeableConceptBuilder.fromJson,
        '$objectPath.developmentStage',
      ),
      fractionDescription: (json['fractionDescription'] as List<dynamic>?)
          ?.map<SubstanceSourceMaterialFractionDescriptionBuilder>(
            (v) => SubstanceSourceMaterialFractionDescriptionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.fractionDescription',
              },
            ),
          )
          .toList(),
      organism: JsonParser.parseObject<SubstanceSourceMaterialOrganismBuilder>(
        json,
        'organism',
        SubstanceSourceMaterialOrganismBuilder.fromJson,
        '$objectPath.organism',
      ),
      partDescription: (json['partDescription'] as List<dynamic>?)
          ?.map<SubstanceSourceMaterialPartDescriptionBuilder>(
            (v) => SubstanceSourceMaterialPartDescriptionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.partDescription',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SubstanceSourceMaterialBuilder]
  /// from a [String] or [YamlMap] object
  factory SubstanceSourceMaterialBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceSourceMaterialBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceSourceMaterialBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceSourceMaterialBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceSourceMaterialBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceSourceMaterialBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceSourceMaterialBuilder.fromJson(json);
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
  CodeableConceptBuilder? sourceMaterialClass;

  /// [sourceMaterialType]
  /// The type of the source material shall be specified based on a
  /// controlled vocabulary. For vaccines, this subclause refers to the class
  /// of infectious agent.
  CodeableConceptBuilder? sourceMaterialType;

  /// [sourceMaterialState]
  /// The state of the source material when extracted.
  CodeableConceptBuilder? sourceMaterialState;

  /// [organismId]
  /// The unique identifier associated with the source material parent
  /// organism shall be specified.
  IdentifierBuilder? organismId;

  /// [organismName]
  /// The organism accepted Scientific name shall be provided based on the
  /// organism taxonomy.
  FhirStringBuilder? organismName;

  /// [parentSubstanceId]
  /// The parent of the herbal drug Ginkgo biloba, Leaf is the substance ID
  /// of the substance (fresh) of Ginkgo biloba L. or Ginkgo biloba L. (Whole
  /// plant).
  List<IdentifierBuilder>? parentSubstanceId;

  /// [parentSubstanceName]
  /// The parent substance of the Herbal Drug, or Herbal preparation.
  List<FhirStringBuilder>? parentSubstanceName;

  /// [countryOfOrigin]
  /// The country where the plant material is harvested or the countries
  /// where the plasma is sourced from as laid down in accordance with the
  /// Plasma Master File. For “Plasma-derived substances” the attribute
  /// country of origin provides information about the countries used for the
  /// manufacturing of the Cryopoor plama or Crioprecipitate.
  List<CodeableConceptBuilder>? countryOfOrigin;

  /// [geographicalLocation]
  /// The place/region where the plant is harvested or the places/regions
  /// where the animal source material has its habitat.
  List<FhirStringBuilder>? geographicalLocation;

  /// [developmentStage]
  /// Stage of life for animals, plants, insects and microorganisms. This
  /// information shall be provided only when the substance is significantly
  /// different in these stages (e.g. foetal bovine serum).
  CodeableConceptBuilder? developmentStage;

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
  List<SubstanceSourceMaterialFractionDescriptionBuilder>? fractionDescription;

  /// [organism]
  /// This subclause describes the organism which the substance is derived
  /// from. For vaccines, the parent organism shall be specified based on
  /// these subclause elements. As an example, full taxonomy will be
  /// described for the Substance Name: ., Leaf.
  SubstanceSourceMaterialOrganismBuilder? organism;

  /// [partDescription]
  /// To do.
  List<SubstanceSourceMaterialPartDescriptionBuilder>? partDescription;

  /// Converts a [SubstanceSourceMaterialBuilder]
  /// to [SubstanceSourceMaterial]
  @override
  SubstanceSourceMaterial build() => SubstanceSourceMaterial.fromJson(toJson());

  /// Converts a [SubstanceSourceMaterialBuilder]
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
    addField('sourceMaterialClass', sourceMaterialClass);
    addField('sourceMaterialType', sourceMaterialType);
    addField('sourceMaterialState', sourceMaterialState);
    addField('organismId', organismId);
    addField('organismName', organismName);
    addField('parentSubstanceId', parentSubstanceId);
    addField('parentSubstanceName', parentSubstanceName);
    addField('countryOfOrigin', countryOfOrigin);
    addField('geographicalLocation', geographicalLocation);
    addField('developmentStage', developmentStage);
    addField('fractionDescription', fractionDescription);
    addField('organism', organism);
    addField('partDescription', partDescription);
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
      case 'sourceMaterialClass':
        {
          if (child is CodeableConceptBuilder) {
            sourceMaterialClass = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'sourceMaterialType':
        {
          if (child is CodeableConceptBuilder) {
            sourceMaterialType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'sourceMaterialState':
        {
          if (child is CodeableConceptBuilder) {
            sourceMaterialState = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'organismId':
        {
          if (child is IdentifierBuilder) {
            organismId = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'organismName':
        {
          if (child is FhirStringBuilder) {
            organismName = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                organismName = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'parentSubstanceId':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            parentSubstanceId = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            parentSubstanceId = [
              ...(parentSubstanceId ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'parentSubstanceName':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            parentSubstanceName = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            parentSubstanceName = [
              ...(parentSubstanceName ?? []),
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
              parentSubstanceName = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                parentSubstanceName = [
                  ...(parentSubstanceName ?? []),
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
      case 'countryOfOrigin':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            countryOfOrigin = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            countryOfOrigin = [
              ...(countryOfOrigin ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'geographicalLocation':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            geographicalLocation = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            geographicalLocation = [
              ...(geographicalLocation ?? []),
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
              geographicalLocation = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                geographicalLocation = [
                  ...(geographicalLocation ?? []),
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
      case 'developmentStage':
        {
          if (child is CodeableConceptBuilder) {
            developmentStage = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'fractionDescription':
        {
          if (child
              is List<SubstanceSourceMaterialFractionDescriptionBuilder>) {
            // Replace or create new list
            fractionDescription = child;
            return;
          } else if (child
              is SubstanceSourceMaterialFractionDescriptionBuilder) {
            // Add single element to existing list or create new list
            fractionDescription = [
              ...(fractionDescription ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'organism':
        {
          if (child is SubstanceSourceMaterialOrganismBuilder) {
            organism = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'partDescription':
        {
          if (child is List<SubstanceSourceMaterialPartDescriptionBuilder>) {
            // Replace or create new list
            partDescription = child;
            return;
          } else if (child is SubstanceSourceMaterialPartDescriptionBuilder) {
            // Add single element to existing list or create new list
            partDescription = [
              ...(partDescription ?? []),
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
      case 'sourceMaterialClass':
        return ['CodeableConceptBuilder'];
      case 'sourceMaterialType':
        return ['CodeableConceptBuilder'];
      case 'sourceMaterialState':
        return ['CodeableConceptBuilder'];
      case 'organismId':
        return ['IdentifierBuilder'];
      case 'organismName':
        return ['FhirStringBuilder'];
      case 'parentSubstanceId':
        return ['IdentifierBuilder'];
      case 'parentSubstanceName':
        return ['FhirStringBuilder'];
      case 'countryOfOrigin':
        return ['CodeableConceptBuilder'];
      case 'geographicalLocation':
        return ['FhirStringBuilder'];
      case 'developmentStage':
        return ['CodeableConceptBuilder'];
      case 'fractionDescription':
        return ['SubstanceSourceMaterialFractionDescriptionBuilder'];
      case 'organism':
        return ['SubstanceSourceMaterialOrganismBuilder'];
      case 'partDescription':
        return ['SubstanceSourceMaterialPartDescriptionBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubstanceSourceMaterialBuilder]
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
      case 'sourceMaterialClass':
        {
          sourceMaterialClass = CodeableConceptBuilder.empty();
          return;
        }
      case 'sourceMaterialType':
        {
          sourceMaterialType = CodeableConceptBuilder.empty();
          return;
        }
      case 'sourceMaterialState':
        {
          sourceMaterialState = CodeableConceptBuilder.empty();
          return;
        }
      case 'organismId':
        {
          organismId = IdentifierBuilder.empty();
          return;
        }
      case 'organismName':
        {
          organismName = FhirStringBuilder.empty();
          return;
        }
      case 'parentSubstanceId':
        {
          parentSubstanceId = <IdentifierBuilder>[];
          return;
        }
      case 'parentSubstanceName':
        {
          parentSubstanceName = <FhirStringBuilder>[];
          return;
        }
      case 'countryOfOrigin':
        {
          countryOfOrigin = <CodeableConceptBuilder>[];
          return;
        }
      case 'geographicalLocation':
        {
          geographicalLocation = <FhirStringBuilder>[];
          return;
        }
      case 'developmentStage':
        {
          developmentStage = CodeableConceptBuilder.empty();
          return;
        }
      case 'fractionDescription':
        {
          fractionDescription =
              <SubstanceSourceMaterialFractionDescriptionBuilder>[];
          return;
        }
      case 'organism':
        {
          organism = SubstanceSourceMaterialOrganismBuilder.empty();
          return;
        }
      case 'partDescription':
        {
          partDescription = <SubstanceSourceMaterialPartDescriptionBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SubstanceSourceMaterialBuilder clone() => throw UnimplementedError();
  @override
  SubstanceSourceMaterialBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? sourceMaterialClass,
    CodeableConceptBuilder? sourceMaterialType,
    CodeableConceptBuilder? sourceMaterialState,
    IdentifierBuilder? organismId,
    FhirStringBuilder? organismName,
    List<IdentifierBuilder>? parentSubstanceId,
    List<FhirStringBuilder>? parentSubstanceName,
    List<CodeableConceptBuilder>? countryOfOrigin,
    List<FhirStringBuilder>? geographicalLocation,
    CodeableConceptBuilder? developmentStage,
    List<SubstanceSourceMaterialFractionDescriptionBuilder>?
        fractionDescription,
    SubstanceSourceMaterialOrganismBuilder? organism,
    List<SubstanceSourceMaterialPartDescriptionBuilder>? partDescription,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = SubstanceSourceMaterialBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sourceMaterialClass: sourceMaterialClass ?? this.sourceMaterialClass,
      sourceMaterialType: sourceMaterialType ?? this.sourceMaterialType,
      sourceMaterialState: sourceMaterialState ?? this.sourceMaterialState,
      organismId: organismId ?? this.organismId,
      organismName: organismName ?? this.organismName,
      parentSubstanceId: parentSubstanceId ?? this.parentSubstanceId,
      parentSubstanceName: parentSubstanceName ?? this.parentSubstanceName,
      countryOfOrigin: countryOfOrigin ?? this.countryOfOrigin,
      geographicalLocation: geographicalLocation ?? this.geographicalLocation,
      developmentStage: developmentStage ?? this.developmentStage,
      fractionDescription: fractionDescription ?? this.fractionDescription,
      organism: organism ?? this.organism,
      partDescription: partDescription ?? this.partDescription,
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
    if (o is! SubstanceSourceMaterialBuilder) {
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
    if (!listEquals<IdentifierBuilder>(
      parentSubstanceId,
      o.parentSubstanceId,
    )) {
      return false;
    }
    if (!listEquals<FhirStringBuilder>(
      parentSubstanceName,
      o.parentSubstanceName,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      countryOfOrigin,
      o.countryOfOrigin,
    )) {
      return false;
    }
    if (!listEquals<FhirStringBuilder>(
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
    if (!listEquals<SubstanceSourceMaterialFractionDescriptionBuilder>(
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
    if (!listEquals<SubstanceSourceMaterialPartDescriptionBuilder>(
      partDescription,
      o.partDescription,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstanceSourceMaterialFractionDescriptionBuilder]
/// Many complex materials are fractions of parts of plants, animals, or
/// minerals. Fraction elements are often necessary to define both
/// Substances and Specified Group 1 Substances. For substances derived
/// from Plants, fraction information will be captured at the Substance
/// information level ( . Oils, Juices and Exudates). Additional
/// information for Extracts, such as extraction solvent composition, will
/// be captured at the Specified Substance Group 1 information level. For
/// plasma-derived products fraction information will be captured at the
/// Substance and the Specified Substance Group 1 levels.
class SubstanceSourceMaterialFractionDescriptionBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SubstanceSourceMaterialFractionDescriptionBuilder]

  SubstanceSourceMaterialFractionDescriptionBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.fraction,
    this.materialType,
    super.disallowExtensions,
  }) : super(
          objectPath: 'SubstanceSourceMaterial.fractionDescription',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SubstanceSourceMaterialFractionDescriptionBuilder.empty() =>
      SubstanceSourceMaterialFractionDescriptionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceSourceMaterialFractionDescriptionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstanceSourceMaterial.fractionDescription';
    return SubstanceSourceMaterialFractionDescriptionBuilder(
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
      fraction: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'fraction',
        FhirStringBuilder.fromJson,
        '$objectPath.fraction',
      ),
      materialType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'materialType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.materialType',
      ),
    );
  }

  /// Deserialize [SubstanceSourceMaterialFractionDescriptionBuilder]
  /// from a [String] or [YamlMap] object
  factory SubstanceSourceMaterialFractionDescriptionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceSourceMaterialFractionDescriptionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceSourceMaterialFractionDescriptionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceSourceMaterialFractionDescriptionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceSourceMaterialFractionDescriptionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceSourceMaterialFractionDescriptionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceSourceMaterialFractionDescriptionBuilder.fromJson(json);
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
  FhirStringBuilder? fraction;

  /// [materialType]
  /// The specific type of the material constituting the component. For
  /// Herbal preparations the particulars of the extracts (liquid/dry) is
  /// described in Specified Substance Group 1.
  CodeableConceptBuilder? materialType;

  /// Converts a [SubstanceSourceMaterialFractionDescriptionBuilder]
  /// to [SubstanceSourceMaterialFractionDescription]
  @override
  SubstanceSourceMaterialFractionDescription build() =>
      SubstanceSourceMaterialFractionDescription.fromJson(toJson());

  /// Converts a [SubstanceSourceMaterialFractionDescriptionBuilder]
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
    addField('fraction', fraction);
    addField('materialType', materialType);
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
      case 'fraction':
        {
          if (child is FhirStringBuilder) {
            fraction = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                fraction = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'materialType':
        {
          if (child is CodeableConceptBuilder) {
            materialType = child;
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
      case 'fraction':
        return ['FhirStringBuilder'];
      case 'materialType':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubstanceSourceMaterialFractionDescriptionBuilder]
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
      case 'fraction':
        {
          fraction = FhirStringBuilder.empty();
          return;
        }
      case 'materialType':
        {
          materialType = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SubstanceSourceMaterialFractionDescriptionBuilder clone() =>
      throw UnimplementedError();
  @override
  SubstanceSourceMaterialFractionDescriptionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? fraction,
    CodeableConceptBuilder? materialType,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SubstanceSourceMaterialFractionDescriptionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      fraction: fraction ?? this.fraction,
      materialType: materialType ?? this.materialType,
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
    if (o is! SubstanceSourceMaterialFractionDescriptionBuilder) {
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

/// [SubstanceSourceMaterialOrganismBuilder]
/// This subclause describes the organism which the substance is derived
/// from. For vaccines, the parent organism shall be specified based on
/// these subclause elements. As an example, full taxonomy will be
/// described for the Substance Name: ., Leaf.
class SubstanceSourceMaterialOrganismBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SubstanceSourceMaterialOrganismBuilder]

  SubstanceSourceMaterialOrganismBuilder({
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
  }) : super(
          objectPath: 'SubstanceSourceMaterial.organism',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SubstanceSourceMaterialOrganismBuilder.empty() =>
      SubstanceSourceMaterialOrganismBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceSourceMaterialOrganismBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstanceSourceMaterial.organism';
    return SubstanceSourceMaterialOrganismBuilder(
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
      family: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'family',
        CodeableConceptBuilder.fromJson,
        '$objectPath.family',
      ),
      genus: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'genus',
        CodeableConceptBuilder.fromJson,
        '$objectPath.genus',
      ),
      species: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'species',
        CodeableConceptBuilder.fromJson,
        '$objectPath.species',
      ),
      intraspecificType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'intraspecificType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.intraspecificType',
      ),
      intraspecificDescription: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'intraspecificDescription',
        FhirStringBuilder.fromJson,
        '$objectPath.intraspecificDescription',
      ),
      author: (json['author'] as List<dynamic>?)
          ?.map<SubstanceSourceMaterialAuthorBuilder>(
            (v) => SubstanceSourceMaterialAuthorBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.author',
              },
            ),
          )
          .toList(),
      hybrid: JsonParser.parseObject<SubstanceSourceMaterialHybridBuilder>(
        json,
        'hybrid',
        SubstanceSourceMaterialHybridBuilder.fromJson,
        '$objectPath.hybrid',
      ),
      organismGeneral:
          JsonParser.parseObject<SubstanceSourceMaterialOrganismGeneralBuilder>(
        json,
        'organismGeneral',
        SubstanceSourceMaterialOrganismGeneralBuilder.fromJson,
        '$objectPath.organismGeneral',
      ),
    );
  }

  /// Deserialize [SubstanceSourceMaterialOrganismBuilder]
  /// from a [String] or [YamlMap] object
  factory SubstanceSourceMaterialOrganismBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceSourceMaterialOrganismBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceSourceMaterialOrganismBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceSourceMaterialOrganismBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceSourceMaterialOrganismBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceSourceMaterialOrganismBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceSourceMaterialOrganismBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceSourceMaterialOrganism';

  /// [family]
  /// The family of an organism shall be specified.
  CodeableConceptBuilder? family;

  /// [genus]
  /// The genus of an organism shall be specified; refers to the Latin
  /// epithet of the genus element of the plant/animal scientific name; it is
  /// present in names for genera, species and infraspecies.
  CodeableConceptBuilder? genus;

  /// [species]
  /// The species of an organism shall be specified; refers to the Latin
  /// epithet of the species of the plant/animal; it is present in names for
  /// species and infraspecies.
  CodeableConceptBuilder? species;

  /// [intraspecificType]
  /// The Intraspecific type of an organism shall be specified.
  CodeableConceptBuilder? intraspecificType;

  /// [intraspecificDescription]
  /// The intraspecific description of an organism shall be specified based
  /// on a controlled vocabulary. For Influenza Vaccine, the intraspecific
  /// description shall contain the syntax of the antigen in line with the
  /// WHO convention.
  FhirStringBuilder? intraspecificDescription;

  /// [author]
  /// 4.9.13.6.1 Author type (Conditional).
  List<SubstanceSourceMaterialAuthorBuilder>? author;

  /// [hybrid]
  /// 4.9.13.8.1 Hybrid species maternal organism ID (Optional).
  SubstanceSourceMaterialHybridBuilder? hybrid;

  /// [organismGeneral]
  /// 4.9.13.7.1 Kingdom (Conditional).
  SubstanceSourceMaterialOrganismGeneralBuilder? organismGeneral;

  /// Converts a [SubstanceSourceMaterialOrganismBuilder]
  /// to [SubstanceSourceMaterialOrganism]
  @override
  SubstanceSourceMaterialOrganism build() =>
      SubstanceSourceMaterialOrganism.fromJson(toJson());

  /// Converts a [SubstanceSourceMaterialOrganismBuilder]
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
    addField('family', family);
    addField('genus', genus);
    addField('species', species);
    addField('intraspecificType', intraspecificType);
    addField('intraspecificDescription', intraspecificDescription);
    addField('author', author);
    addField('hybrid', hybrid);
    addField('organismGeneral', organismGeneral);
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
      case 'family':
        {
          if (child is CodeableConceptBuilder) {
            family = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'genus':
        {
          if (child is CodeableConceptBuilder) {
            genus = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'species':
        {
          if (child is CodeableConceptBuilder) {
            species = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'intraspecificType':
        {
          if (child is CodeableConceptBuilder) {
            intraspecificType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'intraspecificDescription':
        {
          if (child is FhirStringBuilder) {
            intraspecificDescription = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                intraspecificDescription = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'author':
        {
          if (child is List<SubstanceSourceMaterialAuthorBuilder>) {
            // Replace or create new list
            author = child;
            return;
          } else if (child is SubstanceSourceMaterialAuthorBuilder) {
            // Add single element to existing list or create new list
            author = [
              ...(author ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'hybrid':
        {
          if (child is SubstanceSourceMaterialHybridBuilder) {
            hybrid = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'organismGeneral':
        {
          if (child is SubstanceSourceMaterialOrganismGeneralBuilder) {
            organismGeneral = child;
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
      case 'family':
        return ['CodeableConceptBuilder'];
      case 'genus':
        return ['CodeableConceptBuilder'];
      case 'species':
        return ['CodeableConceptBuilder'];
      case 'intraspecificType':
        return ['CodeableConceptBuilder'];
      case 'intraspecificDescription':
        return ['FhirStringBuilder'];
      case 'author':
        return ['SubstanceSourceMaterialAuthorBuilder'];
      case 'hybrid':
        return ['SubstanceSourceMaterialHybridBuilder'];
      case 'organismGeneral':
        return ['SubstanceSourceMaterialOrganismGeneralBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubstanceSourceMaterialOrganismBuilder]
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
      case 'family':
        {
          family = CodeableConceptBuilder.empty();
          return;
        }
      case 'genus':
        {
          genus = CodeableConceptBuilder.empty();
          return;
        }
      case 'species':
        {
          species = CodeableConceptBuilder.empty();
          return;
        }
      case 'intraspecificType':
        {
          intraspecificType = CodeableConceptBuilder.empty();
          return;
        }
      case 'intraspecificDescription':
        {
          intraspecificDescription = FhirStringBuilder.empty();
          return;
        }
      case 'author':
        {
          author = <SubstanceSourceMaterialAuthorBuilder>[];
          return;
        }
      case 'hybrid':
        {
          hybrid = SubstanceSourceMaterialHybridBuilder.empty();
          return;
        }
      case 'organismGeneral':
        {
          organismGeneral =
              SubstanceSourceMaterialOrganismGeneralBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SubstanceSourceMaterialOrganismBuilder clone() => throw UnimplementedError();
  @override
  SubstanceSourceMaterialOrganismBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? family,
    CodeableConceptBuilder? genus,
    CodeableConceptBuilder? species,
    CodeableConceptBuilder? intraspecificType,
    FhirStringBuilder? intraspecificDescription,
    List<SubstanceSourceMaterialAuthorBuilder>? author,
    SubstanceSourceMaterialHybridBuilder? hybrid,
    SubstanceSourceMaterialOrganismGeneralBuilder? organismGeneral,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SubstanceSourceMaterialOrganismBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      family: family ?? this.family,
      genus: genus ?? this.genus,
      species: species ?? this.species,
      intraspecificType: intraspecificType ?? this.intraspecificType,
      intraspecificDescription:
          intraspecificDescription ?? this.intraspecificDescription,
      author: author ?? this.author,
      hybrid: hybrid ?? this.hybrid,
      organismGeneral: organismGeneral ?? this.organismGeneral,
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
    if (o is! SubstanceSourceMaterialOrganismBuilder) {
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
    if (!listEquals<SubstanceSourceMaterialAuthorBuilder>(
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

/// [SubstanceSourceMaterialAuthorBuilder]
/// 4.9.13.6.1 Author type (Conditional).
class SubstanceSourceMaterialAuthorBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SubstanceSourceMaterialAuthorBuilder]

  SubstanceSourceMaterialAuthorBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.authorType,
    this.authorDescription,
    super.disallowExtensions,
  }) : super(
          objectPath: 'SubstanceSourceMaterial.organism.author',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SubstanceSourceMaterialAuthorBuilder.empty() =>
      SubstanceSourceMaterialAuthorBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceSourceMaterialAuthorBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstanceSourceMaterial.organism.author';
    return SubstanceSourceMaterialAuthorBuilder(
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
      authorType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'authorType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.authorType',
      ),
      authorDescription: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'authorDescription',
        FhirStringBuilder.fromJson,
        '$objectPath.authorDescription',
      ),
    );
  }

  /// Deserialize [SubstanceSourceMaterialAuthorBuilder]
  /// from a [String] or [YamlMap] object
  factory SubstanceSourceMaterialAuthorBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceSourceMaterialAuthorBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceSourceMaterialAuthorBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceSourceMaterialAuthorBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceSourceMaterialAuthorBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceSourceMaterialAuthorBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceSourceMaterialAuthorBuilder.fromJson(json);
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
  CodeableConceptBuilder? authorType;

  /// [authorDescription]
  /// The author of an organism species shall be specified. The author year
  /// of an organism shall also be specified when applicable; refers to the
  /// year in which the first author(s) published the infraspecific
  /// plant/animal name (of any rank).
  FhirStringBuilder? authorDescription;

  /// Converts a [SubstanceSourceMaterialAuthorBuilder]
  /// to [SubstanceSourceMaterialAuthor]
  @override
  SubstanceSourceMaterialAuthor build() =>
      SubstanceSourceMaterialAuthor.fromJson(toJson());

  /// Converts a [SubstanceSourceMaterialAuthorBuilder]
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
    addField('authorType', authorType);
    addField('authorDescription', authorDescription);
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
      case 'authorType':
        {
          if (child is CodeableConceptBuilder) {
            authorType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'authorDescription':
        {
          if (child is FhirStringBuilder) {
            authorDescription = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                authorDescription = converted;
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
      case 'authorType':
        return ['CodeableConceptBuilder'];
      case 'authorDescription':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubstanceSourceMaterialAuthorBuilder]
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
      case 'authorType':
        {
          authorType = CodeableConceptBuilder.empty();
          return;
        }
      case 'authorDescription':
        {
          authorDescription = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SubstanceSourceMaterialAuthorBuilder clone() => throw UnimplementedError();
  @override
  SubstanceSourceMaterialAuthorBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? authorType,
    FhirStringBuilder? authorDescription,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SubstanceSourceMaterialAuthorBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      authorType: authorType ?? this.authorType,
      authorDescription: authorDescription ?? this.authorDescription,
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
    if (o is! SubstanceSourceMaterialAuthorBuilder) {
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

/// [SubstanceSourceMaterialHybridBuilder]
/// 4.9.13.8.1 Hybrid species maternal organism ID (Optional).
class SubstanceSourceMaterialHybridBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SubstanceSourceMaterialHybridBuilder]

  SubstanceSourceMaterialHybridBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.maternalOrganismId,
    this.maternalOrganismName,
    this.paternalOrganismId,
    this.paternalOrganismName,
    this.hybridType,
    super.disallowExtensions,
  }) : super(
          objectPath: 'SubstanceSourceMaterial.organism.hybrid',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SubstanceSourceMaterialHybridBuilder.empty() =>
      SubstanceSourceMaterialHybridBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceSourceMaterialHybridBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstanceSourceMaterial.organism.hybrid';
    return SubstanceSourceMaterialHybridBuilder(
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
      maternalOrganismId: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'maternalOrganismId',
        FhirStringBuilder.fromJson,
        '$objectPath.maternalOrganismId',
      ),
      maternalOrganismName: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'maternalOrganismName',
        FhirStringBuilder.fromJson,
        '$objectPath.maternalOrganismName',
      ),
      paternalOrganismId: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'paternalOrganismId',
        FhirStringBuilder.fromJson,
        '$objectPath.paternalOrganismId',
      ),
      paternalOrganismName: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'paternalOrganismName',
        FhirStringBuilder.fromJson,
        '$objectPath.paternalOrganismName',
      ),
      hybridType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'hybridType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.hybridType',
      ),
    );
  }

  /// Deserialize [SubstanceSourceMaterialHybridBuilder]
  /// from a [String] or [YamlMap] object
  factory SubstanceSourceMaterialHybridBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceSourceMaterialHybridBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceSourceMaterialHybridBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceSourceMaterialHybridBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceSourceMaterialHybridBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceSourceMaterialHybridBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceSourceMaterialHybridBuilder.fromJson(json);
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
  FhirStringBuilder? maternalOrganismId;

  /// [maternalOrganismName]
  /// The name of the maternal species constituting the hybrid organism shall
  /// be specified. For plants, the parents aren’t always known, and it is
  /// unlikely that it will be known which is maternal and which is paternal.
  FhirStringBuilder? maternalOrganismName;

  /// [paternalOrganismId]
  /// The identifier of the paternal species constituting the hybrid organism
  /// shall be specified based on a controlled vocabulary.
  FhirStringBuilder? paternalOrganismId;

  /// [paternalOrganismName]
  /// The name of the paternal species constituting the hybrid organism shall
  /// be specified.
  FhirStringBuilder? paternalOrganismName;

  /// [hybridType]
  /// The hybrid type of an organism shall be specified.
  CodeableConceptBuilder? hybridType;

  /// Converts a [SubstanceSourceMaterialHybridBuilder]
  /// to [SubstanceSourceMaterialHybrid]
  @override
  SubstanceSourceMaterialHybrid build() =>
      SubstanceSourceMaterialHybrid.fromJson(toJson());

  /// Converts a [SubstanceSourceMaterialHybridBuilder]
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
    addField('maternalOrganismId', maternalOrganismId);
    addField('maternalOrganismName', maternalOrganismName);
    addField('paternalOrganismId', paternalOrganismId);
    addField('paternalOrganismName', paternalOrganismName);
    addField('hybridType', hybridType);
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
      case 'maternalOrganismId':
        {
          if (child is FhirStringBuilder) {
            maternalOrganismId = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                maternalOrganismId = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'maternalOrganismName':
        {
          if (child is FhirStringBuilder) {
            maternalOrganismName = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                maternalOrganismName = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'paternalOrganismId':
        {
          if (child is FhirStringBuilder) {
            paternalOrganismId = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                paternalOrganismId = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'paternalOrganismName':
        {
          if (child is FhirStringBuilder) {
            paternalOrganismName = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                paternalOrganismName = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'hybridType':
        {
          if (child is CodeableConceptBuilder) {
            hybridType = child;
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
      case 'maternalOrganismId':
        return ['FhirStringBuilder'];
      case 'maternalOrganismName':
        return ['FhirStringBuilder'];
      case 'paternalOrganismId':
        return ['FhirStringBuilder'];
      case 'paternalOrganismName':
        return ['FhirStringBuilder'];
      case 'hybridType':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubstanceSourceMaterialHybridBuilder]
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
      case 'maternalOrganismId':
        {
          maternalOrganismId = FhirStringBuilder.empty();
          return;
        }
      case 'maternalOrganismName':
        {
          maternalOrganismName = FhirStringBuilder.empty();
          return;
        }
      case 'paternalOrganismId':
        {
          paternalOrganismId = FhirStringBuilder.empty();
          return;
        }
      case 'paternalOrganismName':
        {
          paternalOrganismName = FhirStringBuilder.empty();
          return;
        }
      case 'hybridType':
        {
          hybridType = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SubstanceSourceMaterialHybridBuilder clone() => throw UnimplementedError();
  @override
  SubstanceSourceMaterialHybridBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? maternalOrganismId,
    FhirStringBuilder? maternalOrganismName,
    FhirStringBuilder? paternalOrganismId,
    FhirStringBuilder? paternalOrganismName,
    CodeableConceptBuilder? hybridType,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SubstanceSourceMaterialHybridBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      maternalOrganismId: maternalOrganismId ?? this.maternalOrganismId,
      maternalOrganismName: maternalOrganismName ?? this.maternalOrganismName,
      paternalOrganismId: paternalOrganismId ?? this.paternalOrganismId,
      paternalOrganismName: paternalOrganismName ?? this.paternalOrganismName,
      hybridType: hybridType ?? this.hybridType,
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
    if (o is! SubstanceSourceMaterialHybridBuilder) {
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

/// [SubstanceSourceMaterialOrganismGeneralBuilder]
/// 4.9.13.7.1 Kingdom (Conditional).
class SubstanceSourceMaterialOrganismGeneralBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SubstanceSourceMaterialOrganismGeneralBuilder]

  SubstanceSourceMaterialOrganismGeneralBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.kingdom,
    this.phylum,
    this.class_,
    this.order,
    super.disallowExtensions,
  }) : super(
          objectPath: 'SubstanceSourceMaterial.organism.organismGeneral',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SubstanceSourceMaterialOrganismGeneralBuilder.empty() =>
      SubstanceSourceMaterialOrganismGeneralBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceSourceMaterialOrganismGeneralBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstanceSourceMaterial.organism.organismGeneral';
    return SubstanceSourceMaterialOrganismGeneralBuilder(
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
      kingdom: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'kingdom',
        CodeableConceptBuilder.fromJson,
        '$objectPath.kingdom',
      ),
      phylum: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'phylum',
        CodeableConceptBuilder.fromJson,
        '$objectPath.phylum',
      ),
      class_: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'class',
        CodeableConceptBuilder.fromJson,
        '$objectPath.class',
      ),
      order: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'order',
        CodeableConceptBuilder.fromJson,
        '$objectPath.order',
      ),
    );
  }

  /// Deserialize [SubstanceSourceMaterialOrganismGeneralBuilder]
  /// from a [String] or [YamlMap] object
  factory SubstanceSourceMaterialOrganismGeneralBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceSourceMaterialOrganismGeneralBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceSourceMaterialOrganismGeneralBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceSourceMaterialOrganismGeneralBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceSourceMaterialOrganismGeneralBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceSourceMaterialOrganismGeneralBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceSourceMaterialOrganismGeneralBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceSourceMaterialOrganismGeneral';

  /// [kingdom]
  /// The kingdom of an organism shall be specified.
  CodeableConceptBuilder? kingdom;

  /// [phylum]
  /// The phylum of an organism shall be specified.
  CodeableConceptBuilder? phylum;

  /// [class_]
  /// The class of an organism shall be specified.
  CodeableConceptBuilder? class_;

  /// [order]
  /// The order of an organism shall be specified,.
  CodeableConceptBuilder? order;

  /// Converts a [SubstanceSourceMaterialOrganismGeneralBuilder]
  /// to [SubstanceSourceMaterialOrganismGeneral]
  @override
  SubstanceSourceMaterialOrganismGeneral build() =>
      SubstanceSourceMaterialOrganismGeneral.fromJson(toJson());

  /// Converts a [SubstanceSourceMaterialOrganismGeneralBuilder]
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
    addField('kingdom', kingdom);
    addField('phylum', phylum);
    addField('class', class_);
    addField('order', order);
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
      case 'kingdom':
        {
          if (child is CodeableConceptBuilder) {
            kingdom = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'phylum':
        {
          if (child is CodeableConceptBuilder) {
            phylum = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'class':
        {
          if (child is CodeableConceptBuilder) {
            class_ = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'order':
        {
          if (child is CodeableConceptBuilder) {
            order = child;
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
      case 'kingdom':
        return ['CodeableConceptBuilder'];
      case 'phylum':
        return ['CodeableConceptBuilder'];
      case 'class':
        return ['CodeableConceptBuilder'];
      case 'order':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubstanceSourceMaterialOrganismGeneralBuilder]
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
      case 'kingdom':
        {
          kingdom = CodeableConceptBuilder.empty();
          return;
        }
      case 'phylum':
        {
          phylum = CodeableConceptBuilder.empty();
          return;
        }
      case 'class':
        {
          class_ = CodeableConceptBuilder.empty();
          return;
        }
      case 'order':
        {
          order = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SubstanceSourceMaterialOrganismGeneralBuilder clone() =>
      throw UnimplementedError();
  @override
  SubstanceSourceMaterialOrganismGeneralBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? kingdom,
    CodeableConceptBuilder? phylum,
    CodeableConceptBuilder? class_,
    CodeableConceptBuilder? order,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SubstanceSourceMaterialOrganismGeneralBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      kingdom: kingdom ?? this.kingdom,
      phylum: phylum ?? this.phylum,
      class_: class_ ?? this.class_,
      order: order ?? this.order,
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
    if (o is! SubstanceSourceMaterialOrganismGeneralBuilder) {
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

/// [SubstanceSourceMaterialPartDescriptionBuilder]
/// To do.
class SubstanceSourceMaterialPartDescriptionBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SubstanceSourceMaterialPartDescriptionBuilder]

  SubstanceSourceMaterialPartDescriptionBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.part_,
    this.partLocation,
    super.disallowExtensions,
  }) : super(
          objectPath: 'SubstanceSourceMaterial.partDescription',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SubstanceSourceMaterialPartDescriptionBuilder.empty() =>
      SubstanceSourceMaterialPartDescriptionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceSourceMaterialPartDescriptionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstanceSourceMaterial.partDescription';
    return SubstanceSourceMaterialPartDescriptionBuilder(
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
      part_: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'part',
        CodeableConceptBuilder.fromJson,
        '$objectPath.part',
      ),
      partLocation: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'partLocation',
        CodeableConceptBuilder.fromJson,
        '$objectPath.partLocation',
      ),
    );
  }

  /// Deserialize [SubstanceSourceMaterialPartDescriptionBuilder]
  /// from a [String] or [YamlMap] object
  factory SubstanceSourceMaterialPartDescriptionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceSourceMaterialPartDescriptionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceSourceMaterialPartDescriptionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceSourceMaterialPartDescriptionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceSourceMaterialPartDescriptionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceSourceMaterialPartDescriptionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceSourceMaterialPartDescriptionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceSourceMaterialPartDescription';

  /// [part_]
  /// Entity of anatomical origin of source material within an organism.
  CodeableConceptBuilder? part_;

  /// [partLocation]
  /// The detailed anatomic location when the part can be extracted from
  /// different anatomical locations of the organism. Multiple alternative
  /// locations may apply.
  CodeableConceptBuilder? partLocation;

  /// Converts a [SubstanceSourceMaterialPartDescriptionBuilder]
  /// to [SubstanceSourceMaterialPartDescription]
  @override
  SubstanceSourceMaterialPartDescription build() =>
      SubstanceSourceMaterialPartDescription.fromJson(toJson());

  /// Converts a [SubstanceSourceMaterialPartDescriptionBuilder]
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
    addField('part', part_);
    addField('partLocation', partLocation);
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
      case 'part':
        {
          if (child is CodeableConceptBuilder) {
            part_ = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'partLocation':
        {
          if (child is CodeableConceptBuilder) {
            partLocation = child;
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
      case 'part':
        return ['CodeableConceptBuilder'];
      case 'partLocation':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubstanceSourceMaterialPartDescriptionBuilder]
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
      case 'part':
        {
          part_ = CodeableConceptBuilder.empty();
          return;
        }
      case 'partLocation':
        {
          partLocation = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SubstanceSourceMaterialPartDescriptionBuilder clone() =>
      throw UnimplementedError();
  @override
  SubstanceSourceMaterialPartDescriptionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? part_,
    CodeableConceptBuilder? partLocation,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SubstanceSourceMaterialPartDescriptionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      part_: part_ ?? this.part_,
      partLocation: partLocation ?? this.partLocation,
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
    if (o is! SubstanceSourceMaterialPartDescriptionBuilder) {
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
