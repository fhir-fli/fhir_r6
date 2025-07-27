// ignore_for_file: lines_longer_than_80_chars

import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'packaged_product_definition.g.dart';

/// [PackagedProductDefinition]
/// A medically related item or items, in a container or package.
class PackagedProductDefinition extends DomainResource {
  /// Primary constructor for
  /// [PackagedProductDefinition]

  const PackagedProductDefinition({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.name,
    this.type,
    this.packageFor,
    this.status,
    this.statusDate,
    this.containedItemQuantity,
    this.description,
    this.legalStatusOfSupply,
    this.marketingStatus,
    this.copackagedIndicator,
    this.manufacturer,
    this.attachedDocument,
    this.packaging,
    this.characteristic,
  }) : super(
          resourceType: R5ResourceType.PackagedProductDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PackagedProductDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    return PackagedProductDefinition(
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
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      packageFor: (json['packageFor'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      status: JsonParser.parseObject<CodeableConcept>(
        json,
        'status',
        CodeableConcept.fromJson,
      ),
      statusDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'statusDate',
        FhirDateTime.fromJson,
      ),
      containedItemQuantity: (json['containedItemQuantity'] as List<dynamic>?)
          ?.map<Quantity>(
            (v) => Quantity.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      legalStatusOfSupply: (json['legalStatusOfSupply'] as List<dynamic>?)
          ?.map<PackagedProductDefinitionLegalStatusOfSupply>(
            (v) => PackagedProductDefinitionLegalStatusOfSupply.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      marketingStatus: (json['marketingStatus'] as List<dynamic>?)
          ?.map<MarketingStatus>(
            (v) => MarketingStatus.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      copackagedIndicator: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'copackagedIndicator',
        FhirBoolean.fromJson,
      ),
      manufacturer: (json['manufacturer'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      attachedDocument: (json['attachedDocument'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      packaging: JsonParser.parseObject<PackagedProductDefinitionPackaging>(
        json,
        'packaging',
        PackagedProductDefinitionPackaging.fromJson,
      ),
      characteristic: (json['characteristic'] as List<dynamic>?)
          ?.map<PackagedProductDefinitionProperty>(
            (v) => PackagedProductDefinitionProperty.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [PackagedProductDefinition]
  /// from a [String] or [YamlMap] object
  factory PackagedProductDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PackagedProductDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PackagedProductDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PackagedProductDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PackagedProductDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PackagedProductDefinition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PackagedProductDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'PackagedProductDefinition';

  /// [identifier]
  /// A unique identifier for this package as whole - not the the content of
  /// the package. Unique instance identifiers assigned to a package by
  /// manufacturers, regulators, drug catalogue custodians or other
  /// organizations.
  final List<Identifier>? identifier;

  /// [name]
  /// A name for this package. Typically what it would be listed as in a drug
  /// formulary or catalogue, inventory etc.
  final FhirString? name;

  /// [type]
  /// A high level category e.g. medicinal product, raw material,
  /// shipping/transport container, etc.
  final CodeableConcept? type;

  /// [packageFor]
  /// The product this package model relates to, not the contents of the
  /// package (for which see package.containedItem).
  final List<Reference>? packageFor;

  /// [status]
  /// The status within the lifecycle of this item. A high level status, this
  /// is not intended to duplicate details carried elsewhere such as legal
  /// status, or authorization or marketing status.
  final CodeableConcept? status;

  /// [statusDate]
  /// The date at which the given status became applicable.
  final FhirDateTime? statusDate;

  /// [containedItemQuantity]
  /// A total of the complete count of contained items of a particular
  /// type/form, independent of sub-packaging or organization. This can be
  /// considered as the pack size. This attribute differs from
  /// containedItem.amount in that it can give a single aggregated count of
  /// all tablet types in a pack, even when these are different manufactured
  /// items. For example a pill pack of 21 tablets plus 7 sugar tablets, can
  /// be denoted here as '28 tablets'. This attribute is repeatable so that
  /// the different item types in one pack type can be counted (e.g. a count
  /// of vials and count of syringes). Each repeat must have different units,
  /// so that it is clear what the different sets of counted items are, and
  /// it is not intended to allow different counts of similar items (e.g. not
  /// '2 tubes and 3 tubes'). Repeats are not to be used to represent
  /// different pack sizes (e.g. 20 pack vs. 50 pack) - which would be
  /// different instances of this resource.
  final List<Quantity>? containedItemQuantity;

  /// [description]
  /// Textual description. Note that this is not the name of the package or
  /// product.
  final FhirMarkdown? description;

  /// [legalStatusOfSupply]
  /// The legal status of supply of the packaged item as classified by the
  /// regulator.
  final List<PackagedProductDefinitionLegalStatusOfSupply>? legalStatusOfSupply;

  /// [marketingStatus]
  /// Allows specifying that an item is on the market for sale, or that it is
  /// not available, and the dates and locations associated.
  final List<MarketingStatus>? marketingStatus;

  /// [copackagedIndicator]
  /// Identifies if the package contains different items, such as when a drug
  /// product is supplied with another item e.g. a diluent or adjuvant.
  final FhirBoolean? copackagedIndicator;

  /// [manufacturer]
  /// Manufacturer of this package type. When there are multiple it means
  /// these are all possible manufacturers.
  final List<Reference>? manufacturer;

  /// [attachedDocument]
  /// Additional information or supporting documentation about the packaged
  /// product.
  final List<Reference>? attachedDocument;

  /// [packaging]
  /// A packaging item, as a container for medically related items, possibly
  /// with other packaging items within, or a packaging component, such as
  /// bottle cap (which is not a device or a medication manufactured item).
  final PackagedProductDefinitionPackaging? packaging;

  /// [characteristic]
  /// Allows the key features to be recorded, such as "hospital pack", "nurse
  /// prescribable", "calendar pack".
  final List<PackagedProductDefinitionProperty>? characteristic;
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
      'name',
      name,
    );
    addField(
      'type',
      type,
    );
    addField(
      'packageFor',
      packageFor,
    );
    addField(
      'status',
      status,
    );
    addField(
      'statusDate',
      statusDate,
    );
    addField(
      'containedItemQuantity',
      containedItemQuantity,
    );
    addField(
      'description',
      description,
    );
    addField(
      'legalStatusOfSupply',
      legalStatusOfSupply,
    );
    addField(
      'marketingStatus',
      marketingStatus,
    );
    addField(
      'copackagedIndicator',
      copackagedIndicator,
    );
    addField(
      'manufacturer',
      manufacturer,
    );
    addField(
      'attachedDocument',
      attachedDocument,
    );
    addField(
      'packaging',
      packaging,
    );
    addField(
      'characteristic',
      characteristic,
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
      'name',
      'type',
      'packageFor',
      'status',
      'statusDate',
      'containedItemQuantity',
      'description',
      'legalStatusOfSupply',
      'marketingStatus',
      'copackagedIndicator',
      'manufacturer',
      'attachedDocument',
      'packaging',
      'characteristic',
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
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'packageFor':
        if (packageFor != null) {
          fields.addAll(packageFor!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'statusDate':
        if (statusDate != null) {
          fields.add(statusDate!);
        }
      case 'containedItemQuantity':
        if (containedItemQuantity != null) {
          fields.addAll(containedItemQuantity!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'legalStatusOfSupply':
        if (legalStatusOfSupply != null) {
          fields.addAll(legalStatusOfSupply!);
        }
      case 'marketingStatus':
        if (marketingStatus != null) {
          fields.addAll(marketingStatus!);
        }
      case 'copackagedIndicator':
        if (copackagedIndicator != null) {
          fields.add(copackagedIndicator!);
        }
      case 'manufacturer':
        if (manufacturer != null) {
          fields.addAll(manufacturer!);
        }
      case 'attachedDocument':
        if (attachedDocument != null) {
          fields.addAll(attachedDocument!);
        }
      case 'packaging':
        if (packaging != null) {
          fields.add(packaging!);
        }
      case 'characteristic':
        if (characteristic != null) {
          fields.addAll(characteristic!);
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
  PackagedProductDefinition clone() => copyWith();

  /// Copy function for [PackagedProductDefinition]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $PackagedProductDefinitionCopyWith<PackagedProductDefinition> get copyWith =>
      _$PackagedProductDefinitionCopyWithImpl<PackagedProductDefinition>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! PackagedProductDefinition) {
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
      name,
      o.name,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      packageFor,
      o.packageFor,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      statusDate,
      o.statusDate,
    )) {
      return false;
    }
    if (!listEquals<Quantity>(
      containedItemQuantity,
      o.containedItemQuantity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!listEquals<PackagedProductDefinitionLegalStatusOfSupply>(
      legalStatusOfSupply,
      o.legalStatusOfSupply,
    )) {
      return false;
    }
    if (!listEquals<MarketingStatus>(
      marketingStatus,
      o.marketingStatus,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      copackagedIndicator,
      o.copackagedIndicator,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      manufacturer,
      o.manufacturer,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      attachedDocument,
      o.attachedDocument,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      packaging,
      o.packaging,
    )) {
      return false;
    }
    if (!listEquals<PackagedProductDefinitionProperty>(
      characteristic,
      o.characteristic,
    )) {
      return false;
    }
    return true;
  }
}

/// [PackagedProductDefinitionLegalStatusOfSupply]
/// The legal status of supply of the packaged item as classified by the
/// regulator.
class PackagedProductDefinitionLegalStatusOfSupply extends BackboneElement {
  /// Primary constructor for
  /// [PackagedProductDefinitionLegalStatusOfSupply]

  const PackagedProductDefinitionLegalStatusOfSupply({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.jurisdiction,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PackagedProductDefinitionLegalStatusOfSupply.fromJson(
    Map<String, dynamic> json,
  ) {
    return PackagedProductDefinitionLegalStatusOfSupply(
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
      jurisdiction: JsonParser.parseObject<CodeableConcept>(
        json,
        'jurisdiction',
        CodeableConcept.fromJson,
      ),
    );
  }

  /// Deserialize [PackagedProductDefinitionLegalStatusOfSupply]
  /// from a [String] or [YamlMap] object
  factory PackagedProductDefinitionLegalStatusOfSupply.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PackagedProductDefinitionLegalStatusOfSupply.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PackagedProductDefinitionLegalStatusOfSupply.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PackagedProductDefinitionLegalStatusOfSupply '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PackagedProductDefinitionLegalStatusOfSupply]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PackagedProductDefinitionLegalStatusOfSupply.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PackagedProductDefinitionLegalStatusOfSupply.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'PackagedProductDefinitionLegalStatusOfSupply';

  /// [code]
  /// The actual status of supply. Conveys in what situation this package
  /// type may be supplied for use.
  final CodeableConcept? code;

  /// [jurisdiction]
  /// The place where the legal status of supply applies. When not specified,
  /// this indicates it is unknown in this context.
  final CodeableConcept? jurisdiction;
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
      'jurisdiction',
      jurisdiction,
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
      'jurisdiction',
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
      case 'jurisdiction':
        if (jurisdiction != null) {
          fields.add(jurisdiction!);
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
  PackagedProductDefinitionLegalStatusOfSupply clone() => copyWith();

  /// Copy function for [PackagedProductDefinitionLegalStatusOfSupply]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $PackagedProductDefinitionLegalStatusOfSupplyCopyWith<
          PackagedProductDefinitionLegalStatusOfSupply>
      get copyWith =>
          _$PackagedProductDefinitionLegalStatusOfSupplyCopyWithImpl<
              PackagedProductDefinitionLegalStatusOfSupply>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! PackagedProductDefinitionLegalStatusOfSupply) {
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
      jurisdiction,
      o.jurisdiction,
    )) {
      return false;
    }
    return true;
  }
}

/// [PackagedProductDefinitionPackaging]
/// A packaging item, as a container for medically related items, possibly
/// with other packaging items within, or a packaging component, such as
/// bottle cap (which is not a device or a medication manufactured item).
class PackagedProductDefinitionPackaging extends BackboneElement {
  /// Primary constructor for
  /// [PackagedProductDefinitionPackaging]

  const PackagedProductDefinitionPackaging({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.type,
    this.componentPart,
    this.quantity,
    this.material,
    this.alternateMaterial,
    this.shelfLifeStorage,
    this.manufacturer,
    this.property,
    this.containedItem,
    this.packaging,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PackagedProductDefinitionPackaging.fromJson(
    Map<String, dynamic> json,
  ) {
    return PackagedProductDefinitionPackaging(
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
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      componentPart: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'componentPart',
        FhirBoolean.fromJson,
      ),
      quantity: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'quantity',
        FhirInteger.fromJson,
      ),
      material: (json['material'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      alternateMaterial: (json['alternateMaterial'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      shelfLifeStorage: (json['shelfLifeStorage'] as List<dynamic>?)
          ?.map<ProductShelfLife>(
            (v) => ProductShelfLife.fromJson(
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
      property: (json['property'] as List<dynamic>?)
          ?.map<PackagedProductDefinitionProperty>(
            (v) => PackagedProductDefinitionProperty.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      containedItem: (json['containedItem'] as List<dynamic>?)
          ?.map<PackagedProductDefinitionContainedItem>(
            (v) => PackagedProductDefinitionContainedItem.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      packaging: (json['packaging'] as List<dynamic>?)
          ?.map<PackagedProductDefinitionPackaging>(
            (v) => PackagedProductDefinitionPackaging.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [PackagedProductDefinitionPackaging]
  /// from a [String] or [YamlMap] object
  factory PackagedProductDefinitionPackaging.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PackagedProductDefinitionPackaging.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PackagedProductDefinitionPackaging.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PackagedProductDefinitionPackaging '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PackagedProductDefinitionPackaging]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PackagedProductDefinitionPackaging.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PackagedProductDefinitionPackaging.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'PackagedProductDefinitionPackaging';

  /// [identifier]
  /// A business identifier that is specific to this particular part of the
  /// packaging, often assigned by the manufacturer. Including possibly Data
  /// Carrier Identifier (a GS1 barcode).
  final List<Identifier>? identifier;

  /// [type]
  /// The physical type of the container of the items.
  final CodeableConcept? type;

  /// [componentPart]
  /// Is this a part of the packaging (e.g. a cap or bottle stopper), rather
  /// than the packaging itself (e.g. a bottle or vial). The latter type are
  /// designed be a container, but the former are not.
  final FhirBoolean? componentPart;

  /// [quantity]
  /// The quantity of packaging items contained at this layer of the package.
  /// This does not relate to the number of contained items but relates
  /// solely to the number of packaging items. When looking at the outermost
  /// layer it is always 1. If there are two boxes within, at the next layer
  /// it would be 2.
  final FhirInteger? quantity;

  /// [material]
  /// Material type of the package item.
  final List<CodeableConcept>? material;

  /// [alternateMaterial]
  /// A possible alternate material for this part of the packaging, that is
  /// allowed to be used instead of the usual material (e.g. different types
  /// of plastic for a blister sleeve).
  final List<CodeableConcept>? alternateMaterial;

  /// [shelfLifeStorage]
  /// Shelf Life and storage information.
  final List<ProductShelfLife>? shelfLifeStorage;

  /// [manufacturer]
  /// Manufacturer of this packaging item. When there are multiple values
  /// each one is a potential manufacturer of this packaging item.
  final List<Reference>? manufacturer;

  /// [property]
  /// General characteristics of this item.
  final List<PackagedProductDefinitionProperty>? property;

  /// [containedItem]
  /// The item(s) within the packaging.
  final List<PackagedProductDefinitionContainedItem>? containedItem;

  /// [packaging]
  /// Allows containers (and parts of containers) within containers, still as
  /// a part of a single packaged product. See also
  /// PackagedProductDefinition.packaging.containedItem.item(PackagedProductDefinition).
  final List<PackagedProductDefinitionPackaging>? packaging;
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
      'type',
      type,
    );
    addField(
      'componentPart',
      componentPart,
    );
    addField(
      'quantity',
      quantity,
    );
    addField(
      'material',
      material,
    );
    addField(
      'alternateMaterial',
      alternateMaterial,
    );
    addField(
      'shelfLifeStorage',
      shelfLifeStorage,
    );
    addField(
      'manufacturer',
      manufacturer,
    );
    addField(
      'property',
      property,
    );
    addField(
      'containedItem',
      containedItem,
    );
    addField(
      'packaging',
      packaging,
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
      'type',
      'componentPart',
      'quantity',
      'material',
      'alternateMaterial',
      'shelfLifeStorage',
      'manufacturer',
      'property',
      'containedItem',
      'packaging',
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'componentPart':
        if (componentPart != null) {
          fields.add(componentPart!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'material':
        if (material != null) {
          fields.addAll(material!);
        }
      case 'alternateMaterial':
        if (alternateMaterial != null) {
          fields.addAll(alternateMaterial!);
        }
      case 'shelfLifeStorage':
        if (shelfLifeStorage != null) {
          fields.addAll(shelfLifeStorage!);
        }
      case 'manufacturer':
        if (manufacturer != null) {
          fields.addAll(manufacturer!);
        }
      case 'property':
        if (property != null) {
          fields.addAll(property!);
        }
      case 'containedItem':
        if (containedItem != null) {
          fields.addAll(containedItem!);
        }
      case 'packaging':
        if (packaging != null) {
          fields.addAll(packaging!);
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
  PackagedProductDefinitionPackaging clone() => copyWith();

  /// Copy function for [PackagedProductDefinitionPackaging]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $PackagedProductDefinitionPackagingCopyWith<
          PackagedProductDefinitionPackaging>
      get copyWith => _$PackagedProductDefinitionPackagingCopyWithImpl<
              PackagedProductDefinitionPackaging>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! PackagedProductDefinitionPackaging) {
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
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      componentPart,
      o.componentPart,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      material,
      o.material,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      alternateMaterial,
      o.alternateMaterial,
    )) {
      return false;
    }
    if (!listEquals<ProductShelfLife>(
      shelfLifeStorage,
      o.shelfLifeStorage,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      manufacturer,
      o.manufacturer,
    )) {
      return false;
    }
    if (!listEquals<PackagedProductDefinitionProperty>(
      property,
      o.property,
    )) {
      return false;
    }
    if (!listEquals<PackagedProductDefinitionContainedItem>(
      containedItem,
      o.containedItem,
    )) {
      return false;
    }
    if (!listEquals<PackagedProductDefinitionPackaging>(
      packaging,
      o.packaging,
    )) {
      return false;
    }
    return true;
  }
}

/// [PackagedProductDefinitionProperty]
/// General characteristics of this item.
class PackagedProductDefinitionProperty extends BackboneElement {
  /// Primary constructor for
  /// [PackagedProductDefinitionProperty]

  const PackagedProductDefinitionProperty({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    ValueXPackagedProductDefinitionProperty? valueX,
    CodeableConcept? valueCodeableConcept,
    Quantity? valueQuantity,
    FhirDate? valueDate,
    FhirBoolean? valueBoolean,
    Attachment? valueAttachment,
    super.disallowExtensions,
  })  : valueX = valueX ??
            valueCodeableConcept ??
            valueQuantity ??
            valueDate ??
            valueBoolean ??
            valueAttachment,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PackagedProductDefinitionProperty.fromJson(
    Map<String, dynamic> json,
  ) {
    return PackagedProductDefinitionProperty(
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
      valueX:
          JsonParser.parsePolymorphic<ValueXPackagedProductDefinitionProperty>(
        json,
        {
          'valueCodeableConcept': CodeableConcept.fromJson,
          'valueQuantity': Quantity.fromJson,
          'valueDate': FhirDate.fromJson,
          'valueBoolean': FhirBoolean.fromJson,
          'valueAttachment': Attachment.fromJson,
        },
      ),
    );
  }

  /// Deserialize [PackagedProductDefinitionProperty]
  /// from a [String] or [YamlMap] object
  factory PackagedProductDefinitionProperty.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PackagedProductDefinitionProperty.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PackagedProductDefinitionProperty.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PackagedProductDefinitionProperty '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PackagedProductDefinitionProperty]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PackagedProductDefinitionProperty.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PackagedProductDefinitionProperty.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'PackagedProductDefinitionProperty';

  /// [type]
  /// A code expressing the type of characteristic.
  final CodeableConcept type;

  /// [valueX]
  /// A value for the characteristic.
  final ValueXPackagedProductDefinitionProperty? valueX;

  /// Getter for [valueCodeableConcept] as a CodeableConcept
  CodeableConcept? get valueCodeableConcept => valueX?.isAs<CodeableConcept>();

  /// Getter for [valueQuantity] as a Quantity
  Quantity? get valueQuantity => valueX?.isAs<Quantity>();

  /// Getter for [valueDate] as a FhirDate
  FhirDate? get valueDate => valueX?.isAs<FhirDate>();

  /// Getter for [valueBoolean] as a FhirBoolean
  FhirBoolean? get valueBoolean => valueX?.isAs<FhirBoolean>();

  /// Getter for [valueAttachment] as a Attachment
  Attachment? get valueAttachment => valueX?.isAs<Attachment>();
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
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField(
        'value${fhirType.capitalize()}',
        valueX,
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
        fields.add(valueX!);
      case 'valueX':
        fields.add(valueX!);
      case 'valueCodeableConcept':
        if (valueX is CodeableConcept) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is Quantity) {
          fields.add(valueX!);
        }
      case 'valueDate':
        if (valueX is FhirDate) {
          fields.add(valueX!);
        }
      case 'valueBoolean':
        if (valueX is FhirBoolean) {
          fields.add(valueX!);
        }
      case 'valueAttachment':
        if (valueX is Attachment) {
          fields.add(valueX!);
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
  PackagedProductDefinitionProperty clone() => copyWith();

  /// Copy function for [PackagedProductDefinitionProperty]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $PackagedProductDefinitionPropertyCopyWith<PackagedProductDefinitionProperty>
      get copyWith => _$PackagedProductDefinitionPropertyCopyWithImpl<
              PackagedProductDefinitionProperty>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! PackagedProductDefinitionProperty) {
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
      valueX,
      o.valueX,
    )) {
      return false;
    }
    return true;
  }
}

/// [PackagedProductDefinitionContainedItem]
/// The item(s) within the packaging.
class PackagedProductDefinitionContainedItem extends BackboneElement {
  /// Primary constructor for
  /// [PackagedProductDefinitionContainedItem]

  const PackagedProductDefinitionContainedItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.item,
    this.amount,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PackagedProductDefinitionContainedItem.fromJson(
    Map<String, dynamic> json,
  ) {
    return PackagedProductDefinitionContainedItem(
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
      amount: JsonParser.parseObject<Quantity>(
        json,
        'amount',
        Quantity.fromJson,
      ),
    );
  }

  /// Deserialize [PackagedProductDefinitionContainedItem]
  /// from a [String] or [YamlMap] object
  factory PackagedProductDefinitionContainedItem.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PackagedProductDefinitionContainedItem.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PackagedProductDefinitionContainedItem.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PackagedProductDefinitionContainedItem '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PackagedProductDefinitionContainedItem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PackagedProductDefinitionContainedItem.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PackagedProductDefinitionContainedItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'PackagedProductDefinitionContainedItem';

  /// [item]
  /// The actual item(s) of medication, as manufactured, or a device
  /// (typically, but not necessarily, a co-packaged one), or other medically
  /// related item (such as food, biologicals, raw materials, medical fluids,
  /// gases etc.), as contained in the package. This also allows another
  /// whole packaged product to be included, which is solely for the case
  /// where a package of other entire packages is wanted - such as a
  /// wholesale or distribution pack (for layers within one package, use
  /// PackagedProductDefinition.packaging.packaging).
  final CodeableReference item;

  /// [amount]
  /// The number of this type of item within this packaging or for continuous
  /// items such as liquids it is the quantity (for example 25ml). See also
  /// PackagedProductDefinition.containedItemQuantity (especially the long
  /// definition).
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
      'item',
      item,
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
      'item',
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
      case 'item':
        fields.add(item);
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
  PackagedProductDefinitionContainedItem clone() => copyWith();

  /// Copy function for [PackagedProductDefinitionContainedItem]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $PackagedProductDefinitionContainedItemCopyWith<
          PackagedProductDefinitionContainedItem>
      get copyWith => _$PackagedProductDefinitionContainedItemCopyWithImpl<
              PackagedProductDefinitionContainedItem>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! PackagedProductDefinitionContainedItem) {
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
      item,
      o.item,
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
