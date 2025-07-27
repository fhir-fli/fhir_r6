import 'dart:convert';

import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

/// [CanonicalResource] Base definition for all FHIR elements.
abstract class CanonicalResource extends DomainResource {
  /// Main constructor for [CanonicalResource]
  const CanonicalResource({
    required super.resourceType,
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.url,
    this.version,
    this.status,
    this.experimental,
    this.date,
    this.publisher,
    this.contact,
    this.description,
    this.useContext,
    this.jurisdiction,
  });

  /// Factory constructor for [CanonicalResource] that takes in a
  /// [Map<String, dynamic>] and returns a [CanonicalResource]
  factory CanonicalResource.fromJson(Map<String, dynamic> json) =>
      DomainResource.fromJson(json) as CanonicalResource;

  @override
  String get fhirType => 'CanonicalResource';

  /// An absolute URI that is used to identify this canonical resource.
  final FhirUri? url;

  /// The identifier for the specific version of the canonical resource.
  final FhirString? version;

  /// The publication status of the canonical resource.
  final PublicationStatus? status;

  /// Indicates if the canonical resource is for testing purposes only.
  final FhirBoolean? experimental;

  /// The date when the canonical resource was published.
  final FhirDateTime? date;

  /// The publisher of the canonical resource.
  final FhirString? publisher;

  /// Contact details for the publisher.
  final List<ContactDetail>? contact;

  /// A description of the canonical resource.
  final FhirMarkdown? description;

  /// The contexts the canonical resource is intended to support.
  final List<UsageContext>? useContext;

  /// Legal or geographic regions in which the canonical resource is intended
  /// to be used.
  final List<CodeableConcept>? jurisdiction;

  /// Converts a [CanonicalResource] into a [Map<String, dynamic>].
  @override
  Map<String, dynamic> toJson() {
    final val = super.toJson();

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('url', url?.toJson());
    writeNotNull('version', version);
    writeNotNull('status', status?.toJson());
    writeNotNull('experimental', experimental);
    writeNotNull('date', date?.toJson());
    writeNotNull('publisher', publisher);
    writeNotNull('contact', contact?.map((e) => e.toJson()).toList());
    writeNotNull('description', description?.toJson());
    writeNotNull('useContext', useContext?.map((e) => e.toJson()).toList());
    writeNotNull('jurisdiction', jurisdiction?.map((e) => e.toJson()).toList());
    return val;
  }

  /// Factory constructor for [CanonicalResource] that takes in a [YamlMap].
  static CanonicalResource fromYaml(dynamic yaml) => yaml is String
      ? DomainResource.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
        ) as CanonicalResource
      : yaml is YamlMap
          ? DomainResource.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
            ) as CanonicalResource
          : throw ArgumentError(
              'CanonicalResource cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [CanonicalResource] from a JSON-encoded string.
  static CanonicalResource fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DomainResource.fromJson(json) as CanonicalResource;
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
  CanonicalResource clone();

  /// CopyWith method for [CanonicalResource].
  @override
  $CanonicalResourceCopyWith<CanonicalResource> get copyWith;
}

/// The public interface for copyWith for [CanonicalResource].
abstract class $CanonicalResourceCopyWith<T>
    extends $DomainResourceCopyWith<T> {
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
