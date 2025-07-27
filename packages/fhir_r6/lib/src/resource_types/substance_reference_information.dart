// ignore_for_file: flutter_style_todos

import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'substance_reference_information.g.dart';

/// [SubstanceReferenceInformation]
/// Todo.
class SubstanceReferenceInformation extends DomainResource {
  /// Primary constructor for
  /// [SubstanceReferenceInformation]

  const SubstanceReferenceInformation({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.comment,
    this.gene,
    this.geneElement,
    this.target,
  }) : super(
          resourceType: R6ResourceType.SubstanceReferenceInformation,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceReferenceInformation.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubstanceReferenceInformation(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<AllLanguages>(
        json,
        'language',
        AllLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      comment: JsonParser.parsePrimitive<FhirString>(
        json,
        'comment',
        FhirString.fromJson,
      ),
      gene: (json['gene'] as List<dynamic>?)
          ?.map<SubstanceReferenceInformationGene>(
            (v) => SubstanceReferenceInformationGene.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      geneElement: (json['geneElement'] as List<dynamic>?)
          ?.map<SubstanceReferenceInformationGeneElement>(
            (v) => SubstanceReferenceInformationGeneElement.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      target: (json['target'] as List<dynamic>?)
          ?.map<SubstanceReferenceInformationTarget>(
            (v) => SubstanceReferenceInformationTarget.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SubstanceReferenceInformation]
  /// from a [String] or [YamlMap] object
  factory SubstanceReferenceInformation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceReferenceInformation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceReferenceInformation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceReferenceInformation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceReferenceInformation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceReferenceInformation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceReferenceInformation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceReferenceInformation';

  /// [comment]
  /// Todo.
  final FhirString? comment;

  /// [gene]
  /// Todo.
  final List<SubstanceReferenceInformationGene>? gene;

  /// [geneElement]
  /// Todo.
  final List<SubstanceReferenceInformationGeneElement>? geneElement;

  /// [target]
  /// Todo.
  final List<SubstanceReferenceInformationTarget>? target;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          final hasAnyValues = tempList.any((v) => v != null);
          if (hasAnyValues) {
            json[key] = tempList;
          }
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField(
      'id',
      id,
    );
    addField(
      'meta',
      meta,
    );
    addField(
      'implicitRules',
      implicitRules,
    );
    addField(
      'language',
      language,
    );
    addField(
      'text',
      text,
    );
    addField(
      'contained',
      contained,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'comment',
      comment,
    );
    addField(
      'gene',
      gene,
    );
    addField(
      'geneElement',
      geneElement,
    );
    addField(
      'target',
      target,
    );
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
      'comment',
      'gene',
      'geneElement',
      'target',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
      case 'comment':
        if (comment != null) {
          fields.add(comment!);
        }
      case 'gene':
        if (gene != null) {
          fields.addAll(gene!);
        }
      case 'geneElement':
        if (geneElement != null) {
          fields.addAll(geneElement!);
        }
      case 'target':
        if (target != null) {
          fields.addAll(target!);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  SubstanceReferenceInformation clone() => copyWith();

  /// Copy function for [SubstanceReferenceInformation]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubstanceReferenceInformationCopyWith<SubstanceReferenceInformation>
      get copyWith => _$SubstanceReferenceInformationCopyWithImpl<
              SubstanceReferenceInformation>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstanceReferenceInformation) {
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
    if (!listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      comment,
      o.comment,
    )) {
      return false;
    }
    if (!listEquals<SubstanceReferenceInformationGene>(
      gene,
      o.gene,
    )) {
      return false;
    }
    if (!listEquals<SubstanceReferenceInformationGeneElement>(
      geneElement,
      o.geneElement,
    )) {
      return false;
    }
    if (!listEquals<SubstanceReferenceInformationTarget>(
      target,
      o.target,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstanceReferenceInformationGene]
/// Todo.
class SubstanceReferenceInformationGene extends BackboneElement {
  /// Primary constructor for
  /// [SubstanceReferenceInformationGene]

  const SubstanceReferenceInformationGene({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.geneSequenceOrigin,
    this.gene,
    this.source,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceReferenceInformationGene.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubstanceReferenceInformationGene(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      geneSequenceOrigin: JsonParser.parseObject<CodeableConcept>(
        json,
        'geneSequenceOrigin',
        CodeableConcept.fromJson,
      ),
      gene: JsonParser.parseObject<CodeableConcept>(
        json,
        'gene',
        CodeableConcept.fromJson,
      ),
      source: (json['source'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SubstanceReferenceInformationGene]
  /// from a [String] or [YamlMap] object
  factory SubstanceReferenceInformationGene.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceReferenceInformationGene.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceReferenceInformationGene.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceReferenceInformationGene '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceReferenceInformationGene]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceReferenceInformationGene.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceReferenceInformationGene.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceReferenceInformationGene';

  /// [geneSequenceOrigin]
  /// Todo.
  final CodeableConcept? geneSequenceOrigin;

  /// [gene]
  /// Todo.
  final CodeableConcept? gene;

  /// [source]
  /// Todo.
  final List<Reference>? source;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          final hasAnyValues = tempList.any((v) => v != null);
          if (hasAnyValues) {
            json[key] = tempList;
          }
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'geneSequenceOrigin',
      geneSequenceOrigin,
    );
    addField(
      'gene',
      gene,
    );
    addField(
      'source',
      source,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'geneSequenceOrigin',
      'gene',
      'source',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
      case 'geneSequenceOrigin':
        if (geneSequenceOrigin != null) {
          fields.add(geneSequenceOrigin!);
        }
      case 'gene':
        if (gene != null) {
          fields.add(gene!);
        }
      case 'source':
        if (source != null) {
          fields.addAll(source!);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  SubstanceReferenceInformationGene clone() => copyWith();

  /// Copy function for [SubstanceReferenceInformationGene]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubstanceReferenceInformationGeneCopyWith<SubstanceReferenceInformationGene>
      get copyWith => _$SubstanceReferenceInformationGeneCopyWithImpl<
              SubstanceReferenceInformationGene>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstanceReferenceInformationGene) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      geneSequenceOrigin,
      o.geneSequenceOrigin,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      gene,
      o.gene,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      source,
      o.source,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstanceReferenceInformationGeneElement]
/// Todo.
class SubstanceReferenceInformationGeneElement extends BackboneElement {
  /// Primary constructor for
  /// [SubstanceReferenceInformationGeneElement]

  const SubstanceReferenceInformationGeneElement({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.element,
    this.source,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceReferenceInformationGeneElement.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubstanceReferenceInformationGeneElement(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      element: JsonParser.parseObject<Identifier>(
        json,
        'element',
        Identifier.fromJson,
      ),
      source: (json['source'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SubstanceReferenceInformationGeneElement]
  /// from a [String] or [YamlMap] object
  factory SubstanceReferenceInformationGeneElement.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceReferenceInformationGeneElement.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceReferenceInformationGeneElement.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceReferenceInformationGeneElement '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceReferenceInformationGeneElement]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceReferenceInformationGeneElement.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceReferenceInformationGeneElement.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceReferenceInformationGeneElement';

  /// [type]
  /// Todo.
  final CodeableConcept? type;

  /// [element]
  /// Todo.
  final Identifier? element;

  /// [source]
  /// Todo.
  final List<Reference>? source;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          final hasAnyValues = tempList.any((v) => v != null);
          if (hasAnyValues) {
            json[key] = tempList;
          }
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'type',
      type,
    );
    addField(
      'element',
      element,
    );
    addField(
      'source',
      source,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'element',
      'source',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'element':
        if (element != null) {
          fields.add(element!);
        }
      case 'source':
        if (source != null) {
          fields.addAll(source!);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  SubstanceReferenceInformationGeneElement clone() => copyWith();

  /// Copy function for [SubstanceReferenceInformationGeneElement]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubstanceReferenceInformationGeneElementCopyWith<
          SubstanceReferenceInformationGeneElement>
      get copyWith => _$SubstanceReferenceInformationGeneElementCopyWithImpl<
              SubstanceReferenceInformationGeneElement>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstanceReferenceInformationGeneElement) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
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
      element,
      o.element,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      source,
      o.source,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstanceReferenceInformationTarget]
/// Todo.
class SubstanceReferenceInformationTarget extends BackboneElement {
  /// Primary constructor for
  /// [SubstanceReferenceInformationTarget]

  const SubstanceReferenceInformationTarget({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.target,
    this.type,
    this.interaction,
    this.organism,
    this.organismType,
    AmountXSubstanceReferenceInformationTarget? amountX,
    Quantity? amountQuantity,
    Range? amountRange,
    FhirString? amountString,
    this.amountType,
    this.source,
    super.disallowExtensions,
  })  : amountX = amountX ?? amountQuantity ?? amountRange ?? amountString,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceReferenceInformationTarget.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubstanceReferenceInformationTarget(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      target: JsonParser.parseObject<Identifier>(
        json,
        'target',
        Identifier.fromJson,
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      interaction: JsonParser.parseObject<CodeableConcept>(
        json,
        'interaction',
        CodeableConcept.fromJson,
      ),
      organism: JsonParser.parseObject<CodeableConcept>(
        json,
        'organism',
        CodeableConcept.fromJson,
      ),
      organismType: JsonParser.parseObject<CodeableConcept>(
        json,
        'organismType',
        CodeableConcept.fromJson,
      ),
      amountX: JsonParser.parsePolymorphic<
          AmountXSubstanceReferenceInformationTarget>(
        json,
        {
          'amountQuantity': Quantity.fromJson,
          'amountRange': Range.fromJson,
          'amountString': FhirString.fromJson,
        },
      ),
      amountType: JsonParser.parseObject<CodeableConcept>(
        json,
        'amountType',
        CodeableConcept.fromJson,
      ),
      source: (json['source'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SubstanceReferenceInformationTarget]
  /// from a [String] or [YamlMap] object
  factory SubstanceReferenceInformationTarget.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceReferenceInformationTarget.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceReferenceInformationTarget.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceReferenceInformationTarget '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceReferenceInformationTarget]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceReferenceInformationTarget.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceReferenceInformationTarget.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceReferenceInformationTarget';

  /// [target]
  /// Todo.
  final Identifier? target;

  /// [type]
  /// Todo.
  final CodeableConcept? type;

  /// [interaction]
  /// Todo.
  final CodeableConcept? interaction;

  /// [organism]
  /// Todo.
  final CodeableConcept? organism;

  /// [organismType]
  /// Todo.
  final CodeableConcept? organismType;

  /// [amountX]
  /// Todo.
  final AmountXSubstanceReferenceInformationTarget? amountX;

  /// Getter for [amountQuantity] as a Quantity
  Quantity? get amountQuantity => amountX?.isAs<Quantity>();

  /// Getter for [amountRange] as a Range
  Range? get amountRange => amountX?.isAs<Range>();

  /// Getter for [amountString] as a FhirString
  FhirString? get amountString => amountX?.isAs<FhirString>();

  /// [amountType]
  /// Todo.
  final CodeableConcept? amountType;

  /// [source]
  /// Todo.
  final List<Reference>? source;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          final hasAnyValues = tempList.any((v) => v != null);
          if (hasAnyValues) {
            json[key] = tempList;
          }
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'target',
      target,
    );
    addField(
      'type',
      type,
    );
    addField(
      'interaction',
      interaction,
    );
    addField(
      'organism',
      organism,
    );
    addField(
      'organismType',
      organismType,
    );
    if (amountX != null) {
      final fhirType = amountX!.fhirType;
      addField(
        'amount${fhirType.capitalize()}',
        amountX,
      );
    }

    addField(
      'amountType',
      amountType,
    );
    addField(
      'source',
      source,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'target',
      'type',
      'interaction',
      'organism',
      'organismType',
      'amountX',
      'amountType',
      'source',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
      case 'target':
        if (target != null) {
          fields.add(target!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'interaction':
        if (interaction != null) {
          fields.add(interaction!);
        }
      case 'organism':
        if (organism != null) {
          fields.add(organism!);
        }
      case 'organismType':
        if (organismType != null) {
          fields.add(organismType!);
        }
      case 'amount':
        fields.add(amountX!);
      case 'amountX':
        fields.add(amountX!);
      case 'amountQuantity':
        if (amountX is Quantity) {
          fields.add(amountX!);
        }
      case 'amountRange':
        if (amountX is Range) {
          fields.add(amountX!);
        }
      case 'amountString':
        if (amountX is FhirString) {
          fields.add(amountX!);
        }
      case 'amountType':
        if (amountType != null) {
          fields.add(amountType!);
        }
      case 'source':
        if (source != null) {
          fields.addAll(source!);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  SubstanceReferenceInformationTarget clone() => copyWith();

  /// Copy function for [SubstanceReferenceInformationTarget]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubstanceReferenceInformationTargetCopyWith<
          SubstanceReferenceInformationTarget>
      get copyWith => _$SubstanceReferenceInformationTargetCopyWithImpl<
              SubstanceReferenceInformationTarget>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstanceReferenceInformationTarget) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      target,
      o.target,
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
      interaction,
      o.interaction,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      organism,
      o.organism,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      organismType,
      o.organismType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      amountX,
      o.amountX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      amountType,
      o.amountType,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      source,
      o.source,
    )) {
      return false;
    }
    return true;
  }
}
