// ignore_for_file: lines_longer_than_80_chars

import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart' show FhirMeta, yamlMapToJson, yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [FhirMetaBuilder]
/// The metadata about a resource. This is content in the resource that is
/// maintained by the infrastructure. Changes to the content might not
/// always be associated with version changes to the resource.
class FhirMetaBuilder extends DataTypeBuilder
    implements
        ValueXParametersParameterBuilder,
        ValueXTaskInputBuilder,
        ValueXTaskOutputBuilder,
        ValueXTransportInputBuilder,
        ValueXTransportOutputBuilder,
        DefaultValueXElementDefinitionBuilder,
        FixedXElementDefinitionBuilder,
        PatternXElementDefinitionBuilder,
        ValueXElementDefinitionExampleBuilder,
        ValueXExtensionBuilder {
  /// Primary constructor for
  /// [FhirMetaBuilder]

  FhirMetaBuilder({
    super.id,
    super.extension_,
    this.versionId,
    this.lastUpdated,
    this.source,
    this.profile,
    this.security,
    this.tag,
    super.disallowExtensions,
    super.objectPath = 'FhirMetaBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory FhirMetaBuilder.empty() => FhirMetaBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory FhirMetaBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'FhirMeta';
    return FhirMetaBuilder(
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
      versionId: JsonParser.parsePrimitive<FhirIdBuilder>(
        json,
        'versionId',
        FhirIdBuilder.fromJson,
        '$objectPath.versionId',
      ),
      lastUpdated: JsonParser.parsePrimitive<FhirInstantBuilder>(
        json,
        'lastUpdated',
        FhirInstantBuilder.fromJson,
        '$objectPath.lastUpdated',
      ),
      source: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'source',
        FhirUriBuilder.fromJson,
        '$objectPath.source',
      ),
      profile: JsonParser.parsePrimitiveList<FhirCanonicalBuilder>(
        json,
        'profile',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.profile',
      ),
      security: (json['security'] as List<dynamic>?)
          ?.map<CodingBuilder>(
            (v) => CodingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.security',
              },
            ),
          )
          .toList(),
      tag: (json['tag'] as List<dynamic>?)
          ?.map<CodingBuilder>(
            (v) => CodingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.tag',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [FhirMetaBuilder]
  /// from a [String] or [YamlMap] object
  factory FhirMetaBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return FhirMetaBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return FhirMetaBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'FhirMetaBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [FhirMetaBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory FhirMetaBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return FhirMetaBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Meta';

  /// [versionId]
  /// The version specific identifier, as it appears in the version portion
  /// of the URL. This value changes when the resource is created, updated,
  /// or deleted.
  FhirIdBuilder? versionId;

  /// [lastUpdated]
  /// When the resource last changed - e.g. when the version changed.
  FhirInstantBuilder? lastUpdated;

  /// [source]
  /// A uri that identifies the source system of the resource. This provides
  /// a minimal amount of [Provenance](provenance.html#) information that can
  /// be used to track or differentiate the source of information in the
  /// resource. The source may identify another FHIR server, document,
  /// message, database, etc.
  FhirUriBuilder? source;

  /// [profile]
  /// A list of profiles (references to
  /// [StructureDefinition](structuredefinition.html#) resources) that this
  /// resource claims to conform to. The URL is a reference to
  /// [StructureDefinition.url](structuredefinition-definitions.html#StructureDefinition.url).
  List<FhirCanonicalBuilder>? profile;

  /// [security]
  /// Security labels applied to this resource. These tags connect specific
  /// resources to the overall security policy and infrastructure.
  List<CodingBuilder>? security;

  /// [tag]
  /// Tags applied to this resource. Tags are intended to be used to identify
  /// and relate resources to process and workflow, and applications are not
  /// required to consider the tags when interpreting the meaning of a
  /// resource.
  List<CodingBuilder>? tag;

  /// Converts a [FhirMetaBuilder]
  /// to [FhirMeta]
  @override
  FhirMeta build() => FhirMeta.fromJson(toJson());

  /// Converts a [FhirMetaBuilder]
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
    addField('versionId', versionId);
    addField('lastUpdated', lastUpdated);
    addField('source', source);
    addField('profile', profile);
    addField('security', security);
    addField('tag', tag);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'versionId',
      'lastUpdated',
      'source',
      'profile',
      'security',
      'tag',
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
      case 'versionId':
        if (versionId != null) {
          fields.add(versionId!);
        }
      case 'lastUpdated':
        if (lastUpdated != null) {
          fields.add(lastUpdated!);
        }
      case 'source':
        if (source != null) {
          fields.add(source!);
        }
      case 'profile':
        if (profile != null) {
          fields.addAll(profile!);
        }
      case 'security':
        if (security != null) {
          fields.addAll(security!);
        }
      case 'tag':
        if (tag != null) {
          fields.addAll(tag!);
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
      case 'versionId':
        {
          if (child is FhirIdBuilder) {
            versionId = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirIdBuilder.tryParse(stringValue);
              if (converted != null) {
                versionId = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'lastUpdated':
        {
          if (child is FhirInstantBuilder) {
            lastUpdated = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirInstantBuilder.tryParse(stringValue);
              if (converted != null) {
                lastUpdated = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'source':
        {
          if (child is FhirUriBuilder) {
            source = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                source = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'profile':
        {
          if (child is List<FhirCanonicalBuilder>) {
            // Replace or create new list
            profile = child;
            return;
          } else if (child is FhirCanonicalBuilder) {
            // Add single element to existing list or create new list
            profile = [
              ...(profile ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirCanonicalBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirCanonicalBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              profile = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                profile = [
                  ...(profile ?? []),
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
      case 'security':
        {
          if (child is List<CodingBuilder>) {
            // Replace or create new list
            security = child;
            return;
          } else if (child is CodingBuilder) {
            // Add single element to existing list or create new list
            security = [
              ...(security ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'tag':
        {
          if (child is List<CodingBuilder>) {
            // Replace or create new list
            tag = child;
            return;
          } else if (child is CodingBuilder) {
            // Add single element to existing list or create new list
            tag = [
              ...(tag ?? []),
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
      case 'versionId':
        return ['FhirIdBuilder'];
      case 'lastUpdated':
        return ['FhirInstantBuilder'];
      case 'source':
        return ['FhirUriBuilder'];
      case 'profile':
        return ['FhirCanonicalBuilder'];
      case 'security':
        return ['CodingBuilder'];
      case 'tag':
        return ['CodingBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [FhirMetaBuilder]
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
      case 'versionId':
        {
          versionId = FhirIdBuilder.empty();
          return;
        }
      case 'lastUpdated':
        {
          lastUpdated = FhirInstantBuilder.empty();
          return;
        }
      case 'source':
        {
          source = FhirUriBuilder.empty();
          return;
        }
      case 'profile':
        {
          profile = <FhirCanonicalBuilder>[];
          return;
        }
      case 'security':
        {
          security = <CodingBuilder>[];
          return;
        }
      case 'tag':
        {
          tag = <CodingBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  FhirMetaBuilder clone() => throw UnimplementedError();
  @override
  FhirMetaBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    FhirIdBuilder? versionId,
    FhirInstantBuilder? lastUpdated,
    FhirUriBuilder? source,
    List<FhirCanonicalBuilder>? profile,
    List<CodingBuilder>? security,
    List<CodingBuilder>? tag,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = FhirMetaBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      versionId: versionId ?? this.versionId,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      source: source ?? this.source,
      profile: profile ?? this.profile,
      security: security ?? this.security,
      tag: tag ?? this.tag,
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
    if (o is! FhirMetaBuilder) {
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
    if (!equalsDeepWithNull(
      versionId,
      o.versionId,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      lastUpdated,
      o.lastUpdated,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      source,
      o.source,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonicalBuilder>(
      profile,
      o.profile,
    )) {
      return false;
    }
    if (!listEquals<CodingBuilder>(
      security,
      o.security,
    )) {
      return false;
    }
    if (!listEquals<CodingBuilder>(
      tag,
      o.tag,
    )) {
      return false;
    }
    return true;
  }
}
