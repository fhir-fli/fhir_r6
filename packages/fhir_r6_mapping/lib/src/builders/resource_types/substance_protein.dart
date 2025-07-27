import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart'
    show
        R6ResourceType,
        SubstanceProtein,
        SubstanceProteinSubunit,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r6_mapping/fhir_r6_mapping.dart';
import 'package:yaml/yaml.dart';

/// [SubstanceProteinBuilder]
/// A SubstanceProtein is defined as a single unit of a linear amino acid
/// sequence, or a combination of subunits that are either covalently
/// linked or have a defined invariant stoichiometric relationship. This
/// includes all synthetic, recombinant and purified SubstanceProteins of
/// defined sequence, whether the use is therapeutic or prophylactic. This
/// set of elements will be used to describe albumins, coagulation factors,
/// cytokines, growth factors, peptide/SubstanceProtein hormones, enzymes,
/// toxins, toxoids, recombinant vaccines, and immunomodulators.
class SubstanceProteinBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [SubstanceProteinBuilder]

  SubstanceProteinBuilder({
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
    this.disulfideLinkage,
    this.subunit,
  }) : super(
          objectPath: 'SubstanceProtein',
          resourceType: R6ResourceType.SubstanceProtein,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SubstanceProteinBuilder.empty() => SubstanceProteinBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceProteinBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstanceProtein';
    return SubstanceProteinBuilder(
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
      disulfideLinkage: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'disulfideLinkage',
        FhirStringBuilder.fromJson,
        '$objectPath.disulfideLinkage',
      ),
      subunit: (json['subunit'] as List<dynamic>?)
          ?.map<SubstanceProteinSubunitBuilder>(
            (v) => SubstanceProteinSubunitBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subunit',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SubstanceProteinBuilder]
  /// from a [String] or [YamlMap] object
  factory SubstanceProteinBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceProteinBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceProteinBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceProteinBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceProteinBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceProteinBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceProteinBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceProtein';

  /// [sequenceType]
  /// The SubstanceProtein descriptive elements will only be used when a
  /// complete or partial amino acid sequence is available or derivable from
  /// a nucleic acid sequence.
  CodeableConceptBuilder? sequenceType;

  /// [numberOfSubunits]
  /// Number of linear sequences of amino acids linked through peptide bonds.
  /// The number of subunits constituting the SubstanceProtein shall be
  /// described. It is possible that the number of subunits can be variable.
  FhirIntegerBuilder? numberOfSubunits;

  /// [disulfideLinkage]
  /// The disulphide bond between two cysteine residues either on the same
  /// subunit or on two different subunits shall be described. The position
  /// of the disulfide bonds in the SubstanceProtein shall be listed in
  /// increasing order of subunit number and position within subunit followed
  /// by the abbreviation of the amino acids involved. The disulfide linkage
  /// positions shall actually contain the amino acid Cysteine at the
  /// respective positions.
  List<FhirStringBuilder>? disulfideLinkage;

  /// [subunit]
  /// This subclause refers to the description of each subunit constituting
  /// the SubstanceProtein. A subunit is a linear sequence of amino acids
  /// linked through peptide bonds. The Subunit information shall be provided
  /// when the finished SubstanceProtein is a complex of multiple sequences;
  /// subunits are not used to delineate domains within a single sequence.
  /// Subunits are listed in order of decreasing length; sequences of the
  /// same length will be ordered by decreasing molecular weight; subunits
  /// that have identical sequences will be repeated multiple times.
  List<SubstanceProteinSubunitBuilder>? subunit;

  /// Converts a [SubstanceProteinBuilder]
  /// to [SubstanceProtein]
  @override
  SubstanceProtein build() => SubstanceProtein.fromJson(toJson());

  /// Converts a [SubstanceProteinBuilder]
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
    addField('disulfideLinkage', disulfideLinkage);
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
      'disulfideLinkage',
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
      case 'disulfideLinkage':
        if (disulfideLinkage != null) {
          fields.addAll(disulfideLinkage!);
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
      case 'disulfideLinkage':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            disulfideLinkage = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            disulfideLinkage = [
              ...(disulfideLinkage ?? []),
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
              disulfideLinkage = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                disulfideLinkage = [
                  ...(disulfideLinkage ?? []),
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
      case 'subunit':
        {
          if (child is List<SubstanceProteinSubunitBuilder>) {
            // Replace or create new list
            subunit = child;
            return;
          } else if (child is SubstanceProteinSubunitBuilder) {
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
      case 'disulfideLinkage':
        return ['FhirStringBuilder'];
      case 'subunit':
        return ['SubstanceProteinSubunitBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubstanceProteinBuilder]
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
      case 'disulfideLinkage':
        {
          disulfideLinkage = <FhirStringBuilder>[];
          return;
        }
      case 'subunit':
        {
          subunit = <SubstanceProteinSubunitBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SubstanceProteinBuilder clone() => throw UnimplementedError();
  @override
  SubstanceProteinBuilder copyWith({
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
    List<FhirStringBuilder>? disulfideLinkage,
    List<SubstanceProteinSubunitBuilder>? subunit,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = SubstanceProteinBuilder(
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
      disulfideLinkage: disulfideLinkage ?? this.disulfideLinkage,
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
    if (o is! SubstanceProteinBuilder) {
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
    if (!listEquals<FhirStringBuilder>(
      disulfideLinkage,
      o.disulfideLinkage,
    )) {
      return false;
    }
    if (!listEquals<SubstanceProteinSubunitBuilder>(
      subunit,
      o.subunit,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstanceProteinSubunitBuilder]
/// This subclause refers to the description of each subunit constituting
/// the SubstanceProtein. A subunit is a linear sequence of amino acids
/// linked through peptide bonds. The Subunit information shall be provided
/// when the finished SubstanceProtein is a complex of multiple sequences;
/// subunits are not used to delineate domains within a single sequence.
/// Subunits are listed in order of decreasing length; sequences of the
/// same length will be ordered by decreasing molecular weight; subunits
/// that have identical sequences will be repeated multiple times.
class SubstanceProteinSubunitBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SubstanceProteinSubunitBuilder]

  SubstanceProteinSubunitBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.subunit,
    this.sequence,
    this.length,
    this.sequenceAttachment,
    this.nTerminalModificationId,
    this.nTerminalModification,
    this.cTerminalModificationId,
    this.cTerminalModification,
    super.disallowExtensions,
  }) : super(
          objectPath: 'SubstanceProtein.subunit',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SubstanceProteinSubunitBuilder.empty() =>
      SubstanceProteinSubunitBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceProteinSubunitBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstanceProtein.subunit';
    return SubstanceProteinSubunitBuilder(
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
      nTerminalModificationId: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'nTerminalModificationId',
        IdentifierBuilder.fromJson,
        '$objectPath.nTerminalModificationId',
      ),
      nTerminalModification: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'nTerminalModification',
        FhirStringBuilder.fromJson,
        '$objectPath.nTerminalModification',
      ),
      cTerminalModificationId: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'cTerminalModificationId',
        IdentifierBuilder.fromJson,
        '$objectPath.cTerminalModificationId',
      ),
      cTerminalModification: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'cTerminalModification',
        FhirStringBuilder.fromJson,
        '$objectPath.cTerminalModification',
      ),
    );
  }

  /// Deserialize [SubstanceProteinSubunitBuilder]
  /// from a [String] or [YamlMap] object
  factory SubstanceProteinSubunitBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceProteinSubunitBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceProteinSubunitBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceProteinSubunitBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceProteinSubunitBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceProteinSubunitBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceProteinSubunitBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceProteinSubunit';

  /// [subunit]
  /// Index of primary sequences of amino acids linked through peptide bonds
  /// in order of decreasing length. Sequences of the same length will be
  /// ordered by molecular weight. Subunits that have identical sequences
  /// will be repeated and have sequential subscripts.
  FhirIntegerBuilder? subunit;

  /// [sequence]
  /// The sequence information shall be provided enumerating the amino acids
  /// from N- to C-terminal end using standard single-letter amino acid
  /// codes. Uppercase shall be used for L-amino acids and lowercase for
  /// D-amino acids. Transcribed SubstanceProteins will always be described
  /// using the translated sequence; for synthetic peptide containing amino
  /// acids that are not represented with a single letter code an X should be
  /// used within the sequence. The modified amino acids will be
  /// distinguished by their position in the sequence.
  FhirStringBuilder? sequence;

  /// [length]
  /// Length of linear sequences of amino acids contained in the subunit.
  FhirIntegerBuilder? length;

  /// [sequenceAttachment]
  /// The sequence information shall be provided enumerating the amino acids
  /// from N- to C-terminal end using standard single-letter amino acid
  /// codes. Uppercase shall be used for L-amino acids and lowercase for
  /// D-amino acids. Transcribed SubstanceProteins will always be described
  /// using the translated sequence; for synthetic peptide containing amino
  /// acids that are not represented with a single letter code an X should be
  /// used within the sequence. The modified amino acids will be
  /// distinguished by their position in the sequence.
  AttachmentBuilder? sequenceAttachment;

  /// [nTerminalModificationId]
  /// Unique identifier for molecular fragment modification based on the ISO
  /// 11238 Substance ID.
  IdentifierBuilder? nTerminalModificationId;

  /// [nTerminalModification]
  /// The name of the fragment modified at the N-terminal of the
  /// SubstanceProtein shall be specified.
  FhirStringBuilder? nTerminalModification;

  /// [cTerminalModificationId]
  /// Unique identifier for molecular fragment modification based on the ISO
  /// 11238 Substance ID.
  IdentifierBuilder? cTerminalModificationId;

  /// [cTerminalModification]
  /// The modification at the C-terminal shall be specified.
  FhirStringBuilder? cTerminalModification;

  /// Converts a [SubstanceProteinSubunitBuilder]
  /// to [SubstanceProteinSubunit]
  @override
  SubstanceProteinSubunit build() => SubstanceProteinSubunit.fromJson(toJson());

  /// Converts a [SubstanceProteinSubunitBuilder]
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
    addField('nTerminalModificationId', nTerminalModificationId);
    addField('nTerminalModification', nTerminalModification);
    addField('cTerminalModificationId', cTerminalModificationId);
    addField('cTerminalModification', cTerminalModification);
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
      'nTerminalModificationId',
      'nTerminalModification',
      'cTerminalModificationId',
      'cTerminalModification',
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
      case 'nTerminalModificationId':
        if (nTerminalModificationId != null) {
          fields.add(nTerminalModificationId!);
        }
      case 'nTerminalModification':
        if (nTerminalModification != null) {
          fields.add(nTerminalModification!);
        }
      case 'cTerminalModificationId':
        if (cTerminalModificationId != null) {
          fields.add(cTerminalModificationId!);
        }
      case 'cTerminalModification':
        if (cTerminalModification != null) {
          fields.add(cTerminalModification!);
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
      case 'nTerminalModificationId':
        {
          if (child is IdentifierBuilder) {
            nTerminalModificationId = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'nTerminalModification':
        {
          if (child is FhirStringBuilder) {
            nTerminalModification = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                nTerminalModification = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'cTerminalModificationId':
        {
          if (child is IdentifierBuilder) {
            cTerminalModificationId = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'cTerminalModification':
        {
          if (child is FhirStringBuilder) {
            cTerminalModification = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                cTerminalModification = converted;
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
      case 'subunit':
        return ['FhirIntegerBuilder'];
      case 'sequence':
        return ['FhirStringBuilder'];
      case 'length':
        return ['FhirIntegerBuilder'];
      case 'sequenceAttachment':
        return ['AttachmentBuilder'];
      case 'nTerminalModificationId':
        return ['IdentifierBuilder'];
      case 'nTerminalModification':
        return ['FhirStringBuilder'];
      case 'cTerminalModificationId':
        return ['IdentifierBuilder'];
      case 'cTerminalModification':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubstanceProteinSubunitBuilder]
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
      case 'nTerminalModificationId':
        {
          nTerminalModificationId = IdentifierBuilder.empty();
          return;
        }
      case 'nTerminalModification':
        {
          nTerminalModification = FhirStringBuilder.empty();
          return;
        }
      case 'cTerminalModificationId':
        {
          cTerminalModificationId = IdentifierBuilder.empty();
          return;
        }
      case 'cTerminalModification':
        {
          cTerminalModification = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SubstanceProteinSubunitBuilder clone() => throw UnimplementedError();
  @override
  SubstanceProteinSubunitBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirIntegerBuilder? subunit,
    FhirStringBuilder? sequence,
    FhirIntegerBuilder? length,
    AttachmentBuilder? sequenceAttachment,
    IdentifierBuilder? nTerminalModificationId,
    FhirStringBuilder? nTerminalModification,
    IdentifierBuilder? cTerminalModificationId,
    FhirStringBuilder? cTerminalModification,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SubstanceProteinSubunitBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      subunit: subunit ?? this.subunit,
      sequence: sequence ?? this.sequence,
      length: length ?? this.length,
      sequenceAttachment: sequenceAttachment ?? this.sequenceAttachment,
      nTerminalModificationId:
          nTerminalModificationId ?? this.nTerminalModificationId,
      nTerminalModification:
          nTerminalModification ?? this.nTerminalModification,
      cTerminalModificationId:
          cTerminalModificationId ?? this.cTerminalModificationId,
      cTerminalModification:
          cTerminalModification ?? this.cTerminalModification,
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
    if (o is! SubstanceProteinSubunitBuilder) {
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
      nTerminalModificationId,
      o.nTerminalModificationId,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      nTerminalModification,
      o.nTerminalModification,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      cTerminalModificationId,
      o.cTerminalModificationId,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      cTerminalModification,
      o.cTerminalModification,
    )) {
      return false;
    }
    return true;
  }
}
