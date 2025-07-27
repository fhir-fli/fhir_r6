// ignore_for_file: flutter_style_todos

import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart'
    show
        R6ResourceType,
        SubstancePolymer,
        SubstancePolymerDegreeOfPolymerisation,
        SubstancePolymerMonomerSet,
        SubstancePolymerRepeat,
        SubstancePolymerRepeatUnit,
        SubstancePolymerStartingMaterial,
        SubstancePolymerStructuralRepresentation,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r6_mapping/fhir_r6_mapping.dart';
import 'package:yaml/yaml.dart';

/// [SubstancePolymerBuilder]
/// Properties of a substance specific to it being a polymer.
class SubstancePolymerBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [SubstancePolymerBuilder]

  SubstancePolymerBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.class_,
    this.geometry,
    this.copolymerConnectivity,
    this.modification,
    this.monomerSet,
    this.repeat,
  }) : super(
          objectPath: 'SubstancePolymer',
          resourceType: R6ResourceType.SubstancePolymer,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SubstancePolymerBuilder.empty() => SubstancePolymerBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstancePolymerBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstancePolymer';
    return SubstancePolymerBuilder(
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
      identifier: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'identifier',
        IdentifierBuilder.fromJson,
        '$objectPath.identifier',
      ),
      class_: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'class',
        CodeableConceptBuilder.fromJson,
        '$objectPath.class',
      ),
      geometry: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'geometry',
        CodeableConceptBuilder.fromJson,
        '$objectPath.geometry',
      ),
      copolymerConnectivity: (json['copolymerConnectivity'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.copolymerConnectivity',
              },
            ),
          )
          .toList(),
      modification: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'modification',
        FhirStringBuilder.fromJson,
        '$objectPath.modification',
      ),
      monomerSet: (json['monomerSet'] as List<dynamic>?)
          ?.map<SubstancePolymerMonomerSetBuilder>(
            (v) => SubstancePolymerMonomerSetBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.monomerSet',
              },
            ),
          )
          .toList(),
      repeat: (json['repeat'] as List<dynamic>?)
          ?.map<SubstancePolymerRepeatBuilder>(
            (v) => SubstancePolymerRepeatBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.repeat',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SubstancePolymerBuilder]
  /// from a [String] or [YamlMap] object
  factory SubstancePolymerBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstancePolymerBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstancePolymerBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstancePolymerBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstancePolymerBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstancePolymerBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstancePolymerBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstancePolymer';

  /// [identifier]
  /// A business idenfier for this polymer, but typically this is handled by
  /// a SubstanceDefinition identifier.
  IdentifierBuilder? identifier;

  /// [class_]
  /// Overall type of the polymer.
  CodeableConceptBuilder? class_;

  /// [geometry]
  /// Polymer geometry, e.g. linear, branched, cross-linked, network or
  /// dendritic.
  CodeableConceptBuilder? geometry;

  /// [copolymerConnectivity]
  /// Descrtibes the copolymer sequence type (polymer connectivity).
  List<CodeableConceptBuilder>? copolymerConnectivity;

  /// [modification]
  /// Todo - this is intended to connect to a repeating full modification
  /// structure, also used by Protein and Nucleic Acid . String is just a
  /// placeholder.
  FhirStringBuilder? modification;

  /// [monomerSet]
  /// Todo.
  List<SubstancePolymerMonomerSetBuilder>? monomerSet;

  /// [repeat]
  /// Specifies and quantifies the repeated units and their configuration.
  List<SubstancePolymerRepeatBuilder>? repeat;

  /// Converts a [SubstancePolymerBuilder]
  /// to [SubstancePolymer]
  @override
  SubstancePolymer build() => SubstancePolymer.fromJson(toJson());

  /// Converts a [SubstancePolymerBuilder]
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
    addField('class', class_);
    addField('geometry', geometry);
    addField('copolymerConnectivity', copolymerConnectivity);
    addField('modification', modification);
    addField('monomerSet', monomerSet);
    addField('repeat', repeat);
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
      'class',
      'geometry',
      'copolymerConnectivity',
      'modification',
      'monomerSet',
      'repeat',
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
          fields.add(identifier!);
        }
      case 'class':
        if (class_ != null) {
          fields.add(class_!);
        }
      case 'geometry':
        if (geometry != null) {
          fields.add(geometry!);
        }
      case 'copolymerConnectivity':
        if (copolymerConnectivity != null) {
          fields.addAll(copolymerConnectivity!);
        }
      case 'modification':
        if (modification != null) {
          fields.add(modification!);
        }
      case 'monomerSet':
        if (monomerSet != null) {
          fields.addAll(monomerSet!);
        }
      case 'repeat':
        if (repeat != null) {
          fields.addAll(repeat!);
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
          if (child is IdentifierBuilder) {
            identifier = child;
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
      case 'geometry':
        {
          if (child is CodeableConceptBuilder) {
            geometry = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'copolymerConnectivity':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            copolymerConnectivity = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            copolymerConnectivity = [
              ...(copolymerConnectivity ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modification':
        {
          if (child is FhirStringBuilder) {
            modification = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                modification = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'monomerSet':
        {
          if (child is List<SubstancePolymerMonomerSetBuilder>) {
            // Replace or create new list
            monomerSet = child;
            return;
          } else if (child is SubstancePolymerMonomerSetBuilder) {
            // Add single element to existing list or create new list
            monomerSet = [
              ...(monomerSet ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'repeat':
        {
          if (child is List<SubstancePolymerRepeatBuilder>) {
            // Replace or create new list
            repeat = child;
            return;
          } else if (child is SubstancePolymerRepeatBuilder) {
            // Add single element to existing list or create new list
            repeat = [
              ...(repeat ?? []),
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
      case 'class':
        return ['CodeableConceptBuilder'];
      case 'geometry':
        return ['CodeableConceptBuilder'];
      case 'copolymerConnectivity':
        return ['CodeableConceptBuilder'];
      case 'modification':
        return ['FhirStringBuilder'];
      case 'monomerSet':
        return ['SubstancePolymerMonomerSetBuilder'];
      case 'repeat':
        return ['SubstancePolymerRepeatBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubstancePolymerBuilder]
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
          identifier = IdentifierBuilder.empty();
          return;
        }
      case 'class':
        {
          class_ = CodeableConceptBuilder.empty();
          return;
        }
      case 'geometry':
        {
          geometry = CodeableConceptBuilder.empty();
          return;
        }
      case 'copolymerConnectivity':
        {
          copolymerConnectivity = <CodeableConceptBuilder>[];
          return;
        }
      case 'modification':
        {
          modification = FhirStringBuilder.empty();
          return;
        }
      case 'monomerSet':
        {
          monomerSet = <SubstancePolymerMonomerSetBuilder>[];
          return;
        }
      case 'repeat':
        {
          repeat = <SubstancePolymerRepeatBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SubstancePolymerBuilder clone() => throw UnimplementedError();
  @override
  SubstancePolymerBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    IdentifierBuilder? identifier,
    CodeableConceptBuilder? class_,
    CodeableConceptBuilder? geometry,
    List<CodeableConceptBuilder>? copolymerConnectivity,
    FhirStringBuilder? modification,
    List<SubstancePolymerMonomerSetBuilder>? monomerSet,
    List<SubstancePolymerRepeatBuilder>? repeat,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = SubstancePolymerBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      class_: class_ ?? this.class_,
      geometry: geometry ?? this.geometry,
      copolymerConnectivity:
          copolymerConnectivity ?? this.copolymerConnectivity,
      modification: modification ?? this.modification,
      monomerSet: monomerSet ?? this.monomerSet,
      repeat: repeat ?? this.repeat,
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
    if (o is! SubstancePolymerBuilder) {
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
      identifier,
      o.identifier,
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
      geometry,
      o.geometry,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      copolymerConnectivity,
      o.copolymerConnectivity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      modification,
      o.modification,
    )) {
      return false;
    }
    if (!listEquals<SubstancePolymerMonomerSetBuilder>(
      monomerSet,
      o.monomerSet,
    )) {
      return false;
    }
    if (!listEquals<SubstancePolymerRepeatBuilder>(
      repeat,
      o.repeat,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstancePolymerMonomerSetBuilder]
/// Todo.
class SubstancePolymerMonomerSetBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SubstancePolymerMonomerSetBuilder]

  SubstancePolymerMonomerSetBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.ratioType,
    this.startingMaterial,
    super.disallowExtensions,
  }) : super(
          objectPath: 'SubstancePolymer.monomerSet',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SubstancePolymerMonomerSetBuilder.empty() =>
      SubstancePolymerMonomerSetBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstancePolymerMonomerSetBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstancePolymer.monomerSet';
    return SubstancePolymerMonomerSetBuilder(
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
      ratioType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'ratioType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.ratioType',
      ),
      startingMaterial: (json['startingMaterial'] as List<dynamic>?)
          ?.map<SubstancePolymerStartingMaterialBuilder>(
            (v) => SubstancePolymerStartingMaterialBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.startingMaterial',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SubstancePolymerMonomerSetBuilder]
  /// from a [String] or [YamlMap] object
  factory SubstancePolymerMonomerSetBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstancePolymerMonomerSetBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstancePolymerMonomerSetBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstancePolymerMonomerSetBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstancePolymerMonomerSetBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstancePolymerMonomerSetBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstancePolymerMonomerSetBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstancePolymerMonomerSet';

  /// [ratioType]
  /// Captures the type of ratio to the entire polymer, e.g. Monomer/Polymer
  /// ratio, SRU/Polymer Ratio.
  CodeableConceptBuilder? ratioType;

  /// [startingMaterial]
  /// The starting materials - monomer(s) used in the synthesis of the
  /// polymer.
  List<SubstancePolymerStartingMaterialBuilder>? startingMaterial;

  /// Converts a [SubstancePolymerMonomerSetBuilder]
  /// to [SubstancePolymerMonomerSet]
  @override
  SubstancePolymerMonomerSet build() =>
      SubstancePolymerMonomerSet.fromJson(toJson());

  /// Converts a [SubstancePolymerMonomerSetBuilder]
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
    addField('ratioType', ratioType);
    addField('startingMaterial', startingMaterial);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'ratioType',
      'startingMaterial',
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
      case 'ratioType':
        if (ratioType != null) {
          fields.add(ratioType!);
        }
      case 'startingMaterial':
        if (startingMaterial != null) {
          fields.addAll(startingMaterial!);
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
      case 'ratioType':
        {
          if (child is CodeableConceptBuilder) {
            ratioType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'startingMaterial':
        {
          if (child is List<SubstancePolymerStartingMaterialBuilder>) {
            // Replace or create new list
            startingMaterial = child;
            return;
          } else if (child is SubstancePolymerStartingMaterialBuilder) {
            // Add single element to existing list or create new list
            startingMaterial = [
              ...(startingMaterial ?? []),
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
      case 'ratioType':
        return ['CodeableConceptBuilder'];
      case 'startingMaterial':
        return ['SubstancePolymerStartingMaterialBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubstancePolymerMonomerSetBuilder]
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
      case 'ratioType':
        {
          ratioType = CodeableConceptBuilder.empty();
          return;
        }
      case 'startingMaterial':
        {
          startingMaterial = <SubstancePolymerStartingMaterialBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SubstancePolymerMonomerSetBuilder clone() => throw UnimplementedError();
  @override
  SubstancePolymerMonomerSetBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? ratioType,
    List<SubstancePolymerStartingMaterialBuilder>? startingMaterial,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SubstancePolymerMonomerSetBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      ratioType: ratioType ?? this.ratioType,
      startingMaterial: startingMaterial ?? this.startingMaterial,
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
    if (o is! SubstancePolymerMonomerSetBuilder) {
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
      ratioType,
      o.ratioType,
    )) {
      return false;
    }
    if (!listEquals<SubstancePolymerStartingMaterialBuilder>(
      startingMaterial,
      o.startingMaterial,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstancePolymerStartingMaterialBuilder]
/// The starting materials - monomer(s) used in the synthesis of the
/// polymer.
class SubstancePolymerStartingMaterialBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SubstancePolymerStartingMaterialBuilder]

  SubstancePolymerStartingMaterialBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.category,
    this.isDefining,
    this.amount,
    super.disallowExtensions,
  }) : super(
          objectPath: 'SubstancePolymer.monomerSet.startingMaterial',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SubstancePolymerStartingMaterialBuilder.empty() =>
      SubstancePolymerStartingMaterialBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstancePolymerStartingMaterialBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstancePolymer.monomerSet.startingMaterial';
    return SubstancePolymerStartingMaterialBuilder(
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
      code: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'code',
        CodeableConceptBuilder.fromJson,
        '$objectPath.code',
      ),
      category: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'category',
        CodeableConceptBuilder.fromJson,
        '$objectPath.category',
      ),
      isDefining: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'isDefining',
        FhirBooleanBuilder.fromJson,
        '$objectPath.isDefining',
      ),
      amount: JsonParser.parseObject<QuantityBuilder>(
        json,
        'amount',
        QuantityBuilder.fromJson,
        '$objectPath.amount',
      ),
    );
  }

  /// Deserialize [SubstancePolymerStartingMaterialBuilder]
  /// from a [String] or [YamlMap] object
  factory SubstancePolymerStartingMaterialBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstancePolymerStartingMaterialBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstancePolymerStartingMaterialBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstancePolymerStartingMaterialBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstancePolymerStartingMaterialBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstancePolymerStartingMaterialBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstancePolymerStartingMaterialBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstancePolymerStartingMaterial';

  /// [code]
  /// The type of substance for this starting material.
  CodeableConceptBuilder? code;

  /// [category]
  /// Substance high level category, e.g. chemical substance.
  CodeableConceptBuilder? category;

  /// [isDefining]
  /// Used to specify whether the attribute described is a defining element
  /// for the unique identification of the polymer.
  FhirBooleanBuilder? isDefining;

  /// [amount]
  /// A percentage.
  QuantityBuilder? amount;

  /// Converts a [SubstancePolymerStartingMaterialBuilder]
  /// to [SubstancePolymerStartingMaterial]
  @override
  SubstancePolymerStartingMaterial build() =>
      SubstancePolymerStartingMaterial.fromJson(toJson());

  /// Converts a [SubstancePolymerStartingMaterialBuilder]
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
    addField('code', code);
    addField('category', category);
    addField('isDefining', isDefining);
    addField('amount', amount);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'code',
      'category',
      'isDefining',
      'amount',
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
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'category':
        if (category != null) {
          fields.add(category!);
        }
      case 'isDefining':
        if (isDefining != null) {
          fields.add(isDefining!);
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
      case 'code':
        {
          if (child is CodeableConceptBuilder) {
            code = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'category':
        {
          if (child is CodeableConceptBuilder) {
            category = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'isDefining':
        {
          if (child is FhirBooleanBuilder) {
            isDefining = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                isDefining = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'amount':
        {
          if (child is QuantityBuilder) {
            amount = child;
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
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'isDefining':
        return ['FhirBooleanBuilder'];
      case 'amount':
        return ['QuantityBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubstancePolymerStartingMaterialBuilder]
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
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
          return;
        }
      case 'category':
        {
          category = CodeableConceptBuilder.empty();
          return;
        }
      case 'isDefining':
        {
          isDefining = FhirBooleanBuilder.empty();
          return;
        }
      case 'amount':
        {
          amount = QuantityBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SubstancePolymerStartingMaterialBuilder clone() => throw UnimplementedError();
  @override
  SubstancePolymerStartingMaterialBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? code,
    CodeableConceptBuilder? category,
    FhirBooleanBuilder? isDefining,
    QuantityBuilder? amount,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SubstancePolymerStartingMaterialBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      category: category ?? this.category,
      isDefining: isDefining ?? this.isDefining,
      amount: amount ?? this.amount,
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
    if (o is! SubstancePolymerStartingMaterialBuilder) {
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
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      category,
      o.category,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      isDefining,
      o.isDefining,
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

/// [SubstancePolymerRepeatBuilder]
/// Specifies and quantifies the repeated units and their configuration.
class SubstancePolymerRepeatBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SubstancePolymerRepeatBuilder]

  SubstancePolymerRepeatBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.averageMolecularFormula,
    this.repeatUnitAmountType,
    this.repeatUnit,
    super.disallowExtensions,
  }) : super(
          objectPath: 'SubstancePolymer.repeat',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SubstancePolymerRepeatBuilder.empty() =>
      SubstancePolymerRepeatBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstancePolymerRepeatBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstancePolymer.repeat';
    return SubstancePolymerRepeatBuilder(
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
      averageMolecularFormula: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'averageMolecularFormula',
        FhirStringBuilder.fromJson,
        '$objectPath.averageMolecularFormula',
      ),
      repeatUnitAmountType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'repeatUnitAmountType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.repeatUnitAmountType',
      ),
      repeatUnit: (json['repeatUnit'] as List<dynamic>?)
          ?.map<SubstancePolymerRepeatUnitBuilder>(
            (v) => SubstancePolymerRepeatUnitBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.repeatUnit',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SubstancePolymerRepeatBuilder]
  /// from a [String] or [YamlMap] object
  factory SubstancePolymerRepeatBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstancePolymerRepeatBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstancePolymerRepeatBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstancePolymerRepeatBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstancePolymerRepeatBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstancePolymerRepeatBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstancePolymerRepeatBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstancePolymerRepeat';

  /// [averageMolecularFormula]
  /// A representation of an (average) molecular formula from a polymer.
  FhirStringBuilder? averageMolecularFormula;

  /// [repeatUnitAmountType]
  /// How the quantitative amount of Structural Repeat Units is captured
  /// (e.g. Exact, Numeric, Average).
  CodeableConceptBuilder? repeatUnitAmountType;

  /// [repeatUnit]
  /// An SRU - Structural Repeat Unit.
  List<SubstancePolymerRepeatUnitBuilder>? repeatUnit;

  /// Converts a [SubstancePolymerRepeatBuilder]
  /// to [SubstancePolymerRepeat]
  @override
  SubstancePolymerRepeat build() => SubstancePolymerRepeat.fromJson(toJson());

  /// Converts a [SubstancePolymerRepeatBuilder]
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
    addField('averageMolecularFormula', averageMolecularFormula);
    addField('repeatUnitAmountType', repeatUnitAmountType);
    addField('repeatUnit', repeatUnit);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'averageMolecularFormula',
      'repeatUnitAmountType',
      'repeatUnit',
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
      case 'averageMolecularFormula':
        if (averageMolecularFormula != null) {
          fields.add(averageMolecularFormula!);
        }
      case 'repeatUnitAmountType':
        if (repeatUnitAmountType != null) {
          fields.add(repeatUnitAmountType!);
        }
      case 'repeatUnit':
        if (repeatUnit != null) {
          fields.addAll(repeatUnit!);
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
      case 'averageMolecularFormula':
        {
          if (child is FhirStringBuilder) {
            averageMolecularFormula = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                averageMolecularFormula = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'repeatUnitAmountType':
        {
          if (child is CodeableConceptBuilder) {
            repeatUnitAmountType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'repeatUnit':
        {
          if (child is List<SubstancePolymerRepeatUnitBuilder>) {
            // Replace or create new list
            repeatUnit = child;
            return;
          } else if (child is SubstancePolymerRepeatUnitBuilder) {
            // Add single element to existing list or create new list
            repeatUnit = [
              ...(repeatUnit ?? []),
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
      case 'averageMolecularFormula':
        return ['FhirStringBuilder'];
      case 'repeatUnitAmountType':
        return ['CodeableConceptBuilder'];
      case 'repeatUnit':
        return ['SubstancePolymerRepeatUnitBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubstancePolymerRepeatBuilder]
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
      case 'averageMolecularFormula':
        {
          averageMolecularFormula = FhirStringBuilder.empty();
          return;
        }
      case 'repeatUnitAmountType':
        {
          repeatUnitAmountType = CodeableConceptBuilder.empty();
          return;
        }
      case 'repeatUnit':
        {
          repeatUnit = <SubstancePolymerRepeatUnitBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SubstancePolymerRepeatBuilder clone() => throw UnimplementedError();
  @override
  SubstancePolymerRepeatBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? averageMolecularFormula,
    CodeableConceptBuilder? repeatUnitAmountType,
    List<SubstancePolymerRepeatUnitBuilder>? repeatUnit,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SubstancePolymerRepeatBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      averageMolecularFormula:
          averageMolecularFormula ?? this.averageMolecularFormula,
      repeatUnitAmountType: repeatUnitAmountType ?? this.repeatUnitAmountType,
      repeatUnit: repeatUnit ?? this.repeatUnit,
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
    if (o is! SubstancePolymerRepeatBuilder) {
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
      averageMolecularFormula,
      o.averageMolecularFormula,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      repeatUnitAmountType,
      o.repeatUnitAmountType,
    )) {
      return false;
    }
    if (!listEquals<SubstancePolymerRepeatUnitBuilder>(
      repeatUnit,
      o.repeatUnit,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstancePolymerRepeatUnitBuilder]
/// An SRU - Structural Repeat Unit.
class SubstancePolymerRepeatUnitBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SubstancePolymerRepeatUnitBuilder]

  SubstancePolymerRepeatUnitBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.unit,
    this.orientation,
    this.amount,
    this.degreeOfPolymerisation,
    this.structuralRepresentation,
    super.disallowExtensions,
  }) : super(
          objectPath: 'SubstancePolymer.repeat.repeatUnit',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SubstancePolymerRepeatUnitBuilder.empty() =>
      SubstancePolymerRepeatUnitBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstancePolymerRepeatUnitBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstancePolymer.repeat.repeatUnit';
    return SubstancePolymerRepeatUnitBuilder(
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
      unit: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'unit',
        FhirStringBuilder.fromJson,
        '$objectPath.unit',
      ),
      orientation: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'orientation',
        CodeableConceptBuilder.fromJson,
        '$objectPath.orientation',
      ),
      amount: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'amount',
        FhirIntegerBuilder.fromJson,
        '$objectPath.amount',
      ),
      degreeOfPolymerisation: (json['degreeOfPolymerisation'] as List<dynamic>?)
          ?.map<SubstancePolymerDegreeOfPolymerisationBuilder>(
            (v) => SubstancePolymerDegreeOfPolymerisationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.degreeOfPolymerisation',
              },
            ),
          )
          .toList(),
      structuralRepresentation:
          (json['structuralRepresentation'] as List<dynamic>?)
              ?.map<SubstancePolymerStructuralRepresentationBuilder>(
                (v) => SubstancePolymerStructuralRepresentationBuilder.fromJson(
                  {
                    ...v as Map<String, dynamic>,
                    'objectPath': '$objectPath.structuralRepresentation',
                  },
                ),
              )
              .toList(),
    );
  }

  /// Deserialize [SubstancePolymerRepeatUnitBuilder]
  /// from a [String] or [YamlMap] object
  factory SubstancePolymerRepeatUnitBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstancePolymerRepeatUnitBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstancePolymerRepeatUnitBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstancePolymerRepeatUnitBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstancePolymerRepeatUnitBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstancePolymerRepeatUnitBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstancePolymerRepeatUnitBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstancePolymerRepeatUnit';

  /// [unit]
  /// Structural repeat units are essential elements for defining polymers.
  FhirStringBuilder? unit;

  /// [orientation]
  /// The orientation of the polymerisation, e.g. head-tail, head-head,
  /// random.
  CodeableConceptBuilder? orientation;

  /// [amount]
  /// Number of repeats of this unit.
  FhirIntegerBuilder? amount;

  /// [degreeOfPolymerisation]
  /// Applies to homopolymer and block co-polymers where the degree of
  /// polymerisation within a block can be described.
  List<SubstancePolymerDegreeOfPolymerisationBuilder>? degreeOfPolymerisation;

  /// [structuralRepresentation]
  /// A graphical structure for this SRU.
  List<SubstancePolymerStructuralRepresentationBuilder>?
      structuralRepresentation;

  /// Converts a [SubstancePolymerRepeatUnitBuilder]
  /// to [SubstancePolymerRepeatUnit]
  @override
  SubstancePolymerRepeatUnit build() =>
      SubstancePolymerRepeatUnit.fromJson(toJson());

  /// Converts a [SubstancePolymerRepeatUnitBuilder]
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
    addField('unit', unit);
    addField('orientation', orientation);
    addField('amount', amount);
    addField('degreeOfPolymerisation', degreeOfPolymerisation);
    addField('structuralRepresentation', structuralRepresentation);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'unit',
      'orientation',
      'amount',
      'degreeOfPolymerisation',
      'structuralRepresentation',
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
      case 'unit':
        if (unit != null) {
          fields.add(unit!);
        }
      case 'orientation':
        if (orientation != null) {
          fields.add(orientation!);
        }
      case 'amount':
        if (amount != null) {
          fields.add(amount!);
        }
      case 'degreeOfPolymerisation':
        if (degreeOfPolymerisation != null) {
          fields.addAll(degreeOfPolymerisation!);
        }
      case 'structuralRepresentation':
        if (structuralRepresentation != null) {
          fields.addAll(structuralRepresentation!);
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
      case 'unit':
        {
          if (child is FhirStringBuilder) {
            unit = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                unit = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'orientation':
        {
          if (child is CodeableConceptBuilder) {
            orientation = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'amount':
        {
          if (child is FhirIntegerBuilder) {
            amount = child;
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
                  amount = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'degreeOfPolymerisation':
        {
          if (child is List<SubstancePolymerDegreeOfPolymerisationBuilder>) {
            // Replace or create new list
            degreeOfPolymerisation = child;
            return;
          } else if (child is SubstancePolymerDegreeOfPolymerisationBuilder) {
            // Add single element to existing list or create new list
            degreeOfPolymerisation = [
              ...(degreeOfPolymerisation ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'structuralRepresentation':
        {
          if (child is List<SubstancePolymerStructuralRepresentationBuilder>) {
            // Replace or create new list
            structuralRepresentation = child;
            return;
          } else if (child is SubstancePolymerStructuralRepresentationBuilder) {
            // Add single element to existing list or create new list
            structuralRepresentation = [
              ...(structuralRepresentation ?? []),
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
      case 'unit':
        return ['FhirStringBuilder'];
      case 'orientation':
        return ['CodeableConceptBuilder'];
      case 'amount':
        return ['FhirIntegerBuilder'];
      case 'degreeOfPolymerisation':
        return ['SubstancePolymerDegreeOfPolymerisationBuilder'];
      case 'structuralRepresentation':
        return ['SubstancePolymerStructuralRepresentationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubstancePolymerRepeatUnitBuilder]
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
      case 'unit':
        {
          unit = FhirStringBuilder.empty();
          return;
        }
      case 'orientation':
        {
          orientation = CodeableConceptBuilder.empty();
          return;
        }
      case 'amount':
        {
          amount = FhirIntegerBuilder.empty();
          return;
        }
      case 'degreeOfPolymerisation':
        {
          degreeOfPolymerisation =
              <SubstancePolymerDegreeOfPolymerisationBuilder>[];
          return;
        }
      case 'structuralRepresentation':
        {
          structuralRepresentation =
              <SubstancePolymerStructuralRepresentationBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SubstancePolymerRepeatUnitBuilder clone() => throw UnimplementedError();
  @override
  SubstancePolymerRepeatUnitBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? unit,
    CodeableConceptBuilder? orientation,
    FhirIntegerBuilder? amount,
    List<SubstancePolymerDegreeOfPolymerisationBuilder>? degreeOfPolymerisation,
    List<SubstancePolymerStructuralRepresentationBuilder>?
        structuralRepresentation,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SubstancePolymerRepeatUnitBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      unit: unit ?? this.unit,
      orientation: orientation ?? this.orientation,
      amount: amount ?? this.amount,
      degreeOfPolymerisation:
          degreeOfPolymerisation ?? this.degreeOfPolymerisation,
      structuralRepresentation:
          structuralRepresentation ?? this.structuralRepresentation,
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
    if (o is! SubstancePolymerRepeatUnitBuilder) {
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
      unit,
      o.unit,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      orientation,
      o.orientation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      amount,
      o.amount,
    )) {
      return false;
    }
    if (!listEquals<SubstancePolymerDegreeOfPolymerisationBuilder>(
      degreeOfPolymerisation,
      o.degreeOfPolymerisation,
    )) {
      return false;
    }
    if (!listEquals<SubstancePolymerStructuralRepresentationBuilder>(
      structuralRepresentation,
      o.structuralRepresentation,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstancePolymerDegreeOfPolymerisationBuilder]
/// Applies to homopolymer and block co-polymers where the degree of
/// polymerisation within a block can be described.
class SubstancePolymerDegreeOfPolymerisationBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SubstancePolymerDegreeOfPolymerisationBuilder]

  SubstancePolymerDegreeOfPolymerisationBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.average,
    this.low,
    this.high,
    super.disallowExtensions,
  }) : super(
          objectPath:
              'SubstancePolymer.repeat.repeatUnit.degreeOfPolymerisation',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SubstancePolymerDegreeOfPolymerisationBuilder.empty() =>
      SubstancePolymerDegreeOfPolymerisationBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstancePolymerDegreeOfPolymerisationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath =
        'SubstancePolymer.repeat.repeatUnit.degreeOfPolymerisation';
    return SubstancePolymerDegreeOfPolymerisationBuilder(
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
      average: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'average',
        FhirIntegerBuilder.fromJson,
        '$objectPath.average',
      ),
      low: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'low',
        FhirIntegerBuilder.fromJson,
        '$objectPath.low',
      ),
      high: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'high',
        FhirIntegerBuilder.fromJson,
        '$objectPath.high',
      ),
    );
  }

  /// Deserialize [SubstancePolymerDegreeOfPolymerisationBuilder]
  /// from a [String] or [YamlMap] object
  factory SubstancePolymerDegreeOfPolymerisationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstancePolymerDegreeOfPolymerisationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstancePolymerDegreeOfPolymerisationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstancePolymerDegreeOfPolymerisationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstancePolymerDegreeOfPolymerisationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstancePolymerDegreeOfPolymerisationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstancePolymerDegreeOfPolymerisationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstancePolymerDegreeOfPolymerisation';

  /// [type]
  /// The type of the degree of polymerisation shall be described, e.g.
  /// SRU/Polymer Ratio.
  CodeableConceptBuilder? type;

  /// [average]
  /// An average amount of polymerisation.
  FhirIntegerBuilder? average;

  /// [low]
  /// A low expected limit of the amount.
  FhirIntegerBuilder? low;

  /// [high]
  /// A high expected limit of the amount.
  FhirIntegerBuilder? high;

  /// Converts a [SubstancePolymerDegreeOfPolymerisationBuilder]
  /// to [SubstancePolymerDegreeOfPolymerisation]
  @override
  SubstancePolymerDegreeOfPolymerisation build() =>
      SubstancePolymerDegreeOfPolymerisation.fromJson(toJson());

  /// Converts a [SubstancePolymerDegreeOfPolymerisationBuilder]
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
    addField('average', average);
    addField('low', low);
    addField('high', high);
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
      'average',
      'low',
      'high',
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
      case 'average':
        if (average != null) {
          fields.add(average!);
        }
      case 'low':
        if (low != null) {
          fields.add(low!);
        }
      case 'high':
        if (high != null) {
          fields.add(high!);
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
      case 'average':
        {
          if (child is FhirIntegerBuilder) {
            average = child;
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
                  average = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'low':
        {
          if (child is FhirIntegerBuilder) {
            low = child;
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
                  low = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'high':
        {
          if (child is FhirIntegerBuilder) {
            high = child;
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
                  high = converted;
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
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'average':
        return ['FhirIntegerBuilder'];
      case 'low':
        return ['FhirIntegerBuilder'];
      case 'high':
        return ['FhirIntegerBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubstancePolymerDegreeOfPolymerisationBuilder]
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
      case 'average':
        {
          average = FhirIntegerBuilder.empty();
          return;
        }
      case 'low':
        {
          low = FhirIntegerBuilder.empty();
          return;
        }
      case 'high':
        {
          high = FhirIntegerBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SubstancePolymerDegreeOfPolymerisationBuilder clone() =>
      throw UnimplementedError();
  @override
  SubstancePolymerDegreeOfPolymerisationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    FhirIntegerBuilder? average,
    FhirIntegerBuilder? low,
    FhirIntegerBuilder? high,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SubstancePolymerDegreeOfPolymerisationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      average: average ?? this.average,
      low: low ?? this.low,
      high: high ?? this.high,
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
    if (o is! SubstancePolymerDegreeOfPolymerisationBuilder) {
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
      average,
      o.average,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      low,
      o.low,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      high,
      o.high,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstancePolymerStructuralRepresentationBuilder]
/// A graphical structure for this SRU.
class SubstancePolymerStructuralRepresentationBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SubstancePolymerStructuralRepresentationBuilder]

  SubstancePolymerStructuralRepresentationBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.representation,
    this.format,
    this.attachment,
    super.disallowExtensions,
  }) : super(
          objectPath:
              'SubstancePolymer.repeat.repeatUnit.structuralRepresentation',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SubstancePolymerStructuralRepresentationBuilder.empty() =>
      SubstancePolymerStructuralRepresentationBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstancePolymerStructuralRepresentationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath =
        'SubstancePolymer.repeat.repeatUnit.structuralRepresentation';
    return SubstancePolymerStructuralRepresentationBuilder(
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
      representation: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'representation',
        FhirStringBuilder.fromJson,
        '$objectPath.representation',
      ),
      format: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'format',
        CodeableConceptBuilder.fromJson,
        '$objectPath.format',
      ),
      attachment: JsonParser.parseObject<AttachmentBuilder>(
        json,
        'attachment',
        AttachmentBuilder.fromJson,
        '$objectPath.attachment',
      ),
    );
  }

  /// Deserialize [SubstancePolymerStructuralRepresentationBuilder]
  /// from a [String] or [YamlMap] object
  factory SubstancePolymerStructuralRepresentationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstancePolymerStructuralRepresentationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstancePolymerStructuralRepresentationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstancePolymerStructuralRepresentationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstancePolymerStructuralRepresentationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstancePolymerStructuralRepresentationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstancePolymerStructuralRepresentationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstancePolymerStructuralRepresentation';

  /// [type]
  /// The type of structure (e.g. Full, Partial, Representative).
  CodeableConceptBuilder? type;

  /// [representation]
  /// The structural representation as text string in a standard format e.g.
  /// InChI, SMILES, MOLFILE, CDX, SDF, PDB, mmCIF.
  FhirStringBuilder? representation;

  /// [format]
  /// The format of the representation e.g. InChI, SMILES, MOLFILE, CDX, SDF,
  /// PDB, mmCIF.
  CodeableConceptBuilder? format;

  /// [attachment]
  /// An attached file with the structural representation.
  AttachmentBuilder? attachment;

  /// Converts a [SubstancePolymerStructuralRepresentationBuilder]
  /// to [SubstancePolymerStructuralRepresentation]
  @override
  SubstancePolymerStructuralRepresentation build() =>
      SubstancePolymerStructuralRepresentation.fromJson(toJson());

  /// Converts a [SubstancePolymerStructuralRepresentationBuilder]
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
    addField('representation', representation);
    addField('format', format);
    addField('attachment', attachment);
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
      'representation',
      'format',
      'attachment',
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
      case 'representation':
        if (representation != null) {
          fields.add(representation!);
        }
      case 'format':
        if (format != null) {
          fields.add(format!);
        }
      case 'attachment':
        if (attachment != null) {
          fields.add(attachment!);
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
      case 'representation':
        {
          if (child is FhirStringBuilder) {
            representation = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                representation = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'format':
        {
          if (child is CodeableConceptBuilder) {
            format = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'attachment':
        {
          if (child is AttachmentBuilder) {
            attachment = child;
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
      case 'representation':
        return ['FhirStringBuilder'];
      case 'format':
        return ['CodeableConceptBuilder'];
      case 'attachment':
        return ['AttachmentBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubstancePolymerStructuralRepresentationBuilder]
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
      case 'representation':
        {
          representation = FhirStringBuilder.empty();
          return;
        }
      case 'format':
        {
          format = CodeableConceptBuilder.empty();
          return;
        }
      case 'attachment':
        {
          attachment = AttachmentBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SubstancePolymerStructuralRepresentationBuilder clone() =>
      throw UnimplementedError();
  @override
  SubstancePolymerStructuralRepresentationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    FhirStringBuilder? representation,
    CodeableConceptBuilder? format,
    AttachmentBuilder? attachment,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SubstancePolymerStructuralRepresentationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      representation: representation ?? this.representation,
      format: format ?? this.format,
      attachment: attachment ?? this.attachment,
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
    if (o is! SubstancePolymerStructuralRepresentationBuilder) {
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
      representation,
      o.representation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      format,
      o.format,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      attachment,
      o.attachment,
    )) {
      return false;
    }
    return true;
  }
}
