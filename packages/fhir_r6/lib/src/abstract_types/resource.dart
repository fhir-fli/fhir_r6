import 'dart:convert';

import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

/// [Resource] Base definition for all FHIR elements.
abstract class Resource extends FhirBase {
  /// Main constructor for [Resource ]
  const Resource({
    required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
  });

  /// Acts like a constructor, returns a [Resource], accepts a
  /// [Map<String, dynamic>] as an argument
  factory Resource.fromJson(Map<String, dynamic> json) =>
      resourceFromJson(json);

  @override
  String get fhirType => 'Resource';

  /// The type of resource
  final R6ResourceType resourceType;

  /// The logical id of the resource, as used in the URL for the resource.
  final FhirString? id;

  /// The metadata about the resource. This is content that is maintained by the
  /// infrastructure. Changes to the content might not always be associated with
  /// version changes to the resource.
  final FhirMeta? meta;

  /// A reference to a set of rules that were followed when the resource was
  /// constructed, and which must be understood when processing the content.
  /// Often, this is a reference to an implementation guide that defines the
  /// special rules along with other profiles etc.
  final FhirUri? implicitRules;

  /// The base language in which the resource is written.
  /// This should be the language of the text value in the content element
  /// when a text value is present.
  final AllLanguages? language;

  /// Acts like a constructor, returns a [Resource], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  static T fromJsonString<T extends Resource>(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return resourceFromJson(json) as T;
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Returns a Resource, accepts a [String] in YAML format as an argument
  static T fromYaml<T extends Resource>(dynamic yaml) => yaml is String
      ? Resource.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
        ) as T
      : yaml is YamlMap
          ? Resource.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
            ) as T
          : throw ArgumentError(
              'Resource cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Returns a [Map<String, dynamic>] of the [Resource]
  @override
  Map<String, dynamic> toJson() {
    final val = <String, Object?>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('resourceType', resourceType);
    writeNotNull('id', id);
    writeNotNull('meta', meta?.toJson());
    writeNotNull('implicitRules', implicitRules?.toJson());
    writeNotNull('language', language?.toJson());
    return val;
  }

  /// produce a string of the [resourceType]
  String get resourceTypeString => fhirType;

  /// Convenience method to return a [Reference] referring to that [Resource]
  Reference get thisReference => Reference(
        reference: FhirString(path),
        type: FhirUri(resourceTypeString),
      );

  /// Local Reference for this Resource, form is "ResourceType/Id"
  String get path => '$fhirType/$id';

  /// returns the same resource with a new ID if there is no current ID
  Resource newIdIfNoId() => id == null ? newId() : this;

  /// returns the same resource with a new ID (even if there is already an ID
  /// present)
  Resource newId() => resourceWithNewId(this);

  /// Updates the [meta] field of this Resource, updates the meta.lastUpdated
  /// field, adds 1 to the version number
  Resource updateVersion({FhirMeta? oldMeta, bool versionIdAsTime = false}) =>
      updateMeta(this, meta: oldMeta, versionIdAsTime: versionIdAsTime);

  /// Returns a [R6ResourceType] from a [String]
  static R6ResourceType? resourceTypeFromString(String type) =>
      R6ResourceType.fromString(type);

  /// Returns a [String] from a [R6ResourceType]
  static String resourceTypeToString(R6ResourceType type) => type.toString();

  @override
  Resource clone();

  /// CopyWith method for [Resource].
  @override
  $ResourceCopyWith<Resource> get copyWith;
}

/// The public interface for copyWith for [Resource].
abstract class $ResourceCopyWith<T> extends $FhirBaseCopyWith<T> {
  @override
  T call({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    AllLanguages? language,
  });
}
