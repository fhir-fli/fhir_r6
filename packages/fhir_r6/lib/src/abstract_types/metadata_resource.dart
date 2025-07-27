import 'dart:convert';

import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

/// [MetadataResource] Base definition for all FHIR elements.
abstract class MetadataResource extends CanonicalResource {
  /// Main constructor for [MetadataResource]
  const MetadataResource({
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
  });

  /// Factory constructor for [MetadataResource] that takes in a
  /// [Map<String, dynamic>] and returns a [MetadataResource]
  factory MetadataResource.fromJson(Map<String, dynamic> json) =>
      DomainResource.fromJson(json) as MetadataResource;

  @override
  String get fhirType => 'MetadataResource';

  /// The clinical usage of the resource.
  final FhirMarkdown? usage;

  /// The date when the resource was approved by the publisher.
  final FhirDate? approvalDate;

  /// The date when the resource was last reviewed by the publisher.
  final FhirDate? lastReviewDate;

  /// The period during which the resource is expected to be used.
  final Period? effectivePeriod;

  /// The topics that the resource covers, such as Education, Treatment,
  /// Assessment, etc.
  final List<CodeableConcept>? topic;

  /// The authors of the resource.
  final List<ContactDetail>? author;

  /// The editors of the resource.
  final List<ContactDetail>? editor;

  /// The reviewers of the resource.
  final List<ContactDetail>? reviewer;

  /// The endorsers of the resource.
  final List<ContactDetail>? endorser;

  /// Additional documentation, citations, or related artifacts.
  final List<RelatedArtifact>? relatedArtifact;

  /// Converts a [MetadataResource] into a [Map<String, dynamic>].
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

  /// Factory constructor for [MetadataResource] that takes in a [YamlMap].
  static MetadataResource fromYaml(dynamic yaml) => yaml is String
      ? DomainResource.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
        ) as MetadataResource
      : yaml is YamlMap
          ? DomainResource.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
            ) as MetadataResource
          : throw ArgumentError(
              'MetadataResource cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MetadataResource] from a JSON-encoded string.
  static MetadataResource fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DomainResource.fromJson(json) as MetadataResource;
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Returns a [R5ResourceType] from a [String]
  static R5ResourceType? resourceTypeFromString(String type) =>
      R5ResourceType.fromString(type);

  /// Returns a [String] from a [R5ResourceType]
  static String resourceTypeToString(R5ResourceType type) => type.toString();

  @override
  MetadataResource clone();

  /// CopyWith method for [MetadataResource].
  @override
  $MetadataResourceCopyWith<MetadataResource> get copyWith;
}

/// The public interface for copyWith for [MetadataResource].
abstract class $MetadataResourceCopyWith<T>
    extends $CanonicalResourceCopyWith<T> {
  @override
  T call({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    AllLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? url,
    FhirString? version,
    PublicationStatus? status,
    FhirBoolean? experimental,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
  });
}
