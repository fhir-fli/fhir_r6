import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'ingredient.g.dart';

/// [Ingredient]
/// An ingredient of a manufactured item or pharmaceutical product.
class Ingredient extends DomainResource {
  /// Primary constructor for
  /// [Ingredient]

  const Ingredient({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    this.for_,
    required this.role,
    this.function_,
    this.group,
    this.allergenicIndicator,
    this.comment,
    this.manufacturer,
    required this.substance,
  }) : super(
          resourceType: R5ResourceType.Ingredient,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Ingredient.fromJson(
    Map<String, dynamic> json,
  ) {
    return Ingredient(
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
      status: JsonParser.parsePrimitive<PublicationStatus>(
        json,
        'status',
        PublicationStatus.fromJson,
      )!,
      for_: (json['for'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      role: JsonParser.parseObject<CodeableConcept>(
        json,
        'role',
        CodeableConcept.fromJson,
      )!,
      function_: (json['function'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      group: JsonParser.parseObject<CodeableConcept>(
        json,
        'group',
        CodeableConcept.fromJson,
      ),
      allergenicIndicator: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'allergenicIndicator',
        FhirBoolean.fromJson,
      ),
      comment: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'comment',
        FhirMarkdown.fromJson,
      ),
      manufacturer: (json['manufacturer'] as List<dynamic>?)
          ?.map<IngredientManufacturer>(
            (v) => IngredientManufacturer.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      substance: JsonParser.parseObject<IngredientSubstance>(
        json,
        'substance',
        IngredientSubstance.fromJson,
      )!,
    );
  }

  /// Deserialize [Ingredient]
  /// from a [String] or [YamlMap] object
  factory Ingredient.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Ingredient.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Ingredient.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Ingredient '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Ingredient]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Ingredient.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Ingredient.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Ingredient';

  /// [identifier]
  /// The identifier(s) of this Ingredient that are assigned by business
  /// processes and/or used to refer to it when a direct URL reference to the
  /// resource itself is not appropriate.
  final Identifier? identifier;

  /// [status]
  /// The status of this ingredient. Enables tracking the life-cycle of the
  /// content.
  final PublicationStatus status;

  /// [for_]
  /// The product which this ingredient is a constituent part of.
  final List<Reference>? for_;

  /// [role]
  /// A classification of the ingredient identifying its purpose within the
  /// product, e.g. active, inactive.
  final CodeableConcept role;

  /// [function_]
  /// A classification of the ingredient identifying its precise purpose(s)
  /// in the drug product. This extends the Ingredient.role to add more
  /// detail. Example: antioxidant, alkalizing agent.
  final List<CodeableConcept>? function_;

  /// [group]
  /// A classification of the ingredient according to where in the physical
  /// item it tends to be used, such the outer shell of a tablet, inner body
  /// or ink.
  final CodeableConcept? group;

  /// [allergenicIndicator]
  /// If the ingredient is a known or suspected allergen. Note that this is a
  /// property of the substance, so if a reference to a SubstanceDefinition
  /// is used to decribe that (rather than just a code), the allergen
  /// information should go there, not here.
  final FhirBoolean? allergenicIndicator;

  /// [comment]
  /// A place for providing any notes that are relevant to the component,
  /// e.g. removed during process, adjusted for loss on drying.
  final FhirMarkdown? comment;

  /// [manufacturer]
  /// The organization(s) that manufacture this ingredient. Can be used to
  /// indicate: 1) Organizations we are aware of that manufacture this
  /// ingredient 2) Specific Manufacturer(s) currently being used 3) Set of
  /// organisations allowed to manufacture this ingredient for this product
  /// Users must be clear on the application of context relevant to their use
  /// case.
  final List<IngredientManufacturer>? manufacturer;

  /// [substance]
  /// The substance that comprises this ingredient.
  final IngredientSubstance substance;
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
      'status',
      status,
    );
    addField(
      'for',
      for_,
    );
    addField(
      'role',
      role,
    );
    addField(
      'function',
      function_,
    );
    addField(
      'group',
      group,
    );
    addField(
      'allergenicIndicator',
      allergenicIndicator,
    );
    addField(
      'comment',
      comment,
    );
    addField(
      'manufacturer',
      manufacturer,
    );
    addField(
      'substance',
      substance,
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
      'status',
      'for',
      'role',
      'function',
      'group',
      'allergenicIndicator',
      'comment',
      'manufacturer',
      'substance',
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
      case 'status':
        fields.add(status);
      case 'for':
        if (for_ != null) {
          fields.addAll(for_!);
        }
      case 'role':
        fields.add(role);
      case 'function':
        if (function_ != null) {
          fields.addAll(function_!);
        }
      case 'group':
        if (group != null) {
          fields.add(group!);
        }
      case 'allergenicIndicator':
        if (allergenicIndicator != null) {
          fields.add(allergenicIndicator!);
        }
      case 'comment':
        if (comment != null) {
          fields.add(comment!);
        }
      case 'manufacturer':
        if (manufacturer != null) {
          fields.addAll(manufacturer!);
        }
      case 'substance':
        fields.add(substance);
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
  Ingredient clone() => copyWith();

  /// Copy function for [Ingredient]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $IngredientCopyWith<Ingredient> get copyWith =>
      _$IngredientCopyWithImpl<Ingredient>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Ingredient) {
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
      status,
      o.status,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      for_,
      o.for_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      role,
      o.role,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      function_,
      o.function_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      group,
      o.group,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      allergenicIndicator,
      o.allergenicIndicator,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      comment,
      o.comment,
    )) {
      return false;
    }
    if (!listEquals<IngredientManufacturer>(
      manufacturer,
      o.manufacturer,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      substance,
      o.substance,
    )) {
      return false;
    }
    return true;
  }
}

/// [IngredientManufacturer]
/// The organization(s) that manufacture this ingredient. Can be used to
/// indicate: 1) Organizations we are aware of that manufacture this
/// ingredient 2) Specific Manufacturer(s) currently being used 3) Set of
/// organisations allowed to manufacture this ingredient for this product
/// Users must be clear on the application of context relevant to their use
/// case.
class IngredientManufacturer extends BackboneElement {
  /// Primary constructor for
  /// [IngredientManufacturer]

