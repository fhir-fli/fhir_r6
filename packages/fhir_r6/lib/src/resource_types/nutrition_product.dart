import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'nutrition_product.g.dart';

/// [NutritionProduct]
/// A food or supplement that is consumed by patients.
class NutritionProduct extends DomainResource {
  /// Primary constructor for
  /// [NutritionProduct]

  const NutritionProduct({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.code,
    required this.status,
    this.category,
    this.manufacturer,
    this.nutrient,
    this.ingredientSummary,
    this.ingredient,
    this.energy,
    this.characteristic,
    this.instance,
    this.note,
  }) : super(
          resourceType: R6ResourceType.NutritionProduct,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionProduct.fromJson(
    Map<String, dynamic> json,
  ) {
    return NutritionProduct(
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
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      ),
      status: JsonParser.parsePrimitive<NutritionProductStatus>(
        json,
        'status',
        NutritionProductStatus.fromJson,
      )!,
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      manufacturer: (json['manufacturer'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      nutrient: (json['nutrient'] as List<dynamic>?)
          ?.map<NutritionProductNutrient>(
            (v) => NutritionProductNutrient.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      ingredientSummary: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'ingredientSummary',
        FhirMarkdown.fromJson,
      ),
      ingredient: (json['ingredient'] as List<dynamic>?)
          ?.map<NutritionProductIngredient>(
            (v) => NutritionProductIngredient.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      energy: JsonParser.parseObject<Quantity>(
        json,
        'energy',
        Quantity.fromJson,
      ),
      characteristic: (json['characteristic'] as List<dynamic>?)
          ?.map<NutritionProductCharacteristic>(
            (v) => NutritionProductCharacteristic.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      instance: (json['instance'] as List<dynamic>?)
          ?.map<NutritionProductInstance>(
            (v) => NutritionProductInstance.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [NutritionProduct]
  /// from a [String] or [YamlMap] object
  factory NutritionProduct.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionProduct.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionProduct.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionProduct '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionProduct]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionProduct.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return NutritionProduct.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'NutritionProduct';

  /// [code]
  /// A code that specifies the product or a textual description if no code
  /// is available. This could be such codes as a USDA Branded Food Products
  /// Database number, a USDA Food Data Central (FDC) ID number, Universal
  /// Product Code (UPC), a Langual code, or a country specific food database
  /// code.
  final CodeableConcept? code;

  /// [status]
  /// The current state of the product.
  final NutritionProductStatus status;

  /// [category]
  /// Nutrition products fall into various categories based on their
  /// composition (e.g., Fruit and Grain, Vegetables) or form (e.g.,
  /// Beverages).
  final List<CodeableConcept>? category;

  /// [manufacturer]
  /// The organisation (manufacturer, representative or legal authorization
  /// holder) or person that is responsible for nutrition product.
  final List<Reference>? manufacturer;

  /// [nutrient]
  /// The product's nutritional information expressed by the nutrients.
  final List<NutritionProductNutrient>? nutrient;

  /// [ingredientSummary]
  /// The textual description of the ingredients in the product. For example,
  /// the following is a concatenated list of the ingredients for a peanut
  /// butter would read 'ROASTED PEANUTS, SUGAR, HYDROGENATED VEGETABLE OIL
  /// (COTTONSEED, SOYBEAN AND RAPESEED OIL) TO PREVENT SEPARATION, SALT'.
  final FhirMarkdown? ingredientSummary;

  /// [ingredient]
  /// Ingredients contained in this product.
  final List<NutritionProductIngredient>? ingredient;

  /// [energy]
  /// The amount of energy present in the product expressed in kilocalories
  /// or kilojoules.
  final Quantity? energy;

  /// [characteristic]
  /// Specifies descriptive properties of the nutrition product.
  final List<NutritionProductCharacteristic>? characteristic;

  /// [instance]
  /// Conveys instance-level information about this product item. One or
  /// several physical, countable instances or occurrences of the product.
  final List<NutritionProductInstance>? instance;

  /// [note]
  /// Comments made about the product.
  final List<Annotation>? note;
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
      'code',
      code,
    );
    addField(
      'status',
      status,
    );
    addField(
      'category',
      category,
    );
    addField(
      'manufacturer',
      manufacturer,
    );
    addField(
      'nutrient',
      nutrient,
    );
    addField(
      'ingredientSummary',
      ingredientSummary,
    );
    addField(
      'ingredient',
      ingredient,
    );
    addField(
      'energy',
      energy,
    );
    addField(
      'characteristic',
      characteristic,
    );
    addField(
      'instance',
      instance,
    );
    addField(
      'note',
      note,
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
      'code',
      'status',
      'category',
      'manufacturer',
      'nutrient',
      'ingredientSummary',
      'ingredient',
      'energy',
      'characteristic',
      'instance',
      'note',
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
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'status':
        fields.add(status);
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'manufacturer':
        if (manufacturer != null) {
          fields.addAll(manufacturer!);
        }
      case 'nutrient':
        if (nutrient != null) {
          fields.addAll(nutrient!);
        }
      case 'ingredientSummary':
        if (ingredientSummary != null) {
          fields.add(ingredientSummary!);
        }
      case 'ingredient':
        if (ingredient != null) {
          fields.addAll(ingredient!);
        }
      case 'energy':
        if (energy != null) {
          fields.add(energy!);
        }
      case 'characteristic':
        if (characteristic != null) {
          fields.addAll(characteristic!);
        }
      case 'instance':
        if (instance != null) {
          fields.addAll(instance!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
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
  NutritionProduct clone() => copyWith();

  /// Copy function for [NutritionProduct]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $NutritionProductCopyWith<NutritionProduct> get copyWith =>
      _$NutritionProductCopyWithImpl<NutritionProduct>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! NutritionProduct) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      category,
      o.category,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Reference>(
      manufacturer,
      o.manufacturer,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<NutritionProductNutrient>(
      nutrient,
      o.nutrient,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      ingredientSummary,
      o.ingredientSummary,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<NutritionProductIngredient>(
      ingredient,
      o.ingredient,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      energy,
      o.energy,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<NutritionProductCharacteristic>(
      characteristic,
      o.characteristic,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<NutritionProductInstance>(
      instance,
      o.instance,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    return true;
  }
}

/// [NutritionProductNutrient]
/// The product's nutritional information expressed by the nutrients.
class NutritionProductNutrient extends BackboneElement {
  /// Primary constructor for
  /// [NutritionProductNutrient]

  const NutritionProductNutrient({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.item,
    AmountXNutritionProductNutrient? amountX,
    Ratio? amountRatio,
    Quantity? amountQuantity,
    super.disallowExtensions,
  })  : amountX = amountX ?? amountRatio ?? amountQuantity,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionProductNutrient.fromJson(
    Map<String, dynamic> json,
  ) {
    return NutritionProductNutrient(
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
      item: JsonParser.parseObject<CodeableReference>(
        json,
        'item',
        CodeableReference.fromJson,
      )!,
      amountX: JsonParser.parsePolymorphic<AmountXNutritionProductNutrient>(
        json,
        {
          'amountRatio': Ratio.fromJson,
          'amountQuantity': Quantity.fromJson,
        },
      ),
    );
  }

  /// Deserialize [NutritionProductNutrient]
  /// from a [String] or [YamlMap] object
  factory NutritionProductNutrient.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionProductNutrient.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionProductNutrient.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionProductNutrient '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionProductNutrient]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionProductNutrient.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return NutritionProductNutrient.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'NutritionProductNutrient';

  /// [item]
  /// The (relevant) nutrients in the product.
  final CodeableReference item;

  /// [amountX]
  /// The amount of nutrient expressed in one or more units, either X per
  /// pack / per serving / per dose or X amount.
  final AmountXNutritionProductNutrient? amountX;

  /// Getter for [amountRatio] as a Ratio
  Ratio? get amountRatio => amountX?.isAs<Ratio>();

  /// Getter for [amountQuantity] as a Quantity
  Quantity? get amountQuantity => amountX?.isAs<Quantity>();
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
      'item',
      item,
    );
    if (amountX != null) {
      final fhirType = amountX!.fhirType;
      addField(
        'amount${fhirType.capitalize()}',
        amountX,
      );
    }

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'item',
      'amountX',
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
      case 'item':
        fields.add(item);
      case 'amount':
        if (amountX != null) {
          fields.add(amountX!);
        }
      case 'amountX':
        if (amountX != null) {
          fields.add(amountX!);
        }
      case 'amountRatio':
        if (amountX is Ratio) {
          fields.add(amountX!);
        }
      case 'amountQuantity':
        if (amountX is Quantity) {
          fields.add(amountX!);
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
  NutritionProductNutrient clone() => copyWith();

  /// Copy function for [NutritionProductNutrient]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $NutritionProductNutrientCopyWith<NutritionProductNutrient> get copyWith =>
      _$NutritionProductNutrientCopyWithImpl<NutritionProductNutrient>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! NutritionProductNutrient) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      item,
      o.item,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      amountX,
      o.amountX,
    )) {
      return false;
    }
    return true;
  }
}

/// [NutritionProductIngredient]
/// Ingredients contained in this product.
class NutritionProductIngredient extends BackboneElement {
  /// Primary constructor for
  /// [NutritionProductIngredient]

  const NutritionProductIngredient({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.item,
    AmountXNutritionProductIngredient? amountX,
    Ratio? amountRatio,
    Quantity? amountQuantity,
    this.allergen,
    super.disallowExtensions,
  })  : amountX = amountX ?? amountRatio ?? amountQuantity,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionProductIngredient.fromJson(
    Map<String, dynamic> json,
  ) {
    return NutritionProductIngredient(
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
      item: JsonParser.parseObject<CodeableReference>(
        json,
        'item',
        CodeableReference.fromJson,
      )!,
      amountX: JsonParser.parsePolymorphic<AmountXNutritionProductIngredient>(
        json,
        {
          'amountRatio': Ratio.fromJson,
          'amountQuantity': Quantity.fromJson,
        },
      ),
      allergen: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'allergen',
        FhirBoolean.fromJson,
      ),
    );
  }

  /// Deserialize [NutritionProductIngredient]
  /// from a [String] or [YamlMap] object
  factory NutritionProductIngredient.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionProductIngredient.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionProductIngredient.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionProductIngredient '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionProductIngredient]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionProductIngredient.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return NutritionProductIngredient.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'NutritionProductIngredient';

  /// [item]
  /// The ingredient contained in the product.
  final CodeableReference item;

  /// [amountX]
  /// The amount of ingredient that is in the product.
  final AmountXNutritionProductIngredient? amountX;

  /// Getter for [amountRatio] as a Ratio
  Ratio? get amountRatio => amountX?.isAs<Ratio>();

  /// Getter for [amountQuantity] as a Quantity
  Quantity? get amountQuantity => amountX?.isAs<Quantity>();

  /// [allergen]
  /// A known or suspected allergenic and/or substance that is associated
  /// with an intolerance.
  final FhirBoolean? allergen;
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
      'item',
      item,
    );
    if (amountX != null) {
      final fhirType = amountX!.fhirType;
      addField(
        'amount${fhirType.capitalize()}',
        amountX,
      );
    }

    addField(
      'allergen',
      allergen,
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
      'item',
      'amountX',
      'allergen',
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
      case 'item':
        fields.add(item);
      case 'amount':
        if (amountX != null) {
          fields.add(amountX!);
        }
      case 'amountX':
        if (amountX != null) {
          fields.add(amountX!);
        }
      case 'amountRatio':
        if (amountX is Ratio) {
          fields.add(amountX!);
        }
      case 'amountQuantity':
        if (amountX is Quantity) {
          fields.add(amountX!);
        }
      case 'allergen':
        if (allergen != null) {
          fields.add(allergen!);
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
  NutritionProductIngredient clone() => copyWith();

  /// Copy function for [NutritionProductIngredient]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $NutritionProductIngredientCopyWith<NutritionProductIngredient>
      get copyWith =>
          _$NutritionProductIngredientCopyWithImpl<NutritionProductIngredient>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! NutritionProductIngredient) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      item,
      o.item,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      amountX,
      o.amountX,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      allergen,
      o.allergen,
    )) {
      return false;
    }
    return true;
  }
}

/// [NutritionProductCharacteristic]
/// Specifies descriptive properties of the nutrition product.
class NutritionProductCharacteristic extends BackboneElement {
  /// Primary constructor for
  /// [NutritionProductCharacteristic]

  const NutritionProductCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.valueX,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionProductCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) {
    return NutritionProductCharacteristic(
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
      )!,
      valueX: JsonParser.parsePolymorphic<ValueXNutritionProductCharacteristic>(
        json,
        {
          'valueCodeableConcept': CodeableConcept.fromJson,
          'valueString': FhirString.fromJson,
          'valueQuantity': Quantity.fromJson,
          'valueBase64Binary': FhirBase64Binary.fromJson,
          'valueAttachment': Attachment.fromJson,
          'valueBoolean': FhirBoolean.fromJson,
        },
      )!,
    );
  }

  /// Deserialize [NutritionProductCharacteristic]
  /// from a [String] or [YamlMap] object
  factory NutritionProductCharacteristic.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionProductCharacteristic.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionProductCharacteristic.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionProductCharacteristic '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionProductCharacteristic]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionProductCharacteristic.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return NutritionProductCharacteristic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'NutritionProductCharacteristic';

  /// [type]
  /// A code specifying which characteristic of the product is being
  /// described (for example, colour, shape).
  final CodeableConcept type;

  /// [valueX]
  /// The actual characteristic value corresponding to the type.
  final ValueXNutritionProductCharacteristic valueX;

  /// Getter for [valueCodeableConcept] as a CodeableConcept
  CodeableConcept? get valueCodeableConcept => valueX.isAs<CodeableConcept>();

  /// Getter for [valueString] as a FhirString
  FhirString? get valueString => valueX.isAs<FhirString>();

  /// Getter for [valueQuantity] as a Quantity
  Quantity? get valueQuantity => valueX.isAs<Quantity>();

  /// Getter for [valueBase64Binary] as a FhirBase64Binary
  FhirBase64Binary? get valueBase64Binary => valueX.isAs<FhirBase64Binary>();

  /// Getter for [valueAttachment] as a Attachment
  Attachment? get valueAttachment => valueX.isAs<Attachment>();

  /// Getter for [valueBoolean] as a FhirBoolean
  FhirBoolean? get valueBoolean => valueX.isAs<FhirBoolean>();
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
    final valueXFhirType = valueX.fhirType;
    addField(
      'value${valueXFhirType.capitalize()}',
      valueX,
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
      'valueX',
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
        fields.add(type);
      case 'value':
        fields.add(valueX);
      case 'valueX':
        fields.add(valueX);
      case 'valueCodeableConcept':
        if (valueX is CodeableConcept) {
          fields.add(valueX);
        }
      case 'valueString':
        if (valueX is FhirString) {
          fields.add(valueX);
        }
      case 'valueQuantity':
        if (valueX is Quantity) {
          fields.add(valueX);
        }
      case 'valueBase64Binary':
        if (valueX is FhirBase64Binary) {
          fields.add(valueX);
        }
      case 'valueAttachment':
        if (valueX is Attachment) {
          fields.add(valueX);
        }
      case 'valueBoolean':
        if (valueX is FhirBoolean) {
          fields.add(valueX);
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
  NutritionProductCharacteristic clone() => copyWith();

  /// Copy function for [NutritionProductCharacteristic]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $NutritionProductCharacteristicCopyWith<NutritionProductCharacteristic>
      get copyWith => _$NutritionProductCharacteristicCopyWithImpl<
              NutritionProductCharacteristic>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! NutritionProductCharacteristic) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      valueX,
      o.valueX,
    )) {
      return false;
    }
    return true;
  }
}

