import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart'
    show
        R6ResourceType,
        SubstanceNucleicAcid,
        SubstanceNucleicAcidLinkage,
        SubstanceNucleicAcidSubunit,
        SubstanceNucleicAcidSugar,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r6_mapping/fhir_r6_mapping.dart';
import 'package:yaml/yaml.dart';

/// [SubstanceNucleicAcidBuilder]
/// Nucleic acids are defined by three distinct elements: the base, sugar
/// and linkage. Individual substance/moiety IDs will be created for each
/// of these elements. The nucleotide sequence will be always entered in
/// the 5’-3’ direction.
class SubstanceNucleicAcidBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [SubstanceNucleicAcidBuilder]

  SubstanceNucleicAcidBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.sequenceType,
    this.numberOfSubunits,
    this.areaOfHybridisation,
    this.oligoNucleotideType,
    this.subunit,
  }) : super(
          objectPath: 'SubstanceNucleicAcid',
          resourceType: R6ResourceType.SubstanceNucleicAcid,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SubstanceNucleicAcidBuilder.empty() => SubstanceNucleicAcidBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceNucleicAcidBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstanceNucleicAcid';
    return SubstanceNucleicAcidBuilder(
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
      sequenceType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'sequenceType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.sequenceType',
      ),
      numberOfSubunits: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'numberOfSubunits',
        FhirIntegerBuilder.fromJson,
        '$objectPath.numberOfSubunits',
      ),
      areaOfHybridisation: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'areaOfHybridisation',
        FhirStringBuilder.fromJson,
        '$objectPath.areaOfHybridisation',
      ),
      oligoNucleotideType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'oligoNucleotideType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.oligoNucleotideType',
      ),
      subunit: (json['subunit'] as List<dynamic>?)
          ?.map<SubstanceNucleicAcidSubunitBuilder>(
            (v) => SubstanceNucleicAcidSubunitBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subunit',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SubstanceNucleicAcidBuilder]
  /// from a [String] or [YamlMap] object
  factory SubstanceNucleicAcidBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceNucleicAcidBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceNucleicAcidBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceNucleicAcidBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceNucleicAcidBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceNucleicAcidBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceNucleicAcidBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceNucleicAcid';

  /// [sequenceType]
  /// The type of the sequence shall be specified based on a controlled
  /// vocabulary.
  CodeableConceptBuilder? sequenceType;

  /// [numberOfSubunits]
  /// The number of linear sequences of nucleotides linked through
  /// phosphodiester bonds shall be described. Subunits would be strands of
  /// nucleic acids that are tightly associated typically through
  /// Watson-Crick base pairing. NOTE: If not specified in the reference
  /// source, the assumption is that there is 1 subunit.
  FhirIntegerBuilder? numberOfSubunits;

  /// [areaOfHybridisation]
  /// The area of hybridisation shall be described if applicable for double
  /// stranded RNA or DNA. The number associated with the subunit followed by
  /// the number associated to the residue shall be specified in increasing
  /// order. The underscore “” shall be used as separator as follows:
  /// “Subunitnumber Residue”.
  FhirStringBuilder? areaOfHybridisation;

  /// [oligoNucleotideType]
  /// (TBC).
  CodeableConceptBuilder? oligoNucleotideType;

  /// [subunit]
  /// Subunits are listed in order of decreasing length; sequences of the
  /// same length will be ordered by molecular weight; subunits that have
  /// identical sequences will be repeated multiple times.
  List<SubstanceNucleicAcidSubunitBuilder>? subunit;

  /// Converts a [SubstanceNucleicAcidBuilder]
  /// to [SubstanceNucleicAcid]
  @override
  SubstanceNucleicAcid build() => SubstanceNucleicAcid.fromJson(toJson());

  /// Converts a [SubstanceNucleicAcidBuilder]
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
    addField('sequenceType', sequenceType);
    addField('numberOfSubunits', numberOfSubunits);
    addField('areaOfHybridisation', areaOfHybridisation);
    addField('oligoNucleotideType', oligoNucleotideType);
    addField('subunit', subunit);
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
      'sequenceType',
      'numberOfSubunits',
      'areaOfHybridisation',
      'oligoNucleotideType',
      'subunit',
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
      case 'sequenceType':
        if (sequenceType != null) {
          fields.add(sequenceType!);
        }
      case 'numberOfSubunits':
        if (numberOfSubunits != null) {
          fields.add(numberOfSubunits!);
        }
      case 'areaOfHybridisation':
        if (areaOfHybridisation != null) {
          fields.add(areaOfHybridisation!);
        }
      case 'oligoNucleotideType':
        if (oligoNucleotideType != null) {
          fields.add(oligoNucleotideType!);
        }
      case 'subunit':
        if (subunit != null) {
          fields.addAll(subunit!);
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
      case 'sequenceType':
        {
          if (child is CodeableConceptBuilder) {
            sequenceType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'numberOfSubunits':
        {
          if (child is FhirIntegerBuilder) {
            numberOfSubunits = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirIntegerBuilder.tryParse(numValue);
                if (converted != null) {
                  numberOfSubunits = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'areaOfHybridisation':
        {
          if (child is FhirStringBuilder) {
            areaOfHybridisation = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                areaOfHybridisation = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'oligoNucleotideType':
        {
          if (child is CodeableConceptBuilder) {
            oligoNucleotideType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subunit':
        {
          if (child is List<SubstanceNucleicAcidSubunitBuilder>) {
            // Replace or create new list
            subunit = child;
            return;
          } else if (child is SubstanceNucleicAcidSubunitBuilder) {
            // Add single element to existing list or create new list
            subunit = [
              ...(subunit ?? []),
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
      case 'sequenceType':
        return ['CodeableConceptBuilder'];
      case 'numberOfSubunits':
        return ['FhirIntegerBuilder'];
      case 'areaOfHybridisation':
        return ['FhirStringBuilder'];
      case 'oligoNucleotideType':
        return ['CodeableConceptBuilder'];
      case 'subunit':
        return ['SubstanceNucleicAcidSubunitBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubstanceNucleicAcidBuilder]
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
      case 'sequenceType':
        {
          sequenceType = CodeableConceptBuilder.empty();
          return;
        }
      case 'numberOfSubunits':
        {
          numberOfSubunits = FhirIntegerBuilder.empty();
          return;
        }
      case 'areaOfHybridisation':
        {
          areaOfHybridisation = FhirStringBuilder.empty();
          return;
        }
      case 'oligoNucleotideType':
        {
          oligoNucleotideType = CodeableConceptBuilder.empty();
          return;
        }
      case 'subunit':
        {
          subunit = <SubstanceNucleicAcidSubunitBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SubstanceNucleicAcidBuilder clone() => throw UnimplementedError();
  @override
  SubstanceNucleicAcidBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? sequenceType,
    FhirIntegerBuilder? numberOfSubunits,
    FhirStringBuilder? areaOfHybridisation,
    CodeableConceptBuilder? oligoNucleotideType,
    List<SubstanceNucleicAcidSubunitBuilder>? subunit,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = SubstanceNucleicAcidBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequenceType: sequenceType ?? this.sequenceType,
      numberOfSubunits: numberOfSubunits ?? this.numberOfSubunits,
      areaOfHybridisation: areaOfHybridisation ?? this.areaOfHybridisation,
      oligoNucleotideType: oligoNucleotideType ?? this.oligoNucleotideType,
      subunit: subunit ?? this.subunit,
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
    if (o is! SubstanceNucleicAcidBuilder) {
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
      sequenceType,
      o.sequenceType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      numberOfSubunits,
      o.numberOfSubunits,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      areaOfHybridisation,
      o.areaOfHybridisation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      oligoNucleotideType,
      o.oligoNucleotideType,
    )) {
      return false;
    }
    if (!listEquals<SubstanceNucleicAcidSubunitBuilder>(
      subunit,
      o.subunit,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstanceNucleicAcidSubunitBuilder]
/// Subunits are listed in order of decreasing length; sequences of the
/// same length will be ordered by molecular weight; subunits that have
/// identical sequences will be repeated multiple times.
class SubstanceNucleicAcidSubunitBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SubstanceNucleicAcidSubunitBuilder]

  SubstanceNucleicAcidSubunitBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.subunit,
    this.sequence,
    this.length,
    this.sequenceAttachment,
    this.fivePrime,
    this.threePrime,
    this.linkage,
    this.sugar,
    super.disallowExtensions,
  }) : super(
          objectPath: 'SubstanceNucleicAcid.subunit',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SubstanceNucleicAcidSubunitBuilder.empty() =>
      SubstanceNucleicAcidSubunitBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceNucleicAcidSubunitBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstanceNucleicAcid.subunit';
    return SubstanceNucleicAcidSubunitBuilder(
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
      subunit: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'subunit',
        FhirIntegerBuilder.fromJson,
        '$objectPath.subunit',
      ),
      sequence: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'sequence',
        FhirStringBuilder.fromJson,
        '$objectPath.sequence',
      ),
      length: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'length',
        FhirIntegerBuilder.fromJson,
        '$objectPath.length',
      ),
      sequenceAttachment: JsonParser.parseObject<AttachmentBuilder>(
        json,
        'sequenceAttachment',
        AttachmentBuilder.fromJson,
        '$objectPath.sequenceAttachment',
      ),
      fivePrime: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'fivePrime',
        CodeableConceptBuilder.fromJson,
        '$objectPath.fivePrime',
      ),
      threePrime: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'threePrime',
        CodeableConceptBuilder.fromJson,
        '$objectPath.threePrime',
      ),
      linkage: (json['linkage'] as List<dynamic>?)
          ?.map<SubstanceNucleicAcidLinkageBuilder>(
            (v) => SubstanceNucleicAcidLinkageBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.linkage',
              },
            ),
          )
          .toList(),
      sugar: (json['sugar'] as List<dynamic>?)
          ?.map<SubstanceNucleicAcidSugarBuilder>(
            (v) => SubstanceNucleicAcidSugarBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.sugar',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SubstanceNucleicAcidSubunitBuilder]
  /// from a [String] or [YamlMap] object
  factory SubstanceNucleicAcidSubunitBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceNucleicAcidSubunitBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceNucleicAcidSubunitBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceNucleicAcidSubunitBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceNucleicAcidSubunitBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceNucleicAcidSubunitBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceNucleicAcidSubunitBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceNucleicAcidSubunit';

  /// [subunit]
  /// Index of linear sequences of nucleic acids in order of decreasing
  /// length. Sequences of the same length will be ordered by molecular
  /// weight. Subunits that have identical sequences will be repeated and
  /// have sequential subscripts.
  FhirIntegerBuilder? subunit;

  /// [sequence]
  /// Actual nucleotide sequence notation from 5' to 3' end using standard
  /// single letter codes. In addition to the base sequence, sugar and type
  /// of phosphate or non-phosphate linkage should also be captured.
  FhirStringBuilder? sequence;

  /// [length]
  /// The length of the sequence shall be captured.
  FhirIntegerBuilder? length;

  /// [sequenceAttachment]
  /// (TBC).
  AttachmentBuilder? sequenceAttachment;

  /// [fivePrime]
  /// The nucleotide present at the 5’ terminal shall be specified based on a
  /// controlled vocabulary. Since the sequence is represented from the 5' to
  /// the 3' end, the 5’ prime nucleotide is the letter at the first position
  /// in the sequence. A separate representation would be redundant.
  CodeableConceptBuilder? fivePrime;

  /// [threePrime]
  /// The nucleotide present at the 3’ terminal shall be specified based on a
  /// controlled vocabulary. Since the sequence is represented from the 5' to
  /// the 3' end, the 5’ prime nucleotide is the letter at the last position
  /// in the sequence. A separate representation would be redundant.
  CodeableConceptBuilder? threePrime;

  /// [linkage]
  /// The linkages between sugar residues will also be captured.
  List<SubstanceNucleicAcidLinkageBuilder>? linkage;

  /// [sugar]
  /// 5.3.6.8.1 Sugar ID (Mandatory).
  List<SubstanceNucleicAcidSugarBuilder>? sugar;

  /// Converts a [SubstanceNucleicAcidSubunitBuilder]
  /// to [SubstanceNucleicAcidSubunit]
  @override
  SubstanceNucleicAcidSubunit build() =>
      SubstanceNucleicAcidSubunit.fromJson(toJson());

  /// Converts a [SubstanceNucleicAcidSubunitBuilder]
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
    addField('subunit', subunit);
    addField('sequence', sequence);
    addField('length', length);
    addField('sequenceAttachment', sequenceAttachment);
    addField('fivePrime', fivePrime);
    addField('threePrime', threePrime);
    addField('linkage', linkage);
    addField('sugar', sugar);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'subunit',
      'sequence',
      'length',
      'sequenceAttachment',
      'fivePrime',
      'threePrime',
      'linkage',
      'sugar',
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
      case 'subunit':
        if (subunit != null) {
          fields.add(subunit!);
        }
      case 'sequence':
        if (sequence != null) {
          fields.add(sequence!);
        }
      case 'length':
        if (length != null) {
          fields.add(length!);
        }
      case 'sequenceAttachment':
        if (sequenceAttachment != null) {
          fields.add(sequenceAttachment!);
        }
      case 'fivePrime':
        if (fivePrime != null) {
          fields.add(fivePrime!);
        }
      case 'threePrime':
        if (threePrime != null) {
          fields.add(threePrime!);
        }
      case 'linkage':
        if (linkage != null) {
          fields.addAll(linkage!);
        }
      case 'sugar':
        if (sugar != null) {
          fields.addAll(sugar!);
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
      case 'subunit':
        {
          if (child is FhirIntegerBuilder) {
            subunit = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirIntegerBuilder.tryParse(numValue);
                if (converted != null) {
                  subunit = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'sequence':
        {
          if (child is FhirStringBuilder) {
            sequence = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                sequence = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'length':
        {
          if (child is FhirIntegerBuilder) {
            length = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirIntegerBuilder.tryParse(numValue);
                if (converted != null) {
                  length = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'sequenceAttachment':
        {
          if (child is AttachmentBuilder) {
            sequenceAttachment = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'fivePrime':
        {
          if (child is CodeableConceptBuilder) {
            fivePrime = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'threePrime':
        {
          if (child is CodeableConceptBuilder) {
            threePrime = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'linkage':
        {
          if (child is List<SubstanceNucleicAcidLinkageBuilder>) {
            // Replace or create new list
            linkage = child;
            return;
          } else if (child is SubstanceNucleicAcidLinkageBuilder) {
            // Add single element to existing list or create new list
            linkage = [
              ...(linkage ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'sugar':
        {
          if (child is List<SubstanceNucleicAcidSugarBuilder>) {
            // Replace or create new list
            sugar = child;
            return;
          } else if (child is SubstanceNucleicAcidSugarBuilder) {
            // Add single element to existing list or create new list
            sugar = [
              ...(sugar ?? []),
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
      case 'subunit':
        return ['FhirIntegerBuilder'];
      case 'sequence':
        return ['FhirStringBuilder'];
      case 'length':
        return ['FhirIntegerBuilder'];
      case 'sequenceAttachment':
        return ['AttachmentBuilder'];
      case 'fivePrime':
        return ['CodeableConceptBuilder'];
      case 'threePrime':
        return ['CodeableConceptBuilder'];
      case 'linkage':
        return ['SubstanceNucleicAcidLinkageBuilder'];
      case 'sugar':
        return ['SubstanceNucleicAcidSugarBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubstanceNucleicAcidSubunitBuilder]
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
      case 'subunit':
        {
          subunit = FhirIntegerBuilder.empty();
          return;
        }
      case 'sequence':
        {
          sequence = FhirStringBuilder.empty();
          return;
        }
      case 'length':
        {
          length = FhirIntegerBuilder.empty();
          return;
        }
      case 'sequenceAttachment':
        {
          sequenceAttachment = AttachmentBuilder.empty();
          return;
        }
      case 'fivePrime':
        {
          fivePrime = CodeableConceptBuilder.empty();
          return;
        }
      case 'threePrime':
        {
          threePrime = CodeableConceptBuilder.empty();
          return;
        }
      case 'linkage':
        {
          linkage = <SubstanceNucleicAcidLinkageBuilder>[];
          return;
        }
      case 'sugar':
        {
          sugar = <SubstanceNucleicAcidSugarBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SubstanceNucleicAcidSubunitBuilder clone() => throw UnimplementedError();
  @override
  SubstanceNucleicAcidSubunitBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirIntegerBuilder? subunit,
    FhirStringBuilder? sequence,
    FhirIntegerBuilder? length,
    AttachmentBuilder? sequenceAttachment,
    CodeableConceptBuilder? fivePrime,
    CodeableConceptBuilder? threePrime,
    List<SubstanceNucleicAcidLinkageBuilder>? linkage,
    List<SubstanceNucleicAcidSugarBuilder>? sugar,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SubstanceNucleicAcidSubunitBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      subunit: subunit ?? this.subunit,
      sequence: sequence ?? this.sequence,
      length: length ?? this.length,
      sequenceAttachment: sequenceAttachment ?? this.sequenceAttachment,
      fivePrime: fivePrime ?? this.fivePrime,
      threePrime: threePrime ?? this.threePrime,
      linkage: linkage ?? this.linkage,
      sugar: sugar ?? this.sugar,
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
    if (o is! SubstanceNucleicAcidSubunitBuilder) {
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
      subunit,
      o.subunit,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sequence,
      o.sequence,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      length,
      o.length,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sequenceAttachment,
      o.sequenceAttachment,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      fivePrime,
      o.fivePrime,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      threePrime,
      o.threePrime,
    )) {
      return false;
    }
    if (!listEquals<SubstanceNucleicAcidLinkageBuilder>(
      linkage,
      o.linkage,
    )) {
      return false;
    }
    if (!listEquals<SubstanceNucleicAcidSugarBuilder>(
      sugar,
      o.sugar,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstanceNucleicAcidLinkageBuilder]
/// The linkages between sugar residues will also be captured.
class SubstanceNucleicAcidLinkageBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SubstanceNucleicAcidLinkageBuilder]

  SubstanceNucleicAcidLinkageBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.connectivity,
    this.identifier,
    this.name,
    this.residueSite,
    super.disallowExtensions,
  }) : super(
          objectPath: 'SubstanceNucleicAcid.subunit.linkage',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SubstanceNucleicAcidLinkageBuilder.empty() =>
      SubstanceNucleicAcidLinkageBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceNucleicAcidLinkageBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstanceNucleicAcid.subunit.linkage';
    return SubstanceNucleicAcidLinkageBuilder(
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
      connectivity: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'connectivity',
        FhirStringBuilder.fromJson,
        '$objectPath.connectivity',
      ),
      identifier: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'identifier',
        IdentifierBuilder.fromJson,
        '$objectPath.identifier',
      ),
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      residueSite: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'residueSite',
        FhirStringBuilder.fromJson,
        '$objectPath.residueSite',
      ),
    );
  }

  /// Deserialize [SubstanceNucleicAcidLinkageBuilder]
  /// from a [String] or [YamlMap] object
  factory SubstanceNucleicAcidLinkageBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceNucleicAcidLinkageBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceNucleicAcidLinkageBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceNucleicAcidLinkageBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceNucleicAcidLinkageBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceNucleicAcidLinkageBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceNucleicAcidLinkageBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceNucleicAcidLinkage';

  /// [connectivity]
  /// The entity that links the sugar residues together should also be
  /// captured for nearly all naturally occurring nucleic acid the linkage is
  /// a phosphate group. For many synthetic oligonucleotides phosphorothioate
  /// linkages are often seen. Linkage connectivity is assumed to be 3’-5’.
  /// If the linkage is either 3’-3’ or 5’-5’ this should be specified.
  FhirStringBuilder? connectivity;

  /// [identifier]
  /// Each linkage will be registered as a fragment and have an ID.
  IdentifierBuilder? identifier;

  /// [name]
  /// Each linkage will be registered as a fragment and have at least one
  /// name. A single name shall be assigned to each linkage.
  FhirStringBuilder? name;

  /// [residueSite]
  /// Residues shall be captured as described in 5.3.6.8.3.
  FhirStringBuilder? residueSite;

  /// Converts a [SubstanceNucleicAcidLinkageBuilder]
  /// to [SubstanceNucleicAcidLinkage]
  @override
  SubstanceNucleicAcidLinkage build() =>
      SubstanceNucleicAcidLinkage.fromJson(toJson());

  /// Converts a [SubstanceNucleicAcidLinkageBuilder]
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
    addField('connectivity', connectivity);
    addField('identifier', identifier);
    addField('name', name);
    addField('residueSite', residueSite);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'connectivity',
      'identifier',
      'name',
      'residueSite',
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
      case 'connectivity':
        if (connectivity != null) {
          fields.add(connectivity!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.add(identifier!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'residueSite':
        if (residueSite != null) {
          fields.add(residueSite!);
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
      case 'connectivity':
        {
          if (child is FhirStringBuilder) {
            connectivity = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                connectivity = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'identifier':
        {
          if (child is IdentifierBuilder) {
            identifier = child;
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
      case 'residueSite':
        {
          if (child is FhirStringBuilder) {
            residueSite = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                residueSite = converted;
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
      case 'connectivity':
        return ['FhirStringBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      case 'residueSite':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubstanceNucleicAcidLinkageBuilder]
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
      case 'connectivity':
        {
          connectivity = FhirStringBuilder.empty();
          return;
        }
      case 'identifier':
        {
          identifier = IdentifierBuilder.empty();
          return;
        }
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'residueSite':
        {
          residueSite = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SubstanceNucleicAcidLinkageBuilder clone() => throw UnimplementedError();
  @override
  SubstanceNucleicAcidLinkageBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? connectivity,
    IdentifierBuilder? identifier,
    FhirStringBuilder? name,
    FhirStringBuilder? residueSite,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SubstanceNucleicAcidLinkageBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      connectivity: connectivity ?? this.connectivity,
      identifier: identifier ?? this.identifier,
      name: name ?? this.name,
      residueSite: residueSite ?? this.residueSite,
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
    if (o is! SubstanceNucleicAcidLinkageBuilder) {
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
      connectivity,
      o.connectivity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      residueSite,
      o.residueSite,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstanceNucleicAcidSugarBuilder]
/// 5.3.6.8.1 Sugar ID (Mandatory).
class SubstanceNucleicAcidSugarBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SubstanceNucleicAcidSugarBuilder]

  SubstanceNucleicAcidSugarBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.name,
    this.residueSite,
    super.disallowExtensions,
  }) : super(
          objectPath: 'SubstanceNucleicAcid.subunit.sugar',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SubstanceNucleicAcidSugarBuilder.empty() =>
      SubstanceNucleicAcidSugarBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceNucleicAcidSugarBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstanceNucleicAcid.subunit.sugar';
    return SubstanceNucleicAcidSugarBuilder(
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
      identifier: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'identifier',
        IdentifierBuilder.fromJson,
        '$objectPath.identifier',
      ),
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      residueSite: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'residueSite',
        FhirStringBuilder.fromJson,
        '$objectPath.residueSite',
      ),
    );
  }

  /// Deserialize [SubstanceNucleicAcidSugarBuilder]
  /// from a [String] or [YamlMap] object
  factory SubstanceNucleicAcidSugarBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceNucleicAcidSugarBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceNucleicAcidSugarBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceNucleicAcidSugarBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceNucleicAcidSugarBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceNucleicAcidSugarBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceNucleicAcidSugarBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceNucleicAcidSugar';

  /// [identifier]
  /// The Substance ID of the sugar or sugar-like component that make up the
  /// nucleotide.
  IdentifierBuilder? identifier;

  /// [name]
  /// The name of the sugar or sugar-like component that make up the
  /// nucleotide.
  FhirStringBuilder? name;

  /// [residueSite]
  /// The residues that contain a given sugar will be captured. The order of
  /// given residues will be captured in the 5‘-3‘direction consistent with
  /// the base sequences listed above.
  FhirStringBuilder? residueSite;

  /// Converts a [SubstanceNucleicAcidSugarBuilder]
  /// to [SubstanceNucleicAcidSugar]
  @override
  SubstanceNucleicAcidSugar build() =>
      SubstanceNucleicAcidSugar.fromJson(toJson());

  /// Converts a [SubstanceNucleicAcidSugarBuilder]
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
    addField('identifier', identifier);
    addField('name', name);
    addField('residueSite', residueSite);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'identifier',
      'name',
      'residueSite',
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
      case 'identifier':
        if (identifier != null) {
          fields.add(identifier!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'residueSite':
        if (residueSite != null) {
          fields.add(residueSite!);
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
      case 'identifier':
        {
          if (child is IdentifierBuilder) {
            identifier = child;
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
      case 'residueSite':
        {
          if (child is FhirStringBuilder) {
            residueSite = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                residueSite = converted;
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
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      case 'residueSite':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubstanceNucleicAcidSugarBuilder]
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
      case 'identifier':
        {
          identifier = IdentifierBuilder.empty();
          return;
        }
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'residueSite':
        {
          residueSite = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SubstanceNucleicAcidSugarBuilder clone() => throw UnimplementedError();
  @override
  SubstanceNucleicAcidSugarBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    IdentifierBuilder? identifier,
    FhirStringBuilder? name,
    FhirStringBuilder? residueSite,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SubstanceNucleicAcidSugarBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      name: name ?? this.name,
      residueSite: residueSite ?? this.residueSite,
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
    if (o is! SubstanceNucleicAcidSugarBuilder) {
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
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      residueSite,
      o.residueSite,
    )) {
      return false;
    }
    return true;
  }
}
