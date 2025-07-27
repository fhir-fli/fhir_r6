import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart'
    show
        ArtifactAssessment,
        ArtifactAssessmentContent,
        R6ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r6_mapping/fhir_r6_mapping.dart';
import 'package:yaml/yaml.dart';

/// [ArtifactAssessmentBuilder]
/// This Resource provides one or more comments, classifiers or ratings
/// about a Resource and supports attribution and rights management
/// metadata for the added content.
class ArtifactAssessmentBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [ArtifactAssessmentBuilder]

  ArtifactAssessmentBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.title,
    CiteAsXArtifactAssessmentBuilder? citeAsX,
    ReferenceBuilder? citeAsReference,
    FhirMarkdownBuilder? citeAsMarkdown,
    this.date,
    this.copyright,
    this.approvalDate,
    this.lastReviewDate,
    ArtifactXArtifactAssessmentBuilder? artifactX,
    ReferenceBuilder? artifactReference,
    FhirCanonicalBuilder? artifactCanonical,
    FhirUriBuilder? artifactUri,
    this.content,
    this.workflowStatus,
    this.disposition,
  })  : citeAsX = citeAsX ?? citeAsReference ?? citeAsMarkdown,
        artifactX =
            artifactX ?? artifactReference ?? artifactCanonical ?? artifactUri,
        super(
          objectPath: 'ArtifactAssessment',
          resourceType: R6ResourceType.ArtifactAssessment,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ArtifactAssessmentBuilder.empty() => ArtifactAssessmentBuilder(
        artifactX: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ArtifactAssessmentBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ArtifactAssessment';
    return ArtifactAssessmentBuilder(
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
      title: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'title',
        FhirStringBuilder.fromJson,
        '$objectPath.title',
      ),
      citeAsX: JsonParser.parsePolymorphic<CiteAsXArtifactAssessmentBuilder>(
        json,
        {
          'citeAsReference': ReferenceBuilder.fromJson,
          'citeAsMarkdown': FhirMarkdownBuilder.fromJson,
        },
        objectPath,
      ),
      date: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'date',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.date',
      ),
      copyright: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'copyright',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.copyright',
      ),
      approvalDate: JsonParser.parsePrimitive<FhirDateBuilder>(
        json,
        'approvalDate',
        FhirDateBuilder.fromJson,
        '$objectPath.approvalDate',
      ),
      lastReviewDate: JsonParser.parsePrimitive<FhirDateBuilder>(
        json,
        'lastReviewDate',
        FhirDateBuilder.fromJson,
        '$objectPath.lastReviewDate',
      ),
      artifactX:
          JsonParser.parsePolymorphic<ArtifactXArtifactAssessmentBuilder>(
        json,
        {
          'artifactReference': ReferenceBuilder.fromJson,
          'artifactCanonical': FhirCanonicalBuilder.fromJson,
          'artifactUri': FhirUriBuilder.fromJson,
        },
        objectPath,
      ),
      content: (json['content'] as List<dynamic>?)
          ?.map<ArtifactAssessmentContentBuilder>(
            (v) => ArtifactAssessmentContentBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.content',
              },
            ),
          )
          .toList(),
      workflowStatus:
          JsonParser.parsePrimitive<ArtifactAssessmentWorkflowStatusBuilder>(
        json,
        'workflowStatus',
        ArtifactAssessmentWorkflowStatusBuilder.fromJson,
        '$objectPath.workflowStatus',
      ),
      disposition:
          JsonParser.parsePrimitive<ArtifactAssessmentDispositionBuilder>(
        json,
        'disposition',
        ArtifactAssessmentDispositionBuilder.fromJson,
        '$objectPath.disposition',
      ),
    );
  }

  /// Deserialize [ArtifactAssessmentBuilder]
  /// from a [String] or [YamlMap] object
  factory ArtifactAssessmentBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ArtifactAssessmentBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ArtifactAssessmentBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ArtifactAssessmentBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ArtifactAssessmentBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ArtifactAssessmentBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ArtifactAssessmentBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ArtifactAssessment';

  /// [identifier]
  /// A formal identifier that is used to identify this artifact assessment
  /// when it is represented in other formats, or referenced in a
  /// specification, model, design or an instance.
  List<IdentifierBuilder>? identifier;

  /// [title]
  /// A short title for the assessment for use in displaying and selecting.
  FhirStringBuilder? title;

  /// [citeAsX]
  /// Display of or reference to the bibliographic citation of the comment,
  /// classifier, or rating.
  CiteAsXArtifactAssessmentBuilder? citeAsX;

  /// Getter for [citeAsReference] as a ReferenceBuilder
  ReferenceBuilder? get citeAsReference => citeAsX?.isAs<ReferenceBuilder>();

  /// Getter for [citeAsMarkdown] as a FhirMarkdownBuilder
  FhirMarkdownBuilder? get citeAsMarkdown =>
      citeAsX?.isAs<FhirMarkdownBuilder>();

  /// [date]
  /// The date (and optionally time) when the artifact assessment was
  /// published. The date must change when the disposition changes and it
  /// must change if the workflow status code changes. In addition, it should
  /// change when the substantive content of the artifact assessment changes.
  FhirDateTimeBuilder? date;

  /// [copyright]
  /// A copyright statement relating to the artifact assessment and/or its
  /// contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the artifact assessment.
  FhirMarkdownBuilder? copyright;

  /// [approvalDate]
  /// The date on which the resource content was approved by the publisher.
  /// Approval happens once when the content is officially approved for
  /// usage.
  FhirDateBuilder? approvalDate;

  /// [lastReviewDate]
  /// The date on which the resource content was last reviewed. Review
  /// happens periodically after approval but does not change the original
  /// approval date.
  FhirDateBuilder? lastReviewDate;

  /// [artifactX]
  /// A reference to a resource, canonical resource, or non-FHIR resource
  /// which the comment or assessment is about.
  ArtifactXArtifactAssessmentBuilder? artifactX;

  /// Getter for [artifactReference] as a ReferenceBuilder
  ReferenceBuilder? get artifactReference =>
      artifactX?.isAs<ReferenceBuilder>();

  /// Getter for [artifactCanonical] as a FhirCanonicalBuilder
  FhirCanonicalBuilder? get artifactCanonical =>
      artifactX?.isAs<FhirCanonicalBuilder>();

  /// Getter for [artifactUri] as a FhirUriBuilder
  FhirUriBuilder? get artifactUri => artifactX?.isAs<FhirUriBuilder>();

  /// [content]
  /// A component comment, classifier, or rating of the artifact.
  List<ArtifactAssessmentContentBuilder>? content;

  /// [workflowStatus]
  /// Indicates the workflow status of the comment or change request.
  ArtifactAssessmentWorkflowStatusBuilder? workflowStatus;

  /// [disposition]
  /// Indicates the disposition of the responsible party to the comment or
  /// change request.
  ArtifactAssessmentDispositionBuilder? disposition;

  /// Converts a [ArtifactAssessmentBuilder]
  /// to [ArtifactAssessment]
  @override
  ArtifactAssessment build() => ArtifactAssessment.fromJson(toJson());

  /// Converts a [ArtifactAssessmentBuilder]
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
    addField('title', title);
    if (citeAsX != null) {
      final fhirType = citeAsX!.fhirType;
      addField('citeAs${fhirType.capitalizeFirstLetter()}', citeAsX);
    }

    addField('date', date);
    addField('copyright', copyright);
    addField('approvalDate', approvalDate);
    addField('lastReviewDate', lastReviewDate);
    if (artifactX != null) {
      final fhirType = artifactX!.fhirType;
      addField('artifact${fhirType.capitalizeFirstLetter()}', artifactX);
    }

    addField('content', content);
    addField('workflowStatus', workflowStatus);
    addField('disposition', disposition);
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
      'title',
      'citeAsX',
      'date',
      'copyright',
      'approvalDate',
      'lastReviewDate',
      'artifactX',
      'content',
      'workflowStatus',
      'disposition',
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
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'citeAs':
        if (citeAsX != null) {
          fields.add(citeAsX!);
        }
      case 'citeAsX':
        if (citeAsX != null) {
          fields.add(citeAsX!);
        }
      case 'citeAsReference':
        if (citeAsX is ReferenceBuilder) {
          fields.add(citeAsX!);
        }
      case 'citeAsMarkdown':
        if (citeAsX is FhirMarkdownBuilder) {
          fields.add(citeAsX!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'copyright':
        if (copyright != null) {
          fields.add(copyright!);
        }
      case 'approvalDate':
        if (approvalDate != null) {
          fields.add(approvalDate!);
        }
      case 'lastReviewDate':
        if (lastReviewDate != null) {
          fields.add(lastReviewDate!);
        }
      case 'artifact':
        if (artifactX != null) {
          fields.add(artifactX!);
        }
      case 'artifactX':
        if (artifactX != null) {
          fields.add(artifactX!);
        }
      case 'artifactReference':
        if (artifactX is ReferenceBuilder) {
          fields.add(artifactX!);
        }
      case 'artifactCanonical':
        if (artifactX is FhirCanonicalBuilder) {
          fields.add(artifactX!);
        }
      case 'artifactUri':
        if (artifactX is FhirUriBuilder) {
          fields.add(artifactX!);
        }
      case 'content':
        if (content != null) {
          fields.addAll(content!);
        }
      case 'workflowStatus':
        if (workflowStatus != null) {
          fields.add(workflowStatus!);
        }
      case 'disposition':
        if (disposition != null) {
          fields.add(disposition!);
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
      case 'title':
        {
          if (child is FhirStringBuilder) {
            title = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                title = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'citeAs':
      case 'citeAsX':
        {
          if (child is CiteAsXArtifactAssessmentBuilder) {
            citeAsX = child;
            return;
          } else {
            if (child is ReferenceBuilder) {
              citeAsX = child;
              return;
            }
            if (child is FhirMarkdownBuilder) {
              citeAsX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'citeAsReference':
        {
          if (child is ReferenceBuilder) {
            citeAsX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'citeAsMarkdown':
        {
          if (child is FhirMarkdownBuilder) {
            citeAsX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'date':
        {
          if (child is FhirDateTimeBuilder) {
            date = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                date = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'copyright':
        {
          if (child is FhirMarkdownBuilder) {
            copyright = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                copyright = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'approvalDate':
        {
          if (child is FhirDateBuilder) {
            approvalDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateBuilder.tryParse(stringValue);
              if (converted != null) {
                approvalDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'lastReviewDate':
        {
          if (child is FhirDateBuilder) {
            lastReviewDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateBuilder.tryParse(stringValue);
              if (converted != null) {
                lastReviewDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'artifact':
      case 'artifactX':
        {
          if (child is ArtifactXArtifactAssessmentBuilder) {
            artifactX = child;
            return;
          } else {
            if (child is ReferenceBuilder) {
              artifactX = child;
              return;
            }
            if (child is FhirCanonicalBuilder) {
              artifactX = child;
              return;
            }
            if (child is FhirUriBuilder) {
              artifactX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'artifactReference':
        {
          if (child is ReferenceBuilder) {
            artifactX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'artifactCanonical':
        {
          if (child is FhirCanonicalBuilder) {
            artifactX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'artifactUri':
        {
          if (child is FhirUriBuilder) {
            artifactX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'content':
        {
          if (child is List<ArtifactAssessmentContentBuilder>) {
            // Replace or create new list
            content = child;
            return;
          } else if (child is ArtifactAssessmentContentBuilder) {
            // Add single element to existing list or create new list
            content = [
              ...(content ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'workflowStatus':
        {
          if (child is ArtifactAssessmentWorkflowStatusBuilder) {
            workflowStatus = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted =
                    ArtifactAssessmentWorkflowStatusBuilder(stringValue);
                workflowStatus = converted;
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
      case 'disposition':
        {
          if (child is ArtifactAssessmentDispositionBuilder) {
            disposition = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted =
                    ArtifactAssessmentDispositionBuilder(stringValue);
                disposition = converted;
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
      case 'title':
        return ['FhirStringBuilder'];
      case 'citeAs':
      case 'citeAsX':
        return [
          'ReferenceBuilder',
          'FhirMarkdownBuilder',
        ];
      case 'citeAsReference':
        return ['ReferenceBuilder'];
      case 'citeAsMarkdown':
        return ['FhirMarkdownBuilder'];
      case 'date':
        return ['FhirDateTimeBuilder'];
      case 'copyright':
        return ['FhirMarkdownBuilder'];
      case 'approvalDate':
        return ['FhirDateBuilder'];
      case 'lastReviewDate':
        return ['FhirDateBuilder'];
      case 'artifact':
      case 'artifactX':
        return [
          'ReferenceBuilder',
          'FhirCanonicalBuilder',
          'FhirUriBuilder',
        ];
      case 'artifactReference':
        return ['ReferenceBuilder'];
      case 'artifactCanonical':
        return ['FhirCanonicalBuilder'];
      case 'artifactUri':
        return ['FhirUriBuilder'];
      case 'content':
        return ['ArtifactAssessmentContentBuilder'];
      case 'workflowStatus':
        return ['FhirCodeEnumBuilder'];
      case 'disposition':
        return ['FhirCodeEnumBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ArtifactAssessmentBuilder]
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
      case 'title':
        {
          title = FhirStringBuilder.empty();
          return;
        }
      case 'citeAs':
      case 'citeAsX':
      case 'citeAsReference':
        {
          citeAsX = ReferenceBuilder.empty();
          return;
        }
      case 'citeAsMarkdown':
        {
          citeAsX = FhirMarkdownBuilder.empty();
          return;
        }
      case 'date':
        {
          date = FhirDateTimeBuilder.empty();
          return;
        }
      case 'copyright':
        {
          copyright = FhirMarkdownBuilder.empty();
          return;
        }
      case 'approvalDate':
        {
          approvalDate = FhirDateBuilder.empty();
          return;
        }
      case 'lastReviewDate':
        {
          lastReviewDate = FhirDateBuilder.empty();
          return;
        }
      case 'artifact':
      case 'artifactX':
      case 'artifactReference':
        {
          artifactX = ReferenceBuilder.empty();
          return;
        }
      case 'artifactCanonical':
        {
          artifactX = FhirCanonicalBuilder.empty();
          return;
        }
      case 'artifactUri':
        {
          artifactX = FhirUriBuilder.empty();
          return;
        }
      case 'content':
        {
          content = <ArtifactAssessmentContentBuilder>[];
          return;
        }
      case 'workflowStatus':
        {
          workflowStatus = ArtifactAssessmentWorkflowStatusBuilder.empty();
          return;
        }
      case 'disposition':
        {
          disposition = ArtifactAssessmentDispositionBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ArtifactAssessmentBuilder clone() => throw UnimplementedError();
  @override
  ArtifactAssessmentBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    FhirStringBuilder? title,
    CiteAsXArtifactAssessmentBuilder? citeAsX,
    FhirDateTimeBuilder? date,
    FhirMarkdownBuilder? copyright,
    FhirDateBuilder? approvalDate,
    FhirDateBuilder? lastReviewDate,
    ArtifactXArtifactAssessmentBuilder? artifactX,
    List<ArtifactAssessmentContentBuilder>? content,
    ArtifactAssessmentWorkflowStatusBuilder? workflowStatus,
    ArtifactAssessmentDispositionBuilder? disposition,
    ReferenceBuilder? citeAsReference,
    FhirMarkdownBuilder? citeAsMarkdown,
    ReferenceBuilder? artifactReference,
    FhirCanonicalBuilder? artifactCanonical,
    FhirUriBuilder? artifactUri,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = ArtifactAssessmentBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      title: title ?? this.title,
      citeAsX: citeAsX ?? citeAsReference ?? citeAsMarkdown ?? this.citeAsX,
      date: date ?? this.date,
      copyright: copyright ?? this.copyright,
      approvalDate: approvalDate ?? this.approvalDate,
      lastReviewDate: lastReviewDate ?? this.lastReviewDate,
      artifactX: artifactX ??
          artifactReference ??
          artifactCanonical ??
          artifactUri ??
          this.artifactX,
      content: content ?? this.content,
      workflowStatus: workflowStatus ?? this.workflowStatus,
      disposition: disposition ?? this.disposition,
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
    if (o is! ArtifactAssessmentBuilder) {
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
      title,
      o.title,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      citeAsX,
      o.citeAsX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      date,
      o.date,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      copyright,
      o.copyright,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      approvalDate,
      o.approvalDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      lastReviewDate,
      o.lastReviewDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      artifactX,
      o.artifactX,
    )) {
      return false;
    }
    if (!listEquals<ArtifactAssessmentContentBuilder>(
      content,
      o.content,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      workflowStatus,
      o.workflowStatus,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      disposition,
      o.disposition,
    )) {
      return false;
    }
    return true;
  }
}

/// [ArtifactAssessmentContentBuilder]
/// A component comment, classifier, or rating of the artifact.
class ArtifactAssessmentContentBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ArtifactAssessmentContentBuilder]

  ArtifactAssessmentContentBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.informationType,
    this.summary,
    this.type,
    this.classifier,
    this.quantity,
    this.author,
    this.path,
    this.relatedArtifact,
    this.freeToShare,
    this.component,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ArtifactAssessment.content',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ArtifactAssessmentContentBuilder.empty() =>
      ArtifactAssessmentContentBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ArtifactAssessmentContentBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ArtifactAssessment.content';
    return ArtifactAssessmentContentBuilder(
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
      informationType:
          JsonParser.parsePrimitive<ArtifactAssessmentInformationTypeBuilder>(
        json,
        'informationType',
        ArtifactAssessmentInformationTypeBuilder.fromJson,
        '$objectPath.informationType',
      ),
      summary: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'summary',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.summary',
      ),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
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
      quantity: JsonParser.parseObject<QuantityBuilder>(
        json,
        'quantity',
        QuantityBuilder.fromJson,
        '$objectPath.quantity',
      ),
      author: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'author',
        ReferenceBuilder.fromJson,
        '$objectPath.author',
      ),
      path: JsonParser.parsePrimitiveList<FhirUriBuilder>(
        json,
        'path',
        FhirUriBuilder.fromJson,
        '$objectPath.path',
      ),
      relatedArtifact: (json['relatedArtifact'] as List<dynamic>?)
          ?.map<RelatedArtifactBuilder>(
            (v) => RelatedArtifactBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.relatedArtifact',
              },
            ),
          )
          .toList(),
      freeToShare: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'freeToShare',
        FhirBooleanBuilder.fromJson,
        '$objectPath.freeToShare',
      ),
      component: (json['component'] as List<dynamic>?)
          ?.map<ArtifactAssessmentContentBuilder>(
            (v) => ArtifactAssessmentContentBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.component',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ArtifactAssessmentContentBuilder]
  /// from a [String] or [YamlMap] object
  factory ArtifactAssessmentContentBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ArtifactAssessmentContentBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ArtifactAssessmentContentBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ArtifactAssessmentContentBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ArtifactAssessmentContentBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ArtifactAssessmentContentBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ArtifactAssessmentContentBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ArtifactAssessmentContent';

  /// [informationType]
  /// The type of information this component of the content represents.
  ArtifactAssessmentInformationTypeBuilder? informationType;

  /// [summary]
  /// A brief summary of the content of this component.
  FhirMarkdownBuilder? summary;

  /// [type]
  /// Indicates what type of content this component represents.
  CodeableConceptBuilder? type;

  /// [classifier]
  /// Represents a rating, classifier, or assessment of the artifact.
  List<CodeableConceptBuilder>? classifier;

  /// [quantity]
  /// A quantitative rating of the artifact.
  QuantityBuilder? quantity;

  /// [author]
  /// Indicates who or what authored the content.
  ReferenceBuilder? author;

  /// [path]
  /// A URI that points to what the comment is about, such as a line of text
  /// in the CQL, or a specific element in a resource.
  List<FhirUriBuilder>? path;

  /// [relatedArtifact]
  /// Additional related artifacts that provide supporting documentation,
  /// additional evidence, or further information related to the content.
  List<RelatedArtifactBuilder>? relatedArtifact;

  /// [freeToShare]
  /// Acceptable to publicly share the comment, classifier or rating.
  FhirBooleanBuilder? freeToShare;

  /// [component]
  /// If the informationType is container, the components of the content.
  List<ArtifactAssessmentContentBuilder>? component;

  /// Converts a [ArtifactAssessmentContentBuilder]
  /// to [ArtifactAssessmentContent]
  @override
  ArtifactAssessmentContent build() =>
      ArtifactAssessmentContent.fromJson(toJson());

  /// Converts a [ArtifactAssessmentContentBuilder]
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
    addField('informationType', informationType);
    addField('summary', summary);
    addField('type', type);
    addField('classifier', classifier);
    addField('quantity', quantity);
    addField('author', author);
    addField('path', path);
    addField('relatedArtifact', relatedArtifact);
    addField('freeToShare', freeToShare);
    addField('component', component);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'informationType',
      'summary',
      'type',
      'classifier',
      'quantity',
      'author',
      'path',
      'relatedArtifact',
      'freeToShare',
      'component',
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
      case 'informationType':
        if (informationType != null) {
          fields.add(informationType!);
        }
      case 'summary':
        if (summary != null) {
          fields.add(summary!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'classifier':
        if (classifier != null) {
          fields.addAll(classifier!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'author':
        if (author != null) {
          fields.add(author!);
        }
      case 'path':
        if (path != null) {
          fields.addAll(path!);
        }
      case 'relatedArtifact':
        if (relatedArtifact != null) {
          fields.addAll(relatedArtifact!);
        }
      case 'freeToShare':
        if (freeToShare != null) {
          fields.add(freeToShare!);
        }
      case 'component':
        if (component != null) {
          fields.addAll(component!);
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
      case 'informationType':
        {
          if (child is ArtifactAssessmentInformationTypeBuilder) {
            informationType = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted =
                    ArtifactAssessmentInformationTypeBuilder(stringValue);
                informationType = converted;
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
      case 'summary':
        {
          if (child is FhirMarkdownBuilder) {
            summary = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                summary = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
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
      case 'quantity':
        {
          if (child is QuantityBuilder) {
            quantity = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'author':
        {
          if (child is ReferenceBuilder) {
            author = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'path':
        {
          if (child is List<FhirUriBuilder>) {
            // Replace or create new list
            path = child;
            return;
          } else if (child is FhirUriBuilder) {
            // Add single element to existing list or create new list
            path = [
              ...(path ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirUriBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirUriBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              path = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                path = [
                  ...(path ?? []),
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
      case 'relatedArtifact':
        {
          if (child is List<RelatedArtifactBuilder>) {
            // Replace or create new list
            relatedArtifact = child;
            return;
          } else if (child is RelatedArtifactBuilder) {
            // Add single element to existing list or create new list
            relatedArtifact = [
              ...(relatedArtifact ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'freeToShare':
        {
          if (child is FhirBooleanBuilder) {
            freeToShare = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                freeToShare = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'component':
        {
          if (child is List<ArtifactAssessmentContentBuilder>) {
            // Replace or create new list
            component = child;
            return;
          } else if (child is ArtifactAssessmentContentBuilder) {
            // Add single element to existing list or create new list
            component = [
              ...(component ?? []),
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
      case 'informationType':
        return ['FhirCodeEnumBuilder'];
      case 'summary':
        return ['FhirMarkdownBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'classifier':
        return ['CodeableConceptBuilder'];
      case 'quantity':
        return ['QuantityBuilder'];
      case 'author':
        return ['ReferenceBuilder'];
      case 'path':
        return ['FhirUriBuilder'];
      case 'relatedArtifact':
        return ['RelatedArtifactBuilder'];
      case 'freeToShare':
        return ['FhirBooleanBuilder'];
      case 'component':
        return ['ArtifactAssessmentContentBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ArtifactAssessmentContentBuilder]
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
      case 'informationType':
        {
          informationType = ArtifactAssessmentInformationTypeBuilder.empty();
          return;
        }
      case 'summary':
        {
          summary = FhirMarkdownBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'classifier':
        {
          classifier = <CodeableConceptBuilder>[];
          return;
        }
      case 'quantity':
        {
          quantity = QuantityBuilder.empty();
          return;
        }
      case 'author':
        {
          author = ReferenceBuilder.empty();
          return;
        }
      case 'path':
        {
          path = <FhirUriBuilder>[];
          return;
        }
      case 'relatedArtifact':
        {
          relatedArtifact = <RelatedArtifactBuilder>[];
          return;
        }
      case 'freeToShare':
        {
          freeToShare = FhirBooleanBuilder.empty();
          return;
        }
      case 'component':
        {
          component = <ArtifactAssessmentContentBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ArtifactAssessmentContentBuilder clone() => throw UnimplementedError();
  @override
  ArtifactAssessmentContentBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ArtifactAssessmentInformationTypeBuilder? informationType,
    FhirMarkdownBuilder? summary,
    CodeableConceptBuilder? type,
    List<CodeableConceptBuilder>? classifier,
    QuantityBuilder? quantity,
    ReferenceBuilder? author,
    List<FhirUriBuilder>? path,
    List<RelatedArtifactBuilder>? relatedArtifact,
    FhirBooleanBuilder? freeToShare,
    List<ArtifactAssessmentContentBuilder>? component,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ArtifactAssessmentContentBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      informationType: informationType ?? this.informationType,
      summary: summary ?? this.summary,
      type: type ?? this.type,
      classifier: classifier ?? this.classifier,
      quantity: quantity ?? this.quantity,
      author: author ?? this.author,
      path: path ?? this.path,
      relatedArtifact: relatedArtifact ?? this.relatedArtifact,
      freeToShare: freeToShare ?? this.freeToShare,
      component: component ?? this.component,
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
    if (o is! ArtifactAssessmentContentBuilder) {
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
      informationType,
      o.informationType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      summary,
      o.summary,
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
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      author,
      o.author,
    )) {
      return false;
    }
    if (!listEquals<FhirUriBuilder>(
      path,
      o.path,
    )) {
      return false;
    }
    if (!listEquals<RelatedArtifactBuilder>(
      relatedArtifact,
      o.relatedArtifact,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      freeToShare,
      o.freeToShare,
    )) {
      return false;
    }
    if (!listEquals<ArtifactAssessmentContentBuilder>(
      component,
      o.component,
    )) {
      return false;
    }
    return true;
  }
}
