import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart'
    show
        MolecularSequence,
        MolecularSequenceConcatenated,
        MolecularSequenceEdit,
        MolecularSequenceExtracted,
        MolecularSequenceLiteral,
        MolecularSequenceRelative,
        MolecularSequenceRepeated,
        MolecularSequenceSequenceElement,
        R6ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r6_mapping/fhir_r6_mapping.dart';
import 'package:yaml/yaml.dart';

/// [MolecularSequenceBuilder]
/// Representation of a molecular sequence.
class MolecularSequenceBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [MolecularSequenceBuilder]

  MolecularSequenceBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.type,
    this.literal,
    this.file,
    this.relative,
    this.extracted,
    this.repeated,
    this.concatenated,
  }) : super(
          objectPath: 'MolecularSequence',
          resourceType: R6ResourceType.MolecularSequence,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MolecularSequenceBuilder.empty() => MolecularSequenceBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MolecularSequence';
    return MolecularSequenceBuilder(
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
      type: JsonParser.parsePrimitive<SequenceTypeBuilder>(
        json,
        'type',
        SequenceTypeBuilder.fromJson,
        '$objectPath.type',
      ),
      literal: (json['literal'] as List<dynamic>?)
          ?.map<MolecularSequenceLiteralBuilder>(
            (v) => MolecularSequenceLiteralBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.literal',
              },
            ),
          )
          .toList(),
      file: (json['file'] as List<dynamic>?)
          ?.map<AttachmentBuilder>(
            (v) => AttachmentBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.file',
              },
            ),
          )
          .toList(),
      relative: (json['relative'] as List<dynamic>?)
          ?.map<MolecularSequenceRelativeBuilder>(
            (v) => MolecularSequenceRelativeBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.relative',
              },
            ),
          )
          .toList(),
      extracted: (json['extracted'] as List<dynamic>?)
          ?.map<MolecularSequenceExtractedBuilder>(
            (v) => MolecularSequenceExtractedBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extracted',
              },
            ),
          )
          .toList(),
      repeated: (json['repeated'] as List<dynamic>?)
          ?.map<MolecularSequenceRepeatedBuilder>(
            (v) => MolecularSequenceRepeatedBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.repeated',
              },
            ),
          )
          .toList(),
      concatenated:
          JsonParser.parseObject<MolecularSequenceConcatenatedBuilder>(
        json,
        'concatenated',
        MolecularSequenceConcatenatedBuilder.fromJson,
        '$objectPath.concatenated',
      ),
    );
  }

  /// Deserialize [MolecularSequenceBuilder]
  /// from a [String] or [YamlMap] object
  factory MolecularSequenceBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularSequenceBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularSequenceBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularSequenceBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularSequenceBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularSequenceBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularSequence';

  /// [identifier]
  /// A unique identifier for this particular sequence instance.
  List<IdentifierBuilder>? identifier;

  /// [type]
  /// The type of the Molecular Sequence (Amino Acid Sequence, DNA Sequence,
  /// RNA Sequence).
  SequenceTypeBuilder? type;

  /// [literal]
  /// A literal representation of a Molecular Sequence.
  List<MolecularSequenceLiteralBuilder>? literal;

  /// [file]
  /// Sequence that was observed as file content. Can be an actual file
  /// contents, or referenced by a URL to an external system.
  List<AttachmentBuilder>? file;

  /// [relative]
  /// A Molecular Sequence that is represented as an ordered series of edits
  /// on a specified starting sequence.
  List<MolecularSequenceRelativeBuilder>? relative;

  /// [extracted]
  /// A Molecular Sequence that is represented as an extracted portion of a
  /// different Molecular Sequence.
  List<MolecularSequenceExtractedBuilder>? extracted;

  /// [repeated]
  /// A Molecular Sequence that is represented as a repeated sequence motif.
  List<MolecularSequenceRepeatedBuilder>? repeated;

  /// [concatenated]
  /// A Molecular Sequence that is represented as an ordered concatenation of
  /// two or more Molecular Sequences.
  MolecularSequenceConcatenatedBuilder? concatenated;

  /// Converts a [MolecularSequenceBuilder]
  /// to [MolecularSequence]
  @override
  MolecularSequence build() => MolecularSequence.fromJson(toJson());

  /// Converts a [MolecularSequenceBuilder]
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
    addField('type', type);
    addField('literal', literal);
    addField('file', file);
    addField('relative', relative);
    addField('extracted', extracted);
    addField('repeated', repeated);
    addField('concatenated', concatenated);
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
      'type',
      'literal',
      'file',
      'relative',
      'extracted',
      'repeated',
      'concatenated',
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'literal':
        if (literal != null) {
          fields.addAll(literal!);
        }
      case 'file':
        if (file != null) {
          fields.addAll(file!);
        }
      case 'relative':
        if (relative != null) {
          fields.addAll(relative!);
        }
      case 'extracted':
        if (extracted != null) {
          fields.addAll(extracted!);
        }
      case 'repeated':
        if (repeated != null) {
          fields.addAll(repeated!);
        }
      case 'concatenated':
        if (concatenated != null) {
          fields.add(concatenated!);
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
      case 'type':
        {
          if (child is SequenceTypeBuilder) {
            type = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = SequenceTypeBuilder(stringValue);
                type = converted;
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
      case 'literal':
        {
          if (child is List<MolecularSequenceLiteralBuilder>) {
            // Replace or create new list
            literal = child;
            return;
          } else if (child is MolecularSequenceLiteralBuilder) {
            // Add single element to existing list or create new list
            literal = [
              ...(literal ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'file':
        {
          if (child is List<AttachmentBuilder>) {
            // Replace or create new list
            file = child;
            return;
          } else if (child is AttachmentBuilder) {
            // Add single element to existing list or create new list
            file = [
              ...(file ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'relative':
        {
          if (child is List<MolecularSequenceRelativeBuilder>) {
            // Replace or create new list
            relative = child;
            return;
          } else if (child is MolecularSequenceRelativeBuilder) {
            // Add single element to existing list or create new list
            relative = [
              ...(relative ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extracted':
        {
          if (child is List<MolecularSequenceExtractedBuilder>) {
            // Replace or create new list
            extracted = child;
            return;
          } else if (child is MolecularSequenceExtractedBuilder) {
            // Add single element to existing list or create new list
            extracted = [
              ...(extracted ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'repeated':
        {
          if (child is List<MolecularSequenceRepeatedBuilder>) {
            // Replace or create new list
            repeated = child;
            return;
          } else if (child is MolecularSequenceRepeatedBuilder) {
            // Add single element to existing list or create new list
            repeated = [
              ...(repeated ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'concatenated':
        {
          if (child is MolecularSequenceConcatenatedBuilder) {
            concatenated = child;
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
      case 'type':
        return ['FhirCodeEnumBuilder'];
      case 'literal':
        return ['MolecularSequenceLiteralBuilder'];
      case 'file':
        return ['AttachmentBuilder'];
      case 'relative':
        return ['MolecularSequenceRelativeBuilder'];
      case 'extracted':
        return ['MolecularSequenceExtractedBuilder'];
      case 'repeated':
        return ['MolecularSequenceRepeatedBuilder'];
      case 'concatenated':
        return ['MolecularSequenceConcatenatedBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularSequenceBuilder]
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
      case 'type':
        {
          type = SequenceTypeBuilder.empty();
          return;
        }
      case 'literal':
        {
          literal = <MolecularSequenceLiteralBuilder>[];
          return;
        }
      case 'file':
        {
          file = <AttachmentBuilder>[];
          return;
        }
      case 'relative':
        {
          relative = <MolecularSequenceRelativeBuilder>[];
          return;
        }
      case 'extracted':
        {
          extracted = <MolecularSequenceExtractedBuilder>[];
          return;
        }
      case 'repeated':
        {
          repeated = <MolecularSequenceRepeatedBuilder>[];
          return;
        }
      case 'concatenated':
        {
          concatenated = MolecularSequenceConcatenatedBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MolecularSequenceBuilder clone() => throw UnimplementedError();
  @override
  MolecularSequenceBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    SequenceTypeBuilder? type,
    List<MolecularSequenceLiteralBuilder>? literal,
    List<AttachmentBuilder>? file,
    List<MolecularSequenceRelativeBuilder>? relative,
    List<MolecularSequenceExtractedBuilder>? extracted,
    List<MolecularSequenceRepeatedBuilder>? repeated,
    MolecularSequenceConcatenatedBuilder? concatenated,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = MolecularSequenceBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      type: type ?? this.type,
      literal: literal ?? this.literal,
      file: file ?? this.file,
      relative: relative ?? this.relative,
      extracted: extracted ?? this.extracted,
      repeated: repeated ?? this.repeated,
      concatenated: concatenated ?? this.concatenated,
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
    if (o is! MolecularSequenceBuilder) {
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
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<MolecularSequenceLiteralBuilder>(
      literal,
      o.literal,
    )) {
      return false;
    }
    if (!listEquals<AttachmentBuilder>(
      file,
      o.file,
    )) {
      return false;
    }
    if (!listEquals<MolecularSequenceRelativeBuilder>(
      relative,
      o.relative,
    )) {
      return false;
    }
    if (!listEquals<MolecularSequenceExtractedBuilder>(
      extracted,
      o.extracted,
    )) {
      return false;
    }
    if (!listEquals<MolecularSequenceRepeatedBuilder>(
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
    return true;
  }
}

/// [MolecularSequenceLiteralBuilder]
/// A literal representation of a Molecular Sequence.
class MolecularSequenceLiteralBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MolecularSequenceLiteralBuilder]

  MolecularSequenceLiteralBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.sequenceValue,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MolecularSequence.literal',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MolecularSequenceLiteralBuilder.empty() =>
      MolecularSequenceLiteralBuilder(
        sequenceValue: FhirStringBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceLiteralBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MolecularSequence.literal';
    return MolecularSequenceLiteralBuilder(
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
      sequenceValue: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'sequenceValue',
        FhirStringBuilder.fromJson,
        '$objectPath.sequenceValue',
      ),
    );
  }

  /// Deserialize [MolecularSequenceLiteralBuilder]
  /// from a [String] or [YamlMap] object
  factory MolecularSequenceLiteralBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularSequenceLiteralBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularSequenceLiteralBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularSequenceLiteralBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularSequenceLiteralBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceLiteralBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularSequenceLiteralBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularSequenceLiteral';

  /// [sequenceValue]
  /// The primary (linear) sequence, expressed as a literal string.
  FhirStringBuilder? sequenceValue;

  /// Converts a [MolecularSequenceLiteralBuilder]
  /// to [MolecularSequenceLiteral]
  @override
  MolecularSequenceLiteral build() =>
      MolecularSequenceLiteral.fromJson(toJson());

  /// Converts a [MolecularSequenceLiteralBuilder]
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
    addField('sequenceValue', sequenceValue);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'sequenceValue',
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
      case 'sequenceValue':
        if (sequenceValue != null) {
          fields.add(sequenceValue!);
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
      case 'sequenceValue':
        {
          if (child is FhirStringBuilder) {
            sequenceValue = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                sequenceValue = converted;
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
      case 'sequenceValue':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularSequenceLiteralBuilder]
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
      case 'sequenceValue':
        {
          sequenceValue = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MolecularSequenceLiteralBuilder clone() => throw UnimplementedError();
  @override
  MolecularSequenceLiteralBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? sequenceValue,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MolecularSequenceLiteralBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequenceValue: sequenceValue ?? this.sequenceValue,
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
    if (o is! MolecularSequenceLiteralBuilder) {
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
      sequenceValue,
      o.sequenceValue,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularSequenceRelativeBuilder]
/// A Molecular Sequence that is represented as an ordered series of edits
/// on a specified starting sequence.
class MolecularSequenceRelativeBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MolecularSequenceRelativeBuilder]

  MolecularSequenceRelativeBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.startingSequence,
    this.edit,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MolecularSequence.relative',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MolecularSequenceRelativeBuilder.empty() =>
      MolecularSequenceRelativeBuilder(
        startingSequence: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceRelativeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MolecularSequence.relative';
    return MolecularSequenceRelativeBuilder(
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
      startingSequence: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'startingSequence',
        ReferenceBuilder.fromJson,
        '$objectPath.startingSequence',
      ),
      edit: (json['edit'] as List<dynamic>?)
          ?.map<MolecularSequenceEditBuilder>(
            (v) => MolecularSequenceEditBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.edit',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MolecularSequenceRelativeBuilder]
  /// from a [String] or [YamlMap] object
  factory MolecularSequenceRelativeBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularSequenceRelativeBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularSequenceRelativeBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularSequenceRelativeBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularSequenceRelativeBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceRelativeBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularSequenceRelativeBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularSequenceRelative';

  /// [startingSequence]
  /// The Molecular Sequence that serves as the starting sequence, on which
  /// edits will be applied.
  ReferenceBuilder? startingSequence;

  /// [edit]
  /// An edit (change) made to a sequence.
  List<MolecularSequenceEditBuilder>? edit;

  /// Converts a [MolecularSequenceRelativeBuilder]
  /// to [MolecularSequenceRelative]
  @override
  MolecularSequenceRelative build() =>
      MolecularSequenceRelative.fromJson(toJson());

  /// Converts a [MolecularSequenceRelativeBuilder]
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
    addField('startingSequence', startingSequence);
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
      'startingSequence',
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
      case 'startingSequence':
        if (startingSequence != null) {
          fields.add(startingSequence!);
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
      case 'startingSequence':
        {
          if (child is ReferenceBuilder) {
            startingSequence = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'edit':
        {
          if (child is List<MolecularSequenceEditBuilder>) {
            // Replace or create new list
            edit = child;
            return;
          } else if (child is MolecularSequenceEditBuilder) {
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
      case 'startingSequence':
        return ['ReferenceBuilder'];
      case 'edit':
        return ['MolecularSequenceEditBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularSequenceRelativeBuilder]
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
      case 'startingSequence':
        {
          startingSequence = ReferenceBuilder.empty();
          return;
        }
      case 'edit':
        {
          edit = <MolecularSequenceEditBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MolecularSequenceRelativeBuilder clone() => throw UnimplementedError();
  @override
  MolecularSequenceRelativeBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ReferenceBuilder? startingSequence,
    List<MolecularSequenceEditBuilder>? edit,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MolecularSequenceRelativeBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      startingSequence: startingSequence ?? this.startingSequence,
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
    if (o is! MolecularSequenceRelativeBuilder) {
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
      startingSequence,
      o.startingSequence,
    )) {
      return false;
    }
    if (!listEquals<MolecularSequenceEditBuilder>(
      edit,
      o.edit,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularSequenceEditBuilder]
/// An edit (change) made to a sequence.
class MolecularSequenceEditBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MolecularSequenceEditBuilder]

  MolecularSequenceEditBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.editOrder,
    this.coordinateSystem,
    this.start,
    this.end,
    this.replacementSequence,
    this.replacedSequence,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MolecularSequence.relative.edit',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MolecularSequenceEditBuilder.empty() => MolecularSequenceEditBuilder(
        coordinateSystem: CodeableConceptBuilder.empty(),
        start: FhirIntegerBuilder.empty(),
        end: FhirIntegerBuilder.empty(),
        replacementSequence: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceEditBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MolecularSequence.relative.edit';
    return MolecularSequenceEditBuilder(
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
      coordinateSystem: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'coordinateSystem',
        CodeableConceptBuilder.fromJson,
        '$objectPath.coordinateSystem',
      ),
      start: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'start',
        FhirIntegerBuilder.fromJson,
        '$objectPath.start',
      ),
      end: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'end',
        FhirIntegerBuilder.fromJson,
        '$objectPath.end',
      ),
      replacementSequence: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'replacementSequence',
        ReferenceBuilder.fromJson,
        '$objectPath.replacementSequence',
      ),
      replacedSequence: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'replacedSequence',
        ReferenceBuilder.fromJson,
        '$objectPath.replacedSequence',
      ),
    );
  }

  /// Deserialize [MolecularSequenceEditBuilder]
  /// from a [String] or [YamlMap] object
  factory MolecularSequenceEditBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularSequenceEditBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularSequenceEditBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularSequenceEditBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularSequenceEditBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceEditBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularSequenceEditBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularSequenceEdit';

  /// [editOrder]
  /// The order of this edit, relative to other edits on the starting
  /// sequence.
  FhirIntegerBuilder? editOrder;

  /// [coordinateSystem]
  /// The coordinate system used to define the edited intervals on the
  /// starting sequence. Coordinate systems are usually 0- or 1-based.
  CodeableConceptBuilder? coordinateSystem;

  /// [start]
  /// The start coordinate of the interval that will be edited.
  FhirIntegerBuilder? start;

  /// [end]
  /// The end coordinate of the interval that will be edited.
  FhirIntegerBuilder? end;

  /// [replacementSequence]
  /// The sequence that defines the replacement sequence used in the edit
  /// operation.
  ReferenceBuilder? replacementSequence;

  /// [replacedSequence]
  /// The sequence on the 'starting' sequence for the edit operation, defined
  /// by the specified interval, that will be replaced during the edit.
  ReferenceBuilder? replacedSequence;

  /// Converts a [MolecularSequenceEditBuilder]
  /// to [MolecularSequenceEdit]
  @override
  MolecularSequenceEdit build() => MolecularSequenceEdit.fromJson(toJson());

  /// Converts a [MolecularSequenceEditBuilder]
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
    addField('coordinateSystem', coordinateSystem);
    addField('start', start);
    addField('end', end);
    addField('replacementSequence', replacementSequence);
    addField('replacedSequence', replacedSequence);
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
      'coordinateSystem',
      'start',
      'end',
      'replacementSequence',
      'replacedSequence',
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
      case 'coordinateSystem':
        if (coordinateSystem != null) {
          fields.add(coordinateSystem!);
        }
      case 'start':
        if (start != null) {
          fields.add(start!);
        }
      case 'end':
        if (end != null) {
          fields.add(end!);
        }
      case 'replacementSequence':
        if (replacementSequence != null) {
          fields.add(replacementSequence!);
        }
      case 'replacedSequence':
        if (replacedSequence != null) {
          fields.add(replacedSequence!);
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
      case 'coordinateSystem':
        {
          if (child is CodeableConceptBuilder) {
            coordinateSystem = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'start':
        {
          if (child is FhirIntegerBuilder) {
            start = child;
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
                  start = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'end':
        {
          if (child is FhirIntegerBuilder) {
            end = child;
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
                  end = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'replacementSequence':
        {
          if (child is ReferenceBuilder) {
            replacementSequence = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'replacedSequence':
        {
          if (child is ReferenceBuilder) {
            replacedSequence = child;
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
      case 'coordinateSystem':
        return ['CodeableConceptBuilder'];
      case 'start':
        return ['FhirIntegerBuilder'];
      case 'end':
        return ['FhirIntegerBuilder'];
      case 'replacementSequence':
        return ['ReferenceBuilder'];
      case 'replacedSequence':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularSequenceEditBuilder]
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
      case 'coordinateSystem':
        {
          coordinateSystem = CodeableConceptBuilder.empty();
          return;
        }
      case 'start':
        {
          start = FhirIntegerBuilder.empty();
          return;
        }
      case 'end':
        {
          end = FhirIntegerBuilder.empty();
          return;
        }
      case 'replacementSequence':
        {
          replacementSequence = ReferenceBuilder.empty();
          return;
        }
      case 'replacedSequence':
        {
          replacedSequence = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MolecularSequenceEditBuilder clone() => throw UnimplementedError();
  @override
  MolecularSequenceEditBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirIntegerBuilder? editOrder,
    CodeableConceptBuilder? coordinateSystem,
    FhirIntegerBuilder? start,
    FhirIntegerBuilder? end,
    ReferenceBuilder? replacementSequence,
    ReferenceBuilder? replacedSequence,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MolecularSequenceEditBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      editOrder: editOrder ?? this.editOrder,
      coordinateSystem: coordinateSystem ?? this.coordinateSystem,
      start: start ?? this.start,
      end: end ?? this.end,
      replacementSequence: replacementSequence ?? this.replacementSequence,
      replacedSequence: replacedSequence ?? this.replacedSequence,
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
    if (o is! MolecularSequenceEditBuilder) {
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
      coordinateSystem,
      o.coordinateSystem,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      start,
      o.start,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      end,
      o.end,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      replacementSequence,
      o.replacementSequence,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      replacedSequence,
      o.replacedSequence,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularSequenceExtractedBuilder]
/// A Molecular Sequence that is represented as an extracted portion of a
/// different Molecular Sequence.
class MolecularSequenceExtractedBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MolecularSequenceExtractedBuilder]

  MolecularSequenceExtractedBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.startingSequence,
    this.start,
    this.end,
    this.coordinateSystem,
    this.reverseComplement,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MolecularSequence.extracted',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MolecularSequenceExtractedBuilder.empty() =>
      MolecularSequenceExtractedBuilder(
        startingSequence: ReferenceBuilder.empty(),
        start: FhirIntegerBuilder.empty(),
        end: FhirIntegerBuilder.empty(),
        coordinateSystem: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceExtractedBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MolecularSequence.extracted';
    return MolecularSequenceExtractedBuilder(
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
      startingSequence: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'startingSequence',
        ReferenceBuilder.fromJson,
        '$objectPath.startingSequence',
      ),
      start: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'start',
        FhirIntegerBuilder.fromJson,
        '$objectPath.start',
      ),
      end: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'end',
        FhirIntegerBuilder.fromJson,
        '$objectPath.end',
      ),
      coordinateSystem: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'coordinateSystem',
        CodeableConceptBuilder.fromJson,
        '$objectPath.coordinateSystem',
      ),
      reverseComplement: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'reverseComplement',
        FhirBooleanBuilder.fromJson,
        '$objectPath.reverseComplement',
      ),
    );
  }

  /// Deserialize [MolecularSequenceExtractedBuilder]
  /// from a [String] or [YamlMap] object
  factory MolecularSequenceExtractedBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularSequenceExtractedBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularSequenceExtractedBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularSequenceExtractedBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularSequenceExtractedBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceExtractedBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularSequenceExtractedBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularSequenceExtracted';

  /// [startingSequence]
  /// The Molecular Sequence that serves as the parent sequence, from which
  /// the intended sequence will be extracted.
  ReferenceBuilder? startingSequence;

  /// [start]
  /// The start coordinate (on the parent sequence) of the interval that
  /// defines the subsequence to be extracted.
  FhirIntegerBuilder? start;

  /// [end]
  /// The end coordinate (on the parent sequence) of the interval that
  /// defines the subsequence to be extracted.
  FhirIntegerBuilder? end;

  /// [coordinateSystem]
  /// The coordinate system used to define the interval that defines the
  /// subsequence to be extracted. Coordinate systems are usually 0- or
  /// 1-based.
  CodeableConceptBuilder? coordinateSystem;

  /// [reverseComplement]
  /// A flag that indicates whether the extracted sequence should be reverse
  /// complemented.
  FhirBooleanBuilder? reverseComplement;

  /// Converts a [MolecularSequenceExtractedBuilder]
  /// to [MolecularSequenceExtracted]
  @override
  MolecularSequenceExtracted build() =>
      MolecularSequenceExtracted.fromJson(toJson());

  /// Converts a [MolecularSequenceExtractedBuilder]
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
    addField('startingSequence', startingSequence);
    addField('start', start);
    addField('end', end);
    addField('coordinateSystem', coordinateSystem);
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
      'startingSequence',
      'start',
      'end',
      'coordinateSystem',
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
      case 'startingSequence':
        if (startingSequence != null) {
          fields.add(startingSequence!);
        }
      case 'start':
        if (start != null) {
          fields.add(start!);
        }
      case 'end':
        if (end != null) {
          fields.add(end!);
        }
      case 'coordinateSystem':
        if (coordinateSystem != null) {
          fields.add(coordinateSystem!);
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
      case 'startingSequence':
        {
          if (child is ReferenceBuilder) {
            startingSequence = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'start':
        {
          if (child is FhirIntegerBuilder) {
            start = child;
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
                  start = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'end':
        {
          if (child is FhirIntegerBuilder) {
            end = child;
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
                  end = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'coordinateSystem':
        {
          if (child is CodeableConceptBuilder) {
            coordinateSystem = child;
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
      case 'startingSequence':
        return ['ReferenceBuilder'];
      case 'start':
        return ['FhirIntegerBuilder'];
      case 'end':
        return ['FhirIntegerBuilder'];
      case 'coordinateSystem':
        return ['CodeableConceptBuilder'];
      case 'reverseComplement':
        return ['FhirBooleanBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularSequenceExtractedBuilder]
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
      case 'startingSequence':
        {
          startingSequence = ReferenceBuilder.empty();
          return;
        }
      case 'start':
        {
          start = FhirIntegerBuilder.empty();
          return;
        }
      case 'end':
        {
          end = FhirIntegerBuilder.empty();
          return;
        }
      case 'coordinateSystem':
        {
          coordinateSystem = CodeableConceptBuilder.empty();
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
  MolecularSequenceExtractedBuilder clone() => throw UnimplementedError();
  @override
  MolecularSequenceExtractedBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ReferenceBuilder? startingSequence,
    FhirIntegerBuilder? start,
    FhirIntegerBuilder? end,
    CodeableConceptBuilder? coordinateSystem,
    FhirBooleanBuilder? reverseComplement,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MolecularSequenceExtractedBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      startingSequence: startingSequence ?? this.startingSequence,
      start: start ?? this.start,
      end: end ?? this.end,
      coordinateSystem: coordinateSystem ?? this.coordinateSystem,
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
    if (o is! MolecularSequenceExtractedBuilder) {
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
      startingSequence,
      o.startingSequence,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      start,
      o.start,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      end,
      o.end,
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
      reverseComplement,
      o.reverseComplement,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularSequenceRepeatedBuilder]
/// A Molecular Sequence that is represented as a repeated sequence motif.
class MolecularSequenceRepeatedBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MolecularSequenceRepeatedBuilder]

  MolecularSequenceRepeatedBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.sequenceMotif,
    this.copyCount,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MolecularSequence.repeated',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MolecularSequenceRepeatedBuilder.empty() =>
      MolecularSequenceRepeatedBuilder(
        sequenceMotif: ReferenceBuilder.empty(),
        copyCount: FhirIntegerBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceRepeatedBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MolecularSequence.repeated';
    return MolecularSequenceRepeatedBuilder(
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

  /// Deserialize [MolecularSequenceRepeatedBuilder]
  /// from a [String] or [YamlMap] object
  factory MolecularSequenceRepeatedBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularSequenceRepeatedBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularSequenceRepeatedBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularSequenceRepeatedBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularSequenceRepeatedBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceRepeatedBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularSequenceRepeatedBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularSequenceRepeated';

  /// [sequenceMotif]
  /// The sequence that defines the repeated motif.
  ReferenceBuilder? sequenceMotif;

  /// [copyCount]
  /// The number of repeats (copies) of the sequence motif.
  FhirIntegerBuilder? copyCount;

  /// Converts a [MolecularSequenceRepeatedBuilder]
  /// to [MolecularSequenceRepeated]
  @override
  MolecularSequenceRepeated build() =>
      MolecularSequenceRepeated.fromJson(toJson());

  /// Converts a [MolecularSequenceRepeatedBuilder]
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

  /// Creates a new [MolecularSequenceRepeatedBuilder]
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
  MolecularSequenceRepeatedBuilder clone() => throw UnimplementedError();
  @override
  MolecularSequenceRepeatedBuilder copyWith({
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
    final newResult = MolecularSequenceRepeatedBuilder(
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
    if (o is! MolecularSequenceRepeatedBuilder) {
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

/// [MolecularSequenceConcatenatedBuilder]
/// A Molecular Sequence that is represented as an ordered concatenation of
/// two or more Molecular Sequences.
class MolecularSequenceConcatenatedBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MolecularSequenceConcatenatedBuilder]

  MolecularSequenceConcatenatedBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.sequenceElement,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MolecularSequence.concatenated',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MolecularSequenceConcatenatedBuilder.empty() =>
      MolecularSequenceConcatenatedBuilder(
        sequenceElement: <MolecularSequenceSequenceElementBuilder>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceConcatenatedBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MolecularSequence.concatenated';
    return MolecularSequenceConcatenatedBuilder(
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
          ?.map<MolecularSequenceSequenceElementBuilder>(
            (v) => MolecularSequenceSequenceElementBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.sequenceElement',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MolecularSequenceConcatenatedBuilder]
  /// from a [String] or [YamlMap] object
  factory MolecularSequenceConcatenatedBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularSequenceConcatenatedBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularSequenceConcatenatedBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularSequenceConcatenatedBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularSequenceConcatenatedBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceConcatenatedBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularSequenceConcatenatedBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularSequenceConcatenated';

  /// [sequenceElement]
  /// One element of a concatenated Molecular Sequence.
  List<MolecularSequenceSequenceElementBuilder>? sequenceElement;

  /// Converts a [MolecularSequenceConcatenatedBuilder]
  /// to [MolecularSequenceConcatenated]
  @override
  MolecularSequenceConcatenated build() =>
      MolecularSequenceConcatenated.fromJson(toJson());

  /// Converts a [MolecularSequenceConcatenatedBuilder]
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
          if (child is List<MolecularSequenceSequenceElementBuilder>) {
            // Replace or create new list
            sequenceElement = child;
            return;
          } else if (child is MolecularSequenceSequenceElementBuilder) {
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
        return ['MolecularSequenceSequenceElementBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularSequenceConcatenatedBuilder]
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
          sequenceElement = <MolecularSequenceSequenceElementBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MolecularSequenceConcatenatedBuilder clone() => throw UnimplementedError();
  @override
  MolecularSequenceConcatenatedBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<MolecularSequenceSequenceElementBuilder>? sequenceElement,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MolecularSequenceConcatenatedBuilder(
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
    if (o is! MolecularSequenceConcatenatedBuilder) {
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
    if (!listEquals<MolecularSequenceSequenceElementBuilder>(
      sequenceElement,
      o.sequenceElement,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularSequenceSequenceElementBuilder]
/// One element of a concatenated Molecular Sequence.
class MolecularSequenceSequenceElementBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MolecularSequenceSequenceElementBuilder]

  MolecularSequenceSequenceElementBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.sequence,
    this.ordinalIndex,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MolecularSequence.concatenated.sequenceElement',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MolecularSequenceSequenceElementBuilder.empty() =>
      MolecularSequenceSequenceElementBuilder(
        sequence: ReferenceBuilder.empty(),
        ordinalIndex: FhirIntegerBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceSequenceElementBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MolecularSequence.concatenated.sequenceElement';
    return MolecularSequenceSequenceElementBuilder(
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

  /// Deserialize [MolecularSequenceSequenceElementBuilder]
  /// from a [String] or [YamlMap] object
  factory MolecularSequenceSequenceElementBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularSequenceSequenceElementBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularSequenceSequenceElementBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularSequenceSequenceElementBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularSequenceSequenceElementBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceSequenceElementBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularSequenceSequenceElementBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularSequenceSequenceElement';

  /// [sequence]
  /// The Molecular Sequence corresponding to this element.
  ReferenceBuilder? sequence;

  /// [ordinalIndex]
  /// The ordinal position of this sequence element within the concatenated
  /// Molecular Sequence.
  FhirIntegerBuilder? ordinalIndex;

  /// Converts a [MolecularSequenceSequenceElementBuilder]
  /// to [MolecularSequenceSequenceElement]
  @override
  MolecularSequenceSequenceElement build() =>
      MolecularSequenceSequenceElement.fromJson(toJson());

  /// Converts a [MolecularSequenceSequenceElementBuilder]
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

  /// Creates a new [MolecularSequenceSequenceElementBuilder]
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
  MolecularSequenceSequenceElementBuilder clone() => throw UnimplementedError();
  @override
  MolecularSequenceSequenceElementBuilder copyWith({
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
    final newResult = MolecularSequenceSequenceElementBuilder(
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
    if (o is! MolecularSequenceSequenceElementBuilder) {
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
