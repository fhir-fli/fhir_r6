// ignore_for_file: flutter_style_todos

import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        R5ResourceType,
        SubstanceReferenceInformation,
        SubstanceReferenceInformationGene,
        SubstanceReferenceInformationGeneElement,
        SubstanceReferenceInformationTarget,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [SubstanceReferenceInformationBuilder]
/// Todo.
class SubstanceReferenceInformationBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [SubstanceReferenceInformationBuilder]

  SubstanceReferenceInformationBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.comment,
    this.gene,
    this.geneElement,
    this.target,
  }) : super(
          objectPath: 'SubstanceReferenceInformation',
          resourceType: R5ResourceType.SubstanceReferenceInformation,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SubstanceReferenceInformationBuilder.empty() =>
      SubstanceReferenceInformationBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceReferenceInformationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstanceReferenceInformation';
    return SubstanceReferenceInformationBuilder(
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
      comment: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'comment',
        FhirStringBuilder.fromJson,
        '$objectPath.comment',
      ),
      gene: (json['gene'] as List<dynamic>?)
          ?.map<SubstanceReferenceInformationGeneBuilder>(
            (v) => SubstanceReferenceInformationGeneBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.gene',
              },
            ),
          )
          .toList(),
      geneElement: (json['geneElement'] as List<dynamic>?)
          ?.map<SubstanceReferenceInformationGeneElementBuilder>(
            (v) => SubstanceReferenceInformationGeneElementBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.geneElement',
              },
            ),
          )
          .toList(),
      target: (json['target'] as List<dynamic>?)
          ?.map<SubstanceReferenceInformationTargetBuilder>(
            (v) => SubstanceReferenceInformationTargetBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.target',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SubstanceReferenceInformationBuilder]
  /// from a [String] or [YamlMap] object
  factory SubstanceReferenceInformationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceReferenceInformationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceReferenceInformationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceReferenceInformationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceReferenceInformationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceReferenceInformationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceReferenceInformationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceReferenceInformation';

  /// [comment]
  /// Todo.
  FhirStringBuilder? comment;

  /// [gene]
  /// Todo.
  List<SubstanceReferenceInformationGeneBuilder>? gene;

  /// [geneElement]
  /// Todo.
  List<SubstanceReferenceInformationGeneElementBuilder>? geneElement;

  /// [target]
  /// Todo.
  List<SubstanceReferenceInformationTargetBuilder>? target;

  /// Converts a [SubstanceReferenceInformationBuilder]
  /// to [SubstanceReferenceInformation]
  @override
  SubstanceReferenceInformation build() =>
      SubstanceReferenceInformation.fromJson(toJson());

  /// Converts a [SubstanceReferenceInformationBuilder]
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
    addField('comment', comment);
    addField('gene', gene);
    addField('geneElement', geneElement);
    addField('target', target);
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
      'comment',
      'gene',
      'geneElement',
      'target',
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
      case 'comment':
        if (comment != null) {
          fields.add(comment!);
        }
      case 'gene':
        if (gene != null) {
          fields.addAll(gene!);
        }
      case 'geneElement':
        if (geneElement != null) {
          fields.addAll(geneElement!);
        }
      case 'target':
        if (target != null) {
          fields.addAll(target!);
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
      case 'comment':
        {
          if (child is FhirStringBuilder) {
            comment = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                comment = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'gene':
        {
          if (child is List<SubstanceReferenceInformationGeneBuilder>) {
            // Replace or create new list
            gene = child;
            return;
          } else if (child is SubstanceReferenceInformationGeneBuilder) {
            // Add single element to existing list or create new list
            gene = [
              ...(gene ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'geneElement':
        {
          if (child is List<SubstanceReferenceInformationGeneElementBuilder>) {
            // Replace or create new list
            geneElement = child;
            return;
          } else if (child is SubstanceReferenceInformationGeneElementBuilder) {
            // Add single element to existing list or create new list
            geneElement = [
              ...(geneElement ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'target':
        {
          if (child is List<SubstanceReferenceInformationTargetBuilder>) {
            // Replace or create new list
            target = child;
            return;
          } else if (child is SubstanceReferenceInformationTargetBuilder) {
            // Add single element to existing list or create new list
            target = [
              ...(target ?? []),
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
      case 'comment':
        return ['FhirStringBuilder'];
      case 'gene':
        return ['SubstanceReferenceInformationGeneBuilder'];
      case 'geneElement':
        return ['SubstanceReferenceInformationGeneElementBuilder'];
      case 'target':
        return ['SubstanceReferenceInformationTargetBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubstanceReferenceInformationBuilder]
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
      case 'comment':
        {
          comment = FhirStringBuilder.empty();
          return;
        }
      case 'gene':
        {
          gene = <SubstanceReferenceInformationGeneBuilder>[];
          return;
        }
      case 'geneElement':
        {
          geneElement = <SubstanceReferenceInformationGeneElementBuilder>[];
          return;
        }
      case 'target':
        {
          target = <SubstanceReferenceInformationTargetBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SubstanceReferenceInformationBuilder clone() => throw UnimplementedError();
  @override
  SubstanceReferenceInformationBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? comment,
    List<SubstanceReferenceInformationGeneBuilder>? gene,
    List<SubstanceReferenceInformationGeneElementBuilder>? geneElement,
    List<SubstanceReferenceInformationTargetBuilder>? target,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = SubstanceReferenceInformationBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      comment: comment ?? this.comment,
      gene: gene ?? this.gene,
      geneElement: geneElement ?? this.geneElement,
      target: target ?? this.target,
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
    if (o is! SubstanceReferenceInformationBuilder) {
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
      comment,
      o.comment,
    )) {
      return false;
    }
    if (!listEquals<SubstanceReferenceInformationGeneBuilder>(
      gene,
      o.gene,
    )) {
      return false;
    }
    if (!listEquals<SubstanceReferenceInformationGeneElementBuilder>(
      geneElement,
      o.geneElement,
    )) {
      return false;
    }
    if (!listEquals<SubstanceReferenceInformationTargetBuilder>(
      target,
      o.target,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstanceReferenceInformationGeneBuilder]
/// Todo.
class SubstanceReferenceInformationGeneBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SubstanceReferenceInformationGeneBuilder]

  SubstanceReferenceInformationGeneBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.geneSequenceOrigin,
    this.gene,
    this.source,
    super.disallowExtensions,
  }) : super(
          objectPath: 'SubstanceReferenceInformation.gene',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SubstanceReferenceInformationGeneBuilder.empty() =>
      SubstanceReferenceInformationGeneBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceReferenceInformationGeneBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstanceReferenceInformation.gene';
    return SubstanceReferenceInformationGeneBuilder(
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
      geneSequenceOrigin: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'geneSequenceOrigin',
        CodeableConceptBuilder.fromJson,
        '$objectPath.geneSequenceOrigin',
      ),
      gene: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'gene',
        CodeableConceptBuilder.fromJson,
        '$objectPath.gene',
      ),
      source: (json['source'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.source',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SubstanceReferenceInformationGeneBuilder]
  /// from a [String] or [YamlMap] object
  factory SubstanceReferenceInformationGeneBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceReferenceInformationGeneBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceReferenceInformationGeneBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceReferenceInformationGeneBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceReferenceInformationGeneBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceReferenceInformationGeneBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceReferenceInformationGeneBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceReferenceInformationGene';

  /// [geneSequenceOrigin]
  /// Todo.
  CodeableConceptBuilder? geneSequenceOrigin;

  /// [gene]
  /// Todo.
  CodeableConceptBuilder? gene;

  /// [source]
  /// Todo.
  List<ReferenceBuilder>? source;

  /// Converts a [SubstanceReferenceInformationGeneBuilder]
  /// to [SubstanceReferenceInformationGene]
  @override
  SubstanceReferenceInformationGene build() =>
      SubstanceReferenceInformationGene.fromJson(toJson());

  /// Converts a [SubstanceReferenceInformationGeneBuilder]
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
    addField('geneSequenceOrigin', geneSequenceOrigin);
    addField('gene', gene);
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
      'geneSequenceOrigin',
      'gene',
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
      case 'geneSequenceOrigin':
        if (geneSequenceOrigin != null) {
          fields.add(geneSequenceOrigin!);
        }
      case 'gene':
        if (gene != null) {
          fields.add(gene!);
        }
      case 'source':
        if (source != null) {
          fields.addAll(source!);
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
      case 'geneSequenceOrigin':
        {
          if (child is CodeableConceptBuilder) {
            geneSequenceOrigin = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'gene':
        {
          if (child is CodeableConceptBuilder) {
            gene = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'source':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            source = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            source = [
              ...(source ?? []),
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
      case 'geneSequenceOrigin':
        return ['CodeableConceptBuilder'];
      case 'gene':
        return ['CodeableConceptBuilder'];
      case 'source':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubstanceReferenceInformationGeneBuilder]
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
      case 'geneSequenceOrigin':
        {
          geneSequenceOrigin = CodeableConceptBuilder.empty();
          return;
        }
      case 'gene':
        {
          gene = CodeableConceptBuilder.empty();
          return;
        }
      case 'source':
        {
          source = <ReferenceBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SubstanceReferenceInformationGeneBuilder clone() =>
      throw UnimplementedError();
  @override
  SubstanceReferenceInformationGeneBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? geneSequenceOrigin,
    CodeableConceptBuilder? gene,
    List<ReferenceBuilder>? source,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SubstanceReferenceInformationGeneBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      geneSequenceOrigin: geneSequenceOrigin ?? this.geneSequenceOrigin,
      gene: gene ?? this.gene,
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
    if (o is! SubstanceReferenceInformationGeneBuilder) {
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
      geneSequenceOrigin,
      o.geneSequenceOrigin,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      gene,
      o.gene,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      source,
      o.source,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstanceReferenceInformationGeneElementBuilder]
/// Todo.
class SubstanceReferenceInformationGeneElementBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SubstanceReferenceInformationGeneElementBuilder]

  SubstanceReferenceInformationGeneElementBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.element,
    this.source,
    super.disallowExtensions,
  }) : super(
          objectPath: 'SubstanceReferenceInformation.geneElement',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SubstanceReferenceInformationGeneElementBuilder.empty() =>
      SubstanceReferenceInformationGeneElementBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceReferenceInformationGeneElementBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstanceReferenceInformation.geneElement';
    return SubstanceReferenceInformationGeneElementBuilder(
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
      element: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'element',
        IdentifierBuilder.fromJson,
        '$objectPath.element',
      ),
      source: (json['source'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.source',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SubstanceReferenceInformationGeneElementBuilder]
  /// from a [String] or [YamlMap] object
  factory SubstanceReferenceInformationGeneElementBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceReferenceInformationGeneElementBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceReferenceInformationGeneElementBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceReferenceInformationGeneElementBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceReferenceInformationGeneElementBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceReferenceInformationGeneElementBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceReferenceInformationGeneElementBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceReferenceInformationGeneElement';

  /// [type]
  /// Todo.
  CodeableConceptBuilder? type;

  /// [element]
  /// Todo.
  IdentifierBuilder? element;

  /// [source]
  /// Todo.
  List<ReferenceBuilder>? source;

  /// Converts a [SubstanceReferenceInformationGeneElementBuilder]
  /// to [SubstanceReferenceInformationGeneElement]
  @override
  SubstanceReferenceInformationGeneElement build() =>
      SubstanceReferenceInformationGeneElement.fromJson(toJson());

  /// Converts a [SubstanceReferenceInformationGeneElementBuilder]
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
    addField('element', element);
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
      'element',
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
      case 'element':
        if (element != null) {
          fields.add(element!);
        }
      case 'source':
        if (source != null) {
          fields.addAll(source!);
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
      case 'element':
        {
          if (child is IdentifierBuilder) {
            element = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'source':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            source = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            source = [
              ...(source ?? []),
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
      case 'element':
        return ['IdentifierBuilder'];
      case 'source':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubstanceReferenceInformationGeneElementBuilder]
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
      case 'element':
        {
          element = IdentifierBuilder.empty();
          return;
        }
      case 'source':
        {
          source = <ReferenceBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SubstanceReferenceInformationGeneElementBuilder clone() =>
      throw UnimplementedError();
  @override
  SubstanceReferenceInformationGeneElementBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    IdentifierBuilder? element,
    List<ReferenceBuilder>? source,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SubstanceReferenceInformationGeneElementBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      element: element ?? this.element,
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
    if (o is! SubstanceReferenceInformationGeneElementBuilder) {
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
      element,
      o.element,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      source,
      o.source,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstanceReferenceInformationTargetBuilder]
/// Todo.
class SubstanceReferenceInformationTargetBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SubstanceReferenceInformationTargetBuilder]

  SubstanceReferenceInformationTargetBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.target,
    this.type,
    this.interaction,
    this.organism,
    this.organismType,
    AmountXSubstanceReferenceInformationTargetBuilder? amountX,
    QuantityBuilder? amountQuantity,
    RangeBuilder? amountRange,
    FhirStringBuilder? amountString,
    this.amountType,
    this.source,
    super.disallowExtensions,
  })  : amountX = amountX ?? amountQuantity ?? amountRange ?? amountString,
        super(
          objectPath: 'SubstanceReferenceInformation.target',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SubstanceReferenceInformationTargetBuilder.empty() =>
      SubstanceReferenceInformationTargetBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceReferenceInformationTargetBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstanceReferenceInformation.target';
    return SubstanceReferenceInformationTargetBuilder(
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
      target: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'target',
        IdentifierBuilder.fromJson,
        '$objectPath.target',
      ),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      interaction: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'interaction',
        CodeableConceptBuilder.fromJson,
        '$objectPath.interaction',
      ),
      organism: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'organism',
        CodeableConceptBuilder.fromJson,
        '$objectPath.organism',
      ),
      organismType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'organismType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.organismType',
      ),
      amountX: JsonParser.parsePolymorphic<
          AmountXSubstanceReferenceInformationTargetBuilder>(
        json,
        {
          'amountQuantity': QuantityBuilder.fromJson,
          'amountRange': RangeBuilder.fromJson,
          'amountString': FhirStringBuilder.fromJson,
        },
        objectPath,
      ),
      amountType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'amountType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.amountType',
      ),
      source: (json['source'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.source',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SubstanceReferenceInformationTargetBuilder]
  /// from a [String] or [YamlMap] object
  factory SubstanceReferenceInformationTargetBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceReferenceInformationTargetBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceReferenceInformationTargetBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceReferenceInformationTargetBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceReferenceInformationTargetBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceReferenceInformationTargetBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceReferenceInformationTargetBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceReferenceInformationTarget';

  /// [target]
  /// Todo.
  IdentifierBuilder? target;

  /// [type]
  /// Todo.
  CodeableConceptBuilder? type;

  /// [interaction]
  /// Todo.
  CodeableConceptBuilder? interaction;

  /// [organism]
  /// Todo.
  CodeableConceptBuilder? organism;

  /// [organismType]
  /// Todo.
  CodeableConceptBuilder? organismType;

  /// [amountX]
  /// Todo.
  AmountXSubstanceReferenceInformationTargetBuilder? amountX;

  /// Getter for [amountQuantity] as a QuantityBuilder
  QuantityBuilder? get amountQuantity => amountX?.isAs<QuantityBuilder>();

  /// Getter for [amountRange] as a RangeBuilder
  RangeBuilder? get amountRange => amountX?.isAs<RangeBuilder>();

  /// Getter for [amountString] as a FhirStringBuilder
  FhirStringBuilder? get amountString => amountX?.isAs<FhirStringBuilder>();

  /// [amountType]
  /// Todo.
  CodeableConceptBuilder? amountType;

  /// [source]
  /// Todo.
  List<ReferenceBuilder>? source;

  /// Converts a [SubstanceReferenceInformationTargetBuilder]
  /// to [SubstanceReferenceInformationTarget]
  @override
  SubstanceReferenceInformationTarget build() =>
      SubstanceReferenceInformationTarget.fromJson(toJson());

  /// Converts a [SubstanceReferenceInformationTargetBuilder]
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
    addField('target', target);
    addField('type', type);
    addField('interaction', interaction);
    addField('organism', organism);
    addField('organismType', organismType);
    if (amountX != null) {
      final fhirType = amountX!.fhirType;
      addField('amount${fhirType.capitalizeFirstLetter()}', amountX);
    }

    addField('amountType', amountType);
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
      'target',
      'type',
      'interaction',
      'organism',
      'organismType',
      'amountX',
      'amountType',
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
      case 'target':
        if (target != null) {
          fields.add(target!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'interaction':
        if (interaction != null) {
          fields.add(interaction!);
        }
      case 'organism':
        if (organism != null) {
          fields.add(organism!);
        }
      case 'organismType':
        if (organismType != null) {
          fields.add(organismType!);
        }
      case 'amount':
        if (amountX != null) {
          fields.add(amountX!);
        }
      case 'amountX':
        if (amountX != null) {
          fields.add(amountX!);
        }
      case 'amountQuantity':
        if (amountX is QuantityBuilder) {
          fields.add(amountX!);
        }
      case 'amountRange':
        if (amountX is RangeBuilder) {
          fields.add(amountX!);
        }
      case 'amountString':
        if (amountX is FhirStringBuilder) {
          fields.add(amountX!);
        }
      case 'amountType':
        if (amountType != null) {
          fields.add(amountType!);
        }
      case 'source':
        if (source != null) {
          fields.addAll(source!);
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
      case 'target':
        {
          if (child is IdentifierBuilder) {
            target = child;
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
      case 'interaction':
        {
          if (child is CodeableConceptBuilder) {
            interaction = child;
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
      case 'organismType':
        {
          if (child is CodeableConceptBuilder) {
            organismType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'amount':
      case 'amountX':
        {
          if (child is AmountXSubstanceReferenceInformationTargetBuilder) {
            amountX = child;
            return;
          } else {
            if (child is QuantityBuilder) {
              amountX = child;
              return;
            }
            if (child is RangeBuilder) {
              amountX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              amountX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'amountQuantity':
        {
          if (child is QuantityBuilder) {
            amountX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'amountRange':
        {
          if (child is RangeBuilder) {
            amountX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'amountString':
        {
          if (child is FhirStringBuilder) {
            amountX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'amountType':
        {
          if (child is CodeableConceptBuilder) {
            amountType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'source':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            source = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            source = [
              ...(source ?? []),
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
      case 'target':
        return ['IdentifierBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'interaction':
        return ['CodeableConceptBuilder'];
      case 'organism':
        return ['CodeableConceptBuilder'];
      case 'organismType':
        return ['CodeableConceptBuilder'];
      case 'amount':
      case 'amountX':
        return [
          'QuantityBuilder',
          'RangeBuilder',
          'FhirStringBuilder',
        ];
      case 'amountQuantity':
        return ['QuantityBuilder'];
      case 'amountRange':
        return ['RangeBuilder'];
      case 'amountString':
        return ['FhirStringBuilder'];
      case 'amountType':
        return ['CodeableConceptBuilder'];
      case 'source':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubstanceReferenceInformationTargetBuilder]
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
      case 'target':
        {
          target = IdentifierBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'interaction':
        {
          interaction = CodeableConceptBuilder.empty();
          return;
        }
      case 'organism':
        {
          organism = CodeableConceptBuilder.empty();
          return;
        }
      case 'organismType':
        {
          organismType = CodeableConceptBuilder.empty();
          return;
        }
      case 'amount':
      case 'amountX':
      case 'amountQuantity':
        {
          amountX = QuantityBuilder.empty();
          return;
        }
      case 'amountRange':
        {
          amountX = RangeBuilder.empty();
          return;
        }
      case 'amountString':
        {
          amountX = FhirStringBuilder.empty();
          return;
        }
      case 'amountType':
        {
          amountType = CodeableConceptBuilder.empty();
          return;
        }
      case 'source':
        {
          source = <ReferenceBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SubstanceReferenceInformationTargetBuilder clone() =>
      throw UnimplementedError();
  @override
  SubstanceReferenceInformationTargetBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    IdentifierBuilder? target,
    CodeableConceptBuilder? type,
    CodeableConceptBuilder? interaction,
    CodeableConceptBuilder? organism,
    CodeableConceptBuilder? organismType,
    AmountXSubstanceReferenceInformationTargetBuilder? amountX,
    CodeableConceptBuilder? amountType,
    List<ReferenceBuilder>? source,
    QuantityBuilder? amountQuantity,
    RangeBuilder? amountRange,
    FhirStringBuilder? amountString,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SubstanceReferenceInformationTargetBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      target: target ?? this.target,
      type: type ?? this.type,
      interaction: interaction ?? this.interaction,
      organism: organism ?? this.organism,
      organismType: organismType ?? this.organismType,
      amountX: amountX ??
          amountQuantity ??
          amountRange ??
          amountString ??
          this.amountX,
      amountType: amountType ?? this.amountType,
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
    if (o is! SubstanceReferenceInformationTargetBuilder) {
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
      target,
      o.target,
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
      interaction,
      o.interaction,
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
      organismType,
      o.organismType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      amountX,
      o.amountX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      amountType,
      o.amountType,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      source,
      o.source,
    )) {
      return false;
    }
    return true;
  }
}
