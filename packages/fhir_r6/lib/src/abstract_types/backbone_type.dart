import 'dart:convert';

import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

/// Base class for the few data types that are allowed to carry modifier
/// extensions.
abstract class BackboneType extends DataType {
  /// Constructor for BackboneType
  const BackboneType({
    super.id,
    super.extension_,
    this.modifierExtension,
    super.disallowExtensions,
  });

  /// FromJson Factory Constructor for [BackboneType]
  factory BackboneType.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('BackboneType.fromJson $json');
  }

  @override
  String get fhirType => 'BackboneType';

  /// List of modifier extensions for additional, non-core information
  final List<FhirExtension>? modifierExtension;

  /// Method to check if there are any modifier extensions
  bool hasModifierExtension() => modifierExtension?.isNotEmpty ?? false;

  /// Gets the first repetition of modifier extensions
  FhirExtension getModifierExtensionFirstRep() {
    return modifierExtension?.isEmpty ?? true
        ? FhirExtension(url: FhirString('fhirfli.dev'))
        : modifierExtension!.first;
  }

  /// Retrieves all modifier extensions by URL
  List<FhirExtension> getModifierExtensionsByUrl(String url) {
    return modifierExtension
            ?.where((FhirExtension ext) => ext.url.equals(url))
            .toList() ??
        <FhirExtension>[];
  }

  /// Adds a modifier extension
  void addModifierExtension(FhirExtension ext) {
    modifierExtension?.add(ext);
  }

  /// Removes modifier extensions by URL
  void removeModifierExtension(String url) {
    modifierExtension?.removeWhere((FhirExtension ext) => ext.url.equals(url));
  }

  @override
  bool equalsDeep(FhirBase? o) {
    if (o == null || o is! BackboneType) {
      return false;
    }
    return super.equalsDeep(o) &&
        FhirBase.compareDeepLists(
          modifierExtension,
          o.modifierExtension,
          true,
        );
  }

  @override
  bool isEmpty() {
    return super.isEmpty() && (modifierExtension?.isEmpty ?? true);
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, Object?>{};
    if (id?.valueString != null) {
      json['id'] = id?.valueString;
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension e) => e.toJson()).toList();
    }
    if (modifierExtension?.isNotEmpty ?? false) {
      json['modifierExtension'] =
          modifierExtension?.map((FhirExtension e) => e.toJson()).toList();
    }
    return json;
  }

  /// Factory constructor for [BackboneType] that takes in a [YamlMap]
  static BackboneType fromYaml(dynamic yaml) => yaml is String
      ? BackboneType.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
        )
      : yaml is YamlMap
          ? BackboneType.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
            )
          : throw ArgumentError(
              'BackboneType cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [BackboneType] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  static BackboneType fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BackboneType.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  BackboneType clone();

  /// CopyWith method for [BackboneType].
  @override
  $BackboneTypeCopyWith<BackboneType> get copyWith;
}

/// Abstract class for copyWith functionality for [BackboneType]
abstract class $BackboneTypeCopyWith<T> extends $DataTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    bool? disallowExtensions,
  });
}