/// [NutritionProductInstance]
/// Conveys instance-level information about this product item. One or
/// several physical, countable instances or occurrences of the product.
class NutritionProductInstance extends BackboneElement {
  /// Primary constructor for
  /// [NutritionProductInstance]

  const NutritionProductInstance({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.quantity,
    this.identifier,
    this.name,
    this.lotNumber,
    this.expiry,
    this.useBy,
    this.biologicalSourceEvent,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionProductInstance.fromJson(
    Map<String, dynamic> json,
  ) {
    return NutritionProductInstance(
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
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
      ),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      ),
      lotNumber: JsonParser.parsePrimitive<FhirString>(
        json,
        'lotNumber',
        FhirString.fromJson,
      ),
      expiry: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'expiry',
        FhirDateTime.fromJson,
      ),
      useBy: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'useBy',
        FhirDateTime.fromJson,
      ),
      biologicalSourceEvent: JsonParser.parseObject<Identifier>(
        json,
        'biologicalSourceEvent',
        Identifier.fromJson,
      ),
    );
  }

  /// Deserialize [NutritionProductInstance]
  /// from a [String] or [YamlMap] object
  factory NutritionProductInstance.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionProductInstance.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionProductInstance.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionProductInstance '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionProductInstance]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionProductInstance.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return NutritionProductInstance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'NutritionProductInstance';

  /// [quantity]
  /// The amount of items or instances that the resource considers, for
  /// instance when referring to 2 identical units together.
  final Quantity? quantity;

  /// [identifier]
  /// The identifier for the physical instance, typically a serial number or
  /// manufacturer number.
  final List<Identifier>? identifier;

  /// [name]
  /// The name or brand for the specific product.
  final FhirString? name;

  /// [lotNumber]
  /// The identification of the batch or lot of the product.
  final FhirString? lotNumber;

  /// [expiry]
  /// The time after which the product is no longer expected to be in proper
  /// condition, or its use is not advised or not allowed.
  final FhirDateTime? expiry;

  /// [useBy]
  /// The time after which the product is no longer expected to be in proper
  /// condition, or its use is not advised or not allowed.
  final FhirDateTime? useBy;

  /// [biologicalSourceEvent]
  /// An identifier of the donation, collection, or pooling event from which
  /// biological material in this nutrition product was derived.
  final Identifier? biologicalSourceEvent;
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
      'quantity',
      quantity,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'name',
      name,
    );
    addField(
      'lotNumber',
      lotNumber,
    );
    addField(
      'expiry',
      expiry,
    );
    addField(
      'useBy',
      useBy,
    );
    addField(
      'biologicalSourceEvent',
      biologicalSourceEvent,
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
      'quantity',
      'identifier',
      'name',
      'lotNumber',
      'expiry',
      'useBy',
      'biologicalSourceEvent',
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
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'lotNumber':
        if (lotNumber != null) {
          fields.add(lotNumber!);
        }
      case 'expiry':
        if (expiry != null) {
          fields.add(expiry!);
        }
      case 'useBy':
        if (useBy != null) {
          fields.add(useBy!);
        }
      case 'biologicalSourceEvent':
        if (biologicalSourceEvent != null) {
          fields.add(biologicalSourceEvent!);
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
  NutritionProductInstance clone() => copyWith();

  /// Copy function for [NutritionProductInstance]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $NutritionProductInstanceCopyWith<NutritionProductInstance> get copyWith =>
      _$NutritionProductInstanceCopyWithImpl<NutritionProductInstance>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! NutritionProductInstance) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      lotNumber,
      o.lotNumber,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      expiry,
      o.expiry,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      useBy,
      o.useBy,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      biologicalSourceEvent,
      o.biologicalSourceEvent,
    )) {
      return false;
    }
    return true;
  }
}