  const IngredientManufacturer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.role,
    required this.manufacturer,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory IngredientManufacturer.fromJson(
    Map<String, dynamic> json,
  ) {
    return IngredientManufacturer(
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
      role: JsonParser.parsePrimitive<IngredientManufacturerRole>(
        json,
        'role',
        IngredientManufacturerRole.fromJson,
      ),
      manufacturer: JsonParser.parseObject<Reference>(
        json,
        'manufacturer',
        Reference.fromJson,
      )!,
    );
  }

  /// Deserialize [IngredientManufacturer]
  /// from a [String] or [YamlMap] object
  factory IngredientManufacturer.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return IngredientManufacturer.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return IngredientManufacturer.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'IngredientManufacturer '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [IngredientManufacturer]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory IngredientManufacturer.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return IngredientManufacturer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'IngredientManufacturer';

  /// [role]
  /// The way in which this manufacturer is associated with the ingredient.
  /// For example whether it is a possible one (others allowed), or an
  /// exclusive authorized one for this ingredient. Note that this is not the
  /// manufacturing process role.
  final IngredientManufacturerRole? role;

  /// [manufacturer]
  /// An organization that manufactures this ingredient.
  final Reference manufacturer;
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
      'role',
      role,
    );
    addField(
      'manufacturer',
      manufacturer,
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
      'role',
      'manufacturer',
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
      case 'role':
        if (role != null) {
          fields.add(role!);
        }
      case 'manufacturer':
        fields.add(manufacturer);
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
  IngredientManufacturer clone() => copyWith();

  /// Copy function for [IngredientManufacturer]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $IngredientManufacturerCopyWith<IngredientManufacturer> get copyWith =>
      _$IngredientManufacturerCopyWithImpl<IngredientManufacturer>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! IngredientManufacturer) {
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
      role,
      o.role,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      manufacturer,
      o.manufacturer,
    )) {
      return false;
    }
    return true;
  }
}

