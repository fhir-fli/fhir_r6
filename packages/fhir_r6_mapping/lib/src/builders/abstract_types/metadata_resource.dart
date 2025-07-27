import 'dart:convert';

import 'package:fhir_r6/fhir_r6.dart' show R6ResourceType;
import 'package:fhir_r6_mapping/fhir_r6_mapping.dart';
import 'package:yaml/yaml.dart';

/// [MetadataResourceBuilder] Base definition for all FHIR elements.
abstract class MetadataResourceBuilder extends CanonicalResourceBuilder {
  /// Main constructor for [MetadataResourceBuilder]
  MetadataResourceBuilder({
    required super.resourceType,
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    super.url,
    super.version,
    super.status,
    super.experimental,
    super.date,
    super.publisher,
    super.contact,
    super.description,
    super.useContext,
    super.jurisdiction,
    this.usage,
    this.approvalDate,
    this.lastReviewDate,
    this.effectivePeriod,
    this.topic,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatedArtifact,
    super.objectPath = 'MetadataResource',
  });

  /// Factory constructor for [MetadataResourceBuilder] that takes in a
  /// [Map<String, dynamic>] and returns a [MetadataResourceBuilder]
  factory MetadataResourceBuilder.fromJson(Map<String, dynamic> json) =>
      DomainResourceBuilder.fromJson(json) as MetadataResourceBuilder;

  @override
  String get fhirType => 'MetadataResource';

  /// The clinical usage of the resource.
  FhirMarkdownBuilder? usage;

  /// The date when the resource was approved by the publisher.
  FhirDateBuilder? approvalDate;

  /// The date when the resource was last reviewed by the publisher.
  FhirDateBuilder? lastReviewDate;

  /// The period during which the resource is expected to be used.
  PeriodBuilder? effectivePeriod;

  /// The topics that the resource covers, such as Education, Treatment,
  /// Assessment, etc.
  List<CodeableConceptBuilder>? topic;

  /// The authors of the resource.
  List<ContactDetailBuilder>? author;

  /// The editors of the resource.
  List<ContactDetailBuilder>? editor;

  /// The reviewers of the resource.
  List<ContactDetailBuilder>? reviewer;

  /// The endorsers of the resource.
  List<ContactDetailBuilder>? endorser;

  /// Additional documentation, citations, or related artifacts.
  List<RelatedArtifactBuilder>? relatedArtifact;

  /// Converts a [MetadataResourceBuilder] into a [Map<String, dynamic>].
  @override
  Map<String, dynamic> toJson() {
    final val = super.toJson();

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('usage', usage?.toJson());
    writeNotNull('approvalDate', approvalDate?.toJson());
    writeNotNull('lastReviewDate', lastReviewDate?.toJson());
    writeNotNull('effectivePeriod', effectivePeriod?.toJson());
    writeNotNull('topic', topic?.map((e) => e.toJson()).toList());
    writeNotNull('author', author?.map((e) => e.toJson()).toList());
    writeNotNull('editor', editor?.map((e) => e.toJson()).toList());
    writeNotNull('reviewer', reviewer?.map((e) => e.toJson()).toList());
    writeNotNull('endorser', endorser?.map((e) => e.toJson()).toList());
    writeNotNull(
      'relatedArtifact',
      relatedArtifact?.map((e) => e.toJson()).toList(),
    );
    return val;
  }

  /// Factory constructor for [MetadataResourceBuilder]
  /// that takes in a [YamlMap].
  static MetadataResourceBuilder fromYaml(dynamic yaml) => yaml is String
      ? DomainResourceBuilder.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
        ) as MetadataResourceBuilder
      : yaml is YamlMap
          ? DomainResourceBuilder.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
            ) as MetadataResourceBuilder
          : throw ArgumentError(
              'MetadataResource cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MetadataResourceBuilder]
  /// from a JSON-encoded string.
  static MetadataResourceBuilder fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DomainResourceBuilder.fromJson(json) as MetadataResourceBuilder;
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Returns a [R6ResourceType] from a [String]
  static R6ResourceType? resourceTypeFromString(String type) =>
      R6ResourceType.fromString(type);

  /// Returns a [String] from a [R6ResourceType]
  static String resourceTypeToString(R6ResourceType type) => type.toString();

  @override
  MetadataResourceBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirUriBuilder? url,
    FhirStringBuilder? version,
    PublicationStatusBuilder? status,
    FhirBooleanBuilder? experimental,
    FhirDateTimeBuilder? date,
    FhirStringBuilder? publisher,
    List<ContactDetailBuilder>? contact,
    FhirMarkdownBuilder? description,
    List<UsageContextBuilder>? useContext,
    List<CodeableConceptBuilder>? jurisdiction,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  });

  /// Retrieves the type of the object by element name.
  @override
  List<String> typeByElementName(String elementName) {
    return <String>[];
  }

  /// Creates an empty property in the object
  @override
  void createProperty(String propertyName);
}
