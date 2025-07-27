import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart'
    show RelatedArtifact, yamlMapToJson, yamlToJson;
import 'package:fhir_r6_mapping/fhir_r6_mapping.dart';
import 'package:yaml/yaml.dart';

/// [RelatedArtifactBuilder]
/// Related artifacts such as additional documentation, justification, or
/// bibliographic references.
class RelatedArtifactBuilder extends DataTypeBuilder
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
  /// [RelatedArtifactBuilder]

  RelatedArtifactBuilder({
    super.id,
    super.extension_,
    this.type,
    this.classifier,
    this.label,
    this.display,
    this.citation,
    this.document,
    this.resource,
    this.resourceReference,
    this.publicationStatus,
    this.publicationDate,
    super.disallowExtensions,
    super.objectPath = 'RelatedArtifactBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory RelatedArtifactBuilder.empty() => RelatedArtifactBuilder(
        type: RelatedArtifactTypeBuilder.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RelatedArtifactBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'RelatedArtifact';
    return RelatedArtifactBuilder(
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
      type: JsonParser.parsePrimitive<RelatedArtifactTypeBuilder>(
        json,
        'type',
        RelatedArtifactTypeBuilder.fromJson,
        '$objectPath.type',
      ),
      classifier: (json['classifier'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.classifier',
              },
            ),
          )
          .toList(),
      label: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'label',
        FhirStringBuilder.fromJson,
        '$objectPath.label',
      ),
      display: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'display',
        FhirStringBuilder.fromJson,
        '$objectPath.display',
      ),
      citation: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'citation',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.citation',
      ),
      document: JsonParser.parseObject<AttachmentBuilder>(
        json,
        'document',
        AttachmentBuilder.fromJson,
        '$objectPath.document',
      ),
      resource: JsonParser.parsePrimitive<FhirCanonicalBuilder>(
        json,
        'resource',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.resource',
      ),
      resourceReference: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'resourceReference',
        ReferenceBuilder.fromJson,
        '$objectPath.resourceReference',
      ),
      publicationStatus: JsonParser.parsePrimitive<PublicationStatusBuilder>(
        json,
        'publicationStatus',
        PublicationStatusBuilder.fromJson,
        '$objectPath.publicationStatus',
      ),
      publicationDate: JsonParser.parsePrimitive<FhirDateBuilder>(
        json,
        'publicationDate',
        FhirDateBuilder.fromJson,
        '$objectPath.publicationDate',
      ),
    );
  }

  /// Deserialize [RelatedArtifactBuilder]
  /// from a [String] or [YamlMap] object
  factory RelatedArtifactBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RelatedArtifactBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RelatedArtifactBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RelatedArtifactBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RelatedArtifactBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RelatedArtifactBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return RelatedArtifactBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'RelatedArtifact';

  /// [type]
  /// The type of relationship to the related artifact.
  RelatedArtifactTypeBuilder? type;

  /// [classifier]
  /// Provides additional classifiers of the related artifact.
  List<CodeableConceptBuilder>? classifier;

  /// [label]
  /// A short label that can be used to reference the citation from elsewhere
  /// in the containing artifact, such as a footnote index.
  FhirStringBuilder? label;

  /// [display]
  /// A brief description of the document or knowledge resource being
  /// referenced, suitable for display to a consumer.
  FhirStringBuilder? display;

  /// [citation]
  /// A bibliographic citation for the related artifact. This text SHOULD be
  /// formatted according to an accepted citation format.
  FhirMarkdownBuilder? citation;

  /// [document]
  /// The document being referenced, represented as an attachment. This is
  /// exclusive with the resource element.
  AttachmentBuilder? document;

  /// [resource]
  /// The related artifact, such as a library, value set, profile, or other
  /// knowledge resource.
  FhirCanonicalBuilder? resource;

  /// [resourceReference]
  /// The related artifact, if the artifact is not a canonical resource, or a
  /// resource reference to a canonical resource.
  ReferenceBuilder? resourceReference;

  /// [publicationStatus]
  /// The publication status of the artifact being referred to.
  PublicationStatusBuilder? publicationStatus;

  /// [publicationDate]
  /// The date of publication of the artifact being referred to.
  FhirDateBuilder? publicationDate;

  /// Converts a [RelatedArtifactBuilder]
  /// to [RelatedArtifact]
  @override
  RelatedArtifact build() => RelatedArtifact.fromJson(toJson());

  /// Converts a [RelatedArtifactBuilder]
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
    addField('type', type);
    addField('classifier', classifier);
    addField('label', label);
    addField('display', display);
    addField('citation', citation);
    addField('document', document);
    addField('resource', resource);
    addField('resourceReference', resourceReference);
    addField('publicationStatus', publicationStatus);
    addField('publicationDate', publicationDate);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'type',
      'classifier',
      'label',
      'display',
      'citation',
      'document',
      'resource',
      'resourceReference',
      'publicationStatus',
      'publicationDate',
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'classifier':
        if (classifier != null) {
          fields.addAll(classifier!);
        }
      case 'label':
        if (label != null) {
          fields.add(label!);
        }
      case 'display':
        if (display != null) {
          fields.add(display!);
        }
      case 'citation':
        if (citation != null) {
          fields.add(citation!);
        }
      case 'document':
        if (document != null) {
          fields.add(document!);
        }
      case 'resource':
        if (resource != null) {
          fields.add(resource!);
        }
      case 'resourceReference':
        if (resourceReference != null) {
          fields.add(resourceReference!);
        }
      case 'publicationStatus':
        if (publicationStatus != null) {
          fields.add(publicationStatus!);
        }
      case 'publicationDate':
        if (publicationDate != null) {
          fields.add(publicationDate!);
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
      case 'type':
        {
          if (child is RelatedArtifactTypeBuilder) {
            type = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = RelatedArtifactTypeBuilder(stringValue);
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
      case 'classifier':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            classifier = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            classifier = [
              ...(classifier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'label':
        {
          if (child is FhirStringBuilder) {
            label = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                label = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'display':
        {
          if (child is FhirStringBuilder) {
            display = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                display = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'citation':
        {
          if (child is FhirMarkdownBuilder) {
            citation = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                citation = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'document':
        {
          if (child is AttachmentBuilder) {
            document = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'resource':
        {
          if (child is FhirCanonicalBuilder) {
            resource = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                resource = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'resourceReference':
        {
          if (child is ReferenceBuilder) {
            resourceReference = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'publicationStatus':
        {
          if (child is PublicationStatusBuilder) {
            publicationStatus = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = PublicationStatusBuilder(stringValue);
                publicationStatus = converted;
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
      case 'publicationDate':
        {
          if (child is FhirDateBuilder) {
            publicationDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateBuilder.tryParse(stringValue);
              if (converted != null) {
                publicationDate = converted;
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
      case 'type':
        return ['FhirCodeEnumBuilder'];
      case 'classifier':
        return ['CodeableConceptBuilder'];
      case 'label':
        return ['FhirStringBuilder'];
      case 'display':
        return ['FhirStringBuilder'];
      case 'citation':
        return ['FhirMarkdownBuilder'];
      case 'document':
        return ['AttachmentBuilder'];
      case 'resource':
        return ['FhirCanonicalBuilder'];
      case 'resourceReference':
        return ['ReferenceBuilder'];
      case 'publicationStatus':
        return ['FhirCodeEnumBuilder'];
      case 'publicationDate':
        return ['FhirDateBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [RelatedArtifactBuilder]
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
      case 'type':
        {
          type = RelatedArtifactTypeBuilder.empty();
          return;
        }
      case 'classifier':
        {
          classifier = <CodeableConceptBuilder>[];
          return;
        }
      case 'label':
        {
          label = FhirStringBuilder.empty();
          return;
        }
      case 'display':
        {
          display = FhirStringBuilder.empty();
          return;
        }
      case 'citation':
        {
          citation = FhirMarkdownBuilder.empty();
          return;
        }
      case 'document':
        {
          document = AttachmentBuilder.empty();
          return;
        }
      case 'resource':
        {
          resource = FhirCanonicalBuilder.empty();
          return;
        }
      case 'resourceReference':
        {
          resourceReference = ReferenceBuilder.empty();
          return;
        }
      case 'publicationStatus':
        {
          publicationStatus = PublicationStatusBuilder.empty();
          return;
        }
      case 'publicationDate':
        {
          publicationDate = FhirDateBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  RelatedArtifactBuilder clone() => throw UnimplementedError();
  @override
  RelatedArtifactBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    RelatedArtifactTypeBuilder? type,
    List<CodeableConceptBuilder>? classifier,
    FhirStringBuilder? label,
    FhirStringBuilder? display,
    FhirMarkdownBuilder? citation,
    AttachmentBuilder? document,
    FhirCanonicalBuilder? resource,
    ReferenceBuilder? resourceReference,
    PublicationStatusBuilder? publicationStatus,
    FhirDateBuilder? publicationDate,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = RelatedArtifactBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      type: type ?? this.type,
      classifier: classifier ?? this.classifier,
      label: label ?? this.label,
      display: display ?? this.display,
      citation: citation ?? this.citation,
      document: document ?? this.document,
      resource: resource ?? this.resource,
      resourceReference: resourceReference ?? this.resourceReference,
      publicationStatus: publicationStatus ?? this.publicationStatus,
      publicationDate: publicationDate ?? this.publicationDate,
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
    if (o is! RelatedArtifactBuilder) {
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
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      classifier,
      o.classifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      label,
      o.label,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      display,
      o.display,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      citation,
      o.citation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      document,
      o.document,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      resource,
      o.resource,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      resourceReference,
      o.resourceReference,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      publicationStatus,
      o.publicationStatus,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      publicationDate,
      o.publicationDate,
    )) {
      return false;
    }
    return true;
  }
}
