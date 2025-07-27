import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'inventory_item.g.dart';

/// [InventoryItem]
/// A functional description of an inventory item used in inventory and
/// supply-related workflows.
class InventoryItem extends DomainResource {
  /// Primary constructor for
  /// [InventoryItem]

  const InventoryItem({
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
    this.category,
    this.code,
    this.name,
    this.responsibleOrganization,
    this.description,
    this.inventoryStatus,
    this.baseUnit,
    this.netContent,
    this.association,
    this.characteristic,
    this.instance,
    this.productReference,
  }) : super(
          resourceType: R5ResourceType.InventoryItem,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InventoryItem.fromJson(
    Map<String, dynamic> json,
  ) {
    return InventoryItem(
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
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<InventoryItemStatusCodes>(
        json,
        'status',
        InventoryItemStatusCodes.fromJson,
      )!,
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      code: (json['code'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      name: (json['name'] as List<dynamic>?)
          ?.map<InventoryItemName>(
            (v) => InventoryItemName.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      responsibleOrganization:
          (json['responsibleOrganization'] as List<dynamic>?)
              ?.map<InventoryItemResponsibleOrganization>(
                (v) => InventoryItemResponsibleOrganization.fromJson(
                  {...v as Map<String, dynamic>},
                ),
              )
              .toList(),
      description: JsonParser.parseObject<InventoryItemDescription>(
        json,
        'description',
        InventoryItemDescription.fromJson,
      ),
      inventoryStatus: (json['inventoryStatus'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      baseUnit: JsonParser.parseObject<CodeableConcept>(
        json,
        'baseUnit',
        CodeableConcept.fromJson,
      ),
      netContent: JsonParser.parseObject<Quantity>(
        json,
        'netContent',
        Quantity.fromJson,
      ),
      association: (json['association'] as List<dynamic>?)
          ?.map<InventoryItemAssociation>(
            (v) => InventoryItemAssociation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      characteristic: (json['characteristic'] as List<dynamic>?)
          ?.map<InventoryItemCharacteristic>(
            (v) => InventoryItemCharacteristic.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      instance: JsonParser.parseObject<InventoryItemInstance>(
        json,
        'instance',
        InventoryItemInstance.fromJson,
      ),
      productReference: JsonParser.parseObject<Reference>(
        json,
        'productReference',
        Reference.fromJson,
      ),
    );
  }

  /// Deserialize [InventoryItem]
  /// from a [String] or [YamlMap] object
  factory InventoryItem.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InventoryItem.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InventoryItem.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InventoryItem '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InventoryItem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InventoryItem.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InventoryItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'InventoryItem';

  /// [identifier]
  /// Business identifier for the inventory item.
  final List<Identifier>? identifier;

  /// [status]
  /// Status of the item entry.
  final InventoryItemStatusCodes status;

  /// [category]
  /// Category or class of the item.
  final List<CodeableConcept>? category;

  /// [code]
  /// Code designating the specific type of item.
  final List<CodeableConcept>? code;

  /// [name]
  /// The item name(s) - the brand name, or common name, functional name,
  /// generic name.
  final List<InventoryItemName>? name;

  /// [responsibleOrganization]
  /// Organization(s) responsible for the product.
  final List<InventoryItemResponsibleOrganization>? responsibleOrganization;

  /// [description]
  /// The descriptive characteristics of the inventory item.
  final InventoryItemDescription? description;

  /// [inventoryStatus]
  /// The usage status e.g. recalled, in use, discarded... This can be used
  /// to indicate that the items have been taken out of inventory, or are in
  /// use, etc.
  final List<CodeableConcept>? inventoryStatus;

  /// [baseUnit]
  /// The base unit of measure - the unit in which the product is used or
  /// counted.
  final CodeableConcept? baseUnit;

  /// [netContent]
  /// Net content or amount present in the item.
  final Quantity? netContent;

  /// [association]
  /// Association with other items or products.
  final List<InventoryItemAssociation>? association;

  /// [characteristic]
  /// The descriptive or identifying characteristics of the item.
  final List<InventoryItemCharacteristic>? characteristic;

  /// [instance]
  /// Instances or occurrences of the product.
  final InventoryItemInstance? instance;

  /// [productReference]
  /// Link to a product resource used in clinical workflows.
  final Reference? productReference;
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
      'category',
      category,
    );
    addField(
      'code',
      code,
    );
    addField(
      'name',
      name,
    );
    addField(
      'responsibleOrganization',
      responsibleOrganization,
    );
    addField(
      'description',
      description,
    );
    addField(
      'inventoryStatus',
      inventoryStatus,
    );
    addField(
      'baseUnit',
      baseUnit,
    );
    addField(
      'netContent',
      netContent,
    );
    addField(
      'association',
      association,
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
      'productReference',
      productReference,
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
      'category',
      'code',
      'name',
      'responsibleOrganization',
      'description',
      'inventoryStatus',
      'baseUnit',
      'netContent',
      'association',
      'characteristic',
      'instance',
      'productReference',
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
          fields.addAll(identifier!);
        }
      case 'status':
        fields.add(status);
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'code':
        if (code != null) {
          fields.addAll(code!);
        }
      case 'name':
        if (name != null) {
          fields.addAll(name!);
        }
      case 'responsibleOrganization':
        if (responsibleOrganization != null) {
          fields.addAll(responsibleOrganization!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'inventoryStatus':
        if (inventoryStatus != null) {
          fields.addAll(inventoryStatus!);
        }
      case 'baseUnit':
        if (baseUnit != null) {
          fields.add(baseUnit!);
        }
      case 'netContent':
        if (netContent != null) {
          fields.add(netContent!);
        }
      case 'association':
        if (association != null) {
          fields.addAll(association!);
        }
      case 'characteristic':
        if (characteristic != null) {
          fields.addAll(characteristic!);
        }
      case 'instance':
        if (instance != null) {
          fields.add(instance!);
        }
      case 'productReference':
        if (productReference != null) {
          fields.add(productReference!);
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
  InventoryItem clone() => copyWith();

  /// Copy function for [InventoryItem]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $InventoryItemCopyWith<InventoryItem> get copyWith =>
      _$InventoryItemCopyWithImpl<InventoryItem>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! InventoryItem) {
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
    if (!listEquals<Identifier>(
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
    if (!listEquals<CodeableConcept>(
      category,
      o.category,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      code,
      o.code,
    )) {
      return false;
    }
    if (!listEquals<InventoryItemName>(
      name,
      o.name,
    )) {
      return false;
    }
    if (!listEquals<InventoryItemResponsibleOrganization>(
      responsibleOrganization,
      o.responsibleOrganization,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      inventoryStatus,
      o.inventoryStatus,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      baseUnit,
      o.baseUnit,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      netContent,
      o.netContent,
    )) {
      return false;
    }
    if (!listEquals<InventoryItemAssociation>(
      association,
      o.association,
    )) {
      return false;
    }
    if (!listEquals<InventoryItemCharacteristic>(
      characteristic,
      o.characteristic,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      instance,
      o.instance,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      productReference,
      o.productReference,
    )) {
      return false;
    }
    return true;
  }
}

/// [InventoryItemName]
/// The item name(s) - the brand name, or common name, functional name,
/// generic name.
class InventoryItemName extends BackboneElement {
  /// Primary constructor for
  /// [InventoryItemName]

  const InventoryItemName({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.nameType,
    required this.language,
    required this.name,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InventoryItemName.fromJson(
    Map<String, dynamic> json,
  ) {
    return InventoryItemName(
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
      nameType: JsonParser.parseObject<Coding>(
        json,
        'nameType',
        Coding.fromJson,
      )!,
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      )!,
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      )!,
    );
  }

  /// Deserialize [InventoryItemName]
  /// from a [String] or [YamlMap] object
  factory InventoryItemName.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InventoryItemName.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InventoryItemName.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InventoryItemName '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InventoryItemName]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InventoryItemName.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InventoryItemName.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'InventoryItemName';

  /// [nameType]
  /// The type of name e.g. 'brand-name', 'functional-name', 'common-name'.
  final Coding nameType;

  /// [language]
  /// The language that the item name is expressed in.
  final CommonLanguages language;

  /// [name]
  /// The name or designation that the item is given.
  final FhirString name;
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
      'nameType',
      nameType,
    );
    addField(
      'language',
      language,
    );
    addField(
      'name',
      name,
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
      'nameType',
      'language',
      'name',
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
      case 'nameType':
        fields.add(nameType);
      case 'language':
        fields.add(language);
      case 'name':
        fields.add(name);
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
  InventoryItemName clone() => copyWith();

  /// Copy function for [InventoryItemName]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $InventoryItemNameCopyWith<InventoryItemName> get copyWith =>
      _$InventoryItemNameCopyWithImpl<InventoryItemName>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! InventoryItemName) {
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
      nameType,
      o.nameType,
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
      name,
      o.name,
    )) {
      return false;
    }
    return true;
  }
}

/// [InventoryItemResponsibleOrganization]
/// Organization(s) responsible for the product.
class InventoryItemResponsibleOrganization extends BackboneElement {
  /// Primary constructor for
  /// [InventoryItemResponsibleOrganization]

  const InventoryItemResponsibleOrganization({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.role,
    required this.organization,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InventoryItemResponsibleOrganization.fromJson(
    Map<String, dynamic> json,
  ) {
    return InventoryItemResponsibleOrganization(
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
      role: JsonParser.parseObject<CodeableConcept>(
        json,
        'role',
        CodeableConcept.fromJson,
      )!,
      organization: JsonParser.parseObject<Reference>(
        json,
        'organization',
        Reference.fromJson,
      )!,
    );
  }

  /// Deserialize [InventoryItemResponsibleOrganization]
  /// from a [String] or [YamlMap] object
  factory InventoryItemResponsibleOrganization.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InventoryItemResponsibleOrganization.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InventoryItemResponsibleOrganization.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InventoryItemResponsibleOrganization '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InventoryItemResponsibleOrganization]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InventoryItemResponsibleOrganization.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InventoryItemResponsibleOrganization.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'InventoryItemResponsibleOrganization';

  /// [role]
  /// The role of the organization e.g. manufacturer, distributor, etc.
  final CodeableConcept role;

  /// [organization]
  /// An organization that has an association with the item, e.g.
  /// manufacturer, distributor, responsible, etc.
  final Reference organization;
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
      'organization',
      organization,
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
      'organization',
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
        fields.add(role);
      case 'organization':
        fields.add(organization);
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
  InventoryItemResponsibleOrganization clone() => copyWith();

  /// Copy function for [InventoryItemResponsibleOrganization]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $InventoryItemResponsibleOrganizationCopyWith<
          InventoryItemResponsibleOrganization>
      get copyWith => _$InventoryItemResponsibleOrganizationCopyWithImpl<
              InventoryItemResponsibleOrganization>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! InventoryItemResponsibleOrganization) {
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
      organization,
      o.organization,
    )) {
      return false;
    }
    return true;
  }
}

/// [InventoryItemDescription]
/// The descriptive characteristics of the inventory item.
class InventoryItemDescription extends BackboneElement {
  /// Primary constructor for
  /// [InventoryItemDescription]

  const InventoryItemDescription({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.language,
    this.description,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InventoryItemDescription.fromJson(
    Map<String, dynamic> json,
  ) {
    return InventoryItemDescription(
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
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [InventoryItemDescription]
  /// from a [String] or [YamlMap] object
  factory InventoryItemDescription.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InventoryItemDescription.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InventoryItemDescription.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InventoryItemDescription '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InventoryItemDescription]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InventoryItemDescription.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InventoryItemDescription.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'InventoryItemDescription';

  /// [language]
  /// The language for the item description, when an item must be described
  /// in different languages and those languages may be authoritative and not
  /// translations of a 'main' language.
  final CommonLanguages? language;

  /// [description]
  /// Textual description of the item.
  final FhirString? description;
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
      'language',
      language,
    );
    addField(
      'description',
      description,
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
      'language',
      'description',
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
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
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
  InventoryItemDescription clone() => copyWith();

  /// Copy function for [InventoryItemDescription]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $InventoryItemDescriptionCopyWith<InventoryItemDescription> get copyWith =>
      _$InventoryItemDescriptionCopyWithImpl<InventoryItemDescription>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! InventoryItemDescription) {
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
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    return true;
  }
}

/// [InventoryItemAssociation]
/// Association with other items or products.
class InventoryItemAssociation extends BackboneElement {
  /// Primary constructor for
  /// [InventoryItemAssociation]

  const InventoryItemAssociation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.associationType,
    required this.relatedItem,
    required this.quantity,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InventoryItemAssociation.fromJson(
    Map<String, dynamic> json,
  ) {
    return InventoryItemAssociation(
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
      associationType: JsonParser.parseObject<CodeableConcept>(
        json,
        'associationType',
        CodeableConcept.fromJson,
      )!,
      relatedItem: JsonParser.parseObject<Reference>(
        json,
        'relatedItem',
        Reference.fromJson,
      )!,
      quantity: JsonParser.parseObject<Ratio>(
        json,
        'quantity',
        Ratio.fromJson,
      )!,
    );
  }

  /// Deserialize [InventoryItemAssociation]
  /// from a [String] or [YamlMap] object
  factory InventoryItemAssociation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InventoryItemAssociation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InventoryItemAssociation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InventoryItemAssociation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InventoryItemAssociation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InventoryItemAssociation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InventoryItemAssociation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'InventoryItemAssociation';

  /// [associationType]
  /// This attribute defined the type of association when establishing
  /// associations or relations between items, e.g. 'packaged within' or
  /// 'used with' or 'to be mixed with.
  final CodeableConcept associationType;

  /// [relatedItem]
  /// The related item or product.
  final Reference relatedItem;

  /// [quantity]
  /// The quantity of the related product in this product - Numerator is the
  /// quantity of the related product. Denominator is the quantity of the
  /// present product. For example a value of 20 means that this product
  /// contains 20 units of the related product; a value of 1:20 means the
  /// inverse - that the contained product contains 20 units of the present
  /// product.
  final Ratio quantity;
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
      'associationType',
      associationType,
    );
    addField(
      'relatedItem',
      relatedItem,
    );
    addField(
      'quantity',
      quantity,
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
      'associationType',
      'relatedItem',
      'quantity',
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
      case 'associationType':
        fields.add(associationType);
      case 'relatedItem':
        fields.add(relatedItem);
      case 'quantity':
        fields.add(quantity);
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
  InventoryItemAssociation clone() => copyWith();

  /// Copy function for [InventoryItemAssociation]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $InventoryItemAssociationCopyWith<InventoryItemAssociation> get copyWith =>
      _$InventoryItemAssociationCopyWithImpl<InventoryItemAssociation>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! InventoryItemAssociation) {
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
      associationType,
      o.associationType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      relatedItem,
      o.relatedItem,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    return true;
  }
}

/// [InventoryItemCharacteristic]
/// The descriptive or identifying characteristics of the item.
class InventoryItemCharacteristic extends BackboneElement {
  /// Primary constructor for
  /// [InventoryItemCharacteristic]

  const InventoryItemCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.characteristicType,
    required this.valueX,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InventoryItemCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) {
    return InventoryItemCharacteristic(
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
      characteristicType: JsonParser.parseObject<CodeableConcept>(
        json,
        'characteristicType',
        CodeableConcept.fromJson,
      )!,
      valueX: JsonParser.parsePolymorphic<ValueXInventoryItemCharacteristic>(
        json,
        {
          'valueString': FhirString.fromJson,
          'valueInteger': FhirInteger.fromJson,
          'valueDecimal': FhirDecimal.fromJson,
          'valueBoolean': FhirBoolean.fromJson,
          'valueUrl': FhirUrl.fromJson,
          'valueDateTime': FhirDateTime.fromJson,
          'valueQuantity': Quantity.fromJson,
          'valueRange': Range.fromJson,
          'valueRatio': Ratio.fromJson,
          'valueAnnotation': Annotation.fromJson,
          'valueAddress': Address.fromJson,
          'valueDuration': FhirDuration.fromJson,
          'valueCodeableConcept': CodeableConcept.fromJson,
        },
      )!,
    );
  }

  /// Deserialize [InventoryItemCharacteristic]
  /// from a [String] or [YamlMap] object
  factory InventoryItemCharacteristic.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InventoryItemCharacteristic.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InventoryItemCharacteristic.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InventoryItemCharacteristic '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InventoryItemCharacteristic]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InventoryItemCharacteristic.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InventoryItemCharacteristic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'InventoryItemCharacteristic';

  /// [characteristicType]
  /// The type of characteristic that is being defined.
  final CodeableConcept characteristicType;

  /// [valueX]
  /// The value of the attribute.
  final ValueXInventoryItemCharacteristic valueX;

  /// Getter for [valueString] as a FhirString
  FhirString? get valueString => valueX.isAs<FhirString>();

  /// Getter for [valueInteger] as a FhirInteger
  FhirInteger? get valueInteger => valueX.isAs<FhirInteger>();

  /// Getter for [valueDecimal] as a FhirDecimal
  FhirDecimal? get valueDecimal => valueX.isAs<FhirDecimal>();

  /// Getter for [valueBoolean] as a FhirBoolean
  FhirBoolean? get valueBoolean => valueX.isAs<FhirBoolean>();

  /// Getter for [valueUrl] as a FhirUrl
  FhirUrl? get valueUrl => valueX.isAs<FhirUrl>();

  /// Getter for [valueDateTime] as a FhirDateTime
  FhirDateTime? get valueDateTime => valueX.isAs<FhirDateTime>();

  /// Getter for [valueQuantity] as a Quantity
  Quantity? get valueQuantity => valueX.isAs<Quantity>();

  /// Getter for [valueRange] as a Range
  Range? get valueRange => valueX.isAs<Range>();

  /// Getter for [valueRatio] as a Ratio
  Ratio? get valueRatio => valueX.isAs<Ratio>();

  /// Getter for [valueAnnotation] as a Annotation
  Annotation? get valueAnnotation => valueX.isAs<Annotation>();

  /// Getter for [valueAddress] as a Address
  Address? get valueAddress => valueX.isAs<Address>();

  /// Getter for [valueDuration] as a FhirDuration
  FhirDuration? get valueDuration => valueX.isAs<FhirDuration>();

  /// Getter for [valueCodeableConcept] as a CodeableConcept
  CodeableConcept? get valueCodeableConcept => valueX.isAs<CodeableConcept>();
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
      'characteristicType',
      characteristicType,
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
      'characteristicType',
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
      case 'characteristicType':
        fields.add(characteristicType);
      case 'value':
        fields.add(valueX);
      case 'valueX':
        fields.add(valueX);
      case 'valueString':
        if (valueX is FhirString) {
          fields.add(valueX);
        }
      case 'valueInteger':
        if (valueX is FhirInteger) {
          fields.add(valueX);
        }
      case 'valueDecimal':
        if (valueX is FhirDecimal) {
          fields.add(valueX);
        }
      case 'valueBoolean':
        if (valueX is FhirBoolean) {
          fields.add(valueX);
        }
      case 'valueUrl':
        if (valueX is FhirUrl) {
          fields.add(valueX);
        }
      case 'valueDateTime':
        if (valueX is FhirDateTime) {
          fields.add(valueX);
        }
      case 'valueQuantity':
        if (valueX is Quantity) {
          fields.add(valueX);
        }
      case 'valueRange':
        if (valueX is Range) {
          fields.add(valueX);
        }
      case 'valueRatio':
        if (valueX is Ratio) {
          fields.add(valueX);
        }
      case 'valueAnnotation':
        if (valueX is Annotation) {
          fields.add(valueX);
        }
      case 'valueAddress':
        if (valueX is Address) {
          fields.add(valueX);
        }
      case 'valueDuration':
        if (valueX is FhirDuration) {
          fields.add(valueX);
        }
      case 'valueCodeableConcept':
        if (valueX is CodeableConcept) {
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
  InventoryItemCharacteristic clone() => copyWith();

  /// Copy function for [InventoryItemCharacteristic]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $InventoryItemCharacteristicCopyWith<InventoryItemCharacteristic>
      get copyWith => _$InventoryItemCharacteristicCopyWithImpl<
              InventoryItemCharacteristic>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! InventoryItemCharacteristic) {
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
      characteristicType,
      o.characteristicType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      valueX,
      o.valueX,
    )) {
      return false;
    }
    return true;
  }
}

/// [InventoryItemInstance]
/// Instances or occurrences of the product.
class InventoryItemInstance extends BackboneElement {
  /// Primary constructor for
  /// [InventoryItemInstance]

  const InventoryItemInstance({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.lotNumber,
    this.expiry,
    this.subject,
    this.location,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InventoryItemInstance.fromJson(
    Map<String, dynamic> json,
  ) {
    return InventoryItemInstance(
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
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
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
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
      ),
      location: JsonParser.parseObject<Reference>(
        json,
        'location',
        Reference.fromJson,
      ),
    );
  }

  /// Deserialize [InventoryItemInstance]
  /// from a [String] or [YamlMap] object
  factory InventoryItemInstance.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InventoryItemInstance.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InventoryItemInstance.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InventoryItemInstance '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InventoryItemInstance]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InventoryItemInstance.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InventoryItemInstance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'InventoryItemInstance';

  /// [identifier]
  /// The identifier for the physical instance, typically a serial number.
  final List<Identifier>? identifier;

  /// [lotNumber]
  /// The lot or batch number of the item.
  final FhirString? lotNumber;

  /// [expiry]
  /// The expiry date or date and time for the product.
  final FhirDateTime? expiry;

  /// [subject]
  /// The subject that the item is associated with.
  final Reference? subject;

  /// [location]
  /// The location that the item is associated with.
  final Reference? location;
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
      'identifier',
      identifier,
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
      'subject',
      subject,
    );
    addField(
      'location',
      location,
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
      'identifier',
      'lotNumber',
      'expiry',
      'subject',
      'location',
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
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'lotNumber':
        if (lotNumber != null) {
          fields.add(lotNumber!);
        }
      case 'expiry':
        if (expiry != null) {
          fields.add(expiry!);
        }
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'location':
        if (location != null) {
          fields.add(location!);
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
  InventoryItemInstance clone() => copyWith();

  /// Copy function for [InventoryItemInstance]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $InventoryItemInstanceCopyWith<InventoryItemInstance> get copyWith =>
      _$InventoryItemInstanceCopyWithImpl<InventoryItemInstance>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! InventoryItemInstance) {
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
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      lotNumber,
      o.lotNumber,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      expiry,
      o.expiry,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      subject,
      o.subject,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      location,
      o.location,
    )) {
      return false;
    }
    return true;
  }
}
