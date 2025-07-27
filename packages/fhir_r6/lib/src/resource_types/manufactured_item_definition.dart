import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'manufactured_item_definition.g.dart';

/// [ManufacturedItemDefinition]
/// The definition and characteristics of a medicinal manufactured item,
/// such as a tablet or capsule, as contained in a packaged medicinal
/// product.
class ManufacturedItemDefinition extends DomainResource {
  /// Primary constructor for
  /// [ManufacturedItemDefinition]

  const ManufacturedItemDefinition({
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
    this.name,
    required this.manufacturedDoseForm,
    this.unitOfPresentation,
    this.manufacturer,
    this.marketingStatus,
    this.ingredient,
    this.property,
    this.component,
  }) : super(
          resourceType: R6ResourceType.ManufacturedItemDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ManufacturedItemDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    return ManufacturedItemDefinition(
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
      status: JsonParser.parsePrimitive<PublicationStatus>(
        json,
        'status',
        PublicationStatus.fromJson,
      )!,
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      ),
      manufacturedDoseForm: JsonParser.parseObject<CodeableConcept>(
        json,
        'manufacturedDoseForm',
        CodeableConcept.fromJson,
      )!,
      unitOfPresentation: JsonParser.parseObject<CodeableConcept>(
        json,
        'unitOfPresentation',
        CodeableConcept.fromJson,
      ),
      manufacturer: (json['manufacturer'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
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
      ingredient: (json['ingredient'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      property: (json['property'] as List<dynamic>?)
          ?.map<ManufacturedItemDefinitionProperty>(
            (v) => ManufacturedItemDefinitionProperty.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      component: (json['component'] as List<dynamic>?)
          ?.map<ManufacturedItemDefinitionComponent>(
            (v) => ManufacturedItemDefinitionComponent.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ManufacturedItemDefinition]
  /// from a [String] or [YamlMap] object
  factory ManufacturedItemDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ManufacturedItemDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ManufacturedItemDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ManufacturedItemDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ManufacturedItemDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ManufacturedItemDefinition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ManufacturedItemDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ManufacturedItemDefinition';

  /// [identifier]
  /// Unique identifier.
  final List<Identifier>? identifier;

  /// [status]
  /// The status of this item. Enables tracking the life-cycle of the
  /// content.
  final PublicationStatus status;

  /// [name]
  /// A descriptive name applied to this item.
  final FhirString? name;

  /// [manufacturedDoseForm]
  /// Dose form as manufactured and before any transformation into the
  /// pharmaceutical product.
  final CodeableConcept manufacturedDoseForm;

  /// [unitOfPresentation]
  /// The “real-world” units in which the quantity of the manufactured item
  /// is described.
  final CodeableConcept? unitOfPresentation;

  /// [manufacturer]
  /// Manufacturer of the item, one of several possible.
  final List<Reference>? manufacturer;

  /// [marketingStatus]
  /// Allows specifying that an item is on the market for sale, or that it is
  /// not available, and the dates and locations associated.
  final List<MarketingStatus>? marketingStatus;

  /// [ingredient]
  /// The ingredients of this manufactured item. This is only needed if the
  /// ingredients are not specified by incoming references from the
  /// Ingredient resource.
  final List<CodeableConcept>? ingredient;

  /// [property]
  /// General characteristics of this item.
  final List<ManufacturedItemDefinitionProperty>? property;

  /// [component]
  /// Physical parts of the manufactured item, that it is intrisically made
  /// from. This is distinct from the ingredients that are part of its
  /// chemical makeup.
  final List<ManufacturedItemDefinitionComponent>? component;
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
      'name',
      name,
    );
    addField(
      'manufacturedDoseForm',
      manufacturedDoseForm,
    );
    addField(
      'unitOfPresentation',
      unitOfPresentation,
    );
    addField(
      'manufacturer',
      manufacturer,
    );
    addField(
      'marketingStatus',
      marketingStatus,
    );
    addField(
      'ingredient',
      ingredient,
    );
    addField(
      'property',
      property,
    );
    addField(
      'component',
      component,
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
      'name',
      'manufacturedDoseForm',
      'unitOfPresentation',
      'manufacturer',
      'marketingStatus',
      'ingredient',
      'property',
      'component',
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
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'manufacturedDoseForm':
        fields.add(manufacturedDoseForm);
      case 'unitOfPresentation':
        if (unitOfPresentation != null) {
          fields.add(unitOfPresentation!);
        }
      case 'manufacturer':
        if (manufacturer != null) {
          fields.addAll(manufacturer!);
        }
      case 'marketingStatus':
        if (marketingStatus != null) {
          fields.addAll(marketingStatus!);
        }
      case 'ingredient':
        if (ingredient != null) {
          fields.addAll(ingredient!);
        }
      case 'property':
        if (property != null) {
          fields.addAll(property!);
        }
      case 'component':
        if (component != null) {
          fields.addAll(component!);
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
  ManufacturedItemDefinition clone() => copyWith();

  /// Copy function for [ManufacturedItemDefinition]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ManufacturedItemDefinitionCopyWith<ManufacturedItemDefinition>
      get copyWith =>
          _$ManufacturedItemDefinitionCopyWithImpl<ManufacturedItemDefinition>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ManufacturedItemDefinition) {
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
    if (!equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      manufacturedDoseForm,
      o.manufacturedDoseForm,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      unitOfPresentation,
      o.unitOfPresentation,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      manufacturer,
      o.manufacturer,
    )) {
      return false;
    }
    if (!listEquals<MarketingStatus>(
      marketingStatus,
      o.marketingStatus,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      ingredient,
      o.ingredient,
    )) {
      return false;
    }
    if (!listEquals<ManufacturedItemDefinitionProperty>(
      property,
      o.property,
    )) {
      return false;
    }
    if (!listEquals<ManufacturedItemDefinitionComponent>(
      component,
      o.component,
    )) {
      return false;
    }
    return true;
  }
}

/// [ManufacturedItemDefinitionProperty]
/// General characteristics of this item.
class ManufacturedItemDefinitionProperty extends BackboneElement {
  /// Primary constructor for
  /// [ManufacturedItemDefinitionProperty]

  const ManufacturedItemDefinitionProperty({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    ValueXManufacturedItemDefinitionProperty? valueX,
    CodeableConcept? valueCodeableConcept,
    Quantity? valueQuantity,
    FhirDate? valueDate,
    FhirBoolean? valueBoolean,
    FhirMarkdown? valueMarkdown,
    Attachment? valueAttachment,
    Reference? valueReference,
    super.disallowExtensions,
  })  : valueX = valueX ??
            valueCodeableConcept ??
            valueQuantity ??
            valueDate ??
            valueBoolean ??
            valueMarkdown ??
            valueAttachment ??
            valueReference,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ManufacturedItemDefinitionProperty.fromJson(
    Map<String, dynamic> json,
  ) {
    return ManufacturedItemDefinitionProperty(
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
          JsonParser.parsePolymorphic<ValueXManufacturedItemDefinitionProperty>(
        json,
        {
          'valueCodeableConcept': CodeableConcept.fromJson,
          'valueQuantity': Quantity.fromJson,
          'valueDate': FhirDate.fromJson,
          'valueBoolean': FhirBoolean.fromJson,
          'valueMarkdown': FhirMarkdown.fromJson,
          'valueAttachment': Attachment.fromJson,
          'valueReference': Reference.fromJson,
        },
      ),
    );
  }

  /// Deserialize [ManufacturedItemDefinitionProperty]
  /// from a [String] or [YamlMap] object
  factory ManufacturedItemDefinitionProperty.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ManufacturedItemDefinitionProperty.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ManufacturedItemDefinitionProperty.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ManufacturedItemDefinitionProperty '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ManufacturedItemDefinitionProperty]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ManufacturedItemDefinitionProperty.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ManufacturedItemDefinitionProperty.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ManufacturedItemDefinitionProperty';

  /// [type]
  /// A code expressing the type of characteristic.
  final CodeableConcept type;

  /// [valueX]
  /// A value for the characteristic.
  final ValueXManufacturedItemDefinitionProperty? valueX;

  /// Getter for [valueCodeableConcept] as a CodeableConcept
  CodeableConcept? get valueCodeableConcept => valueX?.isAs<CodeableConcept>();

  /// Getter for [valueQuantity] as a Quantity
  Quantity? get valueQuantity => valueX?.isAs<Quantity>();

  /// Getter for [valueDate] as a FhirDate
  FhirDate? get valueDate => valueX?.isAs<FhirDate>();

  /// Getter for [valueBoolean] as a FhirBoolean
  FhirBoolean? get valueBoolean => valueX?.isAs<FhirBoolean>();

  /// Getter for [valueMarkdown] as a FhirMarkdown
  FhirMarkdown? get valueMarkdown => valueX?.isAs<FhirMarkdown>();

  /// Getter for [valueAttachment] as a Attachment
  Attachment? get valueAttachment => valueX?.isAs<Attachment>();

  /// Getter for [valueReference] as a Reference
  Reference? get valueReference => valueX?.isAs<Reference>();
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
      case 'valueMarkdown':
        if (valueX is FhirMarkdown) {
          fields.add(valueX!);
        }
      case 'valueAttachment':
        if (valueX is Attachment) {
          fields.add(valueX!);
        }
      case 'valueReference':
        if (valueX is Reference) {
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
  ManufacturedItemDefinitionProperty clone() => copyWith();

  /// Copy function for [ManufacturedItemDefinitionProperty]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ManufacturedItemDefinitionPropertyCopyWith<
          ManufacturedItemDefinitionProperty>
      get copyWith => _$ManufacturedItemDefinitionPropertyCopyWithImpl<
              ManufacturedItemDefinitionProperty>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ManufacturedItemDefinitionProperty) {
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

/// [ManufacturedItemDefinitionComponent]
/// Physical parts of the manufactured item, that it is intrisically made
/// from. This is distinct from the ingredients that are part of its
/// chemical makeup.
class ManufacturedItemDefinitionComponent extends BackboneElement {
  /// Primary constructor for
  /// [ManufacturedItemDefinitionComponent]

  const ManufacturedItemDefinitionComponent({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.function_,
    this.amount,
    this.constituent,
    this.property,
    this.component,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ManufacturedItemDefinitionComponent.fromJson(
    Map<String, dynamic> json,
  ) {
    return ManufacturedItemDefinitionComponent(
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
      function_: (json['function'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      amount: (json['amount'] as List<dynamic>?)
          ?.map<Quantity>(
            (v) => Quantity.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      constituent: (json['constituent'] as List<dynamic>?)
          ?.map<ManufacturedItemDefinitionConstituent>(
            (v) => ManufacturedItemDefinitionConstituent.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      property: (json['property'] as List<dynamic>?)
          ?.map<ManufacturedItemDefinitionProperty>(
            (v) => ManufacturedItemDefinitionProperty.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      component: (json['component'] as List<dynamic>?)
          ?.map<ManufacturedItemDefinitionComponent>(
            (v) => ManufacturedItemDefinitionComponent.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ManufacturedItemDefinitionComponent]
  /// from a [String] or [YamlMap] object
  factory ManufacturedItemDefinitionComponent.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ManufacturedItemDefinitionComponent.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ManufacturedItemDefinitionComponent.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ManufacturedItemDefinitionComponent '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ManufacturedItemDefinitionComponent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ManufacturedItemDefinitionComponent.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ManufacturedItemDefinitionComponent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ManufacturedItemDefinitionComponent';

  /// [type]
  /// Defining type of the component e.g. shell, layer, ink.
  final CodeableConcept type;

  /// [function_]
  /// The function of this component within the item e.g. delivers active
  /// ingredient, masks taste.
  final List<CodeableConcept>? function_;

  /// [amount]
  /// The measurable amount of total quantity of all substances in the
  /// component, expressable in different ways (e.g. by mass or volume).
  final List<Quantity>? amount;

  /// [constituent]
  /// A reference to a constituent of the manufactured item as a whole,
  /// linked here so that its component location within the item can be
  /// indicated. This not where the item's ingredient are primarily stated
  /// (for which see Ingredient.for or
  /// ManufacturedItemDefinition.ingredient).
  final List<ManufacturedItemDefinitionConstituent>? constituent;

  /// [property]
  /// General characteristics of this component.
  final List<ManufacturedItemDefinitionProperty>? property;

  /// [component]
  /// A component that this component contains or is made from.
  final List<ManufacturedItemDefinitionComponent>? component;
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
      'function',
      function_,
    );
    addField(
      'amount',
      amount,
    );
    addField(
      'constituent',
      constituent,
    );
    addField(
      'property',
      property,
    );
    addField(
      'component',
      component,
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
      'function',
      'amount',
      'constituent',
      'property',
      'component',
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
      case 'function':
        if (function_ != null) {
          fields.addAll(function_!);
        }
      case 'amount':
        if (amount != null) {
          fields.addAll(amount!);
        }
      case 'constituent':
        if (constituent != null) {
          fields.addAll(constituent!);
        }
      case 'property':
        if (property != null) {
          fields.addAll(property!);
        }
      case 'component':
        if (component != null) {
          fields.addAll(component!);
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
  ManufacturedItemDefinitionComponent clone() => copyWith();

  /// Copy function for [ManufacturedItemDefinitionComponent]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ManufacturedItemDefinitionComponentCopyWith<
          ManufacturedItemDefinitionComponent>
      get copyWith => _$ManufacturedItemDefinitionComponentCopyWithImpl<
              ManufacturedItemDefinitionComponent>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ManufacturedItemDefinitionComponent) {
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
    if (!listEquals<CodeableConcept>(
      function_,
      o.function_,
    )) {
      return false;
    }
    if (!listEquals<Quantity>(
      amount,
      o.amount,
    )) {
      return false;
    }
    if (!listEquals<ManufacturedItemDefinitionConstituent>(
      constituent,
      o.constituent,
    )) {
      return false;
    }
    if (!listEquals<ManufacturedItemDefinitionProperty>(
      property,
      o.property,
    )) {
      return false;
    }
    if (!listEquals<ManufacturedItemDefinitionComponent>(
      component,
      o.component,
    )) {
      return false;
    }
    return true;
  }
}

/// [ManufacturedItemDefinitionConstituent]
/// A reference to a constituent of the manufactured item as a whole,
/// linked here so that its component location within the item can be
/// indicated. This not where the item's ingredient are primarily stated
/// (for which see Ingredient.for or
/// ManufacturedItemDefinition.ingredient).
class ManufacturedItemDefinitionConstituent extends BackboneElement {
  /// Primary constructor for
  /// [ManufacturedItemDefinitionConstituent]

  const ManufacturedItemDefinitionConstituent({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.amount,
    this.location,
    this.function_,
    this.hasIngredient,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ManufacturedItemDefinitionConstituent.fromJson(
    Map<String, dynamic> json,
  ) {
    return ManufacturedItemDefinitionConstituent(
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
      amount: (json['amount'] as List<dynamic>?)
          ?.map<Quantity>(
            (v) => Quantity.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      location: (json['location'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      function_: (json['function'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      hasIngredient: (json['hasIngredient'] as List<dynamic>?)
          ?.map<CodeableReference>(
            (v) => CodeableReference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ManufacturedItemDefinitionConstituent]
  /// from a [String] or [YamlMap] object
  factory ManufacturedItemDefinitionConstituent.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ManufacturedItemDefinitionConstituent.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ManufacturedItemDefinitionConstituent.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ManufacturedItemDefinitionConstituent '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ManufacturedItemDefinitionConstituent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ManufacturedItemDefinitionConstituent.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ManufacturedItemDefinitionConstituent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ManufacturedItemDefinitionConstituent';

  /// [amount]
  /// The measurable amount of the substance, expressable in different ways
  /// (e.g. by mass or volume).
  final List<Quantity>? amount;

  /// [location]
  /// The physical location of the constituent/ingredient within the
  /// component. Example – if the component is the bead in the capsule, then
  /// the location would be where the ingredient resides within the product
  /// part – intragranular, extra-granular, etc.
  final List<CodeableConcept>? location;

  /// [function_]
  /// The function of this constituent within the component e.g. binder.
  final List<CodeableConcept>? function_;

  /// [hasIngredient]
  /// The ingredient that is the constituent of the given component.
  final List<CodeableReference>? hasIngredient;
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
      'amount',
      amount,
    );
    addField(
      'location',
      location,
    );
    addField(
      'function',
      function_,
    );
    addField(
      'hasIngredient',
      hasIngredient,
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
      'amount',
      'location',
      'function',
      'hasIngredient',
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
      case 'amount':
        if (amount != null) {
          fields.addAll(amount!);
        }
      case 'location':
        if (location != null) {
          fields.addAll(location!);
        }
      case 'function':
        if (function_ != null) {
          fields.addAll(function_!);
        }
      case 'hasIngredient':
        if (hasIngredient != null) {
          fields.addAll(hasIngredient!);
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
  ManufacturedItemDefinitionConstituent clone() => copyWith();

  /// Copy function for [ManufacturedItemDefinitionConstituent]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ManufacturedItemDefinitionConstituentCopyWith<
          ManufacturedItemDefinitionConstituent>
      get copyWith => _$ManufacturedItemDefinitionConstituentCopyWithImpl<
              ManufacturedItemDefinitionConstituent>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ManufacturedItemDefinitionConstituent) {
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
    if (!listEquals<Quantity>(
      amount,
      o.amount,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      location,
      o.location,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      function_,
      o.function_,
    )) {
      return false;
    }
    if (!listEquals<CodeableReference>(
      hasIngredient,
      o.hasIngredient,
    )) {
      return false;
    }
    return true;
  }
}
