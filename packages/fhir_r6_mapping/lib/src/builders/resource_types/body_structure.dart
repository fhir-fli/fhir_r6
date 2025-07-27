// ignore_for_file: lines_longer_than_80_chars

import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart'
    show
        BodyStructure,
        BodyStructureBodyLandmarkOrientation,
        BodyStructureDistanceFromLandmark,
        BodyStructureIncludedStructure,
        R6ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r6_mapping/fhir_r6_mapping.dart';
import 'package:yaml/yaml.dart';

/// [BodyStructureBuilder]
/// Record details about an anatomical structure. This resource may be used
/// when a coded concept does not provide the necessary detail needed for
/// the use case.
class BodyStructureBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [BodyStructureBuilder]

  BodyStructureBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.active,
    this.morphology,
    this.includedStructure,
    this.excludedStructure,
    this.description,
    this.image,
    this.patient,
  }) : super(
          objectPath: 'BodyStructure',
          resourceType: R6ResourceType.BodyStructure,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory BodyStructureBuilder.empty() => BodyStructureBuilder(
        includedStructure: <BodyStructureIncludedStructureBuilder>[],
        patient: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BodyStructureBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'BodyStructure';
    return BodyStructureBuilder(
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
      active: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'active',
        FhirBooleanBuilder.fromJson,
        '$objectPath.active',
      ),
      morphology: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'morphology',
        CodeableConceptBuilder.fromJson,
        '$objectPath.morphology',
      ),
      includedStructure: (json['includedStructure'] as List<dynamic>?)
          ?.map<BodyStructureIncludedStructureBuilder>(
            (v) => BodyStructureIncludedStructureBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.includedStructure',
              },
            ),
          )
          .toList(),
      excludedStructure: (json['excludedStructure'] as List<dynamic>?)
          ?.map<BodyStructureIncludedStructureBuilder>(
            (v) => BodyStructureIncludedStructureBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.excludedStructure',
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
      image: (json['image'] as List<dynamic>?)
          ?.map<AttachmentBuilder>(
            (v) => AttachmentBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.image',
              },
            ),
          )
          .toList(),
      patient: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'patient',
        ReferenceBuilder.fromJson,
        '$objectPath.patient',
      ),
    );
  }

  /// Deserialize [BodyStructureBuilder]
  /// from a [String] or [YamlMap] object
  factory BodyStructureBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BodyStructureBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BodyStructureBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BodyStructureBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BodyStructureBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BodyStructureBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BodyStructureBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'BodyStructure';

  /// [identifier]
  /// Identifier for this instance of the anatomical structure.
  List<IdentifierBuilder>? identifier;

  /// [active]
  /// Whether this body site is in active use.
  FhirBooleanBuilder? active;

  /// [morphology]
  /// The kind of structure being represented by the body structure at
  /// `BodyStructure.location`. This can define both normal and abnormal
  /// morphologies.
  CodeableConceptBuilder? morphology;

  /// [includedStructure]
  /// The anatomical location(s) or region(s) of the specimen, lesion, or
  /// body structure.
  List<BodyStructureIncludedStructureBuilder>? includedStructure;

  /// [excludedStructure]
  /// The anatomical location(s) or region(s) not occupied or represented by
  /// the specimen, lesion, or body structure.
  List<BodyStructureIncludedStructureBuilder>? excludedStructure;

  /// [description]
  /// A summary, characterization or explanation of the body structure.
  FhirMarkdownBuilder? description;

  /// [image]
  /// Image or images used to identify a location.
  List<AttachmentBuilder>? image;

  /// [patient]
  /// The person to which the body site belongs.
  ReferenceBuilder? patient;

  /// Converts a [BodyStructureBuilder]
  /// to [BodyStructure]
  @override
  BodyStructure build() => BodyStructure.fromJson(toJson());

  /// Converts a [BodyStructureBuilder]
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
    addField('active', active);
    addField('morphology', morphology);
    addField('includedStructure', includedStructure);
    addField('excludedStructure', excludedStructure);
    addField('description', description);
    addField('image', image);
    addField('patient', patient);
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
      'active',
      'morphology',
      'includedStructure',
      'excludedStructure',
      'description',
      'image',
      'patient',
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
      case 'active':
        if (active != null) {
          fields.add(active!);
        }
      case 'morphology':
        if (morphology != null) {
          fields.add(morphology!);
        }
      case 'includedStructure':
        if (includedStructure != null) {
          fields.addAll(includedStructure!);
        }
      case 'excludedStructure':
        if (excludedStructure != null) {
          fields.addAll(excludedStructure!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'image':
        if (image != null) {
          fields.addAll(image!);
        }
      case 'patient':
        if (patient != null) {
          fields.add(patient!);
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
      case 'active':
        {
          if (child is FhirBooleanBuilder) {
            active = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                active = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'morphology':
        {
          if (child is CodeableConceptBuilder) {
            morphology = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'includedStructure':
        {
          if (child is List<BodyStructureIncludedStructureBuilder>) {
            // Replace or create new list
            includedStructure = child;
            return;
          } else if (child is BodyStructureIncludedStructureBuilder) {
            // Add single element to existing list or create new list
            includedStructure = [
              ...(includedStructure ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'excludedStructure':
        {
          if (child is List<BodyStructureIncludedStructureBuilder>) {
            // Replace or create new list
            excludedStructure = child;
            return;
          } else if (child is BodyStructureIncludedStructureBuilder) {
            // Add single element to existing list or create new list
            excludedStructure = [
              ...(excludedStructure ?? []),
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
      case 'image':
        {
          if (child is List<AttachmentBuilder>) {
            // Replace or create new list
            image = child;
            return;
          } else if (child is AttachmentBuilder) {
            // Add single element to existing list or create new list
            image = [
              ...(image ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'patient':
        {
          if (child is ReferenceBuilder) {
            patient = child;
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
      case 'active':
        return ['FhirBooleanBuilder'];
      case 'morphology':
        return ['CodeableConceptBuilder'];
      case 'includedStructure':
        return ['BodyStructureIncludedStructureBuilder'];
      case 'excludedStructure':
        return ['BodyStructureIncludedStructureBuilder'];
      case 'description':
        return ['FhirMarkdownBuilder'];
      case 'image':
        return ['AttachmentBuilder'];
      case 'patient':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [BodyStructureBuilder]
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
      case 'active':
        {
          active = FhirBooleanBuilder.empty();
          return;
        }
      case 'morphology':
        {
          morphology = CodeableConceptBuilder.empty();
          return;
        }
      case 'includedStructure':
        {
          includedStructure = <BodyStructureIncludedStructureBuilder>[];
          return;
        }
      case 'excludedStructure':
        {
          excludedStructure = <BodyStructureIncludedStructureBuilder>[];
          return;
        }
      case 'description':
        {
          description = FhirMarkdownBuilder.empty();
          return;
        }
      case 'image':
        {
          image = <AttachmentBuilder>[];
          return;
        }
      case 'patient':
        {
          patient = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  BodyStructureBuilder clone() => throw UnimplementedError();
  @override
  BodyStructureBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    FhirBooleanBuilder? active,
    CodeableConceptBuilder? morphology,
    List<BodyStructureIncludedStructureBuilder>? includedStructure,
    List<BodyStructureIncludedStructureBuilder>? excludedStructure,
    FhirMarkdownBuilder? description,
    List<AttachmentBuilder>? image,
    ReferenceBuilder? patient,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = BodyStructureBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      active: active ?? this.active,
      morphology: morphology ?? this.morphology,
      includedStructure: includedStructure ?? this.includedStructure,
      excludedStructure: excludedStructure ?? this.excludedStructure,
      description: description ?? this.description,
      image: image ?? this.image,
      patient: patient ?? this.patient,
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
    if (o is! BodyStructureBuilder) {
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
      active,
      o.active,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      morphology,
      o.morphology,
    )) {
      return false;
    }
    if (!listEquals<BodyStructureIncludedStructureBuilder>(
      includedStructure,
      o.includedStructure,
    )) {
      return false;
    }
    if (!listEquals<BodyStructureIncludedStructureBuilder>(
      excludedStructure,
      o.excludedStructure,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!listEquals<AttachmentBuilder>(
      image,
      o.image,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      patient,
      o.patient,
    )) {
      return false;
    }
    return true;
  }
}

/// [BodyStructureIncludedStructureBuilder]
/// The anatomical location(s) or region(s) of the specimen, lesion, or
/// body structure.
class BodyStructureIncludedStructureBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [BodyStructureIncludedStructureBuilder]

  BodyStructureIncludedStructureBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.structure,
    this.laterality,
    this.bodyLandmarkOrientation,
    this.spatialReference,
    this.qualifier,
    super.disallowExtensions,
  }) : super(
          objectPath: 'BodyStructure.includedStructure',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory BodyStructureIncludedStructureBuilder.empty() =>
      BodyStructureIncludedStructureBuilder(
        structure: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BodyStructureIncludedStructureBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'BodyStructure.includedStructure';
    return BodyStructureIncludedStructureBuilder(
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
      structure: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'structure',
        CodeableConceptBuilder.fromJson,
        '$objectPath.structure',
      ),
      laterality: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'laterality',
        CodeableConceptBuilder.fromJson,
        '$objectPath.laterality',
      ),
      bodyLandmarkOrientation:
          (json['bodyLandmarkOrientation'] as List<dynamic>?)
              ?.map<BodyStructureBodyLandmarkOrientationBuilder>(
                (v) => BodyStructureBodyLandmarkOrientationBuilder.fromJson(
                  {
                    ...v as Map<String, dynamic>,
                    'objectPath': '$objectPath.bodyLandmarkOrientation',
                  },
                ),
              )
              .toList(),
      spatialReference: (json['spatialReference'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.spatialReference',
              },
            ),
          )
          .toList(),
      qualifier: (json['qualifier'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.qualifier',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [BodyStructureIncludedStructureBuilder]
  /// from a [String] or [YamlMap] object
  factory BodyStructureIncludedStructureBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BodyStructureIncludedStructureBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BodyStructureIncludedStructureBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BodyStructureIncludedStructureBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BodyStructureIncludedStructureBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BodyStructureIncludedStructureBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BodyStructureIncludedStructureBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'BodyStructureIncludedStructure';

  /// [structure]
  /// Code that represents the included structure.
  CodeableConceptBuilder? structure;

  /// [laterality]
  /// Code that represents the included structure laterality.
  CodeableConceptBuilder? laterality;

  /// [bodyLandmarkOrientation]
  /// Body locations in relation to a specific body landmark (tatoo, scar,
  /// other body structure).
  List<BodyStructureBodyLandmarkOrientationBuilder>? bodyLandmarkOrientation;

  /// [spatialReference]
  /// XY or XYZ-coordinate orientation for structure.
  List<ReferenceBuilder>? spatialReference;

  /// [qualifier]
  /// Code that represents the included structure qualifier.
  List<CodeableConceptBuilder>? qualifier;

  /// Converts a [BodyStructureIncludedStructureBuilder]
  /// to [BodyStructureIncludedStructure]
  @override
  BodyStructureIncludedStructure build() =>
      BodyStructureIncludedStructure.fromJson(toJson());

  /// Converts a [BodyStructureIncludedStructureBuilder]
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
    addField('structure', structure);
    addField('laterality', laterality);
    addField('bodyLandmarkOrientation', bodyLandmarkOrientation);
    addField('spatialReference', spatialReference);
    addField('qualifier', qualifier);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'structure',
      'laterality',
      'bodyLandmarkOrientation',
      'spatialReference',
      'qualifier',
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
      case 'structure':
        if (structure != null) {
          fields.add(structure!);
        }
      case 'laterality':
        if (laterality != null) {
          fields.add(laterality!);
        }
      case 'bodyLandmarkOrientation':
        if (bodyLandmarkOrientation != null) {
          fields.addAll(bodyLandmarkOrientation!);
        }
      case 'spatialReference':
        if (spatialReference != null) {
          fields.addAll(spatialReference!);
        }
      case 'qualifier':
        if (qualifier != null) {
          fields.addAll(qualifier!);
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
      case 'structure':
        {
          if (child is CodeableConceptBuilder) {
            structure = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'laterality':
        {
          if (child is CodeableConceptBuilder) {
            laterality = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'bodyLandmarkOrientation':
        {
          if (child is List<BodyStructureBodyLandmarkOrientationBuilder>) {
            // Replace or create new list
            bodyLandmarkOrientation = child;
            return;
          } else if (child is BodyStructureBodyLandmarkOrientationBuilder) {
            // Add single element to existing list or create new list
            bodyLandmarkOrientation = [
              ...(bodyLandmarkOrientation ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'spatialReference':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            spatialReference = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            spatialReference = [
              ...(spatialReference ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'qualifier':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            qualifier = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            qualifier = [
              ...(qualifier ?? []),
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
      case 'structure':
        return ['CodeableConceptBuilder'];
      case 'laterality':
        return ['CodeableConceptBuilder'];
      case 'bodyLandmarkOrientation':
        return ['BodyStructureBodyLandmarkOrientationBuilder'];
      case 'spatialReference':
        return ['ReferenceBuilder'];
      case 'qualifier':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [BodyStructureIncludedStructureBuilder]
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
      case 'structure':
        {
          structure = CodeableConceptBuilder.empty();
          return;
        }
      case 'laterality':
        {
          laterality = CodeableConceptBuilder.empty();
          return;
        }
      case 'bodyLandmarkOrientation':
        {
          bodyLandmarkOrientation =
              <BodyStructureBodyLandmarkOrientationBuilder>[];
          return;
        }
      case 'spatialReference':
        {
          spatialReference = <ReferenceBuilder>[];
          return;
        }
      case 'qualifier':
        {
          qualifier = <CodeableConceptBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  BodyStructureIncludedStructureBuilder clone() => throw UnimplementedError();
  @override
  BodyStructureIncludedStructureBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? structure,
    CodeableConceptBuilder? laterality,
    List<BodyStructureBodyLandmarkOrientationBuilder>? bodyLandmarkOrientation,
    List<ReferenceBuilder>? spatialReference,
    List<CodeableConceptBuilder>? qualifier,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = BodyStructureIncludedStructureBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      structure: structure ?? this.structure,
      laterality: laterality ?? this.laterality,
      bodyLandmarkOrientation:
          bodyLandmarkOrientation ?? this.bodyLandmarkOrientation,
      spatialReference: spatialReference ?? this.spatialReference,
      qualifier: qualifier ?? this.qualifier,
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
    if (o is! BodyStructureIncludedStructureBuilder) {
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
      structure,
      o.structure,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      laterality,
      o.laterality,
    )) {
      return false;
    }
    if (!listEquals<BodyStructureBodyLandmarkOrientationBuilder>(
      bodyLandmarkOrientation,
      o.bodyLandmarkOrientation,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      spatialReference,
      o.spatialReference,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      qualifier,
      o.qualifier,
    )) {
      return false;
    }
    return true;
  }
}

/// [BodyStructureBodyLandmarkOrientationBuilder]
/// Body locations in relation to a specific body landmark (tatoo, scar,
/// other body structure).
class BodyStructureBodyLandmarkOrientationBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [BodyStructureBodyLandmarkOrientationBuilder]

  BodyStructureBodyLandmarkOrientationBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.landmarkDescription,
    this.clockFacePosition,
    this.distanceFromLandmark,
    this.surfaceOrientation,
    super.disallowExtensions,
  }) : super(
          objectPath: 'BodyStructure.includedStructure.bodyLandmarkOrientation',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory BodyStructureBodyLandmarkOrientationBuilder.empty() =>
      BodyStructureBodyLandmarkOrientationBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BodyStructureBodyLandmarkOrientationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath =
        'BodyStructure.includedStructure.bodyLandmarkOrientation';
    return BodyStructureBodyLandmarkOrientationBuilder(
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
      landmarkDescription: (json['landmarkDescription'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.landmarkDescription',
              },
            ),
          )
          .toList(),
      clockFacePosition: (json['clockFacePosition'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.clockFacePosition',
              },
            ),
          )
          .toList(),
      distanceFromLandmark: (json['distanceFromLandmark'] as List<dynamic>?)
          ?.map<BodyStructureDistanceFromLandmarkBuilder>(
            (v) => BodyStructureDistanceFromLandmarkBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.distanceFromLandmark',
              },
            ),
          )
          .toList(),
      surfaceOrientation: (json['surfaceOrientation'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.surfaceOrientation',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [BodyStructureBodyLandmarkOrientationBuilder]
  /// from a [String] or [YamlMap] object
  factory BodyStructureBodyLandmarkOrientationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BodyStructureBodyLandmarkOrientationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BodyStructureBodyLandmarkOrientationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BodyStructureBodyLandmarkOrientationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BodyStructureBodyLandmarkOrientationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BodyStructureBodyLandmarkOrientationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BodyStructureBodyLandmarkOrientationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'BodyStructureBodyLandmarkOrientation';

  /// [landmarkDescription]
  /// A description of a landmark on the body used as a reference to locate
  /// something else.
  List<CodeableConceptBuilder>? landmarkDescription;

  /// [clockFacePosition]
  /// An description of the direction away from a landmark something is
  /// located based on a radial clock dial.
  List<CodeableConceptBuilder>? clockFacePosition;

  /// [distanceFromLandmark]
  /// The distance in centimeters a certain observation is made from a body
  /// landmark.
  List<BodyStructureDistanceFromLandmarkBuilder>? distanceFromLandmark;

  /// [surfaceOrientation]
  /// The surface area a body location is in relation to a landmark.
  List<CodeableConceptBuilder>? surfaceOrientation;

  /// Converts a [BodyStructureBodyLandmarkOrientationBuilder]
  /// to [BodyStructureBodyLandmarkOrientation]
  @override
  BodyStructureBodyLandmarkOrientation build() =>
      BodyStructureBodyLandmarkOrientation.fromJson(toJson());

  /// Converts a [BodyStructureBodyLandmarkOrientationBuilder]
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
    addField('landmarkDescription', landmarkDescription);
    addField('clockFacePosition', clockFacePosition);
    addField('distanceFromLandmark', distanceFromLandmark);
    addField('surfaceOrientation', surfaceOrientation);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'landmarkDescription',
      'clockFacePosition',
      'distanceFromLandmark',
      'surfaceOrientation',
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
      case 'landmarkDescription':
        if (landmarkDescription != null) {
          fields.addAll(landmarkDescription!);
        }
      case 'clockFacePosition':
        if (clockFacePosition != null) {
          fields.addAll(clockFacePosition!);
        }
      case 'distanceFromLandmark':
        if (distanceFromLandmark != null) {
          fields.addAll(distanceFromLandmark!);
        }
      case 'surfaceOrientation':
        if (surfaceOrientation != null) {
          fields.addAll(surfaceOrientation!);
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
      case 'landmarkDescription':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            landmarkDescription = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            landmarkDescription = [
              ...(landmarkDescription ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'clockFacePosition':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            clockFacePosition = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            clockFacePosition = [
              ...(clockFacePosition ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'distanceFromLandmark':
        {
          if (child is List<BodyStructureDistanceFromLandmarkBuilder>) {
            // Replace or create new list
            distanceFromLandmark = child;
            return;
          } else if (child is BodyStructureDistanceFromLandmarkBuilder) {
            // Add single element to existing list or create new list
            distanceFromLandmark = [
              ...(distanceFromLandmark ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'surfaceOrientation':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            surfaceOrientation = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            surfaceOrientation = [
              ...(surfaceOrientation ?? []),
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
      case 'landmarkDescription':
        return ['CodeableConceptBuilder'];
      case 'clockFacePosition':
        return ['CodeableConceptBuilder'];
      case 'distanceFromLandmark':
        return ['BodyStructureDistanceFromLandmarkBuilder'];
      case 'surfaceOrientation':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [BodyStructureBodyLandmarkOrientationBuilder]
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
      case 'landmarkDescription':
        {
          landmarkDescription = <CodeableConceptBuilder>[];
          return;
        }
      case 'clockFacePosition':
        {
          clockFacePosition = <CodeableConceptBuilder>[];
          return;
        }
      case 'distanceFromLandmark':
        {
          distanceFromLandmark = <BodyStructureDistanceFromLandmarkBuilder>[];
          return;
        }
      case 'surfaceOrientation':
        {
          surfaceOrientation = <CodeableConceptBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  BodyStructureBodyLandmarkOrientationBuilder clone() =>
      throw UnimplementedError();
  @override
  BodyStructureBodyLandmarkOrientationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<CodeableConceptBuilder>? landmarkDescription,
    List<CodeableConceptBuilder>? clockFacePosition,
    List<BodyStructureDistanceFromLandmarkBuilder>? distanceFromLandmark,
    List<CodeableConceptBuilder>? surfaceOrientation,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = BodyStructureBodyLandmarkOrientationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      landmarkDescription: landmarkDescription ?? this.landmarkDescription,
      clockFacePosition: clockFacePosition ?? this.clockFacePosition,
      distanceFromLandmark: distanceFromLandmark ?? this.distanceFromLandmark,
      surfaceOrientation: surfaceOrientation ?? this.surfaceOrientation,
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
    if (o is! BodyStructureBodyLandmarkOrientationBuilder) {
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
    if (!listEquals<CodeableConceptBuilder>(
      landmarkDescription,
      o.landmarkDescription,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      clockFacePosition,
      o.clockFacePosition,
    )) {
      return false;
    }
    if (!listEquals<BodyStructureDistanceFromLandmarkBuilder>(
      distanceFromLandmark,
      o.distanceFromLandmark,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      surfaceOrientation,
      o.surfaceOrientation,
    )) {
      return false;
    }
    return true;
  }
}

/// [BodyStructureDistanceFromLandmarkBuilder]
/// The distance in centimeters a certain observation is made from a body
/// landmark.
class BodyStructureDistanceFromLandmarkBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [BodyStructureDistanceFromLandmarkBuilder]

  BodyStructureDistanceFromLandmarkBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.device,
    this.value,
    super.disallowExtensions,
  }) : super(
          objectPath:
              'BodyStructure.includedStructure.bodyLandmarkOrientation.distanceFromLandmark',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory BodyStructureDistanceFromLandmarkBuilder.empty() =>
      BodyStructureDistanceFromLandmarkBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BodyStructureDistanceFromLandmarkBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath =
        'BodyStructure.includedStructure.bodyLandmarkOrientation.distanceFromLandmark';
    return BodyStructureDistanceFromLandmarkBuilder(
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
      device: (json['device'] as List<dynamic>?)
          ?.map<CodeableReferenceBuilder>(
            (v) => CodeableReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.device',
              },
            ),
          )
          .toList(),
      value: (json['value'] as List<dynamic>?)
          ?.map<QuantityBuilder>(
            (v) => QuantityBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.value',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [BodyStructureDistanceFromLandmarkBuilder]
  /// from a [String] or [YamlMap] object
  factory BodyStructureDistanceFromLandmarkBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BodyStructureDistanceFromLandmarkBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BodyStructureDistanceFromLandmarkBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BodyStructureDistanceFromLandmarkBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BodyStructureDistanceFromLandmarkBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BodyStructureDistanceFromLandmarkBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BodyStructureDistanceFromLandmarkBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'BodyStructureDistanceFromLandmark';

  /// [device]
  /// An instrument, tool, analyzer, etc. used in the measurement.
  List<CodeableReferenceBuilder>? device;

  /// [value]
  /// The measured distance (e.g., in cm) from a body landmark.
  List<QuantityBuilder>? value;

  /// Converts a [BodyStructureDistanceFromLandmarkBuilder]
  /// to [BodyStructureDistanceFromLandmark]
  @override
  BodyStructureDistanceFromLandmark build() =>
      BodyStructureDistanceFromLandmark.fromJson(toJson());

  /// Converts a [BodyStructureDistanceFromLandmarkBuilder]
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
    addField('device', device);
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
      'device',
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
      case 'device':
        if (device != null) {
          fields.addAll(device!);
        }
      case 'value':
        if (value != null) {
          fields.addAll(value!);
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
      case 'device':
        {
          if (child is List<CodeableReferenceBuilder>) {
            // Replace or create new list
            device = child;
            return;
          } else if (child is CodeableReferenceBuilder) {
            // Add single element to existing list or create new list
            device = [
              ...(device ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'value':
        {
          if (child is List<QuantityBuilder>) {
            // Replace or create new list
            value = child;
            return;
          } else if (child is QuantityBuilder) {
            // Add single element to existing list or create new list
            value = [
              ...(value ?? []),
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
      case 'device':
        return ['CodeableReferenceBuilder'];
      case 'value':
        return ['QuantityBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [BodyStructureDistanceFromLandmarkBuilder]
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
      case 'device':
        {
          device = <CodeableReferenceBuilder>[];
          return;
        }
      case 'value':
        {
          value = <QuantityBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  BodyStructureDistanceFromLandmarkBuilder clone() =>
      throw UnimplementedError();
  @override
  BodyStructureDistanceFromLandmarkBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<CodeableReferenceBuilder>? device,
    List<QuantityBuilder>? value,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = BodyStructureDistanceFromLandmarkBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      device: device ?? this.device,
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
    if (o is! BodyStructureDistanceFromLandmarkBuilder) {
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
      device,
      o.device,
    )) {
      return false;
    }
    if (!listEquals<QuantityBuilder>(
      value,
      o.value,
    )) {
      return false;
    }
    return true;
  }
}
