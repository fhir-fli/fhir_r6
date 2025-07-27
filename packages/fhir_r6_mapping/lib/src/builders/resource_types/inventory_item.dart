import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        InventoryItem,
        InventoryItemAssociation,
        InventoryItemCharacteristic,
        InventoryItemDescription,
        InventoryItemInstance,
        InventoryItemName,
        InventoryItemResponsibleOrganization,
        R5ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [InventoryItemBuilder]
/// A functional description of an inventory item used in inventory and
/// supply-related workflows.
class InventoryItemBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [InventoryItemBuilder]

  InventoryItemBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.status,
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
          objectPath: 'InventoryItem',
          resourceType: R5ResourceType.InventoryItem,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory InventoryItemBuilder.empty() => InventoryItemBuilder(
        status: InventoryItemStatusCodesBuilder.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InventoryItemBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'InventoryItem';
    return InventoryItemBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMetaBuilder>(
        json,
        'meta',
        FhirMetaBuilder.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'implicitRules',
        FhirUriBuilder.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<AllLanguagesBuilder>(
        json,
        'language',
        AllLanguagesBuilder.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<NarrativeBuilder>(
        json,
        'text',
        NarrativeBuilder.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<ResourceBuilder>(
            (v) => ResourceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<InventoryItemStatusCodesBuilder>(
        json,
        'status',
        InventoryItemStatusCodesBuilder.fromJson,
        '$objectPath.status',
      ),
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.category',
              },
            ),
          )
          .toList(),
      code: (json['code'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.code',
              },
            ),
          )
          .toList(),
      name: (json['name'] as List<dynamic>?)
          ?.map<InventoryItemNameBuilder>(
            (v) => InventoryItemNameBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.name',
              },
            ),
          )
          .toList(),
      responsibleOrganization:
          (json['responsibleOrganization'] as List<dynamic>?)
              ?.map<InventoryItemResponsibleOrganizationBuilder>(
                (v) => InventoryItemResponsibleOrganizationBuilder.fromJson(
                  {
                    ...v as Map<String, dynamic>,
                    'objectPath': '$objectPath.responsibleOrganization',
                  },
                ),
              )
              .toList(),
      description: JsonParser.parseObject<InventoryItemDescriptionBuilder>(
        json,
        'description',
        InventoryItemDescriptionBuilder.fromJson,
        '$objectPath.description',
      ),
      inventoryStatus: (json['inventoryStatus'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.inventoryStatus',
              },
            ),
          )
          .toList(),
      baseUnit: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'baseUnit',
        CodeableConceptBuilder.fromJson,
        '$objectPath.baseUnit',
      ),
      netContent: JsonParser.parseObject<QuantityBuilder>(
        json,
        'netContent',
        QuantityBuilder.fromJson,
        '$objectPath.netContent',
      ),
      association: (json['association'] as List<dynamic>?)
          ?.map<InventoryItemAssociationBuilder>(
            (v) => InventoryItemAssociationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.association',
              },
            ),
          )
          .toList(),
      characteristic: (json['characteristic'] as List<dynamic>?)
          ?.map<InventoryItemCharacteristicBuilder>(
            (v) => InventoryItemCharacteristicBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.characteristic',
              },
            ),
          )
          .toList(),
      instance: JsonParser.parseObject<InventoryItemInstanceBuilder>(
        json,
        'instance',
        InventoryItemInstanceBuilder.fromJson,
        '$objectPath.instance',
      ),
      productReference: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'productReference',
        ReferenceBuilder.fromJson,
        '$objectPath.productReference',
      ),
    );
  }

  /// Deserialize [InventoryItemBuilder]
  /// from a [String] or [YamlMap] object
  factory InventoryItemBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InventoryItemBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InventoryItemBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InventoryItemBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InventoryItemBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InventoryItemBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InventoryItemBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'InventoryItem';

  /// [identifier]
  /// Business identifier for the inventory item.
  List<IdentifierBuilder>? identifier;

  /// [status]
  /// Status of the item entry.
  InventoryItemStatusCodesBuilder? status;

  /// [category]
  /// Category or class of the item.
  List<CodeableConceptBuilder>? category;

  /// [code]
  /// Code designating the specific type of item.
  List<CodeableConceptBuilder>? code;

  /// [name]
  /// The item name(s) - the brand name, or common name, functional name,
  /// generic name.
  List<InventoryItemNameBuilder>? name;

  /// [responsibleOrganization]
  /// Organization(s) responsible for the product.
  List<InventoryItemResponsibleOrganizationBuilder>? responsibleOrganization;

  /// [description]
  /// The descriptive characteristics of the inventory item.
  InventoryItemDescriptionBuilder? description;

  /// [inventoryStatus]
  /// The usage status e.g. recalled, in use, discarded... This can be used
  /// to indicate that the items have been taken out of inventory, or are in
  /// use, etc.
  List<CodeableConceptBuilder>? inventoryStatus;

  /// [baseUnit]
  /// The base unit of measure - the unit in which the product is used or
  /// counted.
  CodeableConceptBuilder? baseUnit;

  /// [netContent]
  /// Net content or amount present in the item.
  QuantityBuilder? netContent;

  /// [association]
  /// Association with other items or products.
  List<InventoryItemAssociationBuilder>? association;

  /// [characteristic]
  /// The descriptive or identifying characteristics of the item.
  List<InventoryItemCharacteristicBuilder>? characteristic;

  /// [instance]
  /// Instances or occurrences of the product.
  InventoryItemInstanceBuilder? instance;

  /// [productReference]
  /// Link to a product resource used in clinical workflows.
  ReferenceBuilder? productReference;

  /// Converts a [InventoryItemBuilder]
  /// to [InventoryItem]
  @override
  InventoryItem build() => InventoryItem.fromJson(toJson());

  /// Converts a [InventoryItemBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('status', status);
    addField('category', category);
    addField('code', code);
    addField('name', name);
    addField('responsibleOrganization', responsibleOrganization);
    addField('description', description);
    addField('inventoryStatus', inventoryStatus);
    addField('baseUnit', baseUnit);
    addField('netContent', netContent);
    addField('association', association);
    addField('characteristic', characteristic);
    addField('instance', instance);
    addField('productReference', productReference);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (status != null) {
          fields.add(status!);
        }
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                implicitRules = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'language':
        {
          if (child is AllLanguagesBuilder) {
            language = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = AllLanguagesBuilder(stringValue);
                language = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'text':
        {
          if (child is NarrativeBuilder) {
            text = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contained':
        {
          if (child is List<ResourceBuilder>) {
            // Replace or create new list
            contained = child;
            return;
          } else if (child is ResourceBuilder) {
            // Add single element to existing list or create new list
            contained = [
              ...(contained ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'identifier':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            identifier = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            identifier = [
              ...(identifier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is InventoryItemStatusCodesBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = InventoryItemStatusCodesBuilder(stringValue);
                status = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'category':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            category = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            category = [
              ...(category ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'code':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            code = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            code = [
              ...(code ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'name':
        {
          if (child is List<InventoryItemNameBuilder>) {
            // Replace or create new list
            name = child;
            return;
          } else if (child is InventoryItemNameBuilder) {
            // Add single element to existing list or create new list
            name = [
              ...(name ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'responsibleOrganization':
        {
          if (child is List<InventoryItemResponsibleOrganizationBuilder>) {
            // Replace or create new list
            responsibleOrganization = child;
            return;
          } else if (child is InventoryItemResponsibleOrganizationBuilder) {
            // Add single element to existing list or create new list
            responsibleOrganization = [
              ...(responsibleOrganization ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is InventoryItemDescriptionBuilder) {
            description = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'inventoryStatus':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            inventoryStatus = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            inventoryStatus = [
              ...(inventoryStatus ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'baseUnit':
        {
          if (child is CodeableConceptBuilder) {
            baseUnit = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'netContent':
        {
          if (child is QuantityBuilder) {
            netContent = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'association':
        {
          if (child is List<InventoryItemAssociationBuilder>) {
            // Replace or create new list
            association = child;
            return;
          } else if (child is InventoryItemAssociationBuilder) {
            // Add single element to existing list or create new list
            association = [
              ...(association ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'characteristic':
        {
          if (child is List<InventoryItemCharacteristicBuilder>) {
            // Replace or create new list
            characteristic = child;
            return;
          } else if (child is InventoryItemCharacteristicBuilder) {
            // Add single element to existing list or create new list
            characteristic = [
              ...(characteristic ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'instance':
        {
          if (child is InventoryItemInstanceBuilder) {
            instance = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'productReference':
        {
          if (child is ReferenceBuilder) {
            productReference = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'meta':
        return ['FhirMetaBuilder'];
      case 'implicitRules':
        return ['FhirUriBuilder'];
      case 'language':
        return ['FhirCodeEnumBuilder'];
      case 'text':
        return ['NarrativeBuilder'];
      case 'contained':
        return ['ResourceBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'name':
        return ['InventoryItemNameBuilder'];
      case 'responsibleOrganization':
        return ['InventoryItemResponsibleOrganizationBuilder'];
      case 'description':
        return ['InventoryItemDescriptionBuilder'];
      case 'inventoryStatus':
        return ['CodeableConceptBuilder'];
      case 'baseUnit':
        return ['CodeableConceptBuilder'];
      case 'netContent':
        return ['QuantityBuilder'];
      case 'association':
        return ['InventoryItemAssociationBuilder'];
      case 'characteristic':
        return ['InventoryItemCharacteristicBuilder'];
      case 'instance':
        return ['InventoryItemInstanceBuilder'];
      case 'productReference':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [InventoryItemBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'meta':
        {
          meta = FhirMetaBuilder.empty();
          return;
        }
      case 'implicitRules':
        {
          implicitRules = FhirUriBuilder.empty();
          return;
        }
      case 'language':
        {
          language = AllLanguagesBuilder.empty();
          return;
        }
      case 'text':
        {
          text = NarrativeBuilder.empty();
          return;
        }
      case 'contained':
        {
          contained = <ResourceBuilder>[];
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'identifier':
        {
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'status':
        {
          status = InventoryItemStatusCodesBuilder.empty();
          return;
        }
      case 'category':
        {
          category = <CodeableConceptBuilder>[];
          return;
        }
      case 'code':
        {
          code = <CodeableConceptBuilder>[];
          return;
        }
      case 'name':
        {
          name = <InventoryItemNameBuilder>[];
          return;
        }
      case 'responsibleOrganization':
        {
          responsibleOrganization =
              <InventoryItemResponsibleOrganizationBuilder>[];
          return;
        }
      case 'description':
        {
          description = InventoryItemDescriptionBuilder.empty();
          return;
        }
      case 'inventoryStatus':
        {
          inventoryStatus = <CodeableConceptBuilder>[];
          return;
        }
      case 'baseUnit':
        {
          baseUnit = CodeableConceptBuilder.empty();
          return;
        }
      case 'netContent':
        {
          netContent = QuantityBuilder.empty();
          return;
        }
      case 'association':
        {
          association = <InventoryItemAssociationBuilder>[];
          return;
        }
      case 'characteristic':
        {
          characteristic = <InventoryItemCharacteristicBuilder>[];
          return;
        }
      case 'instance':
        {
          instance = InventoryItemInstanceBuilder.empty();
          return;
        }
      case 'productReference':
        {
          productReference = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  InventoryItemBuilder clone() => throw UnimplementedError();
  @override
  InventoryItemBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    InventoryItemStatusCodesBuilder? status,
    List<CodeableConceptBuilder>? category,
    List<CodeableConceptBuilder>? code,
    List<InventoryItemNameBuilder>? name,
    List<InventoryItemResponsibleOrganizationBuilder>? responsibleOrganization,
    InventoryItemDescriptionBuilder? description,
    List<CodeableConceptBuilder>? inventoryStatus,
    CodeableConceptBuilder? baseUnit,
    QuantityBuilder? netContent,
    List<InventoryItemAssociationBuilder>? association,
    List<InventoryItemCharacteristicBuilder>? characteristic,
    InventoryItemInstanceBuilder? instance,
    ReferenceBuilder? productReference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = InventoryItemBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      category: category ?? this.category,
      code: code ?? this.code,
      name: name ?? this.name,
      responsibleOrganization:
          responsibleOrganization ?? this.responsibleOrganization,
      description: description ?? this.description,
      inventoryStatus: inventoryStatus ?? this.inventoryStatus,
      baseUnit: baseUnit ?? this.baseUnit,
      netContent: netContent ?? this.netContent,
      association: association ?? this.association,
      characteristic: characteristic ?? this.characteristic,
      instance: instance ?? this.instance,
      productReference: productReference ?? this.productReference,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! InventoryItemBuilder) {
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
    if (!listEquals<ResourceBuilder>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<IdentifierBuilder>(
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
    if (!listEquals<CodeableConceptBuilder>(
      category,
      o.category,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      code,
      o.code,
    )) {
      return false;
    }
    if (!listEquals<InventoryItemNameBuilder>(
      name,
      o.name,
    )) {
      return false;
    }
    if (!listEquals<InventoryItemResponsibleOrganizationBuilder>(
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
    if (!listEquals<CodeableConceptBuilder>(
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
    if (!listEquals<InventoryItemAssociationBuilder>(
      association,
      o.association,
    )) {
      return false;
    }
    if (!listEquals<InventoryItemCharacteristicBuilder>(
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

/// [InventoryItemNameBuilder]
/// The item name(s) - the brand name, or common name, functional name,
/// generic name.
class InventoryItemNameBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [InventoryItemNameBuilder]

  InventoryItemNameBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.nameType,
    this.language,
    this.name,
    super.disallowExtensions,
  }) : super(
          objectPath: 'InventoryItem.name',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory InventoryItemNameBuilder.empty() => InventoryItemNameBuilder(
        nameType: CodingBuilder.empty(),
        language: CommonLanguagesBuilder.values.first,
        name: FhirStringBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InventoryItemNameBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'InventoryItem.name';
    return InventoryItemNameBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      nameType: JsonParser.parseObject<CodingBuilder>(
        json,
        'nameType',
        CodingBuilder.fromJson,
        '$objectPath.nameType',
      ),
      language: JsonParser.parsePrimitive<CommonLanguagesBuilder>(
        json,
        'language',
        CommonLanguagesBuilder.fromJson,
        '$objectPath.language',
      ),
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
    );
  }

  /// Deserialize [InventoryItemNameBuilder]
  /// from a [String] or [YamlMap] object
  factory InventoryItemNameBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InventoryItemNameBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InventoryItemNameBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InventoryItemNameBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InventoryItemNameBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InventoryItemNameBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InventoryItemNameBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'InventoryItemName';

  /// [nameType]
  /// The type of name e.g. 'brand-name', 'functional-name', 'common-name'.
  CodingBuilder? nameType;

  /// [language]
  /// The language that the item name is expressed in.
  CommonLanguagesBuilder? language;

  /// [name]
  /// The name or designation that the item is given.
  FhirStringBuilder? name;

  /// Converts a [InventoryItemNameBuilder]
  /// to [InventoryItemName]
  @override
  InventoryItemName build() => InventoryItemName.fromJson(toJson());

  /// Converts a [InventoryItemNameBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('nameType', nameType);
    addField('language', language);
    addField('name', name);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (nameType != null) {
          fields.add(nameType!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'nameType':
        {
          if (child is CodingBuilder) {
            nameType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'language':
        {
          if (child is CommonLanguagesBuilder) {
            language = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = CommonLanguagesBuilder(stringValue);
                language = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'name':
        {
          if (child is FhirStringBuilder) {
            name = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                name = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'nameType':
        return ['CodingBuilder'];
      case 'language':
        return ['FhirCodeEnumBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [InventoryItemNameBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'nameType':
        {
          nameType = CodingBuilder.empty();
          return;
        }
      case 'language':
        {
          language = CommonLanguagesBuilder.empty();
          return;
        }
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  InventoryItemNameBuilder clone() => throw UnimplementedError();
  @override
  InventoryItemNameBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodingBuilder? nameType,
    CommonLanguagesBuilder? language,
    FhirStringBuilder? name,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = InventoryItemNameBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      nameType: nameType ?? this.nameType,
      language: language ?? this.language,
      name: name ?? this.name,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! InventoryItemNameBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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

/// [InventoryItemResponsibleOrganizationBuilder]
/// Organization(s) responsible for the product.
class InventoryItemResponsibleOrganizationBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [InventoryItemResponsibleOrganizationBuilder]

  InventoryItemResponsibleOrganizationBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.role,
    this.organization,
    super.disallowExtensions,
  }) : super(
          objectPath: 'InventoryItem.responsibleOrganization',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory InventoryItemResponsibleOrganizationBuilder.empty() =>
      InventoryItemResponsibleOrganizationBuilder(
        role: CodeableConceptBuilder.empty(),
        organization: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InventoryItemResponsibleOrganizationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'InventoryItem.responsibleOrganization';
    return InventoryItemResponsibleOrganizationBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      role: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'role',
        CodeableConceptBuilder.fromJson,
        '$objectPath.role',
      ),
      organization: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'organization',
        ReferenceBuilder.fromJson,
        '$objectPath.organization',
      ),
    );
  }

  /// Deserialize [InventoryItemResponsibleOrganizationBuilder]
  /// from a [String] or [YamlMap] object
  factory InventoryItemResponsibleOrganizationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InventoryItemResponsibleOrganizationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InventoryItemResponsibleOrganizationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InventoryItemResponsibleOrganizationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InventoryItemResponsibleOrganizationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InventoryItemResponsibleOrganizationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InventoryItemResponsibleOrganizationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'InventoryItemResponsibleOrganization';

  /// [role]
  /// The role of the organization e.g. manufacturer, distributor, etc.
  CodeableConceptBuilder? role;

  /// [organization]
  /// An organization that has an association with the item, e.g.
  /// manufacturer, distributor, responsible, etc.
  ReferenceBuilder? organization;

  /// Converts a [InventoryItemResponsibleOrganizationBuilder]
  /// to [InventoryItemResponsibleOrganization]
  @override
  InventoryItemResponsibleOrganization build() =>
      InventoryItemResponsibleOrganization.fromJson(toJson());

  /// Converts a [InventoryItemResponsibleOrganizationBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('role', role);
    addField('organization', organization);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
      case 'organization':
        if (organization != null) {
          fields.add(organization!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'role':
        {
          if (child is CodeableConceptBuilder) {
            role = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'organization':
        {
          if (child is ReferenceBuilder) {
            organization = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'role':
        return ['CodeableConceptBuilder'];
      case 'organization':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [InventoryItemResponsibleOrganizationBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'role':
        {
          role = CodeableConceptBuilder.empty();
          return;
        }
      case 'organization':
        {
          organization = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  InventoryItemResponsibleOrganizationBuilder clone() =>
      throw UnimplementedError();
  @override
  InventoryItemResponsibleOrganizationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? role,
    ReferenceBuilder? organization,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = InventoryItemResponsibleOrganizationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      role: role ?? this.role,
      organization: organization ?? this.organization,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! InventoryItemResponsibleOrganizationBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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

/// [InventoryItemDescriptionBuilder]
/// The descriptive characteristics of the inventory item.
class InventoryItemDescriptionBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [InventoryItemDescriptionBuilder]

  InventoryItemDescriptionBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.language,
    this.description,
    super.disallowExtensions,
  }) : super(
          objectPath: 'InventoryItem.description',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory InventoryItemDescriptionBuilder.empty() =>
      InventoryItemDescriptionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InventoryItemDescriptionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'InventoryItem.description';
    return InventoryItemDescriptionBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      language: JsonParser.parsePrimitive<CommonLanguagesBuilder>(
        json,
        'language',
        CommonLanguagesBuilder.fromJson,
        '$objectPath.language',
      ),
      description: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'description',
        FhirStringBuilder.fromJson,
        '$objectPath.description',
      ),
    );
  }

  /// Deserialize [InventoryItemDescriptionBuilder]
  /// from a [String] or [YamlMap] object
  factory InventoryItemDescriptionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InventoryItemDescriptionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InventoryItemDescriptionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InventoryItemDescriptionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InventoryItemDescriptionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InventoryItemDescriptionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InventoryItemDescriptionBuilder.fromJson(json);
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
  CommonLanguagesBuilder? language;

  /// [description]
  /// Textual description of the item.
  FhirStringBuilder? description;

  /// Converts a [InventoryItemDescriptionBuilder]
  /// to [InventoryItemDescription]
  @override
  InventoryItemDescription build() =>
      InventoryItemDescription.fromJson(toJson());

  /// Converts a [InventoryItemDescriptionBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('language', language);
    addField('description', description);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'language':
        {
          if (child is CommonLanguagesBuilder) {
            language = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = CommonLanguagesBuilder(stringValue);
                language = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is FhirStringBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                description = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'language':
        return ['FhirCodeEnumBuilder'];
      case 'description':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [InventoryItemDescriptionBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'language':
        {
          language = CommonLanguagesBuilder.empty();
          return;
        }
      case 'description':
        {
          description = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  InventoryItemDescriptionBuilder clone() => throw UnimplementedError();
  @override
  InventoryItemDescriptionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CommonLanguagesBuilder? language,
    FhirStringBuilder? description,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = InventoryItemDescriptionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      language: language ?? this.language,
      description: description ?? this.description,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! InventoryItemDescriptionBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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

/// [InventoryItemAssociationBuilder]
/// Association with other items or products.
class InventoryItemAssociationBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [InventoryItemAssociationBuilder]

  InventoryItemAssociationBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.associationType,
    this.relatedItem,
    this.quantity,
    super.disallowExtensions,
  }) : super(
          objectPath: 'InventoryItem.association',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory InventoryItemAssociationBuilder.empty() =>
      InventoryItemAssociationBuilder(
        associationType: CodeableConceptBuilder.empty(),
        relatedItem: ReferenceBuilder.empty(),
        quantity: RatioBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InventoryItemAssociationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'InventoryItem.association';
    return InventoryItemAssociationBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      associationType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'associationType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.associationType',
      ),
      relatedItem: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'relatedItem',
        ReferenceBuilder.fromJson,
        '$objectPath.relatedItem',
      ),
      quantity: JsonParser.parseObject<RatioBuilder>(
        json,
        'quantity',
        RatioBuilder.fromJson,
        '$objectPath.quantity',
      ),
    );
  }

  /// Deserialize [InventoryItemAssociationBuilder]
  /// from a [String] or [YamlMap] object
  factory InventoryItemAssociationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InventoryItemAssociationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InventoryItemAssociationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InventoryItemAssociationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InventoryItemAssociationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InventoryItemAssociationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InventoryItemAssociationBuilder.fromJson(json);
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
  CodeableConceptBuilder? associationType;

  /// [relatedItem]
  /// The related item or product.
  ReferenceBuilder? relatedItem;

  /// [quantity]
  /// The quantity of the related product in this product - Numerator is the
  /// quantity of the related product. Denominator is the quantity of the
  /// present product. For example a value of 20 means that this product
  /// contains 20 units of the related product; a value of 1:20 means the
  /// inverse - that the contained product contains 20 units of the present
  /// product.
  RatioBuilder? quantity;

  /// Converts a [InventoryItemAssociationBuilder]
  /// to [InventoryItemAssociation]
  @override
  InventoryItemAssociation build() =>
      InventoryItemAssociation.fromJson(toJson());

  /// Converts a [InventoryItemAssociationBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('associationType', associationType);
    addField('relatedItem', relatedItem);
    addField('quantity', quantity);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (associationType != null) {
          fields.add(associationType!);
        }
      case 'relatedItem':
        if (relatedItem != null) {
          fields.add(relatedItem!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'associationType':
        {
          if (child is CodeableConceptBuilder) {
            associationType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'relatedItem':
        {
          if (child is ReferenceBuilder) {
            relatedItem = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'quantity':
        {
          if (child is RatioBuilder) {
            quantity = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'associationType':
        return ['CodeableConceptBuilder'];
      case 'relatedItem':
        return ['ReferenceBuilder'];
      case 'quantity':
        return ['RatioBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [InventoryItemAssociationBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'associationType':
        {
          associationType = CodeableConceptBuilder.empty();
          return;
        }
      case 'relatedItem':
        {
          relatedItem = ReferenceBuilder.empty();
          return;
        }
      case 'quantity':
        {
          quantity = RatioBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  InventoryItemAssociationBuilder clone() => throw UnimplementedError();
  @override
  InventoryItemAssociationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? associationType,
    ReferenceBuilder? relatedItem,
    RatioBuilder? quantity,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = InventoryItemAssociationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      associationType: associationType ?? this.associationType,
      relatedItem: relatedItem ?? this.relatedItem,
      quantity: quantity ?? this.quantity,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! InventoryItemAssociationBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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

/// [InventoryItemCharacteristicBuilder]
/// The descriptive or identifying characteristics of the item.
class InventoryItemCharacteristicBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [InventoryItemCharacteristicBuilder]

  InventoryItemCharacteristicBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.characteristicType,
    ValueXInventoryItemCharacteristicBuilder? valueX,
    FhirStringBuilder? valueString,
    FhirIntegerBuilder? valueInteger,
    FhirDecimalBuilder? valueDecimal,
    FhirBooleanBuilder? valueBoolean,
    FhirUrlBuilder? valueUrl,
    FhirDateTimeBuilder? valueDateTime,
    QuantityBuilder? valueQuantity,
    RangeBuilder? valueRange,
    RatioBuilder? valueRatio,
    AnnotationBuilder? valueAnnotation,
    AddressBuilder? valueAddress,
    FhirDurationBuilder? valueDuration,
    CodeableConceptBuilder? valueCodeableConcept,
    super.disallowExtensions,
  })  : valueX = valueX ??
            valueString ??
            valueInteger ??
            valueDecimal ??
            valueBoolean ??
            valueUrl ??
            valueDateTime ??
            valueQuantity ??
            valueRange ??
            valueRatio ??
            valueAnnotation ??
            valueAddress ??
            valueDuration ??
            valueCodeableConcept,
        super(
          objectPath: 'InventoryItem.characteristic',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory InventoryItemCharacteristicBuilder.empty() =>
      InventoryItemCharacteristicBuilder(
        characteristicType: CodeableConceptBuilder.empty(),
        valueX: FhirStringBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InventoryItemCharacteristicBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'InventoryItem.characteristic';
    return InventoryItemCharacteristicBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      characteristicType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'characteristicType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.characteristicType',
      ),
      valueX:
          JsonParser.parsePolymorphic<ValueXInventoryItemCharacteristicBuilder>(
        json,
        {
          'valueString': FhirStringBuilder.fromJson,
          'valueInteger': FhirIntegerBuilder.fromJson,
          'valueDecimal': FhirDecimalBuilder.fromJson,
          'valueBoolean': FhirBooleanBuilder.fromJson,
          'valueUrl': FhirUrlBuilder.fromJson,
          'valueDateTime': FhirDateTimeBuilder.fromJson,
          'valueQuantity': QuantityBuilder.fromJson,
          'valueRange': RangeBuilder.fromJson,
          'valueRatio': RatioBuilder.fromJson,
          'valueAnnotation': AnnotationBuilder.fromJson,
          'valueAddress': AddressBuilder.fromJson,
          'valueDuration': FhirDurationBuilder.fromJson,
          'valueCodeableConcept': CodeableConceptBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [InventoryItemCharacteristicBuilder]
  /// from a [String] or [YamlMap] object
  factory InventoryItemCharacteristicBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InventoryItemCharacteristicBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InventoryItemCharacteristicBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InventoryItemCharacteristicBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InventoryItemCharacteristicBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InventoryItemCharacteristicBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InventoryItemCharacteristicBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'InventoryItemCharacteristic';

  /// [characteristicType]
  /// The type of characteristic that is being defined.
  CodeableConceptBuilder? characteristicType;

  /// [valueX]
  /// The value of the attribute.
  ValueXInventoryItemCharacteristicBuilder? valueX;

  /// Getter for [valueString] as a FhirStringBuilder
  FhirStringBuilder? get valueString => valueX?.isAs<FhirStringBuilder>();

  /// Getter for [valueInteger] as a FhirIntegerBuilder
  FhirIntegerBuilder? get valueInteger => valueX?.isAs<FhirIntegerBuilder>();

  /// Getter for [valueDecimal] as a FhirDecimalBuilder
  FhirDecimalBuilder? get valueDecimal => valueX?.isAs<FhirDecimalBuilder>();

  /// Getter for [valueBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get valueBoolean => valueX?.isAs<FhirBooleanBuilder>();

  /// Getter for [valueUrl] as a FhirUrlBuilder
  FhirUrlBuilder? get valueUrl => valueX?.isAs<FhirUrlBuilder>();

  /// Getter for [valueDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get valueDateTime => valueX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [valueQuantity] as a QuantityBuilder
  QuantityBuilder? get valueQuantity => valueX?.isAs<QuantityBuilder>();

  /// Getter for [valueRange] as a RangeBuilder
  RangeBuilder? get valueRange => valueX?.isAs<RangeBuilder>();

  /// Getter for [valueRatio] as a RatioBuilder
  RatioBuilder? get valueRatio => valueX?.isAs<RatioBuilder>();

  /// Getter for [valueAnnotation] as a AnnotationBuilder
  AnnotationBuilder? get valueAnnotation => valueX?.isAs<AnnotationBuilder>();

  /// Getter for [valueAddress] as a AddressBuilder
  AddressBuilder? get valueAddress => valueX?.isAs<AddressBuilder>();

  /// Getter for [valueDuration] as a FhirDurationBuilder
  FhirDurationBuilder? get valueDuration => valueX?.isAs<FhirDurationBuilder>();

  /// Getter for [valueCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get valueCodeableConcept =>
      valueX?.isAs<CodeableConceptBuilder>();

  /// Converts a [InventoryItemCharacteristicBuilder]
  /// to [InventoryItemCharacteristic]
  @override
  InventoryItemCharacteristic build() =>
      InventoryItemCharacteristic.fromJson(toJson());

  /// Converts a [InventoryItemCharacteristicBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('characteristicType', characteristicType);
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField('value${fhirType.capitalizeFirstLetter()}', valueX);
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
      'characteristicType',
      'valueX',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (characteristicType != null) {
          fields.add(characteristicType!);
        }
      case 'value':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueX':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueString':
        if (valueX is FhirStringBuilder) {
          fields.add(valueX!);
        }
      case 'valueInteger':
        if (valueX is FhirIntegerBuilder) {
          fields.add(valueX!);
        }
      case 'valueDecimal':
        if (valueX is FhirDecimalBuilder) {
          fields.add(valueX!);
        }
      case 'valueBoolean':
        if (valueX is FhirBooleanBuilder) {
          fields.add(valueX!);
        }
      case 'valueUrl':
        if (valueX is FhirUrlBuilder) {
          fields.add(valueX!);
        }
      case 'valueDateTime':
        if (valueX is FhirDateTimeBuilder) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is QuantityBuilder) {
          fields.add(valueX!);
        }
      case 'valueRange':
        if (valueX is RangeBuilder) {
          fields.add(valueX!);
        }
      case 'valueRatio':
        if (valueX is RatioBuilder) {
          fields.add(valueX!);
        }
      case 'valueAnnotation':
        if (valueX is AnnotationBuilder) {
          fields.add(valueX!);
        }
      case 'valueAddress':
        if (valueX is AddressBuilder) {
          fields.add(valueX!);
        }
      case 'valueDuration':
        if (valueX is FhirDurationBuilder) {
          fields.add(valueX!);
        }
      case 'valueCodeableConcept':
        if (valueX is CodeableConceptBuilder) {
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'characteristicType':
        {
          if (child is CodeableConceptBuilder) {
            characteristicType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'value':
      case 'valueX':
        {
          if (child is ValueXInventoryItemCharacteristicBuilder) {
            valueX = child;
            return;
          } else {
            if (child is FhirStringBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirIntegerBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDecimalBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirBooleanBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirUrlBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDateTimeBuilder) {
              valueX = child;
              return;
            }
            if (child is QuantityBuilder) {
              valueX = child;
              return;
            }
            if (child is RangeBuilder) {
              valueX = child;
              return;
            }
            if (child is RatioBuilder) {
              valueX = child;
              return;
            }
            if (child is AnnotationBuilder) {
              valueX = child;
              return;
            }
            if (child is AddressBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDurationBuilder) {
              valueX = child;
              return;
            }
            if (child is CodeableConceptBuilder) {
              valueX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueString':
        {
          if (child is FhirStringBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueInteger':
        {
          if (child is FhirIntegerBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDecimal':
        {
          if (child is FhirDecimalBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueBoolean':
        {
          if (child is FhirBooleanBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueUrl':
        {
          if (child is FhirUrlBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueQuantity':
        {
          if (child is QuantityBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueRange':
        {
          if (child is RangeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueRatio':
        {
          if (child is RatioBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueAnnotation':
        {
          if (child is AnnotationBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueAddress':
        {
          if (child is AddressBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDuration':
        {
          if (child is FhirDurationBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'characteristicType':
        return ['CodeableConceptBuilder'];
      case 'value':
      case 'valueX':
        return [
          'FhirStringBuilder',
          'FhirIntegerBuilder',
          'FhirDecimalBuilder',
          'FhirBooleanBuilder',
          'FhirUrlBuilder',
          'FhirDateTimeBuilder',
          'QuantityBuilder',
          'RangeBuilder',
          'RatioBuilder',
          'AnnotationBuilder',
          'AddressBuilder',
          'FhirDurationBuilder',
          'CodeableConceptBuilder',
        ];
      case 'valueString':
        return ['FhirStringBuilder'];
      case 'valueInteger':
        return ['FhirIntegerBuilder'];
      case 'valueDecimal':
        return ['FhirDecimalBuilder'];
      case 'valueBoolean':
        return ['FhirBooleanBuilder'];
      case 'valueUrl':
        return ['FhirUrlBuilder'];
      case 'valueDateTime':
        return ['FhirDateTimeBuilder'];
      case 'valueQuantity':
        return ['QuantityBuilder'];
      case 'valueRange':
        return ['RangeBuilder'];
      case 'valueRatio':
        return ['RatioBuilder'];
      case 'valueAnnotation':
        return ['AnnotationBuilder'];
      case 'valueAddress':
        return ['AddressBuilder'];
      case 'valueDuration':
        return ['FhirDurationBuilder'];
      case 'valueCodeableConcept':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [InventoryItemCharacteristicBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'characteristicType':
        {
          characteristicType = CodeableConceptBuilder.empty();
          return;
        }
      case 'value':
      case 'valueX':
      case 'valueString':
        {
          valueX = FhirStringBuilder.empty();
          return;
        }
      case 'valueInteger':
        {
          valueX = FhirIntegerBuilder.empty();
          return;
        }
      case 'valueDecimal':
        {
          valueX = FhirDecimalBuilder.empty();
          return;
        }
      case 'valueBoolean':
        {
          valueX = FhirBooleanBuilder.empty();
          return;
        }
      case 'valueUrl':
        {
          valueX = FhirUrlBuilder.empty();
          return;
        }
      case 'valueDateTime':
        {
          valueX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'valueQuantity':
        {
          valueX = QuantityBuilder.empty();
          return;
        }
      case 'valueRange':
        {
          valueX = RangeBuilder.empty();
          return;
        }
      case 'valueRatio':
        {
          valueX = RatioBuilder.empty();
          return;
        }
      case 'valueAnnotation':
        {
          valueX = AnnotationBuilder.empty();
          return;
        }
      case 'valueAddress':
        {
          valueX = AddressBuilder.empty();
          return;
        }
      case 'valueDuration':
        {
          valueX = FhirDurationBuilder.empty();
          return;
        }
      case 'valueCodeableConcept':
        {
          valueX = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  InventoryItemCharacteristicBuilder clone() => throw UnimplementedError();
  @override
  InventoryItemCharacteristicBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? characteristicType,
    ValueXInventoryItemCharacteristicBuilder? valueX,
    FhirStringBuilder? valueString,
    FhirIntegerBuilder? valueInteger,
    FhirDecimalBuilder? valueDecimal,
    FhirBooleanBuilder? valueBoolean,
    FhirUrlBuilder? valueUrl,
    FhirDateTimeBuilder? valueDateTime,
    QuantityBuilder? valueQuantity,
    RangeBuilder? valueRange,
    RatioBuilder? valueRatio,
    AnnotationBuilder? valueAnnotation,
    AddressBuilder? valueAddress,
    FhirDurationBuilder? valueDuration,
    CodeableConceptBuilder? valueCodeableConcept,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = InventoryItemCharacteristicBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      characteristicType: characteristicType ?? this.characteristicType,
      valueX: valueX ??
          valueString ??
          valueInteger ??
          valueDecimal ??
          valueBoolean ??
          valueUrl ??
          valueDateTime ??
          valueQuantity ??
          valueRange ??
          valueRatio ??
          valueAnnotation ??
          valueAddress ??
          valueDuration ??
          valueCodeableConcept ??
          this.valueX,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! InventoryItemCharacteristicBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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

/// [InventoryItemInstanceBuilder]
/// Instances or occurrences of the product.
class InventoryItemInstanceBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [InventoryItemInstanceBuilder]

  InventoryItemInstanceBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.lotNumber,
    this.expiry,
    this.subject,
    this.location,
    super.disallowExtensions,
  }) : super(
          objectPath: 'InventoryItem.instance',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory InventoryItemInstanceBuilder.empty() =>
      InventoryItemInstanceBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InventoryItemInstanceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'InventoryItem.instance';
    return InventoryItemInstanceBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      lotNumber: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'lotNumber',
        FhirStringBuilder.fromJson,
        '$objectPath.lotNumber',
      ),
      expiry: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'expiry',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.expiry',
      ),
      subject: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'subject',
        ReferenceBuilder.fromJson,
        '$objectPath.subject',
      ),
      location: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'location',
        ReferenceBuilder.fromJson,
        '$objectPath.location',
      ),
    );
  }

  /// Deserialize [InventoryItemInstanceBuilder]
  /// from a [String] or [YamlMap] object
  factory InventoryItemInstanceBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InventoryItemInstanceBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InventoryItemInstanceBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InventoryItemInstanceBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InventoryItemInstanceBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InventoryItemInstanceBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return InventoryItemInstanceBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'InventoryItemInstance';

  /// [identifier]
  /// The identifier for the physical instance, typically a serial number.
  List<IdentifierBuilder>? identifier;

  /// [lotNumber]
  /// The lot or batch number of the item.
  FhirStringBuilder? lotNumber;

  /// [expiry]
  /// The expiry date or date and time for the product.
  FhirDateTimeBuilder? expiry;

  /// [subject]
  /// The subject that the item is associated with.
  ReferenceBuilder? subject;

  /// [location]
  /// The location that the item is associated with.
  ReferenceBuilder? location;

  /// Converts a [InventoryItemInstanceBuilder]
  /// to [InventoryItemInstance]
  @override
  InventoryItemInstance build() => InventoryItemInstance.fromJson(toJson());

  /// Converts a [InventoryItemInstanceBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('lotNumber', lotNumber);
    addField('expiry', expiry);
    addField('subject', subject);
    addField('location', location);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'identifier':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            identifier = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            identifier = [
              ...(identifier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'lotNumber':
        {
          if (child is FhirStringBuilder) {
            lotNumber = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                lotNumber = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'expiry':
        {
          if (child is FhirDateTimeBuilder) {
            expiry = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                expiry = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subject':
        {
          if (child is ReferenceBuilder) {
            subject = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'location':
        {
          if (child is ReferenceBuilder) {
            location = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'lotNumber':
        return ['FhirStringBuilder'];
      case 'expiry':
        return ['FhirDateTimeBuilder'];
      case 'subject':
        return ['ReferenceBuilder'];
      case 'location':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [InventoryItemInstanceBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'identifier':
        {
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'lotNumber':
        {
          lotNumber = FhirStringBuilder.empty();
          return;
        }
      case 'expiry':
        {
          expiry = FhirDateTimeBuilder.empty();
          return;
        }
      case 'subject':
        {
          subject = ReferenceBuilder.empty();
          return;
        }
      case 'location':
        {
          location = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  InventoryItemInstanceBuilder clone() => throw UnimplementedError();
  @override
  InventoryItemInstanceBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    FhirStringBuilder? lotNumber,
    FhirDateTimeBuilder? expiry,
    ReferenceBuilder? subject,
    ReferenceBuilder? location,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = InventoryItemInstanceBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      lotNumber: lotNumber ?? this.lotNumber,
      expiry: expiry ?? this.expiry,
      subject: subject ?? this.subject,
      location: location ?? this.location,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! InventoryItemInstanceBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<IdentifierBuilder>(
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
