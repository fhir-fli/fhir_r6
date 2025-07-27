import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart'
    show
        MolecularSequence,
        MolecularSequenceEdit,
        MolecularSequenceRelative,
        MolecularSequenceStartingSequence,
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
    this.subject,
    this.focus,
    this.specimen,
    this.device,
    this.performer,
    this.literal,
    this.formatted,
    this.relative,
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
      subject: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'subject',
        ReferenceBuilder.fromJson,
        '$objectPath.subject',
      ),
      focus: (json['focus'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.focus',
              },
            ),
          )
          .toList(),
      specimen: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'specimen',
        ReferenceBuilder.fromJson,
        '$objectPath.specimen',
      ),
      device: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'device',
        ReferenceBuilder.fromJson,
        '$objectPath.device',
      ),
      performer: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'performer',
        ReferenceBuilder.fromJson,
        '$objectPath.performer',
      ),
      literal: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'literal',
        FhirStringBuilder.fromJson,
        '$objectPath.literal',
      ),
      formatted: (json['formatted'] as List<dynamic>?)
          ?.map<AttachmentBuilder>(
            (v) => AttachmentBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.formatted',
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
  /// Amino Acid Sequence/ DNA Sequence / RNA Sequence.
  SequenceTypeBuilder? type;

  /// [subject]
  /// Indicates the subject this sequence is associated too.
  ReferenceBuilder? subject;

  /// [focus]
  /// The actual focus of a molecular sequence when it is not the patient of
  /// record representing something or someone associated with the patient
  /// such as a spouse, parent, child, or sibling. For example, in trio
  /// testing, the subject would be the child (proband) and the focus would
  /// be the parent.
  List<ReferenceBuilder>? focus;

  /// [specimen]
  /// Specimen used for sequencing.
  ReferenceBuilder? specimen;

  /// [device]
  /// The method for sequencing, for example, chip information.
  ReferenceBuilder? device;

  /// [performer]
  /// The organization or lab that should be responsible for this result.
  ReferenceBuilder? performer;

  /// [literal]
  /// Sequence that was observed.
  FhirStringBuilder? literal;

  /// [formatted]
  /// Sequence that was observed as file content. Can be an actual file
  /// contents, or referenced by a URL to an external system.
  List<AttachmentBuilder>? formatted;

  /// [relative]
  /// A sequence defined relative to another sequence.
  List<MolecularSequenceRelativeBuilder>? relative;

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
    addField('subject', subject);
    addField('focus', focus);
    addField('specimen', specimen);
    addField('device', device);
    addField('performer', performer);
    addField('literal', literal);
    addField('formatted', formatted);
    addField('relative', relative);
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
      'subject',
      'focus',
      'specimen',
      'device',
      'performer',
      'literal',
      'formatted',
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
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'focus':
        if (focus != null) {
          fields.addAll(focus!);
        }
      case 'specimen':
        if (specimen != null) {
          fields.add(specimen!);
        }
      case 'device':
        if (device != null) {
          fields.add(device!);
        }
      case 'performer':
        if (performer != null) {
          fields.add(performer!);
        }
      case 'literal':
        if (literal != null) {
          fields.add(literal!);
        }
      case 'formatted':
        if (formatted != null) {
          fields.addAll(formatted!);
        }
      case 'relative':
        if (relative != null) {
          fields.addAll(relative!);
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
      case 'subject':
        {
          if (child is ReferenceBuilder) {
            subject = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'focus':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            focus = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            focus = [
              ...(focus ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'specimen':
        {
          if (child is ReferenceBuilder) {
            specimen = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'device':
        {
          if (child is ReferenceBuilder) {
            device = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'performer':
        {
          if (child is ReferenceBuilder) {
            performer = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'literal':
        {
          if (child is FhirStringBuilder) {
            literal = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                literal = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'formatted':
        {
          if (child is List<AttachmentBuilder>) {
            // Replace or create new list
            formatted = child;
            return;
          } else if (child is AttachmentBuilder) {
            // Add single element to existing list or create new list
            formatted = [
              ...(formatted ?? []),
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
      case 'subject':
        return ['ReferenceBuilder'];
      case 'focus':
        return ['ReferenceBuilder'];
      case 'specimen':
        return ['ReferenceBuilder'];
      case 'device':
        return ['ReferenceBuilder'];
      case 'performer':
        return ['ReferenceBuilder'];
      case 'literal':
        return ['FhirStringBuilder'];
      case 'formatted':
        return ['AttachmentBuilder'];
      case 'relative':
        return ['MolecularSequenceRelativeBuilder'];
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
      case 'subject':
        {
          subject = ReferenceBuilder.empty();
          return;
        }
      case 'focus':
        {
          focus = <ReferenceBuilder>[];
          return;
        }
      case 'specimen':
        {
          specimen = ReferenceBuilder.empty();
          return;
        }
      case 'device':
        {
          device = ReferenceBuilder.empty();
          return;
        }
      case 'performer':
        {
          performer = ReferenceBuilder.empty();
          return;
        }
      case 'literal':
        {
          literal = FhirStringBuilder.empty();
          return;
        }
      case 'formatted':
        {
          formatted = <AttachmentBuilder>[];
          return;
        }
      case 'relative':
        {
          relative = <MolecularSequenceRelativeBuilder>[];
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
    ReferenceBuilder? subject,
    List<ReferenceBuilder>? focus,
    ReferenceBuilder? specimen,
    ReferenceBuilder? device,
    ReferenceBuilder? performer,
    FhirStringBuilder? literal,
    List<AttachmentBuilder>? formatted,
    List<MolecularSequenceRelativeBuilder>? relative,
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
      subject: subject ?? this.subject,
      focus: focus ?? this.focus,
      specimen: specimen ?? this.specimen,
      device: device ?? this.device,
      performer: performer ?? this.performer,
      literal: literal ?? this.literal,
      formatted: formatted ?? this.formatted,
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
    if (!equalsDeepWithNull(
      subject,
      o.subject,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      focus,
      o.focus,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      specimen,
      o.specimen,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      device,
      o.device,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      performer,
      o.performer,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      literal,
      o.literal,
    )) {
      return false;
    }
    if (!listEquals<AttachmentBuilder>(
      formatted,
      o.formatted,
    )) {
      return false;
    }
    if (!listEquals<MolecularSequenceRelativeBuilder>(
      relative,
      o.relative,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularSequenceRelativeBuilder]
/// A sequence defined relative to another sequence.
class MolecularSequenceRelativeBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MolecularSequenceRelativeBuilder]

  MolecularSequenceRelativeBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.coordinateSystem,
    this.ordinalPosition,
    this.sequenceRange,
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
        coordinateSystem: CodeableConceptBuilder.empty(),
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
      coordinateSystem: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'coordinateSystem',
        CodeableConceptBuilder.fromJson,
        '$objectPath.coordinateSystem',
      ),
      ordinalPosition: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'ordinalPosition',
        FhirIntegerBuilder.fromJson,
        '$objectPath.ordinalPosition',
      ),
      sequenceRange: JsonParser.parseObject<RangeBuilder>(
        json,
        'sequenceRange',
        RangeBuilder.fromJson,
        '$objectPath.sequenceRange',
      ),
      startingSequence:
          JsonParser.parseObject<MolecularSequenceStartingSequenceBuilder>(
        json,
        'startingSequence',
        MolecularSequenceStartingSequenceBuilder.fromJson,
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

  /// [coordinateSystem]
  /// These are different ways of identifying nucleotides or amino acids
  /// within a sequence. Different databases and file types may use different
  /// systems. For detail definitions, see https://loinc.org/92822-6/ for
  /// more detail.
  CodeableConceptBuilder? coordinateSystem;

  /// [ordinalPosition]
  /// Indicates the order in which the sequence should be considered when
  /// putting multiple 'relative' elements together.
  FhirIntegerBuilder? ordinalPosition;

  /// [sequenceRange]
  /// Indicates the nucleotide range in the composed sequence when multiple
  /// 'relative' elements are used together.
  RangeBuilder? sequenceRange;

  /// [startingSequence]
  /// A sequence that is used as a starting sequence to describe variants
  /// that are present in a sequence analyzed.
  MolecularSequenceStartingSequenceBuilder? startingSequence;

  /// [edit]
  /// Changes in sequence from the starting sequence.
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
    addField('coordinateSystem', coordinateSystem);
    addField('ordinalPosition', ordinalPosition);
    addField('sequenceRange', sequenceRange);
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
      'coordinateSystem',
      'ordinalPosition',
      'sequenceRange',
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
      case 'coordinateSystem':
        if (coordinateSystem != null) {
          fields.add(coordinateSystem!);
        }
      case 'ordinalPosition':
        if (ordinalPosition != null) {
          fields.add(ordinalPosition!);
        }
      case 'sequenceRange':
        if (sequenceRange != null) {
          fields.add(sequenceRange!);
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
      case 'coordinateSystem':
        {
          if (child is CodeableConceptBuilder) {
            coordinateSystem = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'ordinalPosition':
        {
          if (child is FhirIntegerBuilder) {
            ordinalPosition = child;
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
                  ordinalPosition = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'sequenceRange':
        {
          if (child is RangeBuilder) {
            sequenceRange = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'startingSequence':
        {
          if (child is MolecularSequenceStartingSequenceBuilder) {
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
      case 'coordinateSystem':
        return ['CodeableConceptBuilder'];
      case 'ordinalPosition':
        return ['FhirIntegerBuilder'];
      case 'sequenceRange':
        return ['RangeBuilder'];
      case 'startingSequence':
        return ['MolecularSequenceStartingSequenceBuilder'];
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
      case 'coordinateSystem':
        {
          coordinateSystem = CodeableConceptBuilder.empty();
          return;
        }
      case 'ordinalPosition':
        {
          ordinalPosition = FhirIntegerBuilder.empty();
          return;
        }
      case 'sequenceRange':
        {
          sequenceRange = RangeBuilder.empty();
          return;
        }
      case 'startingSequence':
        {
          startingSequence = MolecularSequenceStartingSequenceBuilder.empty();
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
    CodeableConceptBuilder? coordinateSystem,
    FhirIntegerBuilder? ordinalPosition,
    RangeBuilder? sequenceRange,
    MolecularSequenceStartingSequenceBuilder? startingSequence,
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
      coordinateSystem: coordinateSystem ?? this.coordinateSystem,
      ordinalPosition: ordinalPosition ?? this.ordinalPosition,
      sequenceRange: sequenceRange ?? this.sequenceRange,
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
      coordinateSystem,
      o.coordinateSystem,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      ordinalPosition,
      o.ordinalPosition,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sequenceRange,
      o.sequenceRange,
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

/// [MolecularSequenceStartingSequenceBuilder]
/// A sequence that is used as a starting sequence to describe variants
/// that are present in a sequence analyzed.
class MolecularSequenceStartingSequenceBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MolecularSequenceStartingSequenceBuilder]

  MolecularSequenceStartingSequenceBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.genomeAssembly,
    this.chromosome,
    SequenceXMolecularSequenceStartingSequenceBuilder? sequenceX,
    CodeableConceptBuilder? sequenceCodeableConcept,
    FhirStringBuilder? sequenceString,
    ReferenceBuilder? sequenceReference,
    this.windowStart,
    this.windowEnd,
    this.orientation,
    this.strand,
    super.disallowExtensions,
  })  : sequenceX = sequenceX ??
            sequenceCodeableConcept ??
            sequenceString ??
            sequenceReference,
        super(
          objectPath: 'MolecularSequence.relative.startingSequence',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MolecularSequenceStartingSequenceBuilder.empty() =>
      MolecularSequenceStartingSequenceBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceStartingSequenceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MolecularSequence.relative.startingSequence';
    return MolecularSequenceStartingSequenceBuilder(
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
      genomeAssembly: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'genomeAssembly',
        CodeableConceptBuilder.fromJson,
        '$objectPath.genomeAssembly',
      ),
      chromosome: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'chromosome',
        CodeableConceptBuilder.fromJson,
        '$objectPath.chromosome',
      ),
      sequenceX: JsonParser.parsePolymorphic<
          SequenceXMolecularSequenceStartingSequenceBuilder>(
        json,
        {
          'sequenceCodeableConcept': CodeableConceptBuilder.fromJson,
          'sequenceString': FhirStringBuilder.fromJson,
          'sequenceReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
      windowStart: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'windowStart',
        FhirIntegerBuilder.fromJson,
        '$objectPath.windowStart',
      ),
      windowEnd: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'windowEnd',
        FhirIntegerBuilder.fromJson,
        '$objectPath.windowEnd',
      ),
      orientation: JsonParser.parsePrimitive<OrientationTypeBuilder>(
        json,
        'orientation',
        OrientationTypeBuilder.fromJson,
        '$objectPath.orientation',
      ),
      strand: JsonParser.parsePrimitive<StrandTypeBuilder>(
        json,
        'strand',
        StrandTypeBuilder.fromJson,
        '$objectPath.strand',
      ),
    );
  }

  /// Deserialize [MolecularSequenceStartingSequenceBuilder]
  /// from a [String] or [YamlMap] object
  factory MolecularSequenceStartingSequenceBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularSequenceStartingSequenceBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularSequenceStartingSequenceBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularSequenceStartingSequenceBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularSequenceStartingSequenceBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceStartingSequenceBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularSequenceStartingSequenceBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularSequenceStartingSequence';

  /// [genomeAssembly]
  /// The genome assembly used for starting sequence, e.g. GRCh38.
  CodeableConceptBuilder? genomeAssembly;

  /// [chromosome]
  /// Structural unit composed of a nucleic acid molecule which controls its
  /// own replication through the interaction of specific proteins at one or
  /// more origins of replication
  /// ([SO:0000340](http://www.sequenceontology.org/browser/current_svn/term/SO:0000340)).
  CodeableConceptBuilder? chromosome;

  /// [sequenceX]
  /// The reference sequence that represents the starting sequence.
  SequenceXMolecularSequenceStartingSequenceBuilder? sequenceX;

  /// Getter for [sequenceCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get sequenceCodeableConcept =>
      sequenceX?.isAs<CodeableConceptBuilder>();

  /// Getter for [sequenceString] as a FhirStringBuilder
  FhirStringBuilder? get sequenceString => sequenceX?.isAs<FhirStringBuilder>();

  /// Getter for [sequenceReference] as a ReferenceBuilder
  ReferenceBuilder? get sequenceReference =>
      sequenceX?.isAs<ReferenceBuilder>();

  /// [windowStart]
  /// Start position of the window on the starting sequence. This value
  /// should honor the rules of the coordinateSystem.
  FhirIntegerBuilder? windowStart;

  /// [windowEnd]
  /// End position of the window on the starting sequence. This value should
  /// honor the rules of the coordinateSystem.
  FhirIntegerBuilder? windowEnd;

  /// [orientation]
  /// A relative reference to a DNA strand based on gene orientation. The
  /// strand that contains the open reading frame of the gene is the "sense"
  /// strand, and the opposite complementary strand is the "antisense"
  /// strand.
  OrientationTypeBuilder? orientation;

  /// [strand]
  /// An absolute reference to a strand. The Watson strand is the strand
  /// whose 5'-end is on the short arm of the chromosome, and the Crick
  /// strand as the one whose 5'-end is on the long arm.
  StrandTypeBuilder? strand;

  /// Converts a [MolecularSequenceStartingSequenceBuilder]
  /// to [MolecularSequenceStartingSequence]
  @override
  MolecularSequenceStartingSequence build() =>
      MolecularSequenceStartingSequence.fromJson(toJson());

  /// Converts a [MolecularSequenceStartingSequenceBuilder]
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
    addField('chromosome', chromosome);
    if (sequenceX != null) {
      final fhirType = sequenceX!.fhirType;
      addField('sequence${fhirType.capitalizeFirstLetter()}', sequenceX);
    }

    addField('windowStart', windowStart);
    addField('windowEnd', windowEnd);
    addField('orientation', orientation);
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
      'genomeAssembly',
      'chromosome',
      'sequenceX',
      'windowStart',
      'windowEnd',
      'orientation',
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
      case 'genomeAssembly':
        if (genomeAssembly != null) {
          fields.add(genomeAssembly!);
        }
      case 'chromosome':
        if (chromosome != null) {
          fields.add(chromosome!);
        }
      case 'sequence':
        if (sequenceX != null) {
          fields.add(sequenceX!);
        }
      case 'sequenceX':
        if (sequenceX != null) {
          fields.add(sequenceX!);
        }
      case 'sequenceCodeableConcept':
        if (sequenceX is CodeableConceptBuilder) {
          fields.add(sequenceX!);
        }
      case 'sequenceString':
        if (sequenceX is FhirStringBuilder) {
          fields.add(sequenceX!);
        }
      case 'sequenceReference':
        if (sequenceX is ReferenceBuilder) {
          fields.add(sequenceX!);
        }
      case 'windowStart':
        if (windowStart != null) {
          fields.add(windowStart!);
        }
      case 'windowEnd':
        if (windowEnd != null) {
          fields.add(windowEnd!);
        }
      case 'orientation':
        if (orientation != null) {
          fields.add(orientation!);
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
      case 'genomeAssembly':
        {
          if (child is CodeableConceptBuilder) {
            genomeAssembly = child;
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
      case 'sequence':
      case 'sequenceX':
        {
          if (child is SequenceXMolecularSequenceStartingSequenceBuilder) {
            sequenceX = child;
            return;
          } else {
            if (child is CodeableConceptBuilder) {
              sequenceX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              sequenceX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              sequenceX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'sequenceCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            sequenceX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sequenceString':
        {
          if (child is FhirStringBuilder) {
            sequenceX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sequenceReference':
        {
          if (child is ReferenceBuilder) {
            sequenceX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'windowStart':
        {
          if (child is FhirIntegerBuilder) {
            windowStart = child;
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
                  windowStart = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'windowEnd':
        {
          if (child is FhirIntegerBuilder) {
            windowEnd = child;
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
                  windowEnd = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'orientation':
        {
          if (child is OrientationTypeBuilder) {
            orientation = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = OrientationTypeBuilder(stringValue);
                orientation = converted;
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
      case 'strand':
        {
          if (child is StrandTypeBuilder) {
            strand = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = StrandTypeBuilder(stringValue);
                strand = converted;
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
        return ['CodeableConceptBuilder'];
      case 'chromosome':
        return ['CodeableConceptBuilder'];
      case 'sequence':
      case 'sequenceX':
        return [
          'CodeableConceptBuilder',
          'FhirStringBuilder',
          'ReferenceBuilder',
        ];
      case 'sequenceCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'sequenceString':
        return ['FhirStringBuilder'];
      case 'sequenceReference':
        return ['ReferenceBuilder'];
      case 'windowStart':
        return ['FhirIntegerBuilder'];
      case 'windowEnd':
        return ['FhirIntegerBuilder'];
      case 'orientation':
        return ['FhirCodeEnumBuilder'];
      case 'strand':
        return ['FhirCodeEnumBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularSequenceStartingSequenceBuilder]
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
          genomeAssembly = CodeableConceptBuilder.empty();
          return;
        }
      case 'chromosome':
        {
          chromosome = CodeableConceptBuilder.empty();
          return;
        }
      case 'sequence':
      case 'sequenceX':
      case 'sequenceCodeableConcept':
        {
          sequenceX = CodeableConceptBuilder.empty();
          return;
        }
      case 'sequenceString':
        {
          sequenceX = FhirStringBuilder.empty();
          return;
        }
      case 'sequenceReference':
        {
          sequenceX = ReferenceBuilder.empty();
          return;
        }
      case 'windowStart':
        {
          windowStart = FhirIntegerBuilder.empty();
          return;
        }
      case 'windowEnd':
        {
          windowEnd = FhirIntegerBuilder.empty();
          return;
        }
      case 'orientation':
        {
          orientation = OrientationTypeBuilder.empty();
          return;
        }
      case 'strand':
        {
          strand = StrandTypeBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MolecularSequenceStartingSequenceBuilder clone() =>
      throw UnimplementedError();
  @override
  MolecularSequenceStartingSequenceBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? genomeAssembly,
    CodeableConceptBuilder? chromosome,
    SequenceXMolecularSequenceStartingSequenceBuilder? sequenceX,
    FhirIntegerBuilder? windowStart,
    FhirIntegerBuilder? windowEnd,
    OrientationTypeBuilder? orientation,
    StrandTypeBuilder? strand,
    CodeableConceptBuilder? sequenceCodeableConcept,
    FhirStringBuilder? sequenceString,
    ReferenceBuilder? sequenceReference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MolecularSequenceStartingSequenceBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      genomeAssembly: genomeAssembly ?? this.genomeAssembly,
      chromosome: chromosome ?? this.chromosome,
      sequenceX: sequenceX ??
          sequenceCodeableConcept ??
          sequenceString ??
          sequenceReference ??
          this.sequenceX,
      windowStart: windowStart ?? this.windowStart,
      windowEnd: windowEnd ?? this.windowEnd,
      orientation: orientation ?? this.orientation,
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
    if (o is! MolecularSequenceStartingSequenceBuilder) {
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
      chromosome,
      o.chromosome,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sequenceX,
      o.sequenceX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      windowStart,
      o.windowStart,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      windowEnd,
      o.windowEnd,
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
      strand,
      o.strand,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularSequenceEditBuilder]
/// Changes in sequence from the starting sequence.
class MolecularSequenceEditBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MolecularSequenceEditBuilder]

  MolecularSequenceEditBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
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
  factory MolecularSequenceEditBuilder.empty() =>
      MolecularSequenceEditBuilder();

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
      replacementSequence: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'replacementSequence',
        FhirStringBuilder.fromJson,
        '$objectPath.replacementSequence',
      ),
      replacedSequence: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'replacedSequence',
        FhirStringBuilder.fromJson,
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

  /// [start]
  /// Start position of the edit on the starting sequence. If the coordinate
  /// system is either 0-based or 1-based, then start position is inclusive.
  FhirIntegerBuilder? start;

  /// [end]
  /// End position of the edit on the starting sequence. If the coordinate
  /// system is 0-based then end is exclusive and does not include the last
  /// position. If the coordinate system is 1-base, then end is inclusive and
  /// includes the last position.
  FhirIntegerBuilder? end;

  /// [replacementSequence]
  /// Allele that was observed. Nucleotide(s)/amino acids from start position
  /// of sequence to stop position of sequence on the positive (+) strand of
  /// the observed sequence. When the sequence type is DNA, it should be the
  /// sequence on the positive (+) strand. This will lay in the range between
  /// variant.start and variant.end.
  FhirStringBuilder? replacementSequence;

  /// [replacedSequence]
  /// Allele in the starting sequence. Nucleotide(s)/amino acids from start
  /// position of sequence to stop position of sequence on the positive (+)
  /// strand of the starting sequence. When the sequence type is DNA, it
  /// should be the sequence on the positive (+) strand. This will lay in the
  /// range between variant.start and variant.end.
  FhirStringBuilder? replacedSequence;

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
          if (child is FhirStringBuilder) {
            replacementSequence = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                replacementSequence = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'replacedSequence':
        {
          if (child is FhirStringBuilder) {
            replacedSequence = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                replacedSequence = converted;
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
      case 'start':
        return ['FhirIntegerBuilder'];
      case 'end':
        return ['FhirIntegerBuilder'];
      case 'replacementSequence':
        return ['FhirStringBuilder'];
      case 'replacedSequence':
        return ['FhirStringBuilder'];
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
          replacementSequence = FhirStringBuilder.empty();
          return;
        }
      case 'replacedSequence':
        {
          replacedSequence = FhirStringBuilder.empty();
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
    FhirIntegerBuilder? start,
    FhirIntegerBuilder? end,
    FhirStringBuilder? replacementSequence,
    FhirStringBuilder? replacedSequence,
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