/// [IngredientSubstance]
/// The substance that comprises this ingredient.
class IngredientSubstance extends BackboneElement {
  /// Primary constructor for
  /// [IngredientSubstance]

  const IngredientSubstance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.strength,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory IngredientSubstance.fromJson(
    Map<String, dynamic> json,
  ) {
    return IngredientSubstance(
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
      code: JsonParser.parseObject<CodeableReference>(
        json,
        'code',
        CodeableReference.fromJson,
      )!,
      strength: (json['strength'] as List<dynamic>?)
          ?.map<IngredientStrength>(
            (v) => IngredientStrength.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [IngredientSubstance]
  /// from a [String] or [YamlMap] object
  factory IngredientSubstance.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return IngredientSubstance.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return IngredientSubstance.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'IngredientSubstance '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [IngredientSubstance]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory IngredientSubstance.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return IngredientSubstance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'IngredientSubstance';

  /// [code]
  /// A code or full resource that represents the ingredient's substance.
  final CodeableReference code;

  /// [strength]
  /// The quantity of substance in the unit of presentation, or in the volume
  /// (or mass) of the single pharmaceutical product or manufactured item.
  /// The allowed repetitions do not represent different strengths, but are
  /// different representations - mathematically equivalent - of a single
  /// strength.
  final List<IngredientStrength>? strength;
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
      'strength',
      strength,
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
      'strength',
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
        fields.add(code);
      case 'strength':
        if (strength != null) {
          fields.addAll(strength!);
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
  IngredientSubstance clone() => copyWith();

  /// Copy function for [IngredientSubstance]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $IngredientSubstanceCopyWith<IngredientSubstance> get copyWith =>
      _$IngredientSubstanceCopyWithImpl<IngredientSubstance>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! IngredientSubstance) {
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
    if (!listEquals<IngredientStrength>(
      strength,
      o.strength,
    )) {
      return false;
    }
    return true;
  }
}

/// [IngredientStrength]
/// The quantity of substance in the unit of presentation, or in the volume
/// (or mass) of the single pharmaceutical product or manufactured item.
/// The allowed repetitions do not represent different strengths, but are
/// different representations - mathematically equivalent - of a single
/// strength.
class IngredientStrength extends BackboneElement {
  /// Primary constructor for
  /// [IngredientStrength]

  const IngredientStrength({
    super.id,
    super.extension_,
    super.modifierExtension,
    PresentationXIngredientStrength? presentationX,
    Ratio? presentationRatio,
    RatioRange? presentationRatioRange,
    CodeableConcept? presentationCodeableConcept,
    Quantity? presentationQuantity,
    this.textPresentation,
    ConcentrationXIngredientStrength? concentrationX,
    Ratio? concentrationRatio,
    RatioRange? concentrationRatioRange,
    CodeableConcept? concentrationCodeableConcept,
    Quantity? concentrationQuantity,
    this.textConcentration,
    this.basis,
    this.measurementPoint,
    this.country,
    this.referenceStrength,
    super.disallowExtensions,
  })  : presentationX = presentationX ??
            presentationRatio ??
            presentationRatioRange ??
            presentationCodeableConcept ??
            presentationQuantity,
        concentrationX = concentrationX ??
            concentrationRatio ??
            concentrationRatioRange ??
            concentrationCodeableConcept ??
            concentrationQuantity,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory IngredientStrength.fromJson(
    Map<String, dynamic> json,
  ) {
    return IngredientStrength(
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
      presentationX:
          JsonParser.parsePolymorphic<PresentationXIngredientStrength>(
        json,
        {
          'presentationRatio': Ratio.fromJson,
          'presentationRatioRange': RatioRange.fromJson,
          'presentationCodeableConcept': CodeableConcept.fromJson,
          'presentationQuantity': Quantity.fromJson,
        },
      ),
      textPresentation: JsonParser.parsePrimitive<FhirString>(
        json,
        'textPresentation',
        FhirString.fromJson,
      ),
      concentrationX:
          JsonParser.parsePolymorphic<ConcentrationXIngredientStrength>(
        json,
        {
          'concentrationRatio': Ratio.fromJson,
          'concentrationRatioRange': RatioRange.fromJson,
          'concentrationCodeableConcept': CodeableConcept.fromJson,
          'concentrationQuantity': Quantity.fromJson,
        },
      ),
      textConcentration: JsonParser.parsePrimitive<FhirString>(
        json,
        'textConcentration',
        FhirString.fromJson,
      ),
      basis: JsonParser.parseObject<CodeableConcept>(
        json,
        'basis',
        CodeableConcept.fromJson,
      ),
      measurementPoint: JsonParser.parsePrimitive<FhirString>(
        json,
        'measurementPoint',
        FhirString.fromJson,
      ),
      country: (json['country'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      referenceStrength: (json['referenceStrength'] as List<dynamic>?)
          ?.map<IngredientReferenceStrength>(
            (v) => IngredientReferenceStrength.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [IngredientStrength]
  /// from a [String] or [YamlMap] object
  factory IngredientStrength.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return IngredientStrength.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return IngredientStrength.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'IngredientStrength '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [IngredientStrength]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory IngredientStrength.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return IngredientStrength.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'IngredientStrength';

  /// [presentationX]
  /// The quantity of substance in the unit of presentation, or in the volume
  /// (or mass) of the single pharmaceutical product or manufactured item.
  /// Unit of presentation refers to the quantity that the item occurs in
  /// e.g. a strength per tablet size, perhaps 'per 20mg' (the size of the
  /// tablet). It is not generally normalized as a unitary unit, which would
  /// be 'per mg').
  final PresentationXIngredientStrength? presentationX;

  /// Getter for [presentationRatio] as a Ratio
  Ratio? get presentationRatio => presentationX?.isAs<Ratio>();

  /// Getter for [presentationRatioRange] as a RatioRange
  RatioRange? get presentationRatioRange => presentationX?.isAs<RatioRange>();

  /// Getter for [presentationCodeableConcept] as a CodeableConcept
  CodeableConcept? get presentationCodeableConcept =>
      presentationX?.isAs<CodeableConcept>();

  /// Getter for [presentationQuantity] as a Quantity
  Quantity? get presentationQuantity => presentationX?.isAs<Quantity>();

  /// [textPresentation]
  /// A textual represention of either the whole of the presentation strength
  /// or a part of it - with the rest being in Strength.presentation as a
  /// ratio.
  final FhirString? textPresentation;

  /// [concentrationX]
  /// The strength per unitary volume (or mass).
  final ConcentrationXIngredientStrength? concentrationX;

  /// Getter for [concentrationRatio] as a Ratio
  Ratio? get concentrationRatio => concentrationX?.isAs<Ratio>();

  /// Getter for [concentrationRatioRange] as a RatioRange
  RatioRange? get concentrationRatioRange => concentrationX?.isAs<RatioRange>();

  /// Getter for [concentrationCodeableConcept] as a CodeableConcept
  CodeableConcept? get concentrationCodeableConcept =>
      concentrationX?.isAs<CodeableConcept>();

  /// Getter for [concentrationQuantity] as a Quantity
  Quantity? get concentrationQuantity => concentrationX?.isAs<Quantity>();

  /// [textConcentration]
  /// A textual represention of either the whole of the concentration
  /// strength or a part of it - with the rest being in
  /// Strength.concentration as a ratio.
  final FhirString? textConcentration;

  /// [basis]
  /// A code that indicates if the strength is, for example, based on the
  /// ingredient substance as stated or on the substance base (when the
  /// ingredient is a salt).
  final CodeableConcept? basis;

  /// [measurementPoint]
  /// For when strength is measured at a particular point or distance. There
  /// are products where strength is measured at a particular point. For
  /// example, the strength of the ingredient in some inhalers is measured at
  /// a particular position relative to the point of aerosolization.
  final FhirString? measurementPoint;

  /// [country]
  /// The country or countries for which the strength range applies.
  final List<CodeableConcept>? country;

  /// [referenceStrength]
  /// Strength expressed in terms of a reference substance. For when the
  /// ingredient strength is additionally expressed as equivalent to the
  /// strength of some other closely related substance (e.g. salt vs. base).
  /// Reference strength represents the strength (quantitative composition)
  /// of the active moiety of the active substance. There are situations when
  /// the active substance and active moiety are different, therefore both a
  /// strength and a reference strength are needed.
  final List<IngredientReferenceStrength>? referenceStrength;
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
    if (presentationX != null) {
      final fhirType = presentationX!.fhirType;
      addField(
        'presentation${fhirType.capitalize()}',
        presentationX,
      );
    }

    addField(
      'textPresentation',
      textPresentation,
    );
    if (concentrationX != null) {
      final fhirType = concentrationX!.fhirType;
      addField(
        'concentration${fhirType.capitalize()}',
        concentrationX,
      );
    }

    addField(
      'textConcentration',
      textConcentration,
    );
    addField(
      'basis',
      basis,
    );
    addField(
      'measurementPoint',
      measurementPoint,
    );
    addField(
      'country',
      country,
    );
    addField(
      'referenceStrength',
      referenceStrength,
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
      'presentationX',
      'textPresentation',
      'concentrationX',
      'textConcentration',
      'basis',
      'measurementPoint',
      'country',
      'referenceStrength',
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
      case 'presentation':
        fields.add(presentationX!);
      case 'presentationX':
        fields.add(presentationX!);
      case 'presentationRatio':
        if (presentationX is Ratio) {
          fields.add(presentationX!);
        }
      case 'presentationRatioRange':
        if (presentationX is RatioRange) {
          fields.add(presentationX!);
        }
      case 'presentationCodeableConcept':
        if (presentationX is CodeableConcept) {
          fields.add(presentationX!);
        }
      case 'presentationQuantity':
        if (presentationX is Quantity) {
          fields.add(presentationX!);
        }
      case 'textPresentation':
        if (textPresentation != null) {
          fields.add(textPresentation!);
        }
      case 'concentration':
        fields.add(concentrationX!);
      case 'concentrationX':
        fields.add(concentrationX!);
      case 'concentrationRatio':
        if (concentrationX is Ratio) {
          fields.add(concentrationX!);
        }
      case 'concentrationRatioRange':
        if (concentrationX is RatioRange) {
          fields.add(concentrationX!);
        }
      case 'concentrationCodeableConcept':
        if (concentrationX is CodeableConcept) {
          fields.add(concentrationX!);
        }
      case 'concentrationQuantity':
        if (concentrationX is Quantity) {
          fields.add(concentrationX!);
        }
      case 'textConcentration':
        if (textConcentration != null) {
          fields.add(textConcentration!);
        }
      case 'basis':
        if (basis != null) {
          fields.add(basis!);
        }
      case 'measurementPoint':
        if (measurementPoint != null) {
          fields.add(measurementPoint!);
        }
      case 'country':
        if (country != null) {
          fields.addAll(country!);
        }
      case 'referenceStrength':
        if (referenceStrength != null) {
          fields.addAll(referenceStrength!);
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
  IngredientStrength clone() => copyWith();

  /// Copy function for [IngredientStrength]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $IngredientStrengthCopyWith<IngredientStrength> get copyWith =>
      _$IngredientStrengthCopyWithImpl<IngredientStrength>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! IngredientStrength) {
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
      presentationX,
      o.presentationX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      textPresentation,
      o.textPresentation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      concentrationX,
      o.concentrationX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      textConcentration,
      o.textConcentration,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      basis,
      o.basis,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      measurementPoint,
      o.measurementPoint,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      country,
      o.country,
    )) {
      return false;
    }
    if (!listEquals<IngredientReferenceStrength>(
      referenceStrength,
      o.referenceStrength,
    )) {
      return false;
    }
    return true;
  }
}

/// [IngredientReferenceStrength]
/// Strength expressed in terms of a reference substance. For when the
/// ingredient strength is additionally expressed as equivalent to the
/// strength of some other closely related substance (e.g. salt vs. base).
/// Reference strength represents the strength (quantitative composition)
/// of the active moiety of the active substance. There are situations when
/// the active substance and active moiety are different, therefore both a
/// strength and a reference strength are needed.
class IngredientReferenceStrength extends BackboneElement {
  /// Primary constructor for
  /// [IngredientReferenceStrength]

  const IngredientReferenceStrength({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.substance,
    required this.strengthX,
    this.measurementPoint,
    this.country,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory IngredientReferenceStrength.fromJson(
    Map<String, dynamic> json,
  ) {
    return IngredientReferenceStrength(
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
      substance: JsonParser.parseObject<CodeableReference>(
        json,
        'substance',
        CodeableReference.fromJson,
      )!,
      strengthX:
          JsonParser.parsePolymorphic<StrengthXIngredientReferenceStrength>(
        json,
        {
          'strengthRatio': Ratio.fromJson,
          'strengthRatioRange': RatioRange.fromJson,
          'strengthQuantity': Quantity.fromJson,
        },
      )!,
      measurementPoint: JsonParser.parsePrimitive<FhirString>(
        json,
        'measurementPoint',
        FhirString.fromJson,
      ),
      country: (json['country'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [IngredientReferenceStrength]
  /// from a [String] or [YamlMap] object
  factory IngredientReferenceStrength.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return IngredientReferenceStrength.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return IngredientReferenceStrength.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'IngredientReferenceStrength '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [IngredientReferenceStrength]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory IngredientReferenceStrength.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return IngredientReferenceStrength.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'IngredientReferenceStrength';

  /// [substance]
  /// Relevant reference substance.
  final CodeableReference substance;

  /// [strengthX]
  /// Strength expressed in terms of a reference substance.
  final StrengthXIngredientReferenceStrength strengthX;

  /// Getter for [strengthRatio] as a Ratio
  Ratio? get strengthRatio => strengthX.isAs<Ratio>();

  /// Getter for [strengthRatioRange] as a RatioRange
  RatioRange? get strengthRatioRange => strengthX.isAs<RatioRange>();

  /// Getter for [strengthQuantity] as a Quantity
  Quantity? get strengthQuantity => strengthX.isAs<Quantity>();

  /// [measurementPoint]
  /// For when strength is measured at a particular point or distance.
  final FhirString? measurementPoint;

  /// [country]
  /// The country or countries for which the strength range applies.
  final List<CodeableConcept>? country;
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
      'substance',
      substance,
    );
    final strengthXFhirType = strengthX.fhirType;
    addField(
      'strength${strengthXFhirType.capitalize()}',
      strengthX,
    );

    addField(
      'measurementPoint',
      measurementPoint,
    );
    addField(
      'country',
      country,
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
      'substance',
      'strengthX',
      'measurementPoint',
      'country',
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
      case 'substance':
        fields.add(substance);
      case 'strength':
        fields.add(strengthX);
      case 'strengthX':
        fields.add(strengthX);
      case 'strengthRatio':
        if (strengthX is Ratio) {
          fields.add(strengthX);
        }
      case 'strengthRatioRange':
        if (strengthX is RatioRange) {
          fields.add(strengthX);
        }
      case 'strengthQuantity':
        if (strengthX is Quantity) {
          fields.add(strengthX);
        }
      case 'measurementPoint':
        if (measurementPoint != null) {
          fields.add(measurementPoint!);
        }
      case 'country':
        if (country != null) {
          fields.addAll(country!);
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
  IngredientReferenceStrength clone() => copyWith();

  /// Copy function for [IngredientReferenceStrength]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $IngredientReferenceStrengthCopyWith<IngredientReferenceStrength>
      get copyWith => _$IngredientReferenceStrengthCopyWithImpl<
              IngredientReferenceStrength>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! IngredientReferenceStrength) {
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
      substance,
      o.substance,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      strengthX,
      o.strengthX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      measurementPoint,
      o.measurementPoint,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      country,
      o.country,
    )) {
      return false;
    }
    return true;
  }
}
