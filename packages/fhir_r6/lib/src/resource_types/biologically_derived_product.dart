import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'biologically_derived_product.g.dart';

/// [BiologicallyDerivedProduct]
/// This resource reflects an instance of a biologically derived product. A
/// material substance originating from a biological entity intended to be
/// transplanted or infused
/// into another (possibly the same) biological entity.
class BiologicallyDerivedProduct extends DomainResource {
  /// Primary constructor for
  /// [BiologicallyDerivedProduct]

  const BiologicallyDerivedProduct({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.productCategory,
    this.productCode,
    this.parent,
    this.request,
    this.identifier,
    this.biologicalSourceEvent,
    this.processingFacility,
    this.division,
    this.productStatus,
    this.expirationDate,
    this.collection,
    this.storageTempRequirements,
    this.property,
  }) : super(
          resourceType: R6ResourceType.BiologicallyDerivedProduct,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BiologicallyDerivedProduct.fromJson(
    Map<String, dynamic> json,
  ) {
    return BiologicallyDerivedProduct(
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
      productCategory: JsonParser.parseObject<Coding>(
        json,
        'productCategory',
        Coding.fromJson,
      ),
      productCode: JsonParser.parseObject<CodeableConcept>(
        json,
        'productCode',
        CodeableConcept.fromJson,
      ),
      parent: (json['parent'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      request: (json['request'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
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
      biologicalSourceEvent: JsonParser.parseObject<Identifier>(
        json,
        'biologicalSourceEvent',
        Identifier.fromJson,
      ),
      processingFacility: (json['processingFacility'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      division: JsonParser.parsePrimitive<FhirString>(
        json,
        'division',
        FhirString.fromJson,
      ),
      productStatus: JsonParser.parseObject<Coding>(
        json,
        'productStatus',
        Coding.fromJson,
      ),
      expirationDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'expirationDate',
        FhirDateTime.fromJson,
      ),
      collection: JsonParser.parseObject<BiologicallyDerivedProductCollection>(
        json,
        'collection',
        BiologicallyDerivedProductCollection.fromJson,
      ),
      storageTempRequirements: JsonParser.parseObject<Range>(
        json,
        'storageTempRequirements',
        Range.fromJson,
      ),
      property: (json['property'] as List<dynamic>?)
          ?.map<BiologicallyDerivedProductProperty>(
            (v) => BiologicallyDerivedProductProperty.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [BiologicallyDerivedProduct]
  /// from a [String] or [YamlMap] object
  factory BiologicallyDerivedProduct.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BiologicallyDerivedProduct.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BiologicallyDerivedProduct.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BiologicallyDerivedProduct '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BiologicallyDerivedProduct]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BiologicallyDerivedProduct.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BiologicallyDerivedProduct.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'BiologicallyDerivedProduct';

  /// [productCategory]
  /// Broad category of this product.
  final Coding? productCategory;

  /// [productCode]
  /// A codified value that systematically supports characterization and
  /// classification of medical products of human origin inclusive of
  /// processing conditions such as additives, volumes and handling
  /// conditions.
  final CodeableConcept? productCode;

  /// [parent]
  /// Parent product (if any) for this biologically-derived product.
  final List<Reference>? parent;

  /// [request]
  /// Request to obtain and/or infuse this biologically derived product.
  final List<Reference>? request;

  /// [identifier]
  /// Unique instance identifiers assigned to a biologically derived product.
  /// Note: This is a business identifier, not a resource identifier.
  final List<Identifier>? identifier;

  /// [biologicalSourceEvent]
  /// An identifier that supports traceability to the event during which
  /// material in this product from one or more biological entities was
  /// obtained or pooled.
  final Identifier? biologicalSourceEvent;

  /// [processingFacility]
  /// Processing facilities responsible for the labeling and distribution of
  /// this biologically derived product.
  final List<Reference>? processingFacility;

  /// [division]
  /// A unique identifier for an aliquot of a product. Used to distinguish
  /// individual aliquots of a product carrying the same biologicalSource and
  /// productCode identifiers.
  final FhirString? division;

  /// [productStatus]
  /// Whether the product is currently available.
  final Coding? productStatus;

  /// [expirationDate]
  /// Date, and where relevant time, of expiration.
  final FhirDateTime? expirationDate;

  /// [collection]
  /// How this product was collected.
  final BiologicallyDerivedProductCollection? collection;

  /// [storageTempRequirements]
  /// The temperature requirements for storage of the biologically-derived
  /// product.
  final Range? storageTempRequirements;

  /// [property]
  /// A property that is specific to this BiologicallyDerviedProduct
  /// instance.
  final List<BiologicallyDerivedProductProperty>? property;
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
      'productCategory',
      productCategory,
    );
    addField(
      'productCode',
      productCode,
    );
    addField(
      'parent',
      parent,
    );
    addField(
      'request',
      request,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'biologicalSourceEvent',
      biologicalSourceEvent,
    );
    addField(
      'processingFacility',
      processingFacility,
    );
    addField(
      'division',
      division,
    );
    addField(
      'productStatus',
      productStatus,
    );
    addField(
      'expirationDate',
      expirationDate,
    );
    addField(
      'collection',
      collection,
    );
    addField(
      'storageTempRequirements',
      storageTempRequirements,
    );
    addField(
      'property',
      property,
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
      'productCategory',
      'productCode',
      'parent',
      'request',
      'identifier',
      'biologicalSourceEvent',
      'processingFacility',
      'division',
      'productStatus',
      'expirationDate',
      'collection',
      'storageTempRequirements',
      'property',
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
      case 'productCategory':
        if (productCategory != null) {
          fields.add(productCategory!);
        }
      case 'productCode':
        if (productCode != null) {
          fields.add(productCode!);
        }
      case 'parent':
        if (parent != null) {
          fields.addAll(parent!);
        }
      case 'request':
        if (request != null) {
          fields.addAll(request!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'biologicalSourceEvent':
        if (biologicalSourceEvent != null) {
          fields.add(biologicalSourceEvent!);
        }
      case 'processingFacility':
        if (processingFacility != null) {
          fields.addAll(processingFacility!);
        }
      case 'division':
        if (division != null) {
          fields.add(division!);
        }
      case 'productStatus':
        if (productStatus != null) {
          fields.add(productStatus!);
        }
      case 'expirationDate':
        if (expirationDate != null) {
          fields.add(expirationDate!);
        }
      case 'collection':
        if (collection != null) {
          fields.add(collection!);
        }
      case 'storageTempRequirements':
        if (storageTempRequirements != null) {
          fields.add(storageTempRequirements!);
        }
      case 'property':
        if (property != null) {
          fields.addAll(property!);
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
  BiologicallyDerivedProduct clone() => copyWith();

  /// Copy function for [BiologicallyDerivedProduct]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $BiologicallyDerivedProductCopyWith<BiologicallyDerivedProduct>
      get copyWith =>
          _$BiologicallyDerivedProductCopyWithImpl<BiologicallyDerivedProduct>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! BiologicallyDerivedProduct) {
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
      productCategory,
      o.productCategory,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      productCode,
      o.productCode,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      parent,
      o.parent,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      request,
      o.request,
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
      biologicalSourceEvent,
      o.biologicalSourceEvent,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      processingFacility,
      o.processingFacility,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      division,
      o.division,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      productStatus,
      o.productStatus,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      expirationDate,
      o.expirationDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      collection,
      o.collection,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      storageTempRequirements,
      o.storageTempRequirements,
    )) {
      return false;
    }
    if (!listEquals<BiologicallyDerivedProductProperty>(
      property,
      o.property,
    )) {
      return false;
    }
    return true;
  }
}

/// [BiologicallyDerivedProductCollection]
/// How this product was collected.
class BiologicallyDerivedProductCollection extends BackboneElement {
  /// Primary constructor for
  /// [BiologicallyDerivedProductCollection]

  const BiologicallyDerivedProductCollection({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.collector,
    this.source,
    CollectedXBiologicallyDerivedProductCollection? collectedX,
    FhirDateTime? collectedDateTime,
    Period? collectedPeriod,
    super.disallowExtensions,
  })  : collectedX = collectedX ?? collectedDateTime ?? collectedPeriod,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BiologicallyDerivedProductCollection.fromJson(
    Map<String, dynamic> json,
  ) {
    return BiologicallyDerivedProductCollection(
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
      collector: JsonParser.parseObject<Reference>(
        json,
        'collector',
        Reference.fromJson,
      ),
      source: JsonParser.parseObject<Reference>(
        json,
        'source',
        Reference.fromJson,
      ),
      collectedX: JsonParser.parsePolymorphic<
          CollectedXBiologicallyDerivedProductCollection>(
        json,
        {
          'collectedDateTime': FhirDateTime.fromJson,
          'collectedPeriod': Period.fromJson,
        },
      ),
    );
  }

  /// Deserialize [BiologicallyDerivedProductCollection]
  /// from a [String] or [YamlMap] object
  factory BiologicallyDerivedProductCollection.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BiologicallyDerivedProductCollection.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BiologicallyDerivedProductCollection.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BiologicallyDerivedProductCollection '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BiologicallyDerivedProductCollection]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BiologicallyDerivedProductCollection.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BiologicallyDerivedProductCollection.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'BiologicallyDerivedProductCollection';

  /// [collector]
  /// Healthcare professional who is performing the collection.
  final Reference? collector;

  /// [source]
  /// The patient or entity, such as a hospital or vendor in the case of a
  /// processed/manipulated/manufactured product, providing the product.
  final Reference? source;

  /// [collectedX]
  /// Time of product collection.
  final CollectedXBiologicallyDerivedProductCollection? collectedX;

  /// Getter for [collectedDateTime] as a FhirDateTime
  FhirDateTime? get collectedDateTime => collectedX?.isAs<FhirDateTime>();

  /// Getter for [collectedPeriod] as a Period
  Period? get collectedPeriod => collectedX?.isAs<Period>();
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
      'collector',
      collector,
    );
    addField(
      'source',
      source,
    );
    if (collectedX != null) {
      final fhirType = collectedX!.fhirType;
      addField(
        'collected${fhirType.capitalize()}',
        collectedX,
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
      'collector',
      'source',
      'collectedX',
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
      case 'collector':
        if (collector != null) {
          fields.add(collector!);
        }
      case 'source':
        if (source != null) {
          fields.add(source!);
        }
      case 'collected':
        fields.add(collectedX!);
      case 'collectedX':
        fields.add(collectedX!);
      case 'collectedDateTime':
        if (collectedX is FhirDateTime) {
          fields.add(collectedX!);
        }
      case 'collectedPeriod':
        if (collectedX is Period) {
          fields.add(collectedX!);
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
  BiologicallyDerivedProductCollection clone() => copyWith();

  /// Copy function for [BiologicallyDerivedProductCollection]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $BiologicallyDerivedProductCollectionCopyWith<
          BiologicallyDerivedProductCollection>
      get copyWith => _$BiologicallyDerivedProductCollectionCopyWithImpl<
              BiologicallyDerivedProductCollection>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! BiologicallyDerivedProductCollection) {
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
      collector,
      o.collector,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      source,
      o.source,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      collectedX,
      o.collectedX,
    )) {
      return false;
    }
    return true;
  }
}

/// [BiologicallyDerivedProductProperty]
/// A property that is specific to this BiologicallyDerviedProduct
/// instance.
class BiologicallyDerivedProductProperty extends BackboneElement {
  /// Primary constructor for
  /// [BiologicallyDerivedProductProperty]

  const BiologicallyDerivedProductProperty({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.valueX,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BiologicallyDerivedProductProperty.fromJson(
    Map<String, dynamic> json,
  ) {
    return BiologicallyDerivedProductProperty(
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
          JsonParser.parsePolymorphic<ValueXBiologicallyDerivedProductProperty>(
        json,
        {
          'valueBoolean': FhirBoolean.fromJson,
          'valueInteger': FhirInteger.fromJson,
          'valueCodeableConcept': CodeableConcept.fromJson,
          'valuePeriod': Period.fromJson,
          'valueQuantity': Quantity.fromJson,
          'valueRange': Range.fromJson,
          'valueRatio': Ratio.fromJson,
          'valueString': FhirString.fromJson,
          'valueAttachment': Attachment.fromJson,
        },
      )!,
    );
  }

  /// Deserialize [BiologicallyDerivedProductProperty]
  /// from a [String] or [YamlMap] object
  factory BiologicallyDerivedProductProperty.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BiologicallyDerivedProductProperty.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BiologicallyDerivedProductProperty.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BiologicallyDerivedProductProperty '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BiologicallyDerivedProductProperty]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BiologicallyDerivedProductProperty.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BiologicallyDerivedProductProperty.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'BiologicallyDerivedProductProperty';

  /// [type]
  /// Code that specifies the property. It should reference an established
  /// coding system.
  final CodeableConcept type;

  /// [valueX]
  /// Property values.
  final ValueXBiologicallyDerivedProductProperty valueX;

  /// Getter for [valueBoolean] as a FhirBoolean
  FhirBoolean? get valueBoolean => valueX.isAs<FhirBoolean>();

  /// Getter for [valueInteger] as a FhirInteger
  FhirInteger? get valueInteger => valueX.isAs<FhirInteger>();

  /// Getter for [valueCodeableConcept] as a CodeableConcept
  CodeableConcept? get valueCodeableConcept => valueX.isAs<CodeableConcept>();

  /// Getter for [valuePeriod] as a Period
  Period? get valuePeriod => valueX.isAs<Period>();

  /// Getter for [valueQuantity] as a Quantity
  Quantity? get valueQuantity => valueX.isAs<Quantity>();

  /// Getter for [valueRange] as a Range
  Range? get valueRange => valueX.isAs<Range>();

  /// Getter for [valueRatio] as a Ratio
  Ratio? get valueRatio => valueX.isAs<Ratio>();

  /// Getter for [valueString] as a FhirString
  FhirString? get valueString => valueX.isAs<FhirString>();

  /// Getter for [valueAttachment] as a Attachment
  Attachment? get valueAttachment => valueX.isAs<Attachment>();
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
      case 'valueBoolean':
        if (valueX is FhirBoolean) {
          fields.add(valueX);
        }
      case 'valueInteger':
        if (valueX is FhirInteger) {
          fields.add(valueX);
        }
      case 'valueCodeableConcept':
        if (valueX is CodeableConcept) {
          fields.add(valueX);
        }
      case 'valuePeriod':
        if (valueX is Period) {
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
      case 'valueString':
        if (valueX is FhirString) {
          fields.add(valueX);
        }
      case 'valueAttachment':
        if (valueX is Attachment) {
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
  BiologicallyDerivedProductProperty clone() => copyWith();

  /// Copy function for [BiologicallyDerivedProductProperty]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $BiologicallyDerivedProductPropertyCopyWith<
          BiologicallyDerivedProductProperty>
      get copyWith => _$BiologicallyDerivedProductPropertyCopyWithImpl<
              BiologicallyDerivedProductProperty>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! BiologicallyDerivedProductProperty) {
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
