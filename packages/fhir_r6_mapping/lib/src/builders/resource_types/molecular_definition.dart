import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart'
    show
        MolecularDefinition,
        MolecularDefinitionConcatenated,
        MolecularDefinitionCoordinateInterval,
        MolecularDefinitionCoordinateInterval1,
        MolecularDefinitionCoordinateInterval2,
        MolecularDefinitionCoordinateSystem,
        MolecularDefinitionCoordinateSystem1,
        MolecularDefinitionCoordinateSystem2,
        MolecularDefinitionCytobandInterval,
        MolecularDefinitionCytobandLocation,
        MolecularDefinitionEdit,
        MolecularDefinitionEndCytoband,
        MolecularDefinitionExtracted,
        MolecularDefinitionGenomeAssembly,
        MolecularDefinitionLiteral,
        MolecularDefinitionLocation,
        MolecularDefinitionRelative,
        MolecularDefinitionRepeated,
        MolecularDefinitionRepresentation,
        MolecularDefinitionSequenceElement,
        MolecularDefinitionSequenceLocation,
        MolecularDefinitionStartCytoband,
        R6ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r6_mapping/fhir_r6_mapping.dart';
import 'package:yaml/yaml.dart';

/// [MolecularDefinitionBuilder]
/// Definitional content for a molecular entity, such as a nucleotide or
/// protein sequence.
class MolecularDefinitionBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [MolecularDefinitionBuilder]

  MolecularDefinitionBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.description,
    this.moleculeType,
    this.type,
    this.topology,
    this.member,
    this.location,
    this.representation,
  }) : super(
          objectPath: 'MolecularDefinition',
          resourceType: R6ResourceType.MolecularDefinition,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MolecularDefinitionBuilder.empty() => MolecularDefinitionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MolecularDefinition';
    return MolecularDefinitionBuilder(
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
      description: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'description',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.description',
      ),
      moleculeType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'moleculeType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.moleculeType',
      ),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.type',
              },
            ),
          )
          .toList(),
      topology: (json['topology'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.topology',
              },
            ),
          )
          .toList(),
      member: (json['member'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.member',
              },
            ),
          )
          .toList(),
      location: (json['location'] as List<dynamic>?)
          ?.map<MolecularDefinitionLocationBuilder>(
            (v) => MolecularDefinitionLocationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.location',
              },
            ),
          )
          .toList(),
      representation: (json['representation'] as List<dynamic>?)
          ?.map<MolecularDefinitionRepresentationBuilder>(
            (v) => MolecularDefinitionRepresentationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.representation',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MolecularDefinitionBuilder]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinition';

  /// [identifier]
  /// A unique identifier for a particular instance of this resource.
  List<IdentifierBuilder>? identifier;

  /// [description]
  /// A description of the molecular entity in a human friendly format.
  FhirMarkdownBuilder? description;

  /// [moleculeType]
  /// The type of molecule (e.g., DNA, RNA, amino acid). This is a broad
  /// concept that refers to the general physical composition of the
  /// molecule, intended to facilitate searching and to provide domain
  /// context for profiles and instances. The terminology binding may be
  /// expanded to support additional types of molecules in the future (e.g.,
  /// peptide nucleic acids, oligosaccharides).
  CodeableConceptBuilder? moleculeType;

  /// [type]
  /// Classifications of an instance of the resource into arbitrary types,
  /// based on domain semantics. For example, this element could indicate
  /// that an instance of moleculeType 'RNA' could have a type of 'mRNA' or
  /// 'siRNA'.
  List<CodeableConceptBuilder>? type;

  /// [topology]
  /// The structural topology of the molecular entity. For sequences (e.g.,
  /// DNA), this could specify 'linear' and 'circular'. More complex entities
  /// might be branched or have a quaternary structure.
  List<CodeableConceptBuilder>? topology;

  /// [member]
  /// Constituents of an aggregate molecular concept (e.g., haplotype,
  /// genotype).
  List<ReferenceBuilder>? member;

  /// [location]
  /// A defined location on a molecular entity. Location definitions may vary
  /// with respect to coordinate space and precision or level of granularity.
  List<MolecularDefinitionLocationBuilder>? location;

  /// [representation]
  /// A representation of a molecular entity, specifically including
  /// sequence. Note this element is intended to define the entity primarily
  /// through computable, discrete elements that express domain semantics
  /// rather than replicating a particular file format or relational schema.
  List<MolecularDefinitionRepresentationBuilder>? representation;

  /// Converts a [MolecularDefinitionBuilder]
  /// to [MolecularDefinition]
  @override
  MolecularDefinition build() => MolecularDefinition.fromJson(toJson());

  /// Converts a [MolecularDefinitionBuilder]
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
    addField('description', description);
    addField('moleculeType', moleculeType);
    addField('type', type);
    addField('topology', topology);
    addField('member', member);
    addField('location', location);
    addField('representation', representation);
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
      'description',
      'moleculeType',
      'type',
      'topology',
      'member',
      'location',
      'representation',
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
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'moleculeType':
        if (moleculeType != null) {
          fields.add(moleculeType!);
        }
      case 'type':
        if (type != null) {
          fields.addAll(type!);
        }
      case 'topology':
        if (topology != null) {
          fields.addAll(topology!);
        }
      case 'member':
        if (member != null) {
          fields.addAll(member!);
        }
      case 'location':
        if (location != null) {
          fields.addAll(location!);
        }
      case 'representation':
        if (representation != null) {
          fields.addAll(representation!);
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
      case 'description':
        {
          if (child is FhirMarkdownBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                description = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'moleculeType':
        {
          if (child is CodeableConceptBuilder) {
            moleculeType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            type = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            type = [
              ...(type ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'topology':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            topology = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            topology = [
              ...(topology ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'member':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            member = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            member = [
              ...(member ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'location':
        {
          if (child is List<MolecularDefinitionLocationBuilder>) {
            // Replace or create new list
            location = child;
            return;
          } else if (child is MolecularDefinitionLocationBuilder) {
            // Add single element to existing list or create new list
            location = [
              ...(location ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'representation':
        {
          if (child is List<MolecularDefinitionRepresentationBuilder>) {
            // Replace or create new list
            representation = child;
            return;
          } else if (child is MolecularDefinitionRepresentationBuilder) {
            // Add single element to existing list or create new list
            representation = [
              ...(representation ?? []),
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
      case 'description':
        return ['FhirMarkdownBuilder'];
      case 'moleculeType':
        return ['CodeableConceptBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'topology':
        return ['CodeableConceptBuilder'];
      case 'member':
        return ['ReferenceBuilder'];
      case 'location':
        return ['MolecularDefinitionLocationBuilder'];
      case 'representation':
        return ['MolecularDefinitionRepresentationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularDefinitionBuilder]
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
      case 'description':
        {
          description = FhirMarkdownBuilder.empty();
          return;
        }
      case 'moleculeType':
        {
          moleculeType = CodeableConceptBuilder.empty();
          return;
        }
      case 'type':
        {
          type = <CodeableConceptBuilder>[];
          return;
        }
      case 'topology':
        {
          topology = <CodeableConceptBuilder>[];
          return;
        }
      case 'member':
        {
          member = <ReferenceBuilder>[];
          return;
        }
      case 'location':
        {
          location = <MolecularDefinitionLocationBuilder>[];
          return;
        }
      case 'representation':
        {
          representation = <MolecularDefinitionRepresentationBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MolecularDefinitionBuilder clone() => throw UnimplementedError();
  @override
  MolecularDefinitionBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    FhirMarkdownBuilder? description,
    CodeableConceptBuilder? moleculeType,
    List<CodeableConceptBuilder>? type,
    List<CodeableConceptBuilder>? topology,
    List<ReferenceBuilder>? member,
    List<MolecularDefinitionLocationBuilder>? location,
    List<MolecularDefinitionRepresentationBuilder>? representation,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = MolecularDefinitionBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      description: description ?? this.description,
      moleculeType: moleculeType ?? this.moleculeType,
      type: type ?? this.type,
      topology: topology ?? this.topology,
      member: member ?? this.member,
      location: location ?? this.location,
      representation: representation ?? this.representation,
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
    if (o is! MolecularDefinitionBuilder) {
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
      description,
      o.description,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      moleculeType,
      o.moleculeType,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      topology,
      o.topology,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      member,
      o.member,
    )) {
      return false;
    }
    if (!listEquals<MolecularDefinitionLocationBuilder>(
      location,
      o.location,
    )) {
      return false;
    }
    if (!listEquals<MolecularDefinitionRepresentationBuilder>(
      representation,
      o.representation,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionLocationBuilder]
/// A defined location on a molecular entity. Location definitions may vary
/// with respect to coordinate space and precision or level of granularity.
class MolecularDefinitionLocationBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MolecularDefinitionLocationBuilder]

  MolecularDefinitionLocationBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.sequenceLocation,
    this.cytobandLocation,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MolecularDefinition.location',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MolecularDefinitionLocationBuilder.empty() =>
      MolecularDefinitionLocationBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionLocationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MolecularDefinition.location';
    return MolecularDefinitionLocationBuilder(
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
      sequenceLocation:
          JsonParser.parseObject<MolecularDefinitionSequenceLocationBuilder>(
        json,
        'sequenceLocation',
        MolecularDefinitionSequenceLocationBuilder.fromJson,
        '$objectPath.sequenceLocation',
      ),
      cytobandLocation:
          JsonParser.parseObject<MolecularDefinitionCytobandLocationBuilder>(
        json,
        'cytobandLocation',
        MolecularDefinitionCytobandLocationBuilder.fromJson,
        '$objectPath.cytobandLocation',
      ),
    );
  }

  /// Deserialize [MolecularDefinitionLocationBuilder]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionLocationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionLocationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionLocationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionLocationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionLocationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionLocationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionLocationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionLocation';

  /// [sequenceLocation]
  /// A location on a sequence, defined using a nucleotide coordinate system.
  MolecularDefinitionSequenceLocationBuilder? sequenceLocation;

  /// [cytobandLocation]
  /// A location on a sequence, defined using cytobands.
  MolecularDefinitionCytobandLocationBuilder? cytobandLocation;

  /// Converts a [MolecularDefinitionLocationBuilder]
  /// to [MolecularDefinitionLocation]
  @override
  MolecularDefinitionLocation build() =>
      MolecularDefinitionLocation.fromJson(toJson());

  /// Converts a [MolecularDefinitionLocationBuilder]
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
    addField('sequenceLocation', sequenceLocation);
    addField('cytobandLocation', cytobandLocation);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'sequenceLocation',
      'cytobandLocation',
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
      case 'sequenceLocation':
        if (sequenceLocation != null) {
          fields.add(sequenceLocation!);
        }
      case 'cytobandLocation':
        if (cytobandLocation != null) {
          fields.add(cytobandLocation!);
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
      case 'sequenceLocation':
        {
          if (child is MolecularDefinitionSequenceLocationBuilder) {
            sequenceLocation = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'cytobandLocation':
        {
          if (child is MolecularDefinitionCytobandLocationBuilder) {
            cytobandLocation = child;
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
      case 'sequenceLocation':
        return ['MolecularDefinitionSequenceLocationBuilder'];
      case 'cytobandLocation':
        return ['MolecularDefinitionCytobandLocationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularDefinitionLocationBuilder]
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
      case 'sequenceLocation':
        {
          sequenceLocation = MolecularDefinitionSequenceLocationBuilder.empty();
          return;
        }
      case 'cytobandLocation':
        {
          cytobandLocation = MolecularDefinitionCytobandLocationBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MolecularDefinitionLocationBuilder clone() => throw UnimplementedError();
  @override
  MolecularDefinitionLocationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    MolecularDefinitionSequenceLocationBuilder? sequenceLocation,
    MolecularDefinitionCytobandLocationBuilder? cytobandLocation,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MolecularDefinitionLocationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequenceLocation: sequenceLocation ?? this.sequenceLocation,
      cytobandLocation: cytobandLocation ?? this.cytobandLocation,
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
    if (o is! MolecularDefinitionLocationBuilder) {
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
      sequenceLocation,
      o.sequenceLocation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      cytobandLocation,
      o.cytobandLocation,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionSequenceLocationBuilder]
/// A location on a sequence, defined using a nucleotide coordinate system.
class MolecularDefinitionSequenceLocationBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MolecularDefinitionSequenceLocationBuilder]

  MolecularDefinitionSequenceLocationBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.sequenceContext,
    this.coordinateInterval,
    this.strand,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MolecularDefinition.location.sequenceLocation',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MolecularDefinitionSequenceLocationBuilder.empty() =>
      MolecularDefinitionSequenceLocationBuilder(
        sequenceContext: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionSequenceLocationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MolecularDefinition.location.sequenceLocation';
    return MolecularDefinitionSequenceLocationBuilder(
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
      sequenceContext: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'sequenceContext',
        ReferenceBuilder.fromJson,
        '$objectPath.sequenceContext',
      ),
      coordinateInterval:
          JsonParser.parseObject<MolecularDefinitionCoordinateIntervalBuilder>(
        json,
        'coordinateInterval',
        MolecularDefinitionCoordinateIntervalBuilder.fromJson,
        '$objectPath.coordinateInterval',
      ),
      strand: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'strand',
        CodeableConceptBuilder.fromJson,
        '$objectPath.strand',
      ),
    );
  }

  /// Deserialize [MolecularDefinitionSequenceLocationBuilder]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionSequenceLocationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionSequenceLocationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionSequenceLocationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionSequenceLocationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionSequenceLocationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionSequenceLocationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionSequenceLocationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionSequenceLocation';

  /// [sequenceContext]
  /// A reference to a sequence on which the location is defined.
  ReferenceBuilder? sequenceContext;

  /// [coordinateInterval]
  /// An interval on a sequence, defined by coordinate-based start and end
  /// coordinates.
  MolecularDefinitionCoordinateIntervalBuilder? coordinateInterval;

  /// [strand]
  /// The specific strand at the coordinateInterval, when the interval alone
  /// is not sufficient to define a location (e.g., double stranded DNA).
  /// Example values include 'forward' and 'reverse'.
  CodeableConceptBuilder? strand;

  /// Converts a [MolecularDefinitionSequenceLocationBuilder]
  /// to [MolecularDefinitionSequenceLocation]
  @override
  MolecularDefinitionSequenceLocation build() =>
      MolecularDefinitionSequenceLocation.fromJson(toJson());

  /// Converts a [MolecularDefinitionSequenceLocationBuilder]
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
    addField('sequenceContext', sequenceContext);
    addField('coordinateInterval', coordinateInterval);
    addField('strand', strand);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'sequenceContext',
      'coordinateInterval',
      'strand',
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
      case 'sequenceContext':
        if (sequenceContext != null) {
          fields.add(sequenceContext!);
        }
      case 'coordinateInterval':
        if (coordinateInterval != null) {
          fields.add(coordinateInterval!);
        }
      case 'strand':
        if (strand != null) {
          fields.add(strand!);
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
      case 'sequenceContext':
        {
          if (child is ReferenceBuilder) {
            sequenceContext = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'coordinateInterval':
        {
          if (child is MolecularDefinitionCoordinateIntervalBuilder) {
            coordinateInterval = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'strand':
        {
          if (child is CodeableConceptBuilder) {
            strand = child;
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
      case 'sequenceContext':
        return ['ReferenceBuilder'];
      case 'coordinateInterval':
        return ['MolecularDefinitionCoordinateIntervalBuilder'];
      case 'strand':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularDefinitionSequenceLocationBuilder]
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
      case 'sequenceContext':
        {
          sequenceContext = ReferenceBuilder.empty();
          return;
        }
      case 'coordinateInterval':
        {
          coordinateInterval =
              MolecularDefinitionCoordinateIntervalBuilder.empty();
          return;
        }
      case 'strand':
        {
          strand = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MolecularDefinitionSequenceLocationBuilder clone() =>
      throw UnimplementedError();
  @override
  MolecularDefinitionSequenceLocationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ReferenceBuilder? sequenceContext,
    MolecularDefinitionCoordinateIntervalBuilder? coordinateInterval,
    CodeableConceptBuilder? strand,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MolecularDefinitionSequenceLocationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequenceContext: sequenceContext ?? this.sequenceContext,
      coordinateInterval: coordinateInterval ?? this.coordinateInterval,
      strand: strand ?? this.strand,
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
    if (o is! MolecularDefinitionSequenceLocationBuilder) {
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
      sequenceContext,
      o.sequenceContext,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      coordinateInterval,
      o.coordinateInterval,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      strand,
      o.strand,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionCoordinateIntervalBuilder]
/// An interval on a sequence, defined by coordinate-based start and end
/// coordinates.
class MolecularDefinitionCoordinateIntervalBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MolecularDefinitionCoordinateIntervalBuilder]

  MolecularDefinitionCoordinateIntervalBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.coordinateSystem,
    StartXMolecularDefinitionLocationSequenceLocationCoordinateIntervalBuilder?
        startX,
    QuantityBuilder? startQuantity,
    RangeBuilder? startRange,
    EndXMolecularDefinitionLocationSequenceLocationCoordinateIntervalBuilder?
        endX,
    QuantityBuilder? endQuantity,
    RangeBuilder? endRange,
    super.disallowExtensions,
  })  : startX = startX ?? startQuantity ?? startRange,
        endX = endX ?? endQuantity ?? endRange,
        super(
          objectPath:
              'MolecularDefinition.location.sequenceLocation.coordinateInterval',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MolecularDefinitionCoordinateIntervalBuilder.empty() =>
      MolecularDefinitionCoordinateIntervalBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionCoordinateIntervalBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath =
        'MolecularDefinition.location.sequenceLocation.coordinateInterval';
    return MolecularDefinitionCoordinateIntervalBuilder(
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
      coordinateSystem:
          JsonParser.parseObject<MolecularDefinitionCoordinateSystemBuilder>(
        json,
        'coordinateSystem',
        MolecularDefinitionCoordinateSystemBuilder.fromJson,
        '$objectPath.coordinateSystem',
      ),
      startX: JsonParser.parsePolymorphic<
          StartXMolecularDefinitionLocationSequenceLocationCoordinateIntervalBuilder>(
        json,
        {
          'startQuantity': QuantityBuilder.fromJson,
          'startRange': RangeBuilder.fromJson,
        },
        objectPath,
      ),
      endX: JsonParser.parsePolymorphic<
          EndXMolecularDefinitionLocationSequenceLocationCoordinateIntervalBuilder>(
        json,
        {
          'endQuantity': QuantityBuilder.fromJson,
          'endRange': RangeBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [MolecularDefinitionCoordinateIntervalBuilder]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionCoordinateIntervalBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionCoordinateIntervalBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionCoordinateIntervalBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionCoordinateIntervalBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionCoordinateIntervalBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionCoordinateIntervalBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionCoordinateIntervalBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionCoordinateInterval';

  /// [coordinateSystem]
  /// A definition of the coordinate system. Examples include 1-based
  /// character counting, and 0-based interval counting.
  MolecularDefinitionCoordinateSystemBuilder? coordinateSystem;

  /// [startX]
  /// The start location of the interval expressed as a precise coordinate
  /// (Quantity) or expressed as a range (Range) that is defined by low
  /// (range start) and high (range end). Open-ended ranges, where one end is
  /// unbounded, may be supported.
  StartXMolecularDefinitionLocationSequenceLocationCoordinateIntervalBuilder?
      startX;

  /// Getter for [startQuantity] as a QuantityBuilder
  QuantityBuilder? get startQuantity => startX?.isAs<QuantityBuilder>();

  /// Getter for [startRange] as a RangeBuilder
  RangeBuilder? get startRange => startX?.isAs<RangeBuilder>();

  /// [endX]
  /// The end location of the interval expressed as a precise coordinate
  /// (Quantity) or as a range (Range) that is defined by low (range start)
  /// and high (range end). Open-ended ranges, where one end is unbounded,
  /// may be supported..
  EndXMolecularDefinitionLocationSequenceLocationCoordinateIntervalBuilder?
      endX;

  /// Getter for [endQuantity] as a QuantityBuilder
  QuantityBuilder? get endQuantity => endX?.isAs<QuantityBuilder>();

  /// Getter for [endRange] as a RangeBuilder
  RangeBuilder? get endRange => endX?.isAs<RangeBuilder>();

  /// Converts a [MolecularDefinitionCoordinateIntervalBuilder]
  /// to [MolecularDefinitionCoordinateInterval]
  @override
  MolecularDefinitionCoordinateInterval build() =>
      MolecularDefinitionCoordinateInterval.fromJson(toJson());

  /// Converts a [MolecularDefinitionCoordinateIntervalBuilder]
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
    addField('coordinateSystem', coordinateSystem);
    if (startX != null) {
      final fhirType = startX!.fhirType;
      addField('start${fhirType.capitalizeFirstLetter()}', startX);
    }

    if (endX != null) {
      final fhirType = endX!.fhirType;
      addField('end${fhirType.capitalizeFirstLetter()}', endX);
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
      'coordinateSystem',
      'startX',
      'endX',
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
      case 'coordinateSystem':
        if (coordinateSystem != null) {
          fields.add(coordinateSystem!);
        }
      case 'start':
        if (startX != null) {
          fields.add(startX!);
        }
      case 'startX':
        if (startX != null) {
          fields.add(startX!);
        }
      case 'startQuantity':
        if (startX is QuantityBuilder) {
          fields.add(startX!);
        }
      case 'startRange':
        if (startX is RangeBuilder) {
          fields.add(startX!);
        }
      case 'end':
        if (endX != null) {
          fields.add(endX!);
        }
      case 'endX':
        if (endX != null) {
          fields.add(endX!);
        }
      case 'endQuantity':
        if (endX is QuantityBuilder) {
          fields.add(endX!);
        }
      case 'endRange':
        if (endX is RangeBuilder) {
          fields.add(endX!);
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
      case 'coordinateSystem':
        {
          if (child is MolecularDefinitionCoordinateSystemBuilder) {
            coordinateSystem = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'start':
      case 'startX':
        {
          if (child
              is StartXMolecularDefinitionLocationSequenceLocationCoordinateIntervalBuilder) {
            startX = child;
            return;
          } else {
            if (child is QuantityBuilder) {
              startX = child;
              return;
            }
            if (child is RangeBuilder) {
              startX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'startQuantity':
        {
          if (child is QuantityBuilder) {
            startX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'startRange':
        {
          if (child is RangeBuilder) {
            startX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'end':
      case 'endX':
        {
          if (child
              is EndXMolecularDefinitionLocationSequenceLocationCoordinateIntervalBuilder) {
            endX = child;
            return;
          } else {
            if (child is QuantityBuilder) {
              endX = child;
              return;
            }
            if (child is RangeBuilder) {
              endX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'endQuantity':
        {
          if (child is QuantityBuilder) {
            endX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'endRange':
        {
          if (child is RangeBuilder) {
            endX = child;
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
      case 'coordinateSystem':
        return ['MolecularDefinitionCoordinateSystemBuilder'];
      case 'start':
      case 'startX':
        return [
          'QuantityBuilder',
          'RangeBuilder',
        ];
      case 'startQuantity':
        return ['QuantityBuilder'];
      case 'startRange':
        return ['RangeBuilder'];
      case 'end':
      case 'endX':
        return [
          'QuantityBuilder',
          'RangeBuilder',
        ];
      case 'endQuantity':
        return ['QuantityBuilder'];
      case 'endRange':
        return ['RangeBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularDefinitionCoordinateIntervalBuilder]
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
      case 'coordinateSystem':
        {
          coordinateSystem = MolecularDefinitionCoordinateSystemBuilder.empty();
          return;
        }
      case 'start':
      case 'startX':
      case 'startQuantity':
        {
          startX = QuantityBuilder.empty();
          return;
        }
      case 'startRange':
        {
          startX = RangeBuilder.empty();
          return;
        }
      case 'end':
      case 'endX':
      case 'endQuantity':
        {
          endX = QuantityBuilder.empty();
          return;
        }
      case 'endRange':
        {
          endX = RangeBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MolecularDefinitionCoordinateIntervalBuilder clone() =>
      throw UnimplementedError();
  @override
  MolecularDefinitionCoordinateIntervalBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    MolecularDefinitionCoordinateSystemBuilder? coordinateSystem,
    StartXMolecularDefinitionLocationSequenceLocationCoordinateIntervalBuilder?
        startX,
    EndXMolecularDefinitionLocationSequenceLocationCoordinateIntervalBuilder?
        endX,
    QuantityBuilder? startQuantity,
    RangeBuilder? startRange,
    QuantityBuilder? endQuantity,
    RangeBuilder? endRange,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MolecularDefinitionCoordinateIntervalBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      coordinateSystem: coordinateSystem ?? this.coordinateSystem,
      startX: startX ?? startQuantity ?? startRange ?? this.startX,
      endX: endX ?? endQuantity ?? endRange ?? this.endX,
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
    if (o is! MolecularDefinitionCoordinateIntervalBuilder) {
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
      coordinateSystem,
      o.coordinateSystem,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      startX,
      o.startX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      endX,
      o.endX,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionCoordinateSystemBuilder]
/// A definition of the coordinate system. Examples include 1-based
/// character counting, and 0-based interval counting.
class MolecularDefinitionCoordinateSystemBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MolecularDefinitionCoordinateSystemBuilder]

  MolecularDefinitionCoordinateSystemBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.system,
    this.origin,
    this.normalizationMethod,
    super.disallowExtensions,
  }) : super(
          objectPath:
              'MolecularDefinition.location.sequenceLocation.coordinateInterval.coordinateSystem',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MolecularDefinitionCoordinateSystemBuilder.empty() =>
      MolecularDefinitionCoordinateSystemBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionCoordinateSystemBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath =
        'MolecularDefinition.location.sequenceLocation.coordinateInterval.coordinateSystem';
    return MolecularDefinitionCoordinateSystemBuilder(
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
      system: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'system',
        CodeableConceptBuilder.fromJson,
        '$objectPath.system',
      ),
      origin: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'origin',
        CodeableConceptBuilder.fromJson,
        '$objectPath.origin',
      ),
      normalizationMethod: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'normalizationMethod',
        CodeableConceptBuilder.fromJson,
        '$objectPath.normalizationMethod',
      ),
    );
  }

  /// Deserialize [MolecularDefinitionCoordinateSystemBuilder]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionCoordinateSystemBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionCoordinateSystemBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionCoordinateSystemBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionCoordinateSystemBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionCoordinateSystemBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionCoordinateSystemBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionCoordinateSystemBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionCoordinateSystem';

  /// [system]
  /// A definition of the coordinate system. Examples include 1-based
  /// character counting, and 0-based interval counting.
  CodeableConceptBuilder? system;

  /// [origin]
  /// The location of the origin (0 or 1, depending on the coordinate
  /// system). For example, this could specify the origin is at the start of
  /// the sequence (e.g., 5’ end or N-terminus), the beginning of a
  /// designated feature (e.g., A in the ATG translation initiation codon),
  /// or the end of a designated feature (e.g., 3’ end of an exon, from which
  /// an offset is calculated into the following intron).
  CodeableConceptBuilder? origin;

  /// [normalizationMethod]
  /// The normalization method used for determining a location within the
  /// coordinate system. Examples include left shift (e.g., VCF), right shift
  /// (e.g., HGVS), or fully justified (e.g., VOCA).
  CodeableConceptBuilder? normalizationMethod;

  /// Converts a [MolecularDefinitionCoordinateSystemBuilder]
  /// to [MolecularDefinitionCoordinateSystem]
  @override
  MolecularDefinitionCoordinateSystem build() =>
      MolecularDefinitionCoordinateSystem.fromJson(toJson());

  /// Converts a [MolecularDefinitionCoordinateSystemBuilder]
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
    addField('system', system);
    addField('origin', origin);
    addField('normalizationMethod', normalizationMethod);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'system',
      'origin',
      'normalizationMethod',
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
      case 'system':
        if (system != null) {
          fields.add(system!);
        }
      case 'origin':
        if (origin != null) {
          fields.add(origin!);
        }
      case 'normalizationMethod':
        if (normalizationMethod != null) {
          fields.add(normalizationMethod!);
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
      case 'system':
        {
          if (child is CodeableConceptBuilder) {
            system = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'origin':
        {
          if (child is CodeableConceptBuilder) {
            origin = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'normalizationMethod':
        {
          if (child is CodeableConceptBuilder) {
            normalizationMethod = child;
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
      case 'system':
        return ['CodeableConceptBuilder'];
      case 'origin':
        return ['CodeableConceptBuilder'];
      case 'normalizationMethod':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularDefinitionCoordinateSystemBuilder]
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
      case 'system':
        {
          system = CodeableConceptBuilder.empty();
          return;
        }
      case 'origin':
        {
          origin = CodeableConceptBuilder.empty();
          return;
        }
      case 'normalizationMethod':
        {
          normalizationMethod = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MolecularDefinitionCoordinateSystemBuilder clone() =>
      throw UnimplementedError();
  @override
  MolecularDefinitionCoordinateSystemBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? system,
    CodeableConceptBuilder? origin,
    CodeableConceptBuilder? normalizationMethod,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MolecularDefinitionCoordinateSystemBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      system: system ?? this.system,
      origin: origin ?? this.origin,
      normalizationMethod: normalizationMethod ?? this.normalizationMethod,
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
    if (o is! MolecularDefinitionCoordinateSystemBuilder) {
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
      system,
      o.system,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      origin,
      o.origin,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      normalizationMethod,
      o.normalizationMethod,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionCytobandLocationBuilder]
/// A location on a sequence, defined using cytobands.
class MolecularDefinitionCytobandLocationBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MolecularDefinitionCytobandLocationBuilder]

  MolecularDefinitionCytobandLocationBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.genomeAssembly,
    this.cytobandInterval,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MolecularDefinition.location.cytobandLocation',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MolecularDefinitionCytobandLocationBuilder.empty() =>
      MolecularDefinitionCytobandLocationBuilder(
        genomeAssembly: MolecularDefinitionGenomeAssemblyBuilder.empty(),
        cytobandInterval: MolecularDefinitionCytobandIntervalBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionCytobandLocationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MolecularDefinition.location.cytobandLocation';
    return MolecularDefinitionCytobandLocationBuilder(
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
      genomeAssembly:
          JsonParser.parseObject<MolecularDefinitionGenomeAssemblyBuilder>(
        json,
        'genomeAssembly',
        MolecularDefinitionGenomeAssemblyBuilder.fromJson,
        '$objectPath.genomeAssembly',
      ),
      cytobandInterval:
          JsonParser.parseObject<MolecularDefinitionCytobandIntervalBuilder>(
        json,
        'cytobandInterval',
        MolecularDefinitionCytobandIntervalBuilder.fromJson,
        '$objectPath.cytobandInterval',
      ),
    );
  }

  /// Deserialize [MolecularDefinitionCytobandLocationBuilder]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionCytobandLocationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionCytobandLocationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionCytobandLocationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionCytobandLocationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionCytobandLocationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionCytobandLocationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionCytobandLocationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionCytobandLocation';

  /// [genomeAssembly]
  /// The reference genome assemble.
  MolecularDefinitionGenomeAssemblyBuilder? genomeAssembly;

  /// [cytobandInterval]
  /// The Cytoband Interval.
  MolecularDefinitionCytobandIntervalBuilder? cytobandInterval;

  /// Converts a [MolecularDefinitionCytobandLocationBuilder]
  /// to [MolecularDefinitionCytobandLocation]
  @override
  MolecularDefinitionCytobandLocation build() =>
      MolecularDefinitionCytobandLocation.fromJson(toJson());

  /// Converts a [MolecularDefinitionCytobandLocationBuilder]
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
    addField('genomeAssembly', genomeAssembly);
    addField('cytobandInterval', cytobandInterval);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'genomeAssembly',
      'cytobandInterval',
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
      case 'genomeAssembly':
        if (genomeAssembly != null) {
          fields.add(genomeAssembly!);
        }
      case 'cytobandInterval':
        if (cytobandInterval != null) {
          fields.add(cytobandInterval!);
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
      case 'genomeAssembly':
        {
          if (child is MolecularDefinitionGenomeAssemblyBuilder) {
            genomeAssembly = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'cytobandInterval':
        {
          if (child is MolecularDefinitionCytobandIntervalBuilder) {
            cytobandInterval = child;
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
      case 'genomeAssembly':
        return ['MolecularDefinitionGenomeAssemblyBuilder'];
      case 'cytobandInterval':
        return ['MolecularDefinitionCytobandIntervalBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularDefinitionCytobandLocationBuilder]
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
      case 'genomeAssembly':
        {
          genomeAssembly = MolecularDefinitionGenomeAssemblyBuilder.empty();
          return;
        }
      case 'cytobandInterval':
        {
          cytobandInterval = MolecularDefinitionCytobandIntervalBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MolecularDefinitionCytobandLocationBuilder clone() =>
      throw UnimplementedError();
  @override
  MolecularDefinitionCytobandLocationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    MolecularDefinitionGenomeAssemblyBuilder? genomeAssembly,
    MolecularDefinitionCytobandIntervalBuilder? cytobandInterval,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MolecularDefinitionCytobandLocationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      genomeAssembly: genomeAssembly ?? this.genomeAssembly,
      cytobandInterval: cytobandInterval ?? this.cytobandInterval,
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
    if (o is! MolecularDefinitionCytobandLocationBuilder) {
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
      genomeAssembly,
      o.genomeAssembly,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      cytobandInterval,
      o.cytobandInterval,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionGenomeAssemblyBuilder]
/// The reference genome assemble.
class MolecularDefinitionGenomeAssemblyBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MolecularDefinitionGenomeAssemblyBuilder]

  MolecularDefinitionGenomeAssemblyBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.organism,
    this.build_,
    this.accession,
    DescriptionXMolecularDefinitionGenomeAssemblyBuilder? descriptionX,
    FhirMarkdownBuilder? descriptionMarkdown,
    FhirStringBuilder? descriptionString,
    super.disallowExtensions,
  })  : descriptionX = descriptionX ?? descriptionMarkdown ?? descriptionString,
        super(
          objectPath:
              'MolecularDefinition.location.cytobandLocation.genomeAssembly',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MolecularDefinitionGenomeAssemblyBuilder.empty() =>
      MolecularDefinitionGenomeAssemblyBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionGenomeAssemblyBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath =
        'MolecularDefinition.location.cytobandLocation.genomeAssembly';
    return MolecularDefinitionGenomeAssemblyBuilder(
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
      organism: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'organism',
        CodeableConceptBuilder.fromJson,
        '$objectPath.organism',
      ),
      build_: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'build',
        CodeableConceptBuilder.fromJson,
        '$objectPath.build',
      ),
      accession: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'accession',
        CodeableConceptBuilder.fromJson,
        '$objectPath.accession',
      ),
      descriptionX: JsonParser.parsePolymorphic<
          DescriptionXMolecularDefinitionGenomeAssemblyBuilder>(
        json,
        {
          'descriptionMarkdown': FhirMarkdownBuilder.fromJson,
          'descriptionString': FhirStringBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [MolecularDefinitionGenomeAssemblyBuilder]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionGenomeAssemblyBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionGenomeAssemblyBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionGenomeAssemblyBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionGenomeAssemblyBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionGenomeAssemblyBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionGenomeAssemblyBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionGenomeAssemblyBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionGenomeAssembly';

  /// [organism]
  /// Species of the organism.
  CodeableConceptBuilder? organism;

  /// [build]
  /// The build number of this genome assemble.
  CodeableConceptBuilder? build_;

  /// [accession]
  /// The accession of this genome assemble.
  CodeableConceptBuilder? accession;

  /// [descriptionX]
  /// The description of this genome assembly.
  DescriptionXMolecularDefinitionGenomeAssemblyBuilder? descriptionX;

  /// Getter for [descriptionMarkdown] as a FhirMarkdownBuilder
  FhirMarkdownBuilder? get descriptionMarkdown =>
      descriptionX?.isAs<FhirMarkdownBuilder>();

  /// Getter for [descriptionString] as a FhirStringBuilder
  FhirStringBuilder? get descriptionString =>
      descriptionX?.isAs<FhirStringBuilder>();

  /// Converts a [MolecularDefinitionGenomeAssemblyBuilder]
  /// to [MolecularDefinitionGenomeAssembly]
  @override
  MolecularDefinitionGenomeAssembly build() =>
      MolecularDefinitionGenomeAssembly.fromJson(toJson());

  /// Converts a [MolecularDefinitionGenomeAssemblyBuilder]
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
    addField('organism', organism);
    addField('build', build_);
    addField('accession', accession);
    if (descriptionX != null) {
      final fhirType = descriptionX!.fhirType;
      addField('description${fhirType.capitalizeFirstLetter()}', descriptionX);
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
      'organism',
      'build',
      'accession',
      'descriptionX',
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
      case 'organism':
        if (organism != null) {
          fields.add(organism!);
        }
      case 'build':
        if (build_ != null) {
          fields.add(build_!);
        }
      case 'accession':
        if (accession != null) {
          fields.add(accession!);
        }
      case 'description':
        if (descriptionX != null) {
          fields.add(descriptionX!);
        }
      case 'descriptionX':
        if (descriptionX != null) {
          fields.add(descriptionX!);
        }
      case 'descriptionMarkdown':
        if (descriptionX is FhirMarkdownBuilder) {
          fields.add(descriptionX!);
        }
      case 'descriptionString':
        if (descriptionX is FhirStringBuilder) {
          fields.add(descriptionX!);
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
      case 'organism':
        {
          if (child is CodeableConceptBuilder) {
            organism = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'build':
        {
          if (child is CodeableConceptBuilder) {
            build_ = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'accession':
        {
          if (child is CodeableConceptBuilder) {
            accession = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
      case 'descriptionX':
        {
          if (child is DescriptionXMolecularDefinitionGenomeAssemblyBuilder) {
            descriptionX = child;
            return;
          } else {
            if (child is FhirMarkdownBuilder) {
              descriptionX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              descriptionX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'descriptionMarkdown':
        {
          if (child is FhirMarkdownBuilder) {
            descriptionX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'descriptionString':
        {
          if (child is FhirStringBuilder) {
            descriptionX = child;
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
      case 'organism':
        return ['CodeableConceptBuilder'];
      case 'build':
        return ['CodeableConceptBuilder'];
      case 'accession':
        return ['CodeableConceptBuilder'];
      case 'description':
      case 'descriptionX':
        return [
          'FhirMarkdownBuilder',
          'FhirStringBuilder',
        ];
      case 'descriptionMarkdown':
        return ['FhirMarkdownBuilder'];
      case 'descriptionString':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularDefinitionGenomeAssemblyBuilder]
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
      case 'organism':
        {
          organism = CodeableConceptBuilder.empty();
          return;
        }
      case 'build':
        {
          build_ = CodeableConceptBuilder.empty();
          return;
        }
      case 'accession':
        {
          accession = CodeableConceptBuilder.empty();
          return;
        }
      case 'description':
      case 'descriptionX':
      case 'descriptionMarkdown':
        {
          descriptionX = FhirMarkdownBuilder.empty();
          return;
        }
      case 'descriptionString':
        {
          descriptionX = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MolecularDefinitionGenomeAssemblyBuilder clone() =>
      throw UnimplementedError();
  @override
  MolecularDefinitionGenomeAssemblyBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? organism,
    CodeableConceptBuilder? build,
    CodeableConceptBuilder? accession,
    DescriptionXMolecularDefinitionGenomeAssemblyBuilder? descriptionX,
    FhirMarkdownBuilder? descriptionMarkdown,
    FhirStringBuilder? descriptionString,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MolecularDefinitionGenomeAssemblyBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      organism: organism ?? this.organism,
      build_: build ?? build_,
      accession: accession ?? this.accession,
      descriptionX: descriptionX ??
          descriptionMarkdown ??
          descriptionString ??
          this.descriptionX,
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
    if (o is! MolecularDefinitionGenomeAssemblyBuilder) {
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
      organism,
      o.organism,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      build_,
      o.build_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      accession,
      o.accession,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      descriptionX,
      o.descriptionX,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionCytobandIntervalBuilder]
/// The Cytoband Interval.
class MolecularDefinitionCytobandIntervalBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MolecularDefinitionCytobandIntervalBuilder]

  MolecularDefinitionCytobandIntervalBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.chromosome,
    this.startCytoband,
    this.endCytoband,
    super.disallowExtensions,
  }) : super(
          objectPath:
              'MolecularDefinition.location.cytobandLocation.cytobandInterval',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MolecularDefinitionCytobandIntervalBuilder.empty() =>
      MolecularDefinitionCytobandIntervalBuilder(
        chromosome: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionCytobandIntervalBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath =
        'MolecularDefinition.location.cytobandLocation.cytobandInterval';
    return MolecularDefinitionCytobandIntervalBuilder(
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
      chromosome: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'chromosome',
        CodeableConceptBuilder.fromJson,
        '$objectPath.chromosome',
      ),
      startCytoband:
          JsonParser.parseObject<MolecularDefinitionStartCytobandBuilder>(
        json,
        'startCytoband',
        MolecularDefinitionStartCytobandBuilder.fromJson,
        '$objectPath.startCytoband',
      ),
      endCytoband:
          JsonParser.parseObject<MolecularDefinitionEndCytobandBuilder>(
        json,
        'endCytoband',
        MolecularDefinitionEndCytobandBuilder.fromJson,
        '$objectPath.endCytoband',
      ),
    );
  }

  /// Deserialize [MolecularDefinitionCytobandIntervalBuilder]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionCytobandIntervalBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionCytobandIntervalBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionCytobandIntervalBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionCytobandIntervalBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionCytobandIntervalBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionCytobandIntervalBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionCytobandIntervalBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionCytobandInterval';

  /// [chromosome]
  /// The chromosome where this cytoband interval occurs.
  CodeableConceptBuilder? chromosome;

  /// [startCytoband]
  /// The start of this cytoband Interval.
  MolecularDefinitionStartCytobandBuilder? startCytoband;

  /// [endCytoband]
  /// The end of this cytoband Interval.
  MolecularDefinitionEndCytobandBuilder? endCytoband;

  /// Converts a [MolecularDefinitionCytobandIntervalBuilder]
  /// to [MolecularDefinitionCytobandInterval]
  @override
  MolecularDefinitionCytobandInterval build() =>
      MolecularDefinitionCytobandInterval.fromJson(toJson());

  /// Converts a [MolecularDefinitionCytobandIntervalBuilder]
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
    addField('chromosome', chromosome);
    addField('startCytoband', startCytoband);
    addField('endCytoband', endCytoband);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'chromosome',
      'startCytoband',
      'endCytoband',
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
      case 'chromosome':
        if (chromosome != null) {
          fields.add(chromosome!);
        }
      case 'startCytoband':
        if (startCytoband != null) {
          fields.add(startCytoband!);
        }
      case 'endCytoband':
        if (endCytoband != null) {
          fields.add(endCytoband!);
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
      case 'chromosome':
        {
          if (child is CodeableConceptBuilder) {
            chromosome = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'startCytoband':
        {
          if (child is MolecularDefinitionStartCytobandBuilder) {
            startCytoband = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'endCytoband':
        {
          if (child is MolecularDefinitionEndCytobandBuilder) {
            endCytoband = child;
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
      case 'chromosome':
        return ['CodeableConceptBuilder'];
      case 'startCytoband':
        return ['MolecularDefinitionStartCytobandBuilder'];
      case 'endCytoband':
        return ['MolecularDefinitionEndCytobandBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularDefinitionCytobandIntervalBuilder]
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
      case 'chromosome':
        {
          chromosome = CodeableConceptBuilder.empty();
          return;
        }
      case 'startCytoband':
        {
          startCytoband = MolecularDefinitionStartCytobandBuilder.empty();
          return;
        }
      case 'endCytoband':
        {
          endCytoband = MolecularDefinitionEndCytobandBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MolecularDefinitionCytobandIntervalBuilder clone() =>
      throw UnimplementedError();
  @override
  MolecularDefinitionCytobandIntervalBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? chromosome,
    MolecularDefinitionStartCytobandBuilder? startCytoband,
    MolecularDefinitionEndCytobandBuilder? endCytoband,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MolecularDefinitionCytobandIntervalBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      chromosome: chromosome ?? this.chromosome,
      startCytoband: startCytoband ?? this.startCytoband,
      endCytoband: endCytoband ?? this.endCytoband,
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
    if (o is! MolecularDefinitionCytobandIntervalBuilder) {
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
      chromosome,
      o.chromosome,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      startCytoband,
      o.startCytoband,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      endCytoband,
      o.endCytoband,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionStartCytobandBuilder]
/// The start of this cytoband Interval.
class MolecularDefinitionStartCytobandBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MolecularDefinitionStartCytobandBuilder]

  MolecularDefinitionStartCytobandBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    ArmXMolecularDefinitionStartCytobandBuilder? armX,
    FhirCodeBuilder? armCode,
    FhirStringBuilder? armString,
    RegionXMolecularDefinitionStartCytobandBuilder? regionX,
    FhirCodeBuilder? regionCode,
    FhirStringBuilder? regionString,
    BandXMolecularDefinitionStartCytobandBuilder? bandX,
    FhirCodeBuilder? bandCode,
    FhirStringBuilder? bandString,
    SubBandXMolecularDefinitionStartCytobandBuilder? subBandX,
    FhirCodeBuilder? subBandCode,
    FhirStringBuilder? subBandString,
    super.disallowExtensions,
  })  : armX = armX ?? armCode ?? armString,
        regionX = regionX ?? regionCode ?? regionString,
        bandX = bandX ?? bandCode ?? bandString,
        subBandX = subBandX ?? subBandCode ?? subBandString,
        super(
          objectPath:
              'MolecularDefinition.location.cytobandLocation.cytobandInterval.startCytoband',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MolecularDefinitionStartCytobandBuilder.empty() =>
      MolecularDefinitionStartCytobandBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionStartCytobandBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath =
        'MolecularDefinition.location.cytobandLocation.cytobandInterval.startCytoband';
    return MolecularDefinitionStartCytobandBuilder(
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
      armX: JsonParser.parsePolymorphic<
          ArmXMolecularDefinitionStartCytobandBuilder>(
        json,
        {
          'armCode': FhirCodeBuilder.fromJson,
          'armString': FhirStringBuilder.fromJson,
        },
        objectPath,
      ),
      regionX: JsonParser.parsePolymorphic<
          RegionXMolecularDefinitionStartCytobandBuilder>(
        json,
        {
          'regionCode': FhirCodeBuilder.fromJson,
          'regionString': FhirStringBuilder.fromJson,
        },
        objectPath,
      ),
      bandX: JsonParser.parsePolymorphic<
          BandXMolecularDefinitionStartCytobandBuilder>(
        json,
        {
          'bandCode': FhirCodeBuilder.fromJson,
          'bandString': FhirStringBuilder.fromJson,
        },
        objectPath,
      ),
      subBandX: JsonParser.parsePolymorphic<
          SubBandXMolecularDefinitionStartCytobandBuilder>(
        json,
        {
          'subBandCode': FhirCodeBuilder.fromJson,
          'subBandString': FhirStringBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [MolecularDefinitionStartCytobandBuilder]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionStartCytobandBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionStartCytobandBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionStartCytobandBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionStartCytobandBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionStartCytobandBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionStartCytobandBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionStartCytobandBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionStartCytoband';

  /// [armX]
  /// The arm of this start interval.
  ArmXMolecularDefinitionStartCytobandBuilder? armX;

  /// Getter for [armCode] as a FhirCodeBuilder
  FhirCodeBuilder? get armCode => armX?.isAs<FhirCodeBuilder>();

  /// Getter for [armString] as a FhirStringBuilder
  FhirStringBuilder? get armString => armX?.isAs<FhirStringBuilder>();

  /// [regionX]
  /// The region of this start interval.
  RegionXMolecularDefinitionStartCytobandBuilder? regionX;

  /// Getter for [regionCode] as a FhirCodeBuilder
  FhirCodeBuilder? get regionCode => regionX?.isAs<FhirCodeBuilder>();

  /// Getter for [regionString] as a FhirStringBuilder
  FhirStringBuilder? get regionString => regionX?.isAs<FhirStringBuilder>();

  /// [bandX]
  /// The band of this start interval.
  BandXMolecularDefinitionStartCytobandBuilder? bandX;

  /// Getter for [bandCode] as a FhirCodeBuilder
  FhirCodeBuilder? get bandCode => bandX?.isAs<FhirCodeBuilder>();

  /// Getter for [bandString] as a FhirStringBuilder
  FhirStringBuilder? get bandString => bandX?.isAs<FhirStringBuilder>();

  /// [subBandX]
  /// The sub-band of this start interval.
  SubBandXMolecularDefinitionStartCytobandBuilder? subBandX;

  /// Getter for [subBandCode] as a FhirCodeBuilder
  FhirCodeBuilder? get subBandCode => subBandX?.isAs<FhirCodeBuilder>();

  /// Getter for [subBandString] as a FhirStringBuilder
  FhirStringBuilder? get subBandString => subBandX?.isAs<FhirStringBuilder>();

  /// Converts a [MolecularDefinitionStartCytobandBuilder]
  /// to [MolecularDefinitionStartCytoband]
  @override
  MolecularDefinitionStartCytoband build() =>
      MolecularDefinitionStartCytoband.fromJson(toJson());

  /// Converts a [MolecularDefinitionStartCytobandBuilder]
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
    if (armX != null) {
      final fhirType = armX!.fhirType;
      addField('arm${fhirType.capitalizeFirstLetter()}', armX);
    }

    if (regionX != null) {
      final fhirType = regionX!.fhirType;
      addField('region${fhirType.capitalizeFirstLetter()}', regionX);
    }

    if (bandX != null) {
      final fhirType = bandX!.fhirType;
      addField('band${fhirType.capitalizeFirstLetter()}', bandX);
    }

    if (subBandX != null) {
      final fhirType = subBandX!.fhirType;
      addField('subBand${fhirType.capitalizeFirstLetter()}', subBandX);
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
      'armX',
      'regionX',
      'bandX',
      'subBandX',
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
      case 'arm':
        if (armX != null) {
          fields.add(armX!);
        }
      case 'armX':
        if (armX != null) {
          fields.add(armX!);
        }
      case 'armCode':
        if (armX is FhirCodeBuilder) {
          fields.add(armX!);
        }
      case 'armString':
        if (armX is FhirStringBuilder) {
          fields.add(armX!);
        }
      case 'region':
        if (regionX != null) {
          fields.add(regionX!);
        }
      case 'regionX':
        if (regionX != null) {
          fields.add(regionX!);
        }
      case 'regionCode':
        if (regionX is FhirCodeBuilder) {
          fields.add(regionX!);
        }
      case 'regionString':
        if (regionX is FhirStringBuilder) {
          fields.add(regionX!);
        }
      case 'band':
        if (bandX != null) {
          fields.add(bandX!);
        }
      case 'bandX':
        if (bandX != null) {
          fields.add(bandX!);
        }
      case 'bandCode':
        if (bandX is FhirCodeBuilder) {
          fields.add(bandX!);
        }
      case 'bandString':
        if (bandX is FhirStringBuilder) {
          fields.add(bandX!);
        }
      case 'subBand':
        if (subBandX != null) {
          fields.add(subBandX!);
        }
      case 'subBandX':
        if (subBandX != null) {
          fields.add(subBandX!);
        }
      case 'subBandCode':
        if (subBandX is FhirCodeBuilder) {
          fields.add(subBandX!);
        }
      case 'subBandString':
        if (subBandX is FhirStringBuilder) {
          fields.add(subBandX!);
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
      case 'arm':
      case 'armX':
        {
          if (child is ArmXMolecularDefinitionStartCytobandBuilder) {
            armX = child;
            return;
          } else {
            if (child is FhirCodeBuilder) {
              armX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              armX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'armCode':
        {
          if (child is FhirCodeBuilder) {
            armX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'armString':
        {
          if (child is FhirStringBuilder) {
            armX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'region':
      case 'regionX':
        {
          if (child is RegionXMolecularDefinitionStartCytobandBuilder) {
            regionX = child;
            return;
          } else {
            if (child is FhirCodeBuilder) {
              regionX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              regionX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'regionCode':
        {
          if (child is FhirCodeBuilder) {
            regionX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'regionString':
        {
          if (child is FhirStringBuilder) {
            regionX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'band':
      case 'bandX':
        {
          if (child is BandXMolecularDefinitionStartCytobandBuilder) {
            bandX = child;
            return;
          } else {
            if (child is FhirCodeBuilder) {
              bandX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              bandX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'bandCode':
        {
          if (child is FhirCodeBuilder) {
            bandX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'bandString':
        {
          if (child is FhirStringBuilder) {
            bandX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subBand':
      case 'subBandX':
        {
          if (child is SubBandXMolecularDefinitionStartCytobandBuilder) {
            subBandX = child;
            return;
          } else {
            if (child is FhirCodeBuilder) {
              subBandX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              subBandX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subBandCode':
        {
          if (child is FhirCodeBuilder) {
            subBandX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subBandString':
        {
          if (child is FhirStringBuilder) {
            subBandX = child;
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
      case 'arm':
      case 'armX':
        return [
          'FhirCodeBuilder',
          'FhirStringBuilder',
        ];
      case 'armCode':
        return ['FhirCodeBuilder'];
      case 'armString':
        return ['FhirStringBuilder'];
      case 'region':
      case 'regionX':
        return [
          'FhirCodeBuilder',
          'FhirStringBuilder',
        ];
      case 'regionCode':
        return ['FhirCodeBuilder'];
      case 'regionString':
        return ['FhirStringBuilder'];
      case 'band':
      case 'bandX':
        return [
          'FhirCodeBuilder',
          'FhirStringBuilder',
        ];
      case 'bandCode':
        return ['FhirCodeBuilder'];
      case 'bandString':
        return ['FhirStringBuilder'];
      case 'subBand':
      case 'subBandX':
        return [
          'FhirCodeBuilder',
          'FhirStringBuilder',
        ];
      case 'subBandCode':
        return ['FhirCodeBuilder'];
      case 'subBandString':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularDefinitionStartCytobandBuilder]
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
      case 'arm':
      case 'armX':
      case 'armCode':
        {
          armX = FhirCodeBuilder.empty();
          return;
        }
      case 'armString':
        {
          armX = FhirStringBuilder.empty();
          return;
        }
      case 'region':
      case 'regionX':
      case 'regionCode':
        {
          regionX = FhirCodeBuilder.empty();
          return;
        }
      case 'regionString':
        {
          regionX = FhirStringBuilder.empty();
          return;
        }
      case 'band':
      case 'bandX':
      case 'bandCode':
        {
          bandX = FhirCodeBuilder.empty();
          return;
        }
      case 'bandString':
        {
          bandX = FhirStringBuilder.empty();
          return;
        }
      case 'subBand':
      case 'subBandX':
      case 'subBandCode':
        {
          subBandX = FhirCodeBuilder.empty();
          return;
        }
      case 'subBandString':
        {
          subBandX = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MolecularDefinitionStartCytobandBuilder clone() => throw UnimplementedError();
  @override
  MolecularDefinitionStartCytobandBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ArmXMolecularDefinitionStartCytobandBuilder? armX,
    RegionXMolecularDefinitionStartCytobandBuilder? regionX,
    BandXMolecularDefinitionStartCytobandBuilder? bandX,
    SubBandXMolecularDefinitionStartCytobandBuilder? subBandX,
    FhirCodeBuilder? armCode,
    FhirStringBuilder? armString,
    FhirCodeBuilder? regionCode,
    FhirStringBuilder? regionString,
    FhirCodeBuilder? bandCode,
    FhirStringBuilder? bandString,
    FhirCodeBuilder? subBandCode,
    FhirStringBuilder? subBandString,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MolecularDefinitionStartCytobandBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      armX: armX ?? armCode ?? armString ?? this.armX,
      regionX: regionX ?? regionCode ?? regionString ?? this.regionX,
      bandX: bandX ?? bandCode ?? bandString ?? this.bandX,
      subBandX: subBandX ?? subBandCode ?? subBandString ?? this.subBandX,
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
    if (o is! MolecularDefinitionStartCytobandBuilder) {
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
      armX,
      o.armX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      regionX,
      o.regionX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      bandX,
      o.bandX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      subBandX,
      o.subBandX,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionEndCytobandBuilder]
/// The end of this cytoband Interval.
class MolecularDefinitionEndCytobandBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MolecularDefinitionEndCytobandBuilder]

  MolecularDefinitionEndCytobandBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    ArmXMolecularDefinitionEndCytobandBuilder? armX,
    FhirCodeBuilder? armCode,
    FhirStringBuilder? armString,
    RegionXMolecularDefinitionEndCytobandBuilder? regionX,
    FhirCodeBuilder? regionCode,
    FhirStringBuilder? regionString,
    BandXMolecularDefinitionEndCytobandBuilder? bandX,
    FhirCodeBuilder? bandCode,
    FhirStringBuilder? bandString,
    SubBandXMolecularDefinitionEndCytobandBuilder? subBandX,
    FhirCodeBuilder? subBandCode,
    FhirStringBuilder? subBandString,
    super.disallowExtensions,
  })  : armX = armX ?? armCode ?? armString,
        regionX = regionX ?? regionCode ?? regionString,
        bandX = bandX ?? bandCode ?? bandString,
        subBandX = subBandX ?? subBandCode ?? subBandString,
        super(
          objectPath:
              'MolecularDefinition.location.cytobandLocation.cytobandInterval.endCytoband',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MolecularDefinitionEndCytobandBuilder.empty() =>
      MolecularDefinitionEndCytobandBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionEndCytobandBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath =
        'MolecularDefinition.location.cytobandLocation.cytobandInterval.endCytoband';
    return MolecularDefinitionEndCytobandBuilder(
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
      armX: JsonParser.parsePolymorphic<
          ArmXMolecularDefinitionEndCytobandBuilder>(
        json,
        {
          'armCode': FhirCodeBuilder.fromJson,
          'armString': FhirStringBuilder.fromJson,
        },
        objectPath,
      ),
      regionX: JsonParser.parsePolymorphic<
          RegionXMolecularDefinitionEndCytobandBuilder>(
        json,
        {
          'regionCode': FhirCodeBuilder.fromJson,
          'regionString': FhirStringBuilder.fromJson,
        },
        objectPath,
      ),
      bandX: JsonParser.parsePolymorphic<
          BandXMolecularDefinitionEndCytobandBuilder>(
        json,
        {
          'bandCode': FhirCodeBuilder.fromJson,
          'bandString': FhirStringBuilder.fromJson,
        },
        objectPath,
      ),
      subBandX: JsonParser.parsePolymorphic<
          SubBandXMolecularDefinitionEndCytobandBuilder>(
        json,
        {
          'subBandCode': FhirCodeBuilder.fromJson,
          'subBandString': FhirStringBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [MolecularDefinitionEndCytobandBuilder]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionEndCytobandBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionEndCytobandBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionEndCytobandBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionEndCytobandBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionEndCytobandBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionEndCytobandBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionEndCytobandBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionEndCytoband';

  /// [armX]
  /// The arm of this end interval.
  ArmXMolecularDefinitionEndCytobandBuilder? armX;

  /// Getter for [armCode] as a FhirCodeBuilder
  FhirCodeBuilder? get armCode => armX?.isAs<FhirCodeBuilder>();

  /// Getter for [armString] as a FhirStringBuilder
  FhirStringBuilder? get armString => armX?.isAs<FhirStringBuilder>();

  /// [regionX]
  /// The region of this end interval.
  RegionXMolecularDefinitionEndCytobandBuilder? regionX;

  /// Getter for [regionCode] as a FhirCodeBuilder
  FhirCodeBuilder? get regionCode => regionX?.isAs<FhirCodeBuilder>();

  /// Getter for [regionString] as a FhirStringBuilder
  FhirStringBuilder? get regionString => regionX?.isAs<FhirStringBuilder>();

  /// [bandX]
  /// The band of this end interval.
  BandXMolecularDefinitionEndCytobandBuilder? bandX;

  /// Getter for [bandCode] as a FhirCodeBuilder
  FhirCodeBuilder? get bandCode => bandX?.isAs<FhirCodeBuilder>();

  /// Getter for [bandString] as a FhirStringBuilder
  FhirStringBuilder? get bandString => bandX?.isAs<FhirStringBuilder>();

  /// [subBandX]
  /// The sub-band of this end interval.
  SubBandXMolecularDefinitionEndCytobandBuilder? subBandX;

  /// Getter for [subBandCode] as a FhirCodeBuilder
  FhirCodeBuilder? get subBandCode => subBandX?.isAs<FhirCodeBuilder>();

  /// Getter for [subBandString] as a FhirStringBuilder
  FhirStringBuilder? get subBandString => subBandX?.isAs<FhirStringBuilder>();

  /// Converts a [MolecularDefinitionEndCytobandBuilder]
  /// to [MolecularDefinitionEndCytoband]
  @override
  MolecularDefinitionEndCytoband build() =>
      MolecularDefinitionEndCytoband.fromJson(toJson());

  /// Converts a [MolecularDefinitionEndCytobandBuilder]
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
    if (armX != null) {
      final fhirType = armX!.fhirType;
      addField('arm${fhirType.capitalizeFirstLetter()}', armX);
    }

    if (regionX != null) {
      final fhirType = regionX!.fhirType;
      addField('region${fhirType.capitalizeFirstLetter()}', regionX);
    }

    if (bandX != null) {
      final fhirType = bandX!.fhirType;
      addField('band${fhirType.capitalizeFirstLetter()}', bandX);
    }

    if (subBandX != null) {
      final fhirType = subBandX!.fhirType;
      addField('subBand${fhirType.capitalizeFirstLetter()}', subBandX);
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
      'armX',
      'regionX',
      'bandX',
      'subBandX',
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
      case 'arm':
        if (armX != null) {
          fields.add(armX!);
        }
      case 'armX':
        if (armX != null) {
          fields.add(armX!);
        }
      case 'armCode':
        if (armX is FhirCodeBuilder) {
          fields.add(armX!);
        }
      case 'armString':
        if (armX is FhirStringBuilder) {
          fields.add(armX!);
        }
      case 'region':
        if (regionX != null) {
          fields.add(regionX!);
        }
      case 'regionX':
        if (regionX != null) {
          fields.add(regionX!);
        }
      case 'regionCode':
        if (regionX is FhirCodeBuilder) {
          fields.add(regionX!);
        }
      case 'regionString':
        if (regionX is FhirStringBuilder) {
          fields.add(regionX!);
        }
      case 'band':
        if (bandX != null) {
          fields.add(bandX!);
        }
      case 'bandX':
        if (bandX != null) {
          fields.add(bandX!);
        }
      case 'bandCode':
        if (bandX is FhirCodeBuilder) {
          fields.add(bandX!);
        }
      case 'bandString':
        if (bandX is FhirStringBuilder) {
          fields.add(bandX!);
        }
      case 'subBand':
        if (subBandX != null) {
          fields.add(subBandX!);
        }
      case 'subBandX':
        if (subBandX != null) {
          fields.add(subBandX!);
        }
      case 'subBandCode':
        if (subBandX is FhirCodeBuilder) {
          fields.add(subBandX!);
        }
      case 'subBandString':
        if (subBandX is FhirStringBuilder) {
          fields.add(subBandX!);
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
      case 'arm':
      case 'armX':
        {
          if (child is ArmXMolecularDefinitionEndCytobandBuilder) {
            armX = child;
            return;
          } else {
            if (child is FhirCodeBuilder) {
              armX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              armX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'armCode':
        {
          if (child is FhirCodeBuilder) {
            armX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'armString':
        {
          if (child is FhirStringBuilder) {
            armX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'region':
      case 'regionX':
        {
          if (child is RegionXMolecularDefinitionEndCytobandBuilder) {
            regionX = child;
            return;
          } else {
            if (child is FhirCodeBuilder) {
              regionX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              regionX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'regionCode':
        {
          if (child is FhirCodeBuilder) {
            regionX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'regionString':
        {
          if (child is FhirStringBuilder) {
            regionX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'band':
      case 'bandX':
        {
          if (child is BandXMolecularDefinitionEndCytobandBuilder) {
            bandX = child;
            return;
          } else {
            if (child is FhirCodeBuilder) {
              bandX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              bandX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'bandCode':
        {
          if (child is FhirCodeBuilder) {
            bandX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'bandString':
        {
          if (child is FhirStringBuilder) {
            bandX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subBand':
      case 'subBandX':
        {
          if (child is SubBandXMolecularDefinitionEndCytobandBuilder) {
            subBandX = child;
            return;
          } else {
            if (child is FhirCodeBuilder) {
              subBandX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              subBandX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subBandCode':
        {
          if (child is FhirCodeBuilder) {
            subBandX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subBandString':
        {
          if (child is FhirStringBuilder) {
            subBandX = child;
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
      case 'arm':
      case 'armX':
        return [
          'FhirCodeBuilder',
          'FhirStringBuilder',
        ];
      case 'armCode':
        return ['FhirCodeBuilder'];
      case 'armString':
        return ['FhirStringBuilder'];
      case 'region':
      case 'regionX':
        return [
          'FhirCodeBuilder',
          'FhirStringBuilder',
        ];
      case 'regionCode':
        return ['FhirCodeBuilder'];
      case 'regionString':
        return ['FhirStringBuilder'];
      case 'band':
      case 'bandX':
        return [
          'FhirCodeBuilder',
          'FhirStringBuilder',
        ];
      case 'bandCode':
        return ['FhirCodeBuilder'];
      case 'bandString':
        return ['FhirStringBuilder'];
      case 'subBand':
      case 'subBandX':
        return [
          'FhirCodeBuilder',
          'FhirStringBuilder',
        ];
      case 'subBandCode':
        return ['FhirCodeBuilder'];
      case 'subBandString':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularDefinitionEndCytobandBuilder]
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
      case 'arm':
      case 'armX':
      case 'armCode':
        {
          armX = FhirCodeBuilder.empty();
          return;
        }
      case 'armString':
        {
          armX = FhirStringBuilder.empty();
          return;
        }
      case 'region':
      case 'regionX':
      case 'regionCode':
        {
          regionX = FhirCodeBuilder.empty();
          return;
        }
      case 'regionString':
        {
          regionX = FhirStringBuilder.empty();
          return;
        }
      case 'band':
      case 'bandX':
      case 'bandCode':
        {
          bandX = FhirCodeBuilder.empty();
          return;
        }
      case 'bandString':
        {
          bandX = FhirStringBuilder.empty();
          return;
        }
      case 'subBand':
      case 'subBandX':
      case 'subBandCode':
        {
          subBandX = FhirCodeBuilder.empty();
          return;
        }
      case 'subBandString':
        {
          subBandX = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MolecularDefinitionEndCytobandBuilder clone() => throw UnimplementedError();
  @override
  MolecularDefinitionEndCytobandBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ArmXMolecularDefinitionEndCytobandBuilder? armX,
    RegionXMolecularDefinitionEndCytobandBuilder? regionX,
    BandXMolecularDefinitionEndCytobandBuilder? bandX,
    SubBandXMolecularDefinitionEndCytobandBuilder? subBandX,
    FhirCodeBuilder? armCode,
    FhirStringBuilder? armString,
    FhirCodeBuilder? regionCode,
    FhirStringBuilder? regionString,
    FhirCodeBuilder? bandCode,
    FhirStringBuilder? bandString,
    FhirCodeBuilder? subBandCode,
    FhirStringBuilder? subBandString,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MolecularDefinitionEndCytobandBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      armX: armX ?? armCode ?? armString ?? this.armX,
      regionX: regionX ?? regionCode ?? regionString ?? this.regionX,
      bandX: bandX ?? bandCode ?? bandString ?? this.bandX,
      subBandX: subBandX ?? subBandCode ?? subBandString ?? this.subBandX,
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
    if (o is! MolecularDefinitionEndCytobandBuilder) {
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
      armX,
      o.armX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      regionX,
      o.regionX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      bandX,
      o.bandX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      subBandX,
      o.subBandX,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionRepresentationBuilder]
/// A representation of a molecular entity, specifically including
/// sequence. Note this element is intended to define the entity primarily
/// through computable, discrete elements that express domain semantics
/// rather than replicating a particular file format or relational schema.
class MolecularDefinitionRepresentationBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MolecularDefinitionRepresentationBuilder]

  MolecularDefinitionRepresentationBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.focus,
    this.code,
    this.literal,
    this.resolvable,
    this.extracted,
    this.repeated,
    this.concatenated,
    this.relative,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MolecularDefinition.representation',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MolecularDefinitionRepresentationBuilder.empty() =>
      MolecularDefinitionRepresentationBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionRepresentationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MolecularDefinition.representation';
    return MolecularDefinitionRepresentationBuilder(
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
      focus: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'focus',
        CodeableConceptBuilder.fromJson,
        '$objectPath.focus',
      ),
      code: (json['code'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.code',
              },
            ),
          )
          .toList(),
      literal: JsonParser.parseObject<MolecularDefinitionLiteralBuilder>(
        json,
        'literal',
        MolecularDefinitionLiteralBuilder.fromJson,
        '$objectPath.literal',
      ),
      resolvable: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'resolvable',
        ReferenceBuilder.fromJson,
        '$objectPath.resolvable',
      ),
      extracted: JsonParser.parseObject<MolecularDefinitionExtractedBuilder>(
        json,
        'extracted',
        MolecularDefinitionExtractedBuilder.fromJson,
        '$objectPath.extracted',
      ),
      repeated: JsonParser.parseObject<MolecularDefinitionRepeatedBuilder>(
        json,
        'repeated',
        MolecularDefinitionRepeatedBuilder.fromJson,
        '$objectPath.repeated',
      ),
      concatenated:
          JsonParser.parseObject<MolecularDefinitionConcatenatedBuilder>(
        json,
        'concatenated',
        MolecularDefinitionConcatenatedBuilder.fromJson,
        '$objectPath.concatenated',
      ),
      relative: JsonParser.parseObject<MolecularDefinitionRelativeBuilder>(
        json,
        'relative',
        MolecularDefinitionRelativeBuilder.fromJson,
        '$objectPath.relative',
      ),
    );
  }

  /// Deserialize [MolecularDefinitionRepresentationBuilder]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionRepresentationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionRepresentationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionRepresentationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionRepresentationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionRepresentationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionRepresentationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionRepresentationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionRepresentation';

  /// [focus]
  /// The domain concept that is the focus of the representation. This
  /// element is used to disambiguate the representations of the “reference”
  /// and the “alternate” alleles at a given location, for example.
  CodeableConceptBuilder? focus;

  /// [code]
  /// A code (e.g., sequence accession number) used to represent a molecular
  /// entity.
  List<CodeableConceptBuilder>? code;

  /// [literal]
  /// A molecular entity defined as a string literal.
  MolecularDefinitionLiteralBuilder? literal;

  /// [resolvable]
  /// A resolvable representation of a molecular entity, which may be
  /// specified as a URI and/or attached document (in a defined format).
  ReferenceBuilder? resolvable;

  /// [extracted]
  /// A molecular entity that is represented as a portion of a different
  /// entity. For example, this element can represent a subsequence (e.g.,
  /// genetic region) that is part of and conceptually extracted from a
  /// longer sequence (e.g., chromosome sequence). The “parent” entity is
  /// specified in startingMolecule and the location of the intended
  /// molecular entity on the parent entity is defined by coordinateInterval.
  MolecularDefinitionExtractedBuilder? extracted;

  /// [repeated]
  /// A representation of a molecular entity that is expressed as a number of
  /// copies of a repeated motif.
  MolecularDefinitionRepeatedBuilder? repeated;

  /// [concatenated]
  /// A representation comprised of an ordered concatenation of two or more
  /// molecular entities.
  MolecularDefinitionConcatenatedBuilder? concatenated;

  /// [relative]
  /// A molecular entity represented as an ordered series of edits on a
  /// specified starting entity. This representation can be used to define
  /// one entity relative to another.
  MolecularDefinitionRelativeBuilder? relative;

  /// Converts a [MolecularDefinitionRepresentationBuilder]
  /// to [MolecularDefinitionRepresentation]
  @override
  MolecularDefinitionRepresentation build() =>
      MolecularDefinitionRepresentation.fromJson(toJson());

  /// Converts a [MolecularDefinitionRepresentationBuilder]
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
    addField('focus', focus);
    addField('code', code);
    addField('literal', literal);
    addField('resolvable', resolvable);
    addField('extracted', extracted);
    addField('repeated', repeated);
    addField('concatenated', concatenated);
    addField('relative', relative);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'focus',
      'code',
      'literal',
      'resolvable',
      'extracted',
      'repeated',
      'concatenated',
      'relative',
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
      case 'focus':
        if (focus != null) {
          fields.add(focus!);
        }
      case 'code':
        if (code != null) {
          fields.addAll(code!);
        }
      case 'literal':
        if (literal != null) {
          fields.add(literal!);
        }
      case 'resolvable':
        if (resolvable != null) {
          fields.add(resolvable!);
        }
      case 'extracted':
        if (extracted != null) {
          fields.add(extracted!);
        }
      case 'repeated':
        if (repeated != null) {
          fields.add(repeated!);
        }
      case 'concatenated':
        if (concatenated != null) {
          fields.add(concatenated!);
        }
      case 'relative':
        if (relative != null) {
          fields.add(relative!);
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
      case 'focus':
        {
          if (child is CodeableConceptBuilder) {
            focus = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'code':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            code = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            code = [
              ...(code ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'literal':
        {
          if (child is MolecularDefinitionLiteralBuilder) {
            literal = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'resolvable':
        {
          if (child is ReferenceBuilder) {
            resolvable = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extracted':
        {
          if (child is MolecularDefinitionExtractedBuilder) {
            extracted = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'repeated':
        {
          if (child is MolecularDefinitionRepeatedBuilder) {
            repeated = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'concatenated':
        {
          if (child is MolecularDefinitionConcatenatedBuilder) {
            concatenated = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'relative':
        {
          if (child is MolecularDefinitionRelativeBuilder) {
            relative = child;
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
      case 'focus':
        return ['CodeableConceptBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'literal':
        return ['MolecularDefinitionLiteralBuilder'];
      case 'resolvable':
        return ['ReferenceBuilder'];
      case 'extracted':
        return ['MolecularDefinitionExtractedBuilder'];
      case 'repeated':
        return ['MolecularDefinitionRepeatedBuilder'];
      case 'concatenated':
        return ['MolecularDefinitionConcatenatedBuilder'];
      case 'relative':
        return ['MolecularDefinitionRelativeBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularDefinitionRepresentationBuilder]
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
      case 'focus':
        {
          focus = CodeableConceptBuilder.empty();
          return;
        }
      case 'code':
        {
          code = <CodeableConceptBuilder>[];
          return;
        }
      case 'literal':
        {
          literal = MolecularDefinitionLiteralBuilder.empty();
          return;
        }
      case 'resolvable':
        {
          resolvable = ReferenceBuilder.empty();
          return;
        }
      case 'extracted':
        {
          extracted = MolecularDefinitionExtractedBuilder.empty();
          return;
        }
      case 'repeated':
        {
          repeated = MolecularDefinitionRepeatedBuilder.empty();
          return;
        }
      case 'concatenated':
        {
          concatenated = MolecularDefinitionConcatenatedBuilder.empty();
          return;
        }
      case 'relative':
        {
          relative = MolecularDefinitionRelativeBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MolecularDefinitionRepresentationBuilder clone() =>
      throw UnimplementedError();
  @override
  MolecularDefinitionRepresentationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? focus,
    List<CodeableConceptBuilder>? code,
    MolecularDefinitionLiteralBuilder? literal,
    ReferenceBuilder? resolvable,
    MolecularDefinitionExtractedBuilder? extracted,
    MolecularDefinitionRepeatedBuilder? repeated,
    MolecularDefinitionConcatenatedBuilder? concatenated,
    MolecularDefinitionRelativeBuilder? relative,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MolecularDefinitionRepresentationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      focus: focus ?? this.focus,
      code: code ?? this.code,
      literal: literal ?? this.literal,
      resolvable: resolvable ?? this.resolvable,
      extracted: extracted ?? this.extracted,
      repeated: repeated ?? this.repeated,
      concatenated: concatenated ?? this.concatenated,
      relative: relative ?? this.relative,
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
    if (o is! MolecularDefinitionRepresentationBuilder) {
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
      focus,
      o.focus,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      literal,
      o.literal,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      resolvable,
      o.resolvable,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      extracted,
      o.extracted,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      repeated,
      o.repeated,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      concatenated,
      o.concatenated,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      relative,
      o.relative,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionLiteralBuilder]
/// A molecular entity defined as a string literal.
class MolecularDefinitionLiteralBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MolecularDefinitionLiteralBuilder]

  MolecularDefinitionLiteralBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.encoding,
    this.value,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MolecularDefinition.representation.literal',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MolecularDefinitionLiteralBuilder.empty() =>
      MolecularDefinitionLiteralBuilder(
        value: FhirStringBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionLiteralBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MolecularDefinition.representation.literal';
    return MolecularDefinitionLiteralBuilder(
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
      encoding: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'encoding',
        CodeableConceptBuilder.fromJson,
        '$objectPath.encoding',
      ),
      value: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'value',
        FhirStringBuilder.fromJson,
        '$objectPath.value',
      ),
    );
  }

  /// Deserialize [MolecularDefinitionLiteralBuilder]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionLiteralBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionLiteralBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionLiteralBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionLiteralBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionLiteralBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionLiteralBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionLiteralBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionLiteral';

  /// [encoding]
  /// The encoding used for the expression of the entity. For a primary
  /// sequence, this element represents the alphabet used (e.g., 1 character
  /// DNA without ambiguity codes, 3 character amino acid codes).
  CodeableConceptBuilder? encoding;

  /// [value]
  /// A string literal representation of the molecular entity, using a
  /// specific encoding. For example, this may be the primary sequence of a
  /// strand of DNA.
  FhirStringBuilder? value;

  /// Converts a [MolecularDefinitionLiteralBuilder]
  /// to [MolecularDefinitionLiteral]
  @override
  MolecularDefinitionLiteral build() =>
      MolecularDefinitionLiteral.fromJson(toJson());

  /// Converts a [MolecularDefinitionLiteralBuilder]
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
    addField('encoding', encoding);
    addField('value', value);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'encoding',
      'value',
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
      case 'encoding':
        if (encoding != null) {
          fields.add(encoding!);
        }
      case 'value':
        if (value != null) {
          fields.add(value!);
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
      case 'encoding':
        {
          if (child is CodeableConceptBuilder) {
            encoding = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'value':
        {
          if (child is FhirStringBuilder) {
            value = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                value = converted;
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
      case 'encoding':
        return ['CodeableConceptBuilder'];
      case 'value':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularDefinitionLiteralBuilder]
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
      case 'encoding':
        {
          encoding = CodeableConceptBuilder.empty();
          return;
        }
      case 'value':
        {
          value = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MolecularDefinitionLiteralBuilder clone() => throw UnimplementedError();
  @override
  MolecularDefinitionLiteralBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? encoding,
    FhirStringBuilder? value,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MolecularDefinitionLiteralBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      encoding: encoding ?? this.encoding,
      value: value ?? this.value,
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
    if (o is! MolecularDefinitionLiteralBuilder) {
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
      encoding,
      o.encoding,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      value,
      o.value,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionExtractedBuilder]
/// A molecular entity that is represented as a portion of a different
/// entity. For example, this element can represent a subsequence (e.g.,
/// genetic region) that is part of and conceptually extracted from a
/// longer sequence (e.g., chromosome sequence). The “parent” entity is
/// specified in startingMolecule and the location of the intended
/// molecular entity on the parent entity is defined by coordinateInterval.
class MolecularDefinitionExtractedBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MolecularDefinitionExtractedBuilder]

  MolecularDefinitionExtractedBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.startingMolecule,
    this.coordinateInterval,
    this.reverseComplement,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MolecularDefinition.representation.extracted',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MolecularDefinitionExtractedBuilder.empty() =>
      MolecularDefinitionExtractedBuilder(
        startingMolecule: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionExtractedBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MolecularDefinition.representation.extracted';
    return MolecularDefinitionExtractedBuilder(
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
      startingMolecule: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'startingMolecule',
        ReferenceBuilder.fromJson,
        '$objectPath.startingMolecule',
      ),
      coordinateInterval:
          JsonParser.parseObject<MolecularDefinitionCoordinateIntervalBuilder>(
        json,
        'coordinateInterval',
        MolecularDefinitionCoordinateIntervalBuilder.fromJson,
        '$objectPath.coordinateInterval',
      ),
      reverseComplement: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'reverseComplement',
        FhirBooleanBuilder.fromJson,
        '$objectPath.reverseComplement',
      ),
    );
  }

  /// Deserialize [MolecularDefinitionExtractedBuilder]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionExtractedBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionExtractedBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionExtractedBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionExtractedBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionExtractedBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionExtractedBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionExtractedBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionExtracted';

  /// [startingMolecule]
  /// A reference to the molecular entity that serves as the conceptual
  /// 'parent' from which the intended entity is derived. For example, this
  /// could be a chromosome sequence on which a coordinateInterval is
  /// defined.
  ReferenceBuilder? startingMolecule;

  /// [coordinateInterval]
  /// The interval on startingMolecule that defines the portion to be
  /// extracted in order to create the intended entity.
  MolecularDefinitionCoordinateIntervalBuilder? coordinateInterval;

  /// [reverseComplement]
  /// A flag that indicates whether the extracted sequence should be reverse
  /// complemented in order to produce the intended entity. This element is
  /// only relevant to molecular entities that support the concept of reverse
  /// complement (e.g., double stranded DNA).
  FhirBooleanBuilder? reverseComplement;

  /// Converts a [MolecularDefinitionExtractedBuilder]
  /// to [MolecularDefinitionExtracted]
  @override
  MolecularDefinitionExtracted build() =>
      MolecularDefinitionExtracted.fromJson(toJson());

  /// Converts a [MolecularDefinitionExtractedBuilder]
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
    addField('startingMolecule', startingMolecule);
    addField('coordinateInterval', coordinateInterval);
    addField('reverseComplement', reverseComplement);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'startingMolecule',
      'coordinateInterval',
      'reverseComplement',
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
      case 'startingMolecule':
        if (startingMolecule != null) {
          fields.add(startingMolecule!);
        }
      case 'coordinateInterval':
        if (coordinateInterval != null) {
          fields.add(coordinateInterval!);
        }
      case 'reverseComplement':
        if (reverseComplement != null) {
          fields.add(reverseComplement!);
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
      case 'startingMolecule':
        {
          if (child is ReferenceBuilder) {
            startingMolecule = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'coordinateInterval':
        {
          if (child is MolecularDefinitionCoordinateIntervalBuilder) {
            coordinateInterval = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reverseComplement':
        {
          if (child is FhirBooleanBuilder) {
            reverseComplement = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                reverseComplement = converted;
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
      case 'startingMolecule':
        return ['ReferenceBuilder'];
      case 'coordinateInterval':
        return ['MolecularDefinitionCoordinateIntervalBuilder'];
      case 'reverseComplement':
        return ['FhirBooleanBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularDefinitionExtractedBuilder]
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
      case 'startingMolecule':
        {
          startingMolecule = ReferenceBuilder.empty();
          return;
        }
      case 'coordinateInterval':
        {
          coordinateInterval =
              MolecularDefinitionCoordinateIntervalBuilder.empty();
          return;
        }
      case 'reverseComplement':
        {
          reverseComplement = FhirBooleanBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MolecularDefinitionExtractedBuilder clone() => throw UnimplementedError();
  @override
  MolecularDefinitionExtractedBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ReferenceBuilder? startingMolecule,
    MolecularDefinitionCoordinateIntervalBuilder? coordinateInterval,
    FhirBooleanBuilder? reverseComplement,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MolecularDefinitionExtractedBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      startingMolecule: startingMolecule ?? this.startingMolecule,
      coordinateInterval: coordinateInterval ?? this.coordinateInterval,
      reverseComplement: reverseComplement ?? this.reverseComplement,
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
    if (o is! MolecularDefinitionExtractedBuilder) {
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
      startingMolecule,
      o.startingMolecule,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      coordinateInterval,
      o.coordinateInterval,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reverseComplement,
      o.reverseComplement,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionCoordinateInterval1Builder]
/// The interval on startingMolecule that defines the portion to be
/// extracted in order to create the intended entity.
class MolecularDefinitionCoordinateInterval1Builder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MolecularDefinitionCoordinateInterval1Builder]

  MolecularDefinitionCoordinateInterval1Builder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.coordinateSystem,
    StartXMolecularDefinitionRepresentationExtractedCoordinateIntervalBuilder?
        startX,
    QuantityBuilder? startQuantity,
    RangeBuilder? startRange,
    EndXMolecularDefinitionRepresentationExtractedCoordinateIntervalBuilder?
        endX,
    QuantityBuilder? endQuantity,
    RangeBuilder? endRange,
    super.disallowExtensions,
  })  : startX = startX ?? startQuantity ?? startRange,
        endX = endX ?? endQuantity ?? endRange,
        super(
          objectPath:
              'MolecularDefinition.representation.extracted.coordinateInterval',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MolecularDefinitionCoordinateInterval1Builder.empty() =>
      MolecularDefinitionCoordinateInterval1Builder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionCoordinateInterval1Builder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath =
        'MolecularDefinition.representation.extracted.coordinateInterval';
    return MolecularDefinitionCoordinateInterval1Builder(
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
      coordinateSystem:
          JsonParser.parseObject<MolecularDefinitionCoordinateSystemBuilder>(
        json,
        'coordinateSystem',
        MolecularDefinitionCoordinateSystemBuilder.fromJson,
        '$objectPath.coordinateSystem',
      ),
      startX: JsonParser.parsePolymorphic<
          StartXMolecularDefinitionRepresentationExtractedCoordinateIntervalBuilder>(
        json,
        {
          'startQuantity': QuantityBuilder.fromJson,
          'startRange': RangeBuilder.fromJson,
        },
        objectPath,
      ),
      endX: JsonParser.parsePolymorphic<
          EndXMolecularDefinitionRepresentationExtractedCoordinateIntervalBuilder>(
        json,
        {
          'endQuantity': QuantityBuilder.fromJson,
          'endRange': RangeBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [MolecularDefinitionCoordinateInterval1Builder]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionCoordinateInterval1Builder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionCoordinateInterval1Builder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionCoordinateInterval1Builder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionCoordinateInterval1Builder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionCoordinateInterval1Builder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionCoordinateInterval1Builder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionCoordinateInterval1Builder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionCoordinateInterval1';

  /// [coordinateSystem]
  /// The coordinate system used to define the location, which may vary
  /// depending on application or context of use.
  MolecularDefinitionCoordinateSystemBuilder? coordinateSystem;

  /// [startX]
  /// The start location of the interval expressed as a precise coordinate
  /// (Quantity) or expressed as a range (Range) that is defined by low
  /// (range start) and high (range end). Open-ended ranges, where one end is
  /// unbounded, may be supported.
  StartXMolecularDefinitionRepresentationExtractedCoordinateIntervalBuilder?
      startX;

  /// Getter for [startQuantity] as a QuantityBuilder
  QuantityBuilder? get startQuantity => startX?.isAs<QuantityBuilder>();

  /// Getter for [startRange] as a RangeBuilder
  RangeBuilder? get startRange => startX?.isAs<RangeBuilder>();

  /// [endX]
  /// The end location of the interval expressed as a precise coordinate
  /// (Quantity) or as a range (Range) that is defined by low (range start)
  /// and high (range end). Open-ended ranges, where one end is unbounded,
  /// may be supported..
  EndXMolecularDefinitionRepresentationExtractedCoordinateIntervalBuilder? endX;

  /// Getter for [endQuantity] as a QuantityBuilder
  QuantityBuilder? get endQuantity => endX?.isAs<QuantityBuilder>();

  /// Getter for [endRange] as a RangeBuilder
  RangeBuilder? get endRange => endX?.isAs<RangeBuilder>();

  /// Converts a [MolecularDefinitionCoordinateInterval1Builder]
  /// to [MolecularDefinitionCoordinateInterval1]
  @override
  MolecularDefinitionCoordinateInterval1 build() =>
      MolecularDefinitionCoordinateInterval1.fromJson(toJson());

  /// Converts a [MolecularDefinitionCoordinateInterval1Builder]
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
    addField('coordinateSystem', coordinateSystem);
    if (startX != null) {
      final fhirType = startX!.fhirType;
      addField('start${fhirType.capitalizeFirstLetter()}', startX);
    }

    if (endX != null) {
      final fhirType = endX!.fhirType;
      addField('end${fhirType.capitalizeFirstLetter()}', endX);
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
      'coordinateSystem',
      'startX',
      'endX',
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
      case 'coordinateSystem':
        if (coordinateSystem != null) {
          fields.add(coordinateSystem!);
        }
      case 'start':
        if (startX != null) {
          fields.add(startX!);
        }
      case 'startX':
        if (startX != null) {
          fields.add(startX!);
        }
      case 'startQuantity':
        if (startX is QuantityBuilder) {
          fields.add(startX!);
        }
      case 'startRange':
        if (startX is RangeBuilder) {
          fields.add(startX!);
        }
      case 'end':
        if (endX != null) {
          fields.add(endX!);
        }
      case 'endX':
        if (endX != null) {
          fields.add(endX!);
        }
      case 'endQuantity':
        if (endX is QuantityBuilder) {
          fields.add(endX!);
        }
      case 'endRange':
        if (endX is RangeBuilder) {
          fields.add(endX!);
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
      case 'coordinateSystem':
        {
          if (child is MolecularDefinitionCoordinateSystemBuilder) {
            coordinateSystem = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'start':
      case 'startX':
        {
          if (child
              is StartXMolecularDefinitionRepresentationExtractedCoordinateIntervalBuilder) {
            startX = child;
            return;
          } else {
            if (child is QuantityBuilder) {
              startX = child;
              return;
            }
            if (child is RangeBuilder) {
              startX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'startQuantity':
        {
          if (child is QuantityBuilder) {
            startX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'startRange':
        {
          if (child is RangeBuilder) {
            startX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'end':
      case 'endX':
        {
          if (child
              is EndXMolecularDefinitionRepresentationExtractedCoordinateIntervalBuilder) {
            endX = child;
            return;
          } else {
            if (child is QuantityBuilder) {
              endX = child;
              return;
            }
            if (child is RangeBuilder) {
              endX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'endQuantity':
        {
          if (child is QuantityBuilder) {
            endX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'endRange':
        {
          if (child is RangeBuilder) {
            endX = child;
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
      case 'coordinateSystem':
        return ['MolecularDefinitionCoordinateSystemBuilder'];
      case 'start':
      case 'startX':
        return [
          'QuantityBuilder',
          'RangeBuilder',
        ];
      case 'startQuantity':
        return ['QuantityBuilder'];
      case 'startRange':
        return ['RangeBuilder'];
      case 'end':
      case 'endX':
        return [
          'QuantityBuilder',
          'RangeBuilder',
        ];
      case 'endQuantity':
        return ['QuantityBuilder'];
      case 'endRange':
        return ['RangeBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularDefinitionCoordinateInterval1Builder]
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
      case 'coordinateSystem':
        {
          coordinateSystem = MolecularDefinitionCoordinateSystemBuilder.empty();
          return;
        }
      case 'start':
      case 'startX':
      case 'startQuantity':
        {
          startX = QuantityBuilder.empty();
          return;
        }
      case 'startRange':
        {
          startX = RangeBuilder.empty();
          return;
        }
      case 'end':
      case 'endX':
      case 'endQuantity':
        {
          endX = QuantityBuilder.empty();
          return;
        }
      case 'endRange':
        {
          endX = RangeBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MolecularDefinitionCoordinateInterval1Builder clone() =>
      throw UnimplementedError();
  @override
  MolecularDefinitionCoordinateInterval1Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    MolecularDefinitionCoordinateSystemBuilder? coordinateSystem,
    StartXMolecularDefinitionRepresentationExtractedCoordinateIntervalBuilder?
        startX,
    EndXMolecularDefinitionRepresentationExtractedCoordinateIntervalBuilder?
        endX,
    QuantityBuilder? startQuantity,
    RangeBuilder? startRange,
    QuantityBuilder? endQuantity,
    RangeBuilder? endRange,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MolecularDefinitionCoordinateInterval1Builder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      coordinateSystem: coordinateSystem ?? this.coordinateSystem,
      startX: startX ?? startQuantity ?? startRange ?? this.startX,
      endX: endX ?? endQuantity ?? endRange ?? this.endX,
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
    if (o is! MolecularDefinitionCoordinateInterval1Builder) {
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
      coordinateSystem,
      o.coordinateSystem,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      startX,
      o.startX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      endX,
      o.endX,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionCoordinateSystem1Builder]
/// The coordinate system used to define the location, which may vary
/// depending on application or context of use.
class MolecularDefinitionCoordinateSystem1Builder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MolecularDefinitionCoordinateSystem1Builder]

  MolecularDefinitionCoordinateSystem1Builder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.system,
    this.origin,
    this.normalizationMethod,
    super.disallowExtensions,
  }) : super(
          objectPath:
              'MolecularDefinition.representation.extracted.coordinateInterval.coordinateSystem',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MolecularDefinitionCoordinateSystem1Builder.empty() =>
      MolecularDefinitionCoordinateSystem1Builder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionCoordinateSystem1Builder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath =
        'MolecularDefinition.representation.extracted.coordinateInterval.coordinateSystem';
    return MolecularDefinitionCoordinateSystem1Builder(
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
      system: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'system',
        CodeableConceptBuilder.fromJson,
        '$objectPath.system',
      ),
      origin: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'origin',
        CodeableConceptBuilder.fromJson,
        '$objectPath.origin',
      ),
      normalizationMethod: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'normalizationMethod',
        CodeableConceptBuilder.fromJson,
        '$objectPath.normalizationMethod',
      ),
    );
  }

  /// Deserialize [MolecularDefinitionCoordinateSystem1Builder]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionCoordinateSystem1Builder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionCoordinateSystem1Builder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionCoordinateSystem1Builder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionCoordinateSystem1Builder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionCoordinateSystem1Builder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionCoordinateSystem1Builder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionCoordinateSystem1Builder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionCoordinateSystem1';

  /// [system]
  /// A definition of the coordinate system. Examples include 1-based
  /// character counting, and 0-based interval counting.
  CodeableConceptBuilder? system;

  /// [origin]
  /// The location of the origin (0 or 1, depending on the coordinate
  /// system). For example, this could specify the origin is at the start of
  /// the sequence (e.g., 5’ end or N-terminus), the beginning of a
  /// designated feature (e.g., A in the ATG translation initiation codon),
  /// or the end of a designated feature (e.g., 3’ end of an exon, from which
  /// an offset is calculated into the following intron).
  CodeableConceptBuilder? origin;

  /// [normalizationMethod]
  /// The normalization method used for determining a location within the
  /// coordinate system. Examples include left shift (e.g., VCF), right shift
  /// (e.g., HGVS), or fully justified (e.g., VOCA).
  CodeableConceptBuilder? normalizationMethod;

  /// Converts a [MolecularDefinitionCoordinateSystem1Builder]
  /// to [MolecularDefinitionCoordinateSystem1]
  @override
  MolecularDefinitionCoordinateSystem1 build() =>
      MolecularDefinitionCoordinateSystem1.fromJson(toJson());

  /// Converts a [MolecularDefinitionCoordinateSystem1Builder]
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
    addField('system', system);
    addField('origin', origin);
    addField('normalizationMethod', normalizationMethod);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'system',
      'origin',
      'normalizationMethod',
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
      case 'system':
        if (system != null) {
          fields.add(system!);
        }
      case 'origin':
        if (origin != null) {
          fields.add(origin!);
        }
      case 'normalizationMethod':
        if (normalizationMethod != null) {
          fields.add(normalizationMethod!);
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
      case 'system':
        {
          if (child is CodeableConceptBuilder) {
            system = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'origin':
        {
          if (child is CodeableConceptBuilder) {
            origin = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'normalizationMethod':
        {
          if (child is CodeableConceptBuilder) {
            normalizationMethod = child;
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
      case 'system':
        return ['CodeableConceptBuilder'];
      case 'origin':
        return ['CodeableConceptBuilder'];
      case 'normalizationMethod':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularDefinitionCoordinateSystem1Builder]
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
      case 'system':
        {
          system = CodeableConceptBuilder.empty();
          return;
        }
      case 'origin':
        {
          origin = CodeableConceptBuilder.empty();
          return;
        }
      case 'normalizationMethod':
        {
          normalizationMethod = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MolecularDefinitionCoordinateSystem1Builder clone() =>
      throw UnimplementedError();
  @override
  MolecularDefinitionCoordinateSystem1Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? system,
    CodeableConceptBuilder? origin,
    CodeableConceptBuilder? normalizationMethod,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MolecularDefinitionCoordinateSystem1Builder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      system: system ?? this.system,
      origin: origin ?? this.origin,
      normalizationMethod: normalizationMethod ?? this.normalizationMethod,
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
    if (o is! MolecularDefinitionCoordinateSystem1Builder) {
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
      system,
      o.system,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      origin,
      o.origin,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      normalizationMethod,
      o.normalizationMethod,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionRepeatedBuilder]
/// A representation of a molecular entity that is expressed as a number of
/// copies of a repeated motif.
class MolecularDefinitionRepeatedBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MolecularDefinitionRepeatedBuilder]

  MolecularDefinitionRepeatedBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.sequenceMotif,
    this.copyCount,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MolecularDefinition.representation.repeated',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MolecularDefinitionRepeatedBuilder.empty() =>
      MolecularDefinitionRepeatedBuilder(
        sequenceMotif: ReferenceBuilder.empty(),
        copyCount: FhirIntegerBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionRepeatedBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MolecularDefinition.representation.repeated';
    return MolecularDefinitionRepeatedBuilder(
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
      sequenceMotif: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'sequenceMotif',
        ReferenceBuilder.fromJson,
        '$objectPath.sequenceMotif',
      ),
      copyCount: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'copyCount',
        FhirIntegerBuilder.fromJson,
        '$objectPath.copyCount',
      ),
    );
  }

  /// Deserialize [MolecularDefinitionRepeatedBuilder]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionRepeatedBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionRepeatedBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionRepeatedBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionRepeatedBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionRepeatedBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionRepeatedBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionRepeatedBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionRepeated';

  /// [sequenceMotif]
  /// The motif that is repeated in tandem, which ultimately defines the
  /// intended molecular entity.
  ReferenceBuilder? sequenceMotif;

  /// [copyCount]
  /// The number of times the motif is repeated to create the intended
  /// molecular entity.
  FhirIntegerBuilder? copyCount;

  /// Converts a [MolecularDefinitionRepeatedBuilder]
  /// to [MolecularDefinitionRepeated]
  @override
  MolecularDefinitionRepeated build() =>
      MolecularDefinitionRepeated.fromJson(toJson());

  /// Converts a [MolecularDefinitionRepeatedBuilder]
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
    addField('sequenceMotif', sequenceMotif);
    addField('copyCount', copyCount);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'sequenceMotif',
      'copyCount',
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
      case 'sequenceMotif':
        if (sequenceMotif != null) {
          fields.add(sequenceMotif!);
        }
      case 'copyCount':
        if (copyCount != null) {
          fields.add(copyCount!);
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
      case 'sequenceMotif':
        {
          if (child is ReferenceBuilder) {
            sequenceMotif = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'copyCount':
        {
          if (child is FhirIntegerBuilder) {
            copyCount = child;
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
                  copyCount = converted;
                  return;
                }
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
      case 'sequenceMotif':
        return ['ReferenceBuilder'];
      case 'copyCount':
        return ['FhirIntegerBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularDefinitionRepeatedBuilder]
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
      case 'sequenceMotif':
        {
          sequenceMotif = ReferenceBuilder.empty();
          return;
        }
      case 'copyCount':
        {
          copyCount = FhirIntegerBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MolecularDefinitionRepeatedBuilder clone() => throw UnimplementedError();
  @override
  MolecularDefinitionRepeatedBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ReferenceBuilder? sequenceMotif,
    FhirIntegerBuilder? copyCount,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MolecularDefinitionRepeatedBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequenceMotif: sequenceMotif ?? this.sequenceMotif,
      copyCount: copyCount ?? this.copyCount,
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
    if (o is! MolecularDefinitionRepeatedBuilder) {
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
      sequenceMotif,
      o.sequenceMotif,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      copyCount,
      o.copyCount,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionConcatenatedBuilder]
/// A representation comprised of an ordered concatenation of two or more
/// molecular entities.
class MolecularDefinitionConcatenatedBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MolecularDefinitionConcatenatedBuilder]

  MolecularDefinitionConcatenatedBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.sequenceElement,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MolecularDefinition.representation.concatenated',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MolecularDefinitionConcatenatedBuilder.empty() =>
      MolecularDefinitionConcatenatedBuilder(
        sequenceElement: <MolecularDefinitionSequenceElementBuilder>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionConcatenatedBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MolecularDefinition.representation.concatenated';
    return MolecularDefinitionConcatenatedBuilder(
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
      sequenceElement: (json['sequenceElement'] as List<dynamic>?)
          ?.map<MolecularDefinitionSequenceElementBuilder>(
            (v) => MolecularDefinitionSequenceElementBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.sequenceElement',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MolecularDefinitionConcatenatedBuilder]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionConcatenatedBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionConcatenatedBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionConcatenatedBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionConcatenatedBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionConcatenatedBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionConcatenatedBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionConcatenatedBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionConcatenated';

  /// [sequenceElement]
  /// One of the concatenated entities within the concatenated
  /// representation.
  List<MolecularDefinitionSequenceElementBuilder>? sequenceElement;

  /// Converts a [MolecularDefinitionConcatenatedBuilder]
  /// to [MolecularDefinitionConcatenated]
  @override
  MolecularDefinitionConcatenated build() =>
      MolecularDefinitionConcatenated.fromJson(toJson());

  /// Converts a [MolecularDefinitionConcatenatedBuilder]
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
    addField('sequenceElement', sequenceElement);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'sequenceElement',
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
      case 'sequenceElement':
        if (sequenceElement != null) {
          fields.addAll(sequenceElement!);
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
      case 'sequenceElement':
        {
          if (child is List<MolecularDefinitionSequenceElementBuilder>) {
            // Replace or create new list
            sequenceElement = child;
            return;
          } else if (child is MolecularDefinitionSequenceElementBuilder) {
            // Add single element to existing list or create new list
            sequenceElement = [
              ...(sequenceElement ?? []),
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
      case 'sequenceElement':
        return ['MolecularDefinitionSequenceElementBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularDefinitionConcatenatedBuilder]
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
      case 'sequenceElement':
        {
          sequenceElement = <MolecularDefinitionSequenceElementBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MolecularDefinitionConcatenatedBuilder clone() => throw UnimplementedError();
  @override
  MolecularDefinitionConcatenatedBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<MolecularDefinitionSequenceElementBuilder>? sequenceElement,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MolecularDefinitionConcatenatedBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequenceElement: sequenceElement ?? this.sequenceElement,
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
    if (o is! MolecularDefinitionConcatenatedBuilder) {
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
    if (!listEquals<MolecularDefinitionSequenceElementBuilder>(
      sequenceElement,
      o.sequenceElement,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionSequenceElementBuilder]
/// One of the concatenated entities within the concatenated
/// representation.
class MolecularDefinitionSequenceElementBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MolecularDefinitionSequenceElementBuilder]

  MolecularDefinitionSequenceElementBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.sequence,
    this.ordinalIndex,
    super.disallowExtensions,
  }) : super(
          objectPath:
              'MolecularDefinition.representation.concatenated.sequenceElement',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MolecularDefinitionSequenceElementBuilder.empty() =>
      MolecularDefinitionSequenceElementBuilder(
        sequence: ReferenceBuilder.empty(),
        ordinalIndex: FhirIntegerBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionSequenceElementBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath =
        'MolecularDefinition.representation.concatenated.sequenceElement';
    return MolecularDefinitionSequenceElementBuilder(
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
      sequence: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'sequence',
        ReferenceBuilder.fromJson,
        '$objectPath.sequence',
      ),
      ordinalIndex: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'ordinalIndex',
        FhirIntegerBuilder.fromJson,
        '$objectPath.ordinalIndex',
      ),
    );
  }

  /// Deserialize [MolecularDefinitionSequenceElementBuilder]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionSequenceElementBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionSequenceElementBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionSequenceElementBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionSequenceElementBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionSequenceElementBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionSequenceElementBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionSequenceElementBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionSequenceElement';

  /// [sequence]
  /// A reference to the sequence that defines this specific concatenated
  /// element.
  ReferenceBuilder? sequence;

  /// [ordinalIndex]
  /// The ordinal index of the element within the concatenated
  /// representation.
  FhirIntegerBuilder? ordinalIndex;

  /// Converts a [MolecularDefinitionSequenceElementBuilder]
  /// to [MolecularDefinitionSequenceElement]
  @override
  MolecularDefinitionSequenceElement build() =>
      MolecularDefinitionSequenceElement.fromJson(toJson());

  /// Converts a [MolecularDefinitionSequenceElementBuilder]
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
    addField('sequence', sequence);
    addField('ordinalIndex', ordinalIndex);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'sequence',
      'ordinalIndex',
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
      case 'sequence':
        if (sequence != null) {
          fields.add(sequence!);
        }
      case 'ordinalIndex':
        if (ordinalIndex != null) {
          fields.add(ordinalIndex!);
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
      case 'sequence':
        {
          if (child is ReferenceBuilder) {
            sequence = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'ordinalIndex':
        {
          if (child is FhirIntegerBuilder) {
            ordinalIndex = child;
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
                  ordinalIndex = converted;
                  return;
                }
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
      case 'sequence':
        return ['ReferenceBuilder'];
      case 'ordinalIndex':
        return ['FhirIntegerBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularDefinitionSequenceElementBuilder]
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
      case 'sequence':
        {
          sequence = ReferenceBuilder.empty();
          return;
        }
      case 'ordinalIndex':
        {
          ordinalIndex = FhirIntegerBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MolecularDefinitionSequenceElementBuilder clone() =>
      throw UnimplementedError();
  @override
  MolecularDefinitionSequenceElementBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ReferenceBuilder? sequence,
    FhirIntegerBuilder? ordinalIndex,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MolecularDefinitionSequenceElementBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      ordinalIndex: ordinalIndex ?? this.ordinalIndex,
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
    if (o is! MolecularDefinitionSequenceElementBuilder) {
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
      sequence,
      o.sequence,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      ordinalIndex,
      o.ordinalIndex,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionRelativeBuilder]
/// A molecular entity represented as an ordered series of edits on a
/// specified starting entity. This representation can be used to define
/// one entity relative to another.
class MolecularDefinitionRelativeBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MolecularDefinitionRelativeBuilder]

  MolecularDefinitionRelativeBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.startingMolecule,
    this.edit,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MolecularDefinition.representation.relative',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MolecularDefinitionRelativeBuilder.empty() =>
      MolecularDefinitionRelativeBuilder(
        startingMolecule: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionRelativeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MolecularDefinition.representation.relative';
    return MolecularDefinitionRelativeBuilder(
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
      startingMolecule: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'startingMolecule',
        ReferenceBuilder.fromJson,
        '$objectPath.startingMolecule',
      ),
      edit: (json['edit'] as List<dynamic>?)
          ?.map<MolecularDefinitionEditBuilder>(
            (v) => MolecularDefinitionEditBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.edit',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MolecularDefinitionRelativeBuilder]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionRelativeBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionRelativeBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionRelativeBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionRelativeBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionRelativeBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionRelativeBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionRelativeBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionRelative';

  /// [startingMolecule]
  /// The molecular entity that serves as the starting point, on which edits
  /// will be applied.
  ReferenceBuilder? startingMolecule;

  /// [edit]
  /// A defined edit (change) to be applied to the molecular entity.
  List<MolecularDefinitionEditBuilder>? edit;

  /// Converts a [MolecularDefinitionRelativeBuilder]
  /// to [MolecularDefinitionRelative]
  @override
  MolecularDefinitionRelative build() =>
      MolecularDefinitionRelative.fromJson(toJson());

  /// Converts a [MolecularDefinitionRelativeBuilder]
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
    addField('startingMolecule', startingMolecule);
    addField('edit', edit);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'startingMolecule',
      'edit',
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
      case 'startingMolecule':
        if (startingMolecule != null) {
          fields.add(startingMolecule!);
        }
      case 'edit':
        if (edit != null) {
          fields.addAll(edit!);
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
      case 'startingMolecule':
        {
          if (child is ReferenceBuilder) {
            startingMolecule = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'edit':
        {
          if (child is List<MolecularDefinitionEditBuilder>) {
            // Replace or create new list
            edit = child;
            return;
          } else if (child is MolecularDefinitionEditBuilder) {
            // Add single element to existing list or create new list
            edit = [
              ...(edit ?? []),
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
      case 'startingMolecule':
        return ['ReferenceBuilder'];
      case 'edit':
        return ['MolecularDefinitionEditBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularDefinitionRelativeBuilder]
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
      case 'startingMolecule':
        {
          startingMolecule = ReferenceBuilder.empty();
          return;
        }
      case 'edit':
        {
          edit = <MolecularDefinitionEditBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MolecularDefinitionRelativeBuilder clone() => throw UnimplementedError();
  @override
  MolecularDefinitionRelativeBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ReferenceBuilder? startingMolecule,
    List<MolecularDefinitionEditBuilder>? edit,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MolecularDefinitionRelativeBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      startingMolecule: startingMolecule ?? this.startingMolecule,
      edit: edit ?? this.edit,
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
    if (o is! MolecularDefinitionRelativeBuilder) {
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
      startingMolecule,
      o.startingMolecule,
    )) {
      return false;
    }
    if (!listEquals<MolecularDefinitionEditBuilder>(
      edit,
      o.edit,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionEditBuilder]
/// A defined edit (change) to be applied to the molecular entity.
class MolecularDefinitionEditBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MolecularDefinitionEditBuilder]

  MolecularDefinitionEditBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.editOrder,
    this.coordinateInterval,
    this.replacementMolecule,
    this.replacedMolecule,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MolecularDefinition.representation.relative.edit',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MolecularDefinitionEditBuilder.empty() =>
      MolecularDefinitionEditBuilder(
        replacementMolecule: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionEditBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MolecularDefinition.representation.relative.edit';
    return MolecularDefinitionEditBuilder(
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
      editOrder: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'editOrder',
        FhirIntegerBuilder.fromJson,
        '$objectPath.editOrder',
      ),
      coordinateInterval:
          JsonParser.parseObject<MolecularDefinitionCoordinateIntervalBuilder>(
        json,
        'coordinateInterval',
        MolecularDefinitionCoordinateIntervalBuilder.fromJson,
        '$objectPath.coordinateInterval',
      ),
      replacementMolecule: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'replacementMolecule',
        ReferenceBuilder.fromJson,
        '$objectPath.replacementMolecule',
      ),
      replacedMolecule: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'replacedMolecule',
        ReferenceBuilder.fromJson,
        '$objectPath.replacedMolecule',
      ),
    );
  }

  /// Deserialize [MolecularDefinitionEditBuilder]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionEditBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionEditBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionEditBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionEditBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionEditBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionEditBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionEditBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionEdit';

  /// [editOrder]
  /// Defines the order of edits when multiple edits are to be applied to the
  /// startingMolecule. This is important when edits may overlap (intervals)
  /// or when edits change the length of the entity.
  FhirIntegerBuilder? editOrder;

  /// [coordinateInterval]
  /// The interval on startingMolecule that defines the portion to be
  /// extracted in order to create the intended entity.
  MolecularDefinitionCoordinateIntervalBuilder? coordinateInterval;

  /// [replacementMolecule]
  /// The molecular entity that serves as the replacement in the edit
  /// operation. After the edit has been applied, the state of the entity at
  /// the specified coordinateInterval is defined by the state of the
  /// replacementMolecule.
  ReferenceBuilder? replacementMolecule;

  /// [replacedMolecule]
  /// The portion of the molecular entity that is replaced by the
  /// replacementMolecule as a result of the edit. The value of this element
  /// can be derived as the state of the entity at the specified
  /// coordinateInterval, prior to the edit being applied. It is provided for
  /// convenience.
  ReferenceBuilder? replacedMolecule;

  /// Converts a [MolecularDefinitionEditBuilder]
  /// to [MolecularDefinitionEdit]
  @override
  MolecularDefinitionEdit build() => MolecularDefinitionEdit.fromJson(toJson());

  /// Converts a [MolecularDefinitionEditBuilder]
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
    addField('editOrder', editOrder);
    addField('coordinateInterval', coordinateInterval);
    addField('replacementMolecule', replacementMolecule);
    addField('replacedMolecule', replacedMolecule);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'editOrder',
      'coordinateInterval',
      'replacementMolecule',
      'replacedMolecule',
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
      case 'editOrder':
        if (editOrder != null) {
          fields.add(editOrder!);
        }
      case 'coordinateInterval':
        if (coordinateInterval != null) {
          fields.add(coordinateInterval!);
        }
      case 'replacementMolecule':
        if (replacementMolecule != null) {
          fields.add(replacementMolecule!);
        }
      case 'replacedMolecule':
        if (replacedMolecule != null) {
          fields.add(replacedMolecule!);
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
      case 'editOrder':
        {
          if (child is FhirIntegerBuilder) {
            editOrder = child;
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
                  editOrder = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'coordinateInterval':
        {
          if (child is MolecularDefinitionCoordinateIntervalBuilder) {
            coordinateInterval = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'replacementMolecule':
        {
          if (child is ReferenceBuilder) {
            replacementMolecule = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'replacedMolecule':
        {
          if (child is ReferenceBuilder) {
            replacedMolecule = child;
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
      case 'editOrder':
        return ['FhirIntegerBuilder'];
      case 'coordinateInterval':
        return ['MolecularDefinitionCoordinateIntervalBuilder'];
      case 'replacementMolecule':
        return ['ReferenceBuilder'];
      case 'replacedMolecule':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularDefinitionEditBuilder]
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
      case 'editOrder':
        {
          editOrder = FhirIntegerBuilder.empty();
          return;
        }
      case 'coordinateInterval':
        {
          coordinateInterval =
              MolecularDefinitionCoordinateIntervalBuilder.empty();
          return;
        }
      case 'replacementMolecule':
        {
          replacementMolecule = ReferenceBuilder.empty();
          return;
        }
      case 'replacedMolecule':
        {
          replacedMolecule = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MolecularDefinitionEditBuilder clone() => throw UnimplementedError();
  @override
  MolecularDefinitionEditBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirIntegerBuilder? editOrder,
    MolecularDefinitionCoordinateIntervalBuilder? coordinateInterval,
    ReferenceBuilder? replacementMolecule,
    ReferenceBuilder? replacedMolecule,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MolecularDefinitionEditBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      editOrder: editOrder ?? this.editOrder,
      coordinateInterval: coordinateInterval ?? this.coordinateInterval,
      replacementMolecule: replacementMolecule ?? this.replacementMolecule,
      replacedMolecule: replacedMolecule ?? this.replacedMolecule,
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
    if (o is! MolecularDefinitionEditBuilder) {
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
      editOrder,
      o.editOrder,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      coordinateInterval,
      o.coordinateInterval,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      replacementMolecule,
      o.replacementMolecule,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      replacedMolecule,
      o.replacedMolecule,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionCoordinateInterval2Builder]
/// The interval on startingMolecule that defines the portion to be
/// extracted in order to create the intended entity.
class MolecularDefinitionCoordinateInterval2Builder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MolecularDefinitionCoordinateInterval2Builder]

  MolecularDefinitionCoordinateInterval2Builder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.coordinateSystem,
    StartXMolecularDefinitionRepresentationRelativeEditCoordinateIntervalBuilder?
        startX,
    QuantityBuilder? startQuantity,
    RangeBuilder? startRange,
    EndXMolecularDefinitionRepresentationRelativeEditCoordinateIntervalBuilder?
        endX,
    QuantityBuilder? endQuantity,
    RangeBuilder? endRange,
    super.disallowExtensions,
  })  : startX = startX ?? startQuantity ?? startRange,
        endX = endX ?? endQuantity ?? endRange,
        super(
          objectPath:
              'MolecularDefinition.representation.relative.edit.coordinateInterval',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MolecularDefinitionCoordinateInterval2Builder.empty() =>
      MolecularDefinitionCoordinateInterval2Builder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionCoordinateInterval2Builder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath =
        'MolecularDefinition.representation.relative.edit.coordinateInterval';
    return MolecularDefinitionCoordinateInterval2Builder(
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
      coordinateSystem:
          JsonParser.parseObject<MolecularDefinitionCoordinateSystemBuilder>(
        json,
        'coordinateSystem',
        MolecularDefinitionCoordinateSystemBuilder.fromJson,
        '$objectPath.coordinateSystem',
      ),
      startX: JsonParser.parsePolymorphic<
          StartXMolecularDefinitionRepresentationRelativeEditCoordinateIntervalBuilder>(
        json,
        {
          'startQuantity': QuantityBuilder.fromJson,
          'startRange': RangeBuilder.fromJson,
        },
        objectPath,
      ),
      endX: JsonParser.parsePolymorphic<
          EndXMolecularDefinitionRepresentationRelativeEditCoordinateIntervalBuilder>(
        json,
        {
          'endQuantity': QuantityBuilder.fromJson,
          'endRange': RangeBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [MolecularDefinitionCoordinateInterval2Builder]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionCoordinateInterval2Builder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionCoordinateInterval2Builder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionCoordinateInterval2Builder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionCoordinateInterval2Builder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionCoordinateInterval2Builder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionCoordinateInterval2Builder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionCoordinateInterval2Builder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionCoordinateInterval2';

  /// [coordinateSystem]
  /// The coordinate system used to define the location, which may vary
  /// depending on application or context of use.
  MolecularDefinitionCoordinateSystemBuilder? coordinateSystem;

  /// [startX]
  /// The start location of the interval expressed as a precise coordinate
  /// (Quantity) or expressed as a range (Range) that is defined by low
  /// (range start) and high (range end). Open-ended ranges, where one end is
  /// unbounded, may be supported.
  StartXMolecularDefinitionRepresentationRelativeEditCoordinateIntervalBuilder?
      startX;

  /// Getter for [startQuantity] as a QuantityBuilder
  QuantityBuilder? get startQuantity => startX?.isAs<QuantityBuilder>();

  /// Getter for [startRange] as a RangeBuilder
  RangeBuilder? get startRange => startX?.isAs<RangeBuilder>();

  /// [endX]
  /// The end location of the interval expressed as a precise coordinate
  /// (Quantity) or as a range (Range) that is defined by low (range start)
  /// and high (range end). Open-ended ranges, where one end is unbounded,
  /// may be supported..
  EndXMolecularDefinitionRepresentationRelativeEditCoordinateIntervalBuilder?
      endX;

  /// Getter for [endQuantity] as a QuantityBuilder
  QuantityBuilder? get endQuantity => endX?.isAs<QuantityBuilder>();

  /// Getter for [endRange] as a RangeBuilder
  RangeBuilder? get endRange => endX?.isAs<RangeBuilder>();

  /// Converts a [MolecularDefinitionCoordinateInterval2Builder]
  /// to [MolecularDefinitionCoordinateInterval2]
  @override
  MolecularDefinitionCoordinateInterval2 build() =>
      MolecularDefinitionCoordinateInterval2.fromJson(toJson());

  /// Converts a [MolecularDefinitionCoordinateInterval2Builder]
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
    addField('coordinateSystem', coordinateSystem);
    if (startX != null) {
      final fhirType = startX!.fhirType;
      addField('start${fhirType.capitalizeFirstLetter()}', startX);
    }

    if (endX != null) {
      final fhirType = endX!.fhirType;
      addField('end${fhirType.capitalizeFirstLetter()}', endX);
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
      'coordinateSystem',
      'startX',
      'endX',
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
      case 'coordinateSystem':
        if (coordinateSystem != null) {
          fields.add(coordinateSystem!);
        }
      case 'start':
        if (startX != null) {
          fields.add(startX!);
        }
      case 'startX':
        if (startX != null) {
          fields.add(startX!);
        }
      case 'startQuantity':
        if (startX is QuantityBuilder) {
          fields.add(startX!);
        }
      case 'startRange':
        if (startX is RangeBuilder) {
          fields.add(startX!);
        }
      case 'end':
        if (endX != null) {
          fields.add(endX!);
        }
      case 'endX':
        if (endX != null) {
          fields.add(endX!);
        }
      case 'endQuantity':
        if (endX is QuantityBuilder) {
          fields.add(endX!);
        }
      case 'endRange':
        if (endX is RangeBuilder) {
          fields.add(endX!);
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
      case 'coordinateSystem':
        {
          if (child is MolecularDefinitionCoordinateSystemBuilder) {
            coordinateSystem = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'start':
      case 'startX':
        {
          if (child
              is StartXMolecularDefinitionRepresentationRelativeEditCoordinateIntervalBuilder) {
            startX = child;
            return;
          } else {
            if (child is QuantityBuilder) {
              startX = child;
              return;
            }
            if (child is RangeBuilder) {
              startX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'startQuantity':
        {
          if (child is QuantityBuilder) {
            startX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'startRange':
        {
          if (child is RangeBuilder) {
            startX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'end':
      case 'endX':
        {
          if (child
              is EndXMolecularDefinitionRepresentationRelativeEditCoordinateIntervalBuilder) {
            endX = child;
            return;
          } else {
            if (child is QuantityBuilder) {
              endX = child;
              return;
            }
            if (child is RangeBuilder) {
              endX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'endQuantity':
        {
          if (child is QuantityBuilder) {
            endX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'endRange':
        {
          if (child is RangeBuilder) {
            endX = child;
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
      case 'coordinateSystem':
        return ['MolecularDefinitionCoordinateSystemBuilder'];
      case 'start':
      case 'startX':
        return [
          'QuantityBuilder',
          'RangeBuilder',
        ];
      case 'startQuantity':
        return ['QuantityBuilder'];
      case 'startRange':
        return ['RangeBuilder'];
      case 'end':
      case 'endX':
        return [
          'QuantityBuilder',
          'RangeBuilder',
        ];
      case 'endQuantity':
        return ['QuantityBuilder'];
      case 'endRange':
        return ['RangeBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularDefinitionCoordinateInterval2Builder]
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
      case 'coordinateSystem':
        {
          coordinateSystem = MolecularDefinitionCoordinateSystemBuilder.empty();
          return;
        }
      case 'start':
      case 'startX':
      case 'startQuantity':
        {
          startX = QuantityBuilder.empty();
          return;
        }
      case 'startRange':
        {
          startX = RangeBuilder.empty();
          return;
        }
      case 'end':
      case 'endX':
      case 'endQuantity':
        {
          endX = QuantityBuilder.empty();
          return;
        }
      case 'endRange':
        {
          endX = RangeBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MolecularDefinitionCoordinateInterval2Builder clone() =>
      throw UnimplementedError();
  @override
  MolecularDefinitionCoordinateInterval2Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    MolecularDefinitionCoordinateSystemBuilder? coordinateSystem,
    StartXMolecularDefinitionRepresentationRelativeEditCoordinateIntervalBuilder?
        startX,
    EndXMolecularDefinitionRepresentationRelativeEditCoordinateIntervalBuilder?
        endX,
    QuantityBuilder? startQuantity,
    RangeBuilder? startRange,
    QuantityBuilder? endQuantity,
    RangeBuilder? endRange,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MolecularDefinitionCoordinateInterval2Builder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      coordinateSystem: coordinateSystem ?? this.coordinateSystem,
      startX: startX ?? startQuantity ?? startRange ?? this.startX,
      endX: endX ?? endQuantity ?? endRange ?? this.endX,
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
    if (o is! MolecularDefinitionCoordinateInterval2Builder) {
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
      coordinateSystem,
      o.coordinateSystem,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      startX,
      o.startX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      endX,
      o.endX,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularDefinitionCoordinateSystem2Builder]
/// The coordinate system used to define the location, which may vary
/// depending on application or context of use.
class MolecularDefinitionCoordinateSystem2Builder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MolecularDefinitionCoordinateSystem2Builder]

  MolecularDefinitionCoordinateSystem2Builder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.system,
    this.origin,
    this.normalizationMethod,
    super.disallowExtensions,
  }) : super(
          objectPath:
              'MolecularDefinition.representation.relative.edit.coordinateInterval.coordinateSystem',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MolecularDefinitionCoordinateSystem2Builder.empty() =>
      MolecularDefinitionCoordinateSystem2Builder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularDefinitionCoordinateSystem2Builder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath =
        'MolecularDefinition.representation.relative.edit.coordinateInterval.coordinateSystem';
    return MolecularDefinitionCoordinateSystem2Builder(
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
      system: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'system',
        CodeableConceptBuilder.fromJson,
        '$objectPath.system',
      ),
      origin: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'origin',
        CodeableConceptBuilder.fromJson,
        '$objectPath.origin',
      ),
      normalizationMethod: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'normalizationMethod',
        CodeableConceptBuilder.fromJson,
        '$objectPath.normalizationMethod',
      ),
    );
  }

  /// Deserialize [MolecularDefinitionCoordinateSystem2Builder]
  /// from a [String] or [YamlMap] object
  factory MolecularDefinitionCoordinateSystem2Builder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularDefinitionCoordinateSystem2Builder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularDefinitionCoordinateSystem2Builder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularDefinitionCoordinateSystem2Builder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularDefinitionCoordinateSystem2Builder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularDefinitionCoordinateSystem2Builder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularDefinitionCoordinateSystem2Builder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularDefinitionCoordinateSystem2';

  /// [system]
  /// A definition of the coordinate system. Examples include 1-based
  /// character counting, and 0-based interval counting.
  CodeableConceptBuilder? system;

  /// [origin]
  /// The location of the origin (0 or 1, depending on the coordinate
  /// system). For example, this could specify the origin is at the start of
  /// the sequence (e.g., 5’ end or N-terminus), the beginning of a
  /// designated feature (e.g., A in the ATG translation initiation codon),
  /// or the end of a designated feature (e.g., 3’ end of an exon, from which
  /// an offset is calculated into the following intron).
  CodeableConceptBuilder? origin;

  /// [normalizationMethod]
  /// The normalization method used for determining a location within the
  /// coordinate system. Examples include left shift (e.g., VCF), right shift
  /// (e.g., HGVS), or fully justified (e.g., VOCA).
  CodeableConceptBuilder? normalizationMethod;

  /// Converts a [MolecularDefinitionCoordinateSystem2Builder]
  /// to [MolecularDefinitionCoordinateSystem2]
  @override
  MolecularDefinitionCoordinateSystem2 build() =>
      MolecularDefinitionCoordinateSystem2.fromJson(toJson());

  /// Converts a [MolecularDefinitionCoordinateSystem2Builder]
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
    addField('system', system);
    addField('origin', origin);
    addField('normalizationMethod', normalizationMethod);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'system',
      'origin',
      'normalizationMethod',
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
      case 'system':
        if (system != null) {
          fields.add(system!);
        }
      case 'origin':
        if (origin != null) {
          fields.add(origin!);
        }
      case 'normalizationMethod':
        if (normalizationMethod != null) {
          fields.add(normalizationMethod!);
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
      case 'system':
        {
          if (child is CodeableConceptBuilder) {
            system = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'origin':
        {
          if (child is CodeableConceptBuilder) {
            origin = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'normalizationMethod':
        {
          if (child is CodeableConceptBuilder) {
            normalizationMethod = child;
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
      case 'system':
        return ['CodeableConceptBuilder'];
      case 'origin':
        return ['CodeableConceptBuilder'];
      case 'normalizationMethod':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularDefinitionCoordinateSystem2Builder]
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
      case 'system':
        {
          system = CodeableConceptBuilder.empty();
          return;
        }
      case 'origin':
        {
          origin = CodeableConceptBuilder.empty();
          return;
        }
      case 'normalizationMethod':
        {
          normalizationMethod = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MolecularDefinitionCoordinateSystem2Builder clone() =>
      throw UnimplementedError();
  @override
  MolecularDefinitionCoordinateSystem2Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? system,
    CodeableConceptBuilder? origin,
    CodeableConceptBuilder? normalizationMethod,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MolecularDefinitionCoordinateSystem2Builder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      system: system ?? this.system,
      origin: origin ?? this.origin,
      normalizationMethod: normalizationMethod ?? this.normalizationMethod,
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
    if (o is! MolecularDefinitionCoordinateSystem2Builder) {
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
      system,
      o.system,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      origin,
      o.origin,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      normalizationMethod,
      o.normalizationMethod,
    )) {
      return false;
    }
    return true;
  }
}
