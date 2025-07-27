// ignore_for_file: flutter_style_todos

import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'substance_polymer.g.dart';

/// [SubstancePolymer]
/// Properties of a substance specific to it being a polymer.
class SubstancePolymer extends DomainResource {
  /// Primary constructor for
  /// [SubstancePolymer]

  const SubstancePolymer({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.class_,
    this.geometry,
    this.copolymerConnectivity,
    this.modification,
    this.monomerSet,
    this.repeat,
  }) : super(
          resourceType: R5ResourceType.SubstancePolymer,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstancePolymer.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubstancePolymer(
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
      identifier: JsonParser.parseObject<Identifier>(
        json,
        'identifier',
        Identifier.fromJson,
      ),
      class_: JsonParser.parseObject<CodeableConcept>(
        json,
        'class',
        CodeableConcept.fromJson,
      ),
      geometry: JsonParser.parseObject<CodeableConcept>(
        json,
        'geometry',
        CodeableConcept.fromJson,
      ),
      copolymerConnectivity: (json['copolymerConnectivity'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modification: JsonParser.parsePrimitive<FhirString>(
        json,
        'modification',
        FhirString.fromJson,
      ),
      monomerSet: (json['monomerSet'] as List<dynamic>?)
          ?.map<SubstancePolymerMonomerSet>(
            (v) => SubstancePolymerMonomerSet.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      repeat: (json['repeat'] as List<dynamic>?)
          ?.map<SubstancePolymerRepeat>(
            (v) => SubstancePolymerRepeat.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SubstancePolymer]
  /// from a [String] or [YamlMap] object
  factory SubstancePolymer.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstancePolymer.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstancePolymer.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstancePolymer '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstancePolymer]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstancePolymer.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstancePolymer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstancePolymer';

  /// [identifier]
  /// A business idenfier for this polymer, but typically this is handled by
  /// a SubstanceDefinition identifier.
  final Identifier? identifier;

  /// [class_]
  /// Overall type of the polymer.
  final CodeableConcept? class_;

  /// [geometry]
  /// Polymer geometry, e.g. linear, branched, cross-linked, network or
  /// dendritic.
  final CodeableConcept? geometry;

  /// [copolymerConnectivity]
  /// Descrtibes the copolymer sequence type (polymer connectivity).
  final List<CodeableConcept>? copolymerConnectivity;

  /// [modification]
  /// Todo - this is intended to connect to a repeating full modification
  /// structure, also used by Protein and Nucleic Acid . String is just a
  /// placeholder.
  final FhirString? modification;

  /// [monomerSet]
  /// Todo.
  final List<SubstancePolymerMonomerSet>? monomerSet;

  /// [repeat]
  /// Specifies and quantifies the repeated units and their configuration.
  final List<SubstancePolymerRepeat>? repeat;
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
      'identifier',
      identifier,
    );
    addField(
      'class',
      class_,
    );
    addField(
      'geometry',
      geometry,
    );
    addField(
      'copolymerConnectivity',
      copolymerConnectivity,
    );
    addField(
      'modification',
      modification,
    );
    addField(
      'monomerSet',
      monomerSet,
    );
    addField(
      'repeat',
      repeat,
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
      'identifier',
      'class',
      'geometry',
      'copolymerConnectivity',
      'modification',
      'monomerSet',
      'repeat',
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
      case 'identifier':
        if (identifier != null) {
          fields.add(identifier!);
        }
      case 'class':
        if (class_ != null) {
          fields.add(class_!);
        }
      case 'geometry':
        if (geometry != null) {
          fields.add(geometry!);
        }
      case 'copolymerConnectivity':
        if (copolymerConnectivity != null) {
          fields.addAll(copolymerConnectivity!);
        }
      case 'modification':
        if (modification != null) {
          fields.add(modification!);
        }
      case 'monomerSet':
        if (monomerSet != null) {
          fields.addAll(monomerSet!);
        }
      case 'repeat':
        if (repeat != null) {
          fields.addAll(repeat!);
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
  SubstancePolymer clone() => copyWith();

  /// Copy function for [SubstancePolymer]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubstancePolymerCopyWith<SubstancePolymer> get copyWith =>
      _$SubstancePolymerCopyWithImpl<SubstancePolymer>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstancePolymer) {
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
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      class_,
      o.class_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      geometry,
      o.geometry,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      copolymerConnectivity,
      o.copolymerConnectivity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      modification,
      o.modification,
    )) {
      return false;
    }
    if (!listEquals<SubstancePolymerMonomerSet>(
      monomerSet,
      o.monomerSet,
    )) {
      return false;
    }
    if (!listEquals<SubstancePolymerRepeat>(
      repeat,
      o.repeat,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstancePolymerMonomerSet]
/// Todo.
class SubstancePolymerMonomerSet extends BackboneElement {
  /// Primary constructor for
  /// [SubstancePolymerMonomerSet]

  const SubstancePolymerMonomerSet({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.ratioType,
    this.startingMaterial,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstancePolymerMonomerSet.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubstancePolymerMonomerSet(
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
      ratioType: JsonParser.parseObject<CodeableConcept>(
        json,
        'ratioType',
        CodeableConcept.fromJson,
      ),
      startingMaterial: (json['startingMaterial'] as List<dynamic>?)
          ?.map<SubstancePolymerStartingMaterial>(
            (v) => SubstancePolymerStartingMaterial.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SubstancePolymerMonomerSet]
  /// from a [String] or [YamlMap] object
  factory SubstancePolymerMonomerSet.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstancePolymerMonomerSet.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstancePolymerMonomerSet.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstancePolymerMonomerSet '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstancePolymerMonomerSet]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstancePolymerMonomerSet.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstancePolymerMonomerSet.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstancePolymerMonomerSet';

  /// [ratioType]
  /// Captures the type of ratio to the entire polymer, e.g. Monomer/Polymer
  /// ratio, SRU/Polymer Ratio.
  final CodeableConcept? ratioType;

  /// [startingMaterial]
  /// The starting materials - monomer(s) used in the synthesis of the
  /// polymer.
  final List<SubstancePolymerStartingMaterial>? startingMaterial;
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
      'ratioType',
      ratioType,
    );
    addField(
      'startingMaterial',
      startingMaterial,
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
      'ratioType',
      'startingMaterial',
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
      case 'ratioType':
        if (ratioType != null) {
          fields.add(ratioType!);
        }
      case 'startingMaterial':
        if (startingMaterial != null) {
          fields.addAll(startingMaterial!);
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
  SubstancePolymerMonomerSet clone() => copyWith();

  /// Copy function for [SubstancePolymerMonomerSet]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubstancePolymerMonomerSetCopyWith<SubstancePolymerMonomerSet>
      get copyWith =>
          _$SubstancePolymerMonomerSetCopyWithImpl<SubstancePolymerMonomerSet>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstancePolymerMonomerSet) {
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
      ratioType,
      o.ratioType,
    )) {
      return false;
    }
    if (!listEquals<SubstancePolymerStartingMaterial>(
      startingMaterial,
      o.startingMaterial,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstancePolymerStartingMaterial]
/// The starting materials - monomer(s) used in the synthesis of the
/// polymer.
class SubstancePolymerStartingMaterial extends BackboneElement {
  /// Primary constructor for
  /// [SubstancePolymerStartingMaterial]

  const SubstancePolymerStartingMaterial({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.category,
    this.isDefining,
    this.amount,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstancePolymerStartingMaterial.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubstancePolymerStartingMaterial(
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
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      ),
      category: JsonParser.parseObject<CodeableConcept>(
        json,
        'category',
        CodeableConcept.fromJson,
      ),
      isDefining: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'isDefining',
        FhirBoolean.fromJson,
      ),
      amount: JsonParser.parseObject<Quantity>(
        json,
        'amount',
        Quantity.fromJson,
      ),
    );
  }

  /// Deserialize [SubstancePolymerStartingMaterial]
  /// from a [String] or [YamlMap] object
  factory SubstancePolymerStartingMaterial.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstancePolymerStartingMaterial.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstancePolymerStartingMaterial.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstancePolymerStartingMaterial '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstancePolymerStartingMaterial]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstancePolymerStartingMaterial.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstancePolymerStartingMaterial.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstancePolymerStartingMaterial';

  /// [code]
  /// The type of substance for this starting material.
  final CodeableConcept? code;

  /// [category]
  /// Substance high level category, e.g. chemical substance.
  final CodeableConcept? category;

  /// [isDefining]
  /// Used to specify whether the attribute described is a defining element
  /// for the unique identification of the polymer.
  final FhirBoolean? isDefining;

  /// [amount]
  /// A percentage.
  final Quantity? amount;
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
      'code',
      code,
    );
    addField(
      'category',
      category,
    );
    addField(
      'isDefining',
      isDefining,
    );
    addField(
      'amount',
      amount,
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
      'code',
      'category',
      'isDefining',
      'amount',
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
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'category':
        if (category != null) {
          fields.add(category!);
        }
      case 'isDefining':
        if (isDefining != null) {
          fields.add(isDefining!);
        }
      case 'amount':
        if (amount != null) {
          fields.add(amount!);
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
  SubstancePolymerStartingMaterial clone() => copyWith();

  /// Copy function for [SubstancePolymerStartingMaterial]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubstancePolymerStartingMaterialCopyWith<SubstancePolymerStartingMaterial>
      get copyWith => _$SubstancePolymerStartingMaterialCopyWithImpl<
              SubstancePolymerStartingMaterial>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstancePolymerStartingMaterial) {
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
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      category,
      o.category,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      isDefining,
      o.isDefining,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      amount,
      o.amount,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstancePolymerRepeat]
/// Specifies and quantifies the repeated units and their configuration.
class SubstancePolymerRepeat extends BackboneElement {
  /// Primary constructor for
  /// [SubstancePolymerRepeat]

  const SubstancePolymerRepeat({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.averageMolecularFormula,
    this.repeatUnitAmountType,
    this.repeatUnit,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstancePolymerRepeat.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubstancePolymerRepeat(
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
      averageMolecularFormula: JsonParser.parsePrimitive<FhirString>(
        json,
        'averageMolecularFormula',
        FhirString.fromJson,
      ),
      repeatUnitAmountType: JsonParser.parseObject<CodeableConcept>(
        json,
        'repeatUnitAmountType',
        CodeableConcept.fromJson,
      ),
      repeatUnit: (json['repeatUnit'] as List<dynamic>?)
          ?.map<SubstancePolymerRepeatUnit>(
            (v) => SubstancePolymerRepeatUnit.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SubstancePolymerRepeat]
  /// from a [String] or [YamlMap] object
  factory SubstancePolymerRepeat.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstancePolymerRepeat.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstancePolymerRepeat.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstancePolymerRepeat '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstancePolymerRepeat]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstancePolymerRepeat.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstancePolymerRepeat.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstancePolymerRepeat';

  /// [averageMolecularFormula]
  /// A representation of an (average) molecular formula from a polymer.
  final FhirString? averageMolecularFormula;

  /// [repeatUnitAmountType]
  /// How the quantitative amount of Structural Repeat Units is captured
  /// (e.g. Exact, Numeric, Average).
  final CodeableConcept? repeatUnitAmountType;

  /// [repeatUnit]
  /// An SRU - Structural Repeat Unit.
  final List<SubstancePolymerRepeatUnit>? repeatUnit;
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
      'averageMolecularFormula',
      averageMolecularFormula,
    );
    addField(
      'repeatUnitAmountType',
      repeatUnitAmountType,
    );
    addField(
      'repeatUnit',
      repeatUnit,
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
      'averageMolecularFormula',
      'repeatUnitAmountType',
      'repeatUnit',
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
      case 'averageMolecularFormula':
        if (averageMolecularFormula != null) {
          fields.add(averageMolecularFormula!);
        }
      case 'repeatUnitAmountType':
        if (repeatUnitAmountType != null) {
          fields.add(repeatUnitAmountType!);
        }
      case 'repeatUnit':
        if (repeatUnit != null) {
          fields.addAll(repeatUnit!);
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
  SubstancePolymerRepeat clone() => copyWith();

  /// Copy function for [SubstancePolymerRepeat]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubstancePolymerRepeatCopyWith<SubstancePolymerRepeat> get copyWith =>
      _$SubstancePolymerRepeatCopyWithImpl<SubstancePolymerRepeat>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstancePolymerRepeat) {
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
      averageMolecularFormula,
      o.averageMolecularFormula,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      repeatUnitAmountType,
      o.repeatUnitAmountType,
    )) {
      return false;
    }
    if (!listEquals<SubstancePolymerRepeatUnit>(
      repeatUnit,
      o.repeatUnit,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstancePolymerRepeatUnit]
/// An SRU - Structural Repeat Unit.
class SubstancePolymerRepeatUnit extends BackboneElement {
  /// Primary constructor for
  /// [SubstancePolymerRepeatUnit]

  const SubstancePolymerRepeatUnit({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.unit,
    this.orientation,
    this.amount,
    this.degreeOfPolymerisation,
    this.structuralRepresentation,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstancePolymerRepeatUnit.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubstancePolymerRepeatUnit(
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
      unit: JsonParser.parsePrimitive<FhirString>(
        json,
        'unit',
        FhirString.fromJson,
      ),
      orientation: JsonParser.parseObject<CodeableConcept>(
        json,
        'orientation',
        CodeableConcept.fromJson,
      ),
      amount: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'amount',
        FhirInteger.fromJson,
      ),
      degreeOfPolymerisation: (json['degreeOfPolymerisation'] as List<dynamic>?)
          ?.map<SubstancePolymerDegreeOfPolymerisation>(
            (v) => SubstancePolymerDegreeOfPolymerisation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      structuralRepresentation:
          (json['structuralRepresentation'] as List<dynamic>?)
              ?.map<SubstancePolymerStructuralRepresentation>(
                (v) => SubstancePolymerStructuralRepresentation.fromJson(
                  {...v as Map<String, dynamic>},
                ),
              )
              .toList(),
    );
  }

  /// Deserialize [SubstancePolymerRepeatUnit]
  /// from a [String] or [YamlMap] object
  factory SubstancePolymerRepeatUnit.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstancePolymerRepeatUnit.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstancePolymerRepeatUnit.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstancePolymerRepeatUnit '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstancePolymerRepeatUnit]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstancePolymerRepeatUnit.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstancePolymerRepeatUnit.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstancePolymerRepeatUnit';

  /// [unit]
  /// Structural repeat units are essential elements for defining polymers.
  final FhirString? unit;

  /// [orientation]
  /// The orientation of the polymerisation, e.g. head-tail, head-head,
  /// random.
  final CodeableConcept? orientation;

  /// [amount]
  /// Number of repeats of this unit.
  final FhirInteger? amount;

  /// [degreeOfPolymerisation]
  /// Applies to homopolymer and block co-polymers where the degree of
  /// polymerisation within a block can be described.
  final List<SubstancePolymerDegreeOfPolymerisation>? degreeOfPolymerisation;

  /// [structuralRepresentation]
  /// A graphical structure for this SRU.
  final List<SubstancePolymerStructuralRepresentation>?
      structuralRepresentation;
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
      'unit',
      unit,
    );
    addField(
      'orientation',
      orientation,
    );
    addField(
      'amount',
      amount,
    );
    addField(
      'degreeOfPolymerisation',
      degreeOfPolymerisation,
    );
    addField(
      'structuralRepresentation',
      structuralRepresentation,
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
      'unit',
      'orientation',
      'amount',
      'degreeOfPolymerisation',
      'structuralRepresentation',
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
      case 'unit':
        if (unit != null) {
          fields.add(unit!);
        }
      case 'orientation':
        if (orientation != null) {
          fields.add(orientation!);
        }
      case 'amount':
        if (amount != null) {
          fields.add(amount!);
        }
      case 'degreeOfPolymerisation':
        if (degreeOfPolymerisation != null) {
          fields.addAll(degreeOfPolymerisation!);
        }
      case 'structuralRepresentation':
        if (structuralRepresentation != null) {
          fields.addAll(structuralRepresentation!);
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
  SubstancePolymerRepeatUnit clone() => copyWith();

  /// Copy function for [SubstancePolymerRepeatUnit]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubstancePolymerRepeatUnitCopyWith<SubstancePolymerRepeatUnit>
      get copyWith =>
          _$SubstancePolymerRepeatUnitCopyWithImpl<SubstancePolymerRepeatUnit>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstancePolymerRepeatUnit) {
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
      unit,
      o.unit,
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
      amount,
      o.amount,
    )) {
      return false;
    }
    if (!listEquals<SubstancePolymerDegreeOfPolymerisation>(
      degreeOfPolymerisation,
      o.degreeOfPolymerisation,
    )) {
      return false;
    }
    if (!listEquals<SubstancePolymerStructuralRepresentation>(
      structuralRepresentation,
      o.structuralRepresentation,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstancePolymerDegreeOfPolymerisation]
/// Applies to homopolymer and block co-polymers where the degree of
/// polymerisation within a block can be described.
class SubstancePolymerDegreeOfPolymerisation extends BackboneElement {
  /// Primary constructor for
  /// [SubstancePolymerDegreeOfPolymerisation]

  const SubstancePolymerDegreeOfPolymerisation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.average,
    this.low,
    this.high,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstancePolymerDegreeOfPolymerisation.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubstancePolymerDegreeOfPolymerisation(
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
      average: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'average',
        FhirInteger.fromJson,
      ),
      low: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'low',
        FhirInteger.fromJson,
      ),
      high: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'high',
        FhirInteger.fromJson,
      ),
    );
  }

  /// Deserialize [SubstancePolymerDegreeOfPolymerisation]
  /// from a [String] or [YamlMap] object
  factory SubstancePolymerDegreeOfPolymerisation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstancePolymerDegreeOfPolymerisation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstancePolymerDegreeOfPolymerisation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstancePolymerDegreeOfPolymerisation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstancePolymerDegreeOfPolymerisation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstancePolymerDegreeOfPolymerisation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstancePolymerDegreeOfPolymerisation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstancePolymerDegreeOfPolymerisation';

  /// [type]
  /// The type of the degree of polymerisation shall be described, e.g.
  /// SRU/Polymer Ratio.
  final CodeableConcept? type;

  /// [average]
  /// An average amount of polymerisation.
  final FhirInteger? average;

  /// [low]
  /// A low expected limit of the amount.
  final FhirInteger? low;

  /// [high]
  /// A high expected limit of the amount.
  final FhirInteger? high;
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
      'average',
      average,
    );
    addField(
      'low',
      low,
    );
    addField(
      'high',
      high,
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
      'average',
      'low',
      'high',
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
      case 'average':
        if (average != null) {
          fields.add(average!);
        }
      case 'low':
        if (low != null) {
          fields.add(low!);
        }
      case 'high':
        if (high != null) {
          fields.add(high!);
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
  SubstancePolymerDegreeOfPolymerisation clone() => copyWith();

  /// Copy function for [SubstancePolymerDegreeOfPolymerisation]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubstancePolymerDegreeOfPolymerisationCopyWith<
          SubstancePolymerDegreeOfPolymerisation>
      get copyWith => _$SubstancePolymerDegreeOfPolymerisationCopyWithImpl<
              SubstancePolymerDegreeOfPolymerisation>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstancePolymerDegreeOfPolymerisation) {
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
      average,
      o.average,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      low,
      o.low,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      high,
      o.high,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstancePolymerStructuralRepresentation]
/// A graphical structure for this SRU.
class SubstancePolymerStructuralRepresentation extends BackboneElement {
  /// Primary constructor for
  /// [SubstancePolymerStructuralRepresentation]

  const SubstancePolymerStructuralRepresentation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.representation,
    this.format,
    this.attachment,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstancePolymerStructuralRepresentation.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubstancePolymerStructuralRepresentation(
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
      representation: JsonParser.parsePrimitive<FhirString>(
        json,
        'representation',
        FhirString.fromJson,
      ),
      format: JsonParser.parseObject<CodeableConcept>(
        json,
        'format',
        CodeableConcept.fromJson,
      ),
      attachment: JsonParser.parseObject<Attachment>(
        json,
        'attachment',
        Attachment.fromJson,
      ),
    );
  }

  /// Deserialize [SubstancePolymerStructuralRepresentation]
  /// from a [String] or [YamlMap] object
  factory SubstancePolymerStructuralRepresentation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstancePolymerStructuralRepresentation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstancePolymerStructuralRepresentation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstancePolymerStructuralRepresentation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstancePolymerStructuralRepresentation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstancePolymerStructuralRepresentation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstancePolymerStructuralRepresentation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstancePolymerStructuralRepresentation';

  /// [type]
  /// The type of structure (e.g. Full, Partial, Representative).
  final CodeableConcept? type;

  /// [representation]
  /// The structural representation as text string in a standard format e.g.
  /// InChI, SMILES, MOLFILE, CDX, SDF, PDB, mmCIF.
  final FhirString? representation;

  /// [format]
  /// The format of the representation e.g. InChI, SMILES, MOLFILE, CDX, SDF,
  /// PDB, mmCIF.
  final CodeableConcept? format;

  /// [attachment]
  /// An attached file with the structural representation.
  final Attachment? attachment;
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
      'representation',
      representation,
    );
    addField(
      'format',
      format,
    );
    addField(
      'attachment',
      attachment,
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
      'representation',
      'format',
      'attachment',
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
      case 'representation':
        if (representation != null) {
          fields.add(representation!);
        }
      case 'format':
        if (format != null) {
          fields.add(format!);
        }
      case 'attachment':
        if (attachment != null) {
          fields.add(attachment!);
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
  SubstancePolymerStructuralRepresentation clone() => copyWith();

  /// Copy function for [SubstancePolymerStructuralRepresentation]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubstancePolymerStructuralRepresentationCopyWith<
          SubstancePolymerStructuralRepresentation>
      get copyWith => _$SubstancePolymerStructuralRepresentationCopyWithImpl<
              SubstancePolymerStructuralRepresentation>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstancePolymerStructuralRepresentation) {
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
      representation,
      o.representation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      format,
      o.format,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      attachment,
      o.attachment,
    )) {
      return false;
    }
    return true;
  }
}
