// ignore_for_file: lines_longer_than_80_chars

import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        PackagedProductDefinition,
        PackagedProductDefinitionContainedItem,
        PackagedProductDefinitionLegalStatusOfSupply,
        PackagedProductDefinitionPackaging,
        PackagedProductDefinitionProperty,
        R5ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [PackagedProductDefinitionBuilder]
/// A medically related item or items, in a container or package.
class PackagedProductDefinitionBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [PackagedProductDefinitionBuilder]

  PackagedProductDefinitionBuilder({
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
          objectPath: 'PackagedProductDefinition',
          resourceType: R5ResourceType.PackagedProductDefinition,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory PackagedProductDefinitionBuilder.empty() =>
      PackagedProductDefinitionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PackagedProductDefinitionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'PackagedProductDefinition';
    return PackagedProductDefinitionBuilder(
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
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      packageFor: (json['packageFor'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.packageFor',
              },
            ),
          )
          .toList(),
      status: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'status',
        CodeableConceptBuilder.fromJson,
        '$objectPath.status',
      ),
      statusDate: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'statusDate',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.statusDate',
      ),
      containedItemQuantity: (json['containedItemQuantity'] as List<dynamic>?)
          ?.map<QuantityBuilder>(
            (v) => QuantityBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.containedItemQuantity',
              },
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'description',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.description',
      ),
      legalStatusOfSupply: (json['legalStatusOfSupply'] as List<dynamic>?)
          ?.map<PackagedProductDefinitionLegalStatusOfSupplyBuilder>(
            (v) => PackagedProductDefinitionLegalStatusOfSupplyBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.legalStatusOfSupply',
              },
            ),
          )
          .toList(),
      marketingStatus: (json['marketingStatus'] as List<dynamic>?)
          ?.map<MarketingStatusBuilder>(
            (v) => MarketingStatusBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.marketingStatus',
              },
            ),
          )
          .toList(),
      copackagedIndicator: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'copackagedIndicator',
        FhirBooleanBuilder.fromJson,
        '$objectPath.copackagedIndicator',
      ),
      manufacturer: (json['manufacturer'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.manufacturer',
              },
            ),
          )
          .toList(),
      attachedDocument: (json['attachedDocument'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.attachedDocument',
              },
            ),
          )
          .toList(),
      packaging:
          JsonParser.parseObject<PackagedProductDefinitionPackagingBuilder>(
        json,
        'packaging',
        PackagedProductDefinitionPackagingBuilder.fromJson,
        '$objectPath.packaging',
      ),
      characteristic: (json['characteristic'] as List<dynamic>?)
          ?.map<PackagedProductDefinitionPropertyBuilder>(
            (v) => PackagedProductDefinitionPropertyBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.characteristic',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [PackagedProductDefinitionBuilder]
  /// from a [String] or [YamlMap] object
  factory PackagedProductDefinitionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PackagedProductDefinitionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PackagedProductDefinitionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PackagedProductDefinitionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PackagedProductDefinitionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PackagedProductDefinitionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PackagedProductDefinitionBuilder.fromJson(json);
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
  List<IdentifierBuilder>? identifier;

  /// [name]
  /// A name for this package. Typically what it would be listed as in a drug
  /// formulary or catalogue, inventory etc.
  FhirStringBuilder? name;

  /// [type]
  /// A high level category e.g. medicinal product, raw material,
  /// shipping/transport container, etc.
  CodeableConceptBuilder? type;

  /// [packageFor]
  /// The product this package model relates to, not the contents of the
  /// package (for which see package.containedItem).
  List<ReferenceBuilder>? packageFor;

  /// [status]
  /// The status within the lifecycle of this item. A high level status, this
  /// is not intended to duplicate details carried elsewhere such as legal
  /// status, or authorization or marketing status.
  CodeableConceptBuilder? status;

  /// [statusDate]
  /// The date at which the given status became applicable.
  FhirDateTimeBuilder? statusDate;

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
  List<QuantityBuilder>? containedItemQuantity;

  /// [description]
  /// Textual description. Note that this is not the name of the package or
  /// product.
  FhirMarkdownBuilder? description;

  /// [legalStatusOfSupply]
  /// The legal status of supply of the packaged item as classified by the
  /// regulator.
  List<PackagedProductDefinitionLegalStatusOfSupplyBuilder>?
      legalStatusOfSupply;

  /// [marketingStatus]
  /// Allows specifying that an item is on the market for sale, or that it is
  /// not available, and the dates and locations associated.
  List<MarketingStatusBuilder>? marketingStatus;

  /// [copackagedIndicator]
  /// Identifies if the package contains different items, such as when a drug
  /// product is supplied with another item e.g. a diluent or adjuvant.
  FhirBooleanBuilder? copackagedIndicator;

  /// [manufacturer]
  /// Manufacturer of this package type. When there are multiple it means
  /// these are all possible manufacturers.
  List<ReferenceBuilder>? manufacturer;

  /// [attachedDocument]
  /// Additional information or supporting documentation about the packaged
  /// product.
  List<ReferenceBuilder>? attachedDocument;

  /// [packaging]
  /// A packaging item, as a container for medically related items, possibly
  /// with other packaging items within, or a packaging component, such as
  /// bottle cap (which is not a device or a medication manufactured item).
  PackagedProductDefinitionPackagingBuilder? packaging;

  /// [characteristic]
  /// Allows the key features to be recorded, such as "hospital pack", "nurse
  /// prescribable", "calendar pack".
  List<PackagedProductDefinitionPropertyBuilder>? characteristic;

  /// Converts a [PackagedProductDefinitionBuilder]
  /// to [PackagedProductDefinition]
  @override
  PackagedProductDefinition build() =>
      PackagedProductDefinition.fromJson(toJson());

  /// Converts a [PackagedProductDefinitionBuilder]
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
    addField('name', name);
    addField('type', type);
    addField('packageFor', packageFor);
    addField('status', status);
    addField('statusDate', statusDate);
    addField('containedItemQuantity', containedItemQuantity);
    addField('description', description);
    addField('legalStatusOfSupply', legalStatusOfSupply);
    addField('marketingStatus', marketingStatus);
    addField('copackagedIndicator', copackagedIndicator);
    addField('manufacturer', manufacturer);
    addField('attachedDocument', attachedDocument);
    addField('packaging', packaging);
    addField('characteristic', characteristic);
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
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'packageFor':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            packageFor = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            packageFor = [
              ...(packageFor ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is CodeableConceptBuilder) {
            status = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'statusDate':
        {
          if (child is FhirDateTimeBuilder) {
            statusDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                statusDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'containedItemQuantity':
        {
          if (child is List<QuantityBuilder>) {
            // Replace or create new list
            containedItemQuantity = child;
            return;
          } else if (child is QuantityBuilder) {
            // Add single element to existing list or create new list
            containedItemQuantity = [
              ...(containedItemQuantity ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is FhirMarkdownBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
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
      case 'legalStatusOfSupply':
        {
          if (child
              is List<PackagedProductDefinitionLegalStatusOfSupplyBuilder>) {
            // Replace or create new list
            legalStatusOfSupply = child;
            return;
          } else if (child
              is PackagedProductDefinitionLegalStatusOfSupplyBuilder) {
            // Add single element to existing list or create new list
            legalStatusOfSupply = [
              ...(legalStatusOfSupply ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'marketingStatus':
        {
          if (child is List<MarketingStatusBuilder>) {
            // Replace or create new list
            marketingStatus = child;
            return;
          } else if (child is MarketingStatusBuilder) {
            // Add single element to existing list or create new list
            marketingStatus = [
              ...(marketingStatus ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'copackagedIndicator':
        {
          if (child is FhirBooleanBuilder) {
            copackagedIndicator = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                copackagedIndicator = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'manufacturer':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            manufacturer = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            manufacturer = [
              ...(manufacturer ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'attachedDocument':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            attachedDocument = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            attachedDocument = [
              ...(attachedDocument ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'packaging':
        {
          if (child is PackagedProductDefinitionPackagingBuilder) {
            packaging = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'characteristic':
        {
          if (child is List<PackagedProductDefinitionPropertyBuilder>) {
            // Replace or create new list
            characteristic = child;
            return;
          } else if (child is PackagedProductDefinitionPropertyBuilder) {
            // Add single element to existing list or create new list
            characteristic = [
              ...(characteristic ?? []),
              child,
            ];
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
      case 'name':
        return ['FhirStringBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'packageFor':
        return ['ReferenceBuilder'];
      case 'status':
        return ['CodeableConceptBuilder'];
      case 'statusDate':
        return ['FhirDateTimeBuilder'];
      case 'containedItemQuantity':
        return ['QuantityBuilder'];
      case 'description':
        return ['FhirMarkdownBuilder'];
      case 'legalStatusOfSupply':
        return ['PackagedProductDefinitionLegalStatusOfSupplyBuilder'];
      case 'marketingStatus':
        return ['MarketingStatusBuilder'];
      case 'copackagedIndicator':
        return ['FhirBooleanBuilder'];
      case 'manufacturer':
        return ['ReferenceBuilder'];
      case 'attachedDocument':
        return ['ReferenceBuilder'];
      case 'packaging':
        return ['PackagedProductDefinitionPackagingBuilder'];
      case 'characteristic':
        return ['PackagedProductDefinitionPropertyBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [PackagedProductDefinitionBuilder]
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
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'packageFor':
        {
          packageFor = <ReferenceBuilder>[];
          return;
        }
      case 'status':
        {
          status = CodeableConceptBuilder.empty();
          return;
        }
      case 'statusDate':
        {
          statusDate = FhirDateTimeBuilder.empty();
          return;
        }
      case 'containedItemQuantity':
        {
          containedItemQuantity = <QuantityBuilder>[];
          return;
        }
      case 'description':
        {
          description = FhirMarkdownBuilder.empty();
          return;
        }
      case 'legalStatusOfSupply':
        {
          legalStatusOfSupply =
              <PackagedProductDefinitionLegalStatusOfSupplyBuilder>[];
          return;
        }
      case 'marketingStatus':
        {
          marketingStatus = <MarketingStatusBuilder>[];
          return;
        }
      case 'copackagedIndicator':
        {
          copackagedIndicator = FhirBooleanBuilder.empty();
          return;
        }
      case 'manufacturer':
        {
          manufacturer = <ReferenceBuilder>[];
          return;
        }
      case 'attachedDocument':
        {
          attachedDocument = <ReferenceBuilder>[];
          return;
        }
      case 'packaging':
        {
          packaging = PackagedProductDefinitionPackagingBuilder.empty();
          return;
        }
      case 'characteristic':
        {
          characteristic = <PackagedProductDefinitionPropertyBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  PackagedProductDefinitionBuilder clone() => throw UnimplementedError();
  @override
  PackagedProductDefinitionBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    FhirStringBuilder? name,
    CodeableConceptBuilder? type,
    List<ReferenceBuilder>? packageFor,
    CodeableConceptBuilder? status,
    FhirDateTimeBuilder? statusDate,
    List<QuantityBuilder>? containedItemQuantity,
    FhirMarkdownBuilder? description,
    List<PackagedProductDefinitionLegalStatusOfSupplyBuilder>?
        legalStatusOfSupply,
    List<MarketingStatusBuilder>? marketingStatus,
    FhirBooleanBuilder? copackagedIndicator,
    List<ReferenceBuilder>? manufacturer,
    List<ReferenceBuilder>? attachedDocument,
    PackagedProductDefinitionPackagingBuilder? packaging,
    List<PackagedProductDefinitionPropertyBuilder>? characteristic,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = PackagedProductDefinitionBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      name: name ?? this.name,
      type: type ?? this.type,
      packageFor: packageFor ?? this.packageFor,
      status: status ?? this.status,
      statusDate: statusDate ?? this.statusDate,
      containedItemQuantity:
          containedItemQuantity ?? this.containedItemQuantity,
      description: description ?? this.description,
      legalStatusOfSupply: legalStatusOfSupply ?? this.legalStatusOfSupply,
      marketingStatus: marketingStatus ?? this.marketingStatus,
      copackagedIndicator: copackagedIndicator ?? this.copackagedIndicator,
      manufacturer: manufacturer ?? this.manufacturer,
      attachedDocument: attachedDocument ?? this.attachedDocument,
      packaging: packaging ?? this.packaging,
      characteristic: characteristic ?? this.characteristic,
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
    if (o is! PackagedProductDefinitionBuilder) {
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
    if (!listEquals<ReferenceBuilder>(
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
    if (!listEquals<QuantityBuilder>(
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
    if (!listEquals<PackagedProductDefinitionLegalStatusOfSupplyBuilder>(
      legalStatusOfSupply,
      o.legalStatusOfSupply,
    )) {
      return false;
    }
    if (!listEquals<MarketingStatusBuilder>(
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
    if (!listEquals<ReferenceBuilder>(
      manufacturer,
      o.manufacturer,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
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
    if (!listEquals<PackagedProductDefinitionPropertyBuilder>(
      characteristic,
      o.characteristic,
    )) {
      return false;
    }
    return true;
  }
}

/// [PackagedProductDefinitionLegalStatusOfSupplyBuilder]
/// The legal status of supply of the packaged item as classified by the
/// regulator.
class PackagedProductDefinitionLegalStatusOfSupplyBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [PackagedProductDefinitionLegalStatusOfSupplyBuilder]

  PackagedProductDefinitionLegalStatusOfSupplyBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.jurisdiction,
    super.disallowExtensions,
  }) : super(
          objectPath: 'PackagedProductDefinition.legalStatusOfSupply',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory PackagedProductDefinitionLegalStatusOfSupplyBuilder.empty() =>
      PackagedProductDefinitionLegalStatusOfSupplyBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PackagedProductDefinitionLegalStatusOfSupplyBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'PackagedProductDefinition.legalStatusOfSupply';
    return PackagedProductDefinitionLegalStatusOfSupplyBuilder(
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
      code: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'code',
        CodeableConceptBuilder.fromJson,
        '$objectPath.code',
      ),
      jurisdiction: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'jurisdiction',
        CodeableConceptBuilder.fromJson,
        '$objectPath.jurisdiction',
      ),
    );
  }

  /// Deserialize [PackagedProductDefinitionLegalStatusOfSupplyBuilder]
  /// from a [String] or [YamlMap] object
  factory PackagedProductDefinitionLegalStatusOfSupplyBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PackagedProductDefinitionLegalStatusOfSupplyBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PackagedProductDefinitionLegalStatusOfSupplyBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PackagedProductDefinitionLegalStatusOfSupplyBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PackagedProductDefinitionLegalStatusOfSupplyBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PackagedProductDefinitionLegalStatusOfSupplyBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PackagedProductDefinitionLegalStatusOfSupplyBuilder.fromJson(json);
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
  CodeableConceptBuilder? code;

  /// [jurisdiction]
  /// The place where the legal status of supply applies. When not specified,
  /// this indicates it is unknown in this context.
  CodeableConceptBuilder? jurisdiction;

  /// Converts a [PackagedProductDefinitionLegalStatusOfSupplyBuilder]
  /// to [PackagedProductDefinitionLegalStatusOfSupply]
  @override
  PackagedProductDefinitionLegalStatusOfSupply build() =>
      PackagedProductDefinitionLegalStatusOfSupply.fromJson(toJson());

  /// Converts a [PackagedProductDefinitionLegalStatusOfSupplyBuilder]
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
    addField('code', code);
    addField('jurisdiction', jurisdiction);
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
      case 'code':
        {
          if (child is CodeableConceptBuilder) {
            code = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'jurisdiction':
        {
          if (child is CodeableConceptBuilder) {
            jurisdiction = child;
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
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'jurisdiction':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [PackagedProductDefinitionLegalStatusOfSupplyBuilder]
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
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
          return;
        }
      case 'jurisdiction':
        {
          jurisdiction = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  PackagedProductDefinitionLegalStatusOfSupplyBuilder clone() =>
      throw UnimplementedError();
  @override
  PackagedProductDefinitionLegalStatusOfSupplyBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? code,
    CodeableConceptBuilder? jurisdiction,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = PackagedProductDefinitionLegalStatusOfSupplyBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      jurisdiction: jurisdiction ?? this.jurisdiction,
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
    if (o is! PackagedProductDefinitionLegalStatusOfSupplyBuilder) {
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

/// [PackagedProductDefinitionPackagingBuilder]
/// A packaging item, as a container for medically related items, possibly
/// with other packaging items within, or a packaging component, such as
/// bottle cap (which is not a device or a medication manufactured item).
class PackagedProductDefinitionPackagingBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [PackagedProductDefinitionPackagingBuilder]

  PackagedProductDefinitionPackagingBuilder({
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
  }) : super(
          objectPath: 'PackagedProductDefinition.packaging',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory PackagedProductDefinitionPackagingBuilder.empty() =>
      PackagedProductDefinitionPackagingBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PackagedProductDefinitionPackagingBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'PackagedProductDefinition.packaging';
    return PackagedProductDefinitionPackagingBuilder(
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
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      componentPart: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'componentPart',
        FhirBooleanBuilder.fromJson,
        '$objectPath.componentPart',
      ),
      quantity: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'quantity',
        FhirIntegerBuilder.fromJson,
        '$objectPath.quantity',
      ),
      material: (json['material'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.material',
              },
            ),
          )
          .toList(),
      alternateMaterial: (json['alternateMaterial'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.alternateMaterial',
              },
            ),
          )
          .toList(),
      shelfLifeStorage: (json['shelfLifeStorage'] as List<dynamic>?)
          ?.map<ProductShelfLifeBuilder>(
            (v) => ProductShelfLifeBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.shelfLifeStorage',
              },
            ),
          )
          .toList(),
      manufacturer: (json['manufacturer'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.manufacturer',
              },
            ),
          )
          .toList(),
      property: (json['property'] as List<dynamic>?)
          ?.map<PackagedProductDefinitionPropertyBuilder>(
            (v) => PackagedProductDefinitionPropertyBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.property',
              },
            ),
          )
          .toList(),
      containedItem: (json['containedItem'] as List<dynamic>?)
          ?.map<PackagedProductDefinitionContainedItemBuilder>(
            (v) => PackagedProductDefinitionContainedItemBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.containedItem',
              },
            ),
          )
          .toList(),
      packaging: (json['packaging'] as List<dynamic>?)
          ?.map<PackagedProductDefinitionPackagingBuilder>(
            (v) => PackagedProductDefinitionPackagingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.packaging',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [PackagedProductDefinitionPackagingBuilder]
  /// from a [String] or [YamlMap] object
  factory PackagedProductDefinitionPackagingBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PackagedProductDefinitionPackagingBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PackagedProductDefinitionPackagingBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PackagedProductDefinitionPackagingBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PackagedProductDefinitionPackagingBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PackagedProductDefinitionPackagingBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PackagedProductDefinitionPackagingBuilder.fromJson(json);
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
  List<IdentifierBuilder>? identifier;

  /// [type]
  /// The physical type of the container of the items.
  CodeableConceptBuilder? type;

  /// [componentPart]
  /// Is this a part of the packaging (e.g. a cap or bottle stopper), rather
  /// than the packaging itself (e.g. a bottle or vial). The latter type are
  /// designed be a container, but the former are not.
  FhirBooleanBuilder? componentPart;

  /// [quantity]
  /// The quantity of packaging items contained at this layer of the package.
  /// This does not relate to the number of contained items but relates
  /// solely to the number of packaging items. When looking at the outermost
  /// layer it is always 1. If there are two boxes within, at the next layer
  /// it would be 2.
  FhirIntegerBuilder? quantity;

  /// [material]
  /// Material type of the package item.
  List<CodeableConceptBuilder>? material;

  /// [alternateMaterial]
  /// A possible alternate material for this part of the packaging, that is
  /// allowed to be used instead of the usual material (e.g. different types
  /// of plastic for a blister sleeve).
  List<CodeableConceptBuilder>? alternateMaterial;

  /// [shelfLifeStorage]
  /// Shelf Life and storage information.
  List<ProductShelfLifeBuilder>? shelfLifeStorage;

  /// [manufacturer]
  /// Manufacturer of this packaging item. When there are multiple values
  /// each one is a potential manufacturer of this packaging item.
  List<ReferenceBuilder>? manufacturer;

  /// [property]
  /// General characteristics of this item.
  List<PackagedProductDefinitionPropertyBuilder>? property;

  /// [containedItem]
  /// The item(s) within the packaging.
  List<PackagedProductDefinitionContainedItemBuilder>? containedItem;

  /// [packaging]
  /// Allows containers (and parts of containers) within containers, still as
  /// a part of a single packaged product. See also
  /// PackagedProductDefinition.packaging.containedItem.item(PackagedProductDefinition).
  List<PackagedProductDefinitionPackagingBuilder>? packaging;

  /// Converts a [PackagedProductDefinitionPackagingBuilder]
  /// to [PackagedProductDefinitionPackaging]
  @override
  PackagedProductDefinitionPackaging build() =>
      PackagedProductDefinitionPackaging.fromJson(toJson());

  /// Converts a [PackagedProductDefinitionPackagingBuilder]
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
    addField('type', type);
    addField('componentPart', componentPart);
    addField('quantity', quantity);
    addField('material', material);
    addField('alternateMaterial', alternateMaterial);
    addField('shelfLifeStorage', shelfLifeStorage);
    addField('manufacturer', manufacturer);
    addField('property', property);
    addField('containedItem', containedItem);
    addField('packaging', packaging);
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
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'componentPart':
        {
          if (child is FhirBooleanBuilder) {
            componentPart = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                componentPart = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'quantity':
        {
          if (child is FhirIntegerBuilder) {
            quantity = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirIntegerBuilder.tryParse(numValue);
                if (converted != null) {
                  quantity = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'material':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            material = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            material = [
              ...(material ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'alternateMaterial':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            alternateMaterial = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            alternateMaterial = [
              ...(alternateMaterial ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'shelfLifeStorage':
        {
          if (child is List<ProductShelfLifeBuilder>) {
            // Replace or create new list
            shelfLifeStorage = child;
            return;
          } else if (child is ProductShelfLifeBuilder) {
            // Add single element to existing list or create new list
            shelfLifeStorage = [
              ...(shelfLifeStorage ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'manufacturer':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            manufacturer = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            manufacturer = [
              ...(manufacturer ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'property':
        {
          if (child is List<PackagedProductDefinitionPropertyBuilder>) {
            // Replace or create new list
            property = child;
            return;
          } else if (child is PackagedProductDefinitionPropertyBuilder) {
            // Add single element to existing list or create new list
            property = [
              ...(property ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'containedItem':
        {
          if (child is List<PackagedProductDefinitionContainedItemBuilder>) {
            // Replace or create new list
            containedItem = child;
            return;
          } else if (child is PackagedProductDefinitionContainedItemBuilder) {
            // Add single element to existing list or create new list
            containedItem = [
              ...(containedItem ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'packaging':
        {
          if (child is List<PackagedProductDefinitionPackagingBuilder>) {
            // Replace or create new list
            packaging = child;
            return;
          } else if (child is PackagedProductDefinitionPackagingBuilder) {
            // Add single element to existing list or create new list
            packaging = [
              ...(packaging ?? []),
              child,
            ];
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
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'componentPart':
        return ['FhirBooleanBuilder'];
      case 'quantity':
        return ['FhirIntegerBuilder'];
      case 'material':
        return ['CodeableConceptBuilder'];
      case 'alternateMaterial':
        return ['CodeableConceptBuilder'];
      case 'shelfLifeStorage':
        return ['ProductShelfLifeBuilder'];
      case 'manufacturer':
        return ['ReferenceBuilder'];
      case 'property':
        return ['PackagedProductDefinitionPropertyBuilder'];
      case 'containedItem':
        return ['PackagedProductDefinitionContainedItemBuilder'];
      case 'packaging':
        return ['PackagedProductDefinitionPackagingBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [PackagedProductDefinitionPackagingBuilder]
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
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'componentPart':
        {
          componentPart = FhirBooleanBuilder.empty();
          return;
        }
      case 'quantity':
        {
          quantity = FhirIntegerBuilder.empty();
          return;
        }
      case 'material':
        {
          material = <CodeableConceptBuilder>[];
          return;
        }
      case 'alternateMaterial':
        {
          alternateMaterial = <CodeableConceptBuilder>[];
          return;
        }
      case 'shelfLifeStorage':
        {
          shelfLifeStorage = <ProductShelfLifeBuilder>[];
          return;
        }
      case 'manufacturer':
        {
          manufacturer = <ReferenceBuilder>[];
          return;
        }
      case 'property':
        {
          property = <PackagedProductDefinitionPropertyBuilder>[];
          return;
        }
      case 'containedItem':
        {
          containedItem = <PackagedProductDefinitionContainedItemBuilder>[];
          return;
        }
      case 'packaging':
        {
          packaging = <PackagedProductDefinitionPackagingBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  PackagedProductDefinitionPackagingBuilder clone() =>
      throw UnimplementedError();
  @override
  PackagedProductDefinitionPackagingBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    CodeableConceptBuilder? type,
    FhirBooleanBuilder? componentPart,
    FhirIntegerBuilder? quantity,
    List<CodeableConceptBuilder>? material,
    List<CodeableConceptBuilder>? alternateMaterial,
    List<ProductShelfLifeBuilder>? shelfLifeStorage,
    List<ReferenceBuilder>? manufacturer,
    List<PackagedProductDefinitionPropertyBuilder>? property,
    List<PackagedProductDefinitionContainedItemBuilder>? containedItem,
    List<PackagedProductDefinitionPackagingBuilder>? packaging,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = PackagedProductDefinitionPackagingBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      type: type ?? this.type,
      componentPart: componentPart ?? this.componentPart,
      quantity: quantity ?? this.quantity,
      material: material ?? this.material,
      alternateMaterial: alternateMaterial ?? this.alternateMaterial,
      shelfLifeStorage: shelfLifeStorage ?? this.shelfLifeStorage,
      manufacturer: manufacturer ?? this.manufacturer,
      property: property ?? this.property,
      containedItem: containedItem ?? this.containedItem,
      packaging: packaging ?? this.packaging,
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
    if (o is! PackagedProductDefinitionPackagingBuilder) {
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
    if (!listEquals<CodeableConceptBuilder>(
      material,
      o.material,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      alternateMaterial,
      o.alternateMaterial,
    )) {
      return false;
    }
    if (!listEquals<ProductShelfLifeBuilder>(
      shelfLifeStorage,
      o.shelfLifeStorage,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      manufacturer,
      o.manufacturer,
    )) {
      return false;
    }
    if (!listEquals<PackagedProductDefinitionPropertyBuilder>(
      property,
      o.property,
    )) {
      return false;
    }
    if (!listEquals<PackagedProductDefinitionContainedItemBuilder>(
      containedItem,
      o.containedItem,
    )) {
      return false;
    }
    if (!listEquals<PackagedProductDefinitionPackagingBuilder>(
      packaging,
      o.packaging,
    )) {
      return false;
    }
    return true;
  }
}

/// [PackagedProductDefinitionPropertyBuilder]
/// General characteristics of this item.
class PackagedProductDefinitionPropertyBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [PackagedProductDefinitionPropertyBuilder]

  PackagedProductDefinitionPropertyBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    ValueXPackagedProductDefinitionPropertyBuilder? valueX,
    CodeableConceptBuilder? valueCodeableConcept,
    QuantityBuilder? valueQuantity,
    FhirDateBuilder? valueDate,
    FhirBooleanBuilder? valueBoolean,
    AttachmentBuilder? valueAttachment,
    super.disallowExtensions,
  })  : valueX = valueX ??
            valueCodeableConcept ??
            valueQuantity ??
            valueDate ??
            valueBoolean ??
            valueAttachment,
        super(
          objectPath: 'PackagedProductDefinition.packaging.property',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory PackagedProductDefinitionPropertyBuilder.empty() =>
      PackagedProductDefinitionPropertyBuilder(
        type: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PackagedProductDefinitionPropertyBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'PackagedProductDefinition.packaging.property';
    return PackagedProductDefinitionPropertyBuilder(
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
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      valueX: JsonParser.parsePolymorphic<
          ValueXPackagedProductDefinitionPropertyBuilder>(
        json,
        {
          'valueCodeableConcept': CodeableConceptBuilder.fromJson,
          'valueQuantity': QuantityBuilder.fromJson,
          'valueDate': FhirDateBuilder.fromJson,
          'valueBoolean': FhirBooleanBuilder.fromJson,
          'valueAttachment': AttachmentBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [PackagedProductDefinitionPropertyBuilder]
  /// from a [String] or [YamlMap] object
  factory PackagedProductDefinitionPropertyBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PackagedProductDefinitionPropertyBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PackagedProductDefinitionPropertyBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PackagedProductDefinitionPropertyBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PackagedProductDefinitionPropertyBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PackagedProductDefinitionPropertyBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PackagedProductDefinitionPropertyBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'PackagedProductDefinitionProperty';

  /// [type]
  /// A code expressing the type of characteristic.
  CodeableConceptBuilder? type;

  /// [valueX]
  /// A value for the characteristic.
  ValueXPackagedProductDefinitionPropertyBuilder? valueX;

  /// Getter for [valueCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get valueCodeableConcept =>
      valueX?.isAs<CodeableConceptBuilder>();

  /// Getter for [valueQuantity] as a QuantityBuilder
  QuantityBuilder? get valueQuantity => valueX?.isAs<QuantityBuilder>();

  /// Getter for [valueDate] as a FhirDateBuilder
  FhirDateBuilder? get valueDate => valueX?.isAs<FhirDateBuilder>();

  /// Getter for [valueBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get valueBoolean => valueX?.isAs<FhirBooleanBuilder>();

  /// Getter for [valueAttachment] as a AttachmentBuilder
  AttachmentBuilder? get valueAttachment => valueX?.isAs<AttachmentBuilder>();

  /// Converts a [PackagedProductDefinitionPropertyBuilder]
  /// to [PackagedProductDefinitionProperty]
  @override
  PackagedProductDefinitionProperty build() =>
      PackagedProductDefinitionProperty.fromJson(toJson());

  /// Converts a [PackagedProductDefinitionPropertyBuilder]
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
    addField('type', type);
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
      'type',
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'value':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueX':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueCodeableConcept':
        if (valueX is CodeableConceptBuilder) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is QuantityBuilder) {
          fields.add(valueX!);
        }
      case 'valueDate':
        if (valueX is FhirDateBuilder) {
          fields.add(valueX!);
        }
      case 'valueBoolean':
        if (valueX is FhirBooleanBuilder) {
          fields.add(valueX!);
        }
      case 'valueAttachment':
        if (valueX is AttachmentBuilder) {
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
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'value':
      case 'valueX':
        {
          if (child is ValueXPackagedProductDefinitionPropertyBuilder) {
            valueX = child;
            return;
          } else {
            if (child is CodeableConceptBuilder) {
              valueX = child;
              return;
            }
            if (child is QuantityBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDateBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirBooleanBuilder) {
              valueX = child;
              return;
            }
            if (child is AttachmentBuilder) {
              valueX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
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
      case 'valueQuantity':
        {
          if (child is QuantityBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDate':
        {
          if (child is FhirDateBuilder) {
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
      case 'valueAttachment':
        {
          if (child is AttachmentBuilder) {
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
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'value':
      case 'valueX':
        return [
          'CodeableConceptBuilder',
          'QuantityBuilder',
          'FhirDateBuilder',
          'FhirBooleanBuilder',
          'AttachmentBuilder',
        ];
      case 'valueCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'valueQuantity':
        return ['QuantityBuilder'];
      case 'valueDate':
        return ['FhirDateBuilder'];
      case 'valueBoolean':
        return ['FhirBooleanBuilder'];
      case 'valueAttachment':
        return ['AttachmentBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [PackagedProductDefinitionPropertyBuilder]
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
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'value':
      case 'valueX':
      case 'valueCodeableConcept':
        {
          valueX = CodeableConceptBuilder.empty();
          return;
        }
      case 'valueQuantity':
        {
          valueX = QuantityBuilder.empty();
          return;
        }
      case 'valueDate':
        {
          valueX = FhirDateBuilder.empty();
          return;
        }
      case 'valueBoolean':
        {
          valueX = FhirBooleanBuilder.empty();
          return;
        }
      case 'valueAttachment':
        {
          valueX = AttachmentBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  PackagedProductDefinitionPropertyBuilder clone() =>
      throw UnimplementedError();
  @override
  PackagedProductDefinitionPropertyBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    ValueXPackagedProductDefinitionPropertyBuilder? valueX,
    CodeableConceptBuilder? valueCodeableConcept,
    QuantityBuilder? valueQuantity,
    FhirDateBuilder? valueDate,
    FhirBooleanBuilder? valueBoolean,
    AttachmentBuilder? valueAttachment,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = PackagedProductDefinitionPropertyBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueX: valueX ??
          valueCodeableConcept ??
          valueQuantity ??
          valueDate ??
          valueBoolean ??
          valueAttachment ??
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
    if (o is! PackagedProductDefinitionPropertyBuilder) {
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

/// [PackagedProductDefinitionContainedItemBuilder]
/// The item(s) within the packaging.
class PackagedProductDefinitionContainedItemBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [PackagedProductDefinitionContainedItemBuilder]

  PackagedProductDefinitionContainedItemBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.item,
    this.amount,
    super.disallowExtensions,
  }) : super(
          objectPath: 'PackagedProductDefinition.packaging.containedItem',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory PackagedProductDefinitionContainedItemBuilder.empty() =>
      PackagedProductDefinitionContainedItemBuilder(
        item: CodeableReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PackagedProductDefinitionContainedItemBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'PackagedProductDefinition.packaging.containedItem';
    return PackagedProductDefinitionContainedItemBuilder(
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
      item: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'item',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.item',
      ),
      amount: JsonParser.parseObject<QuantityBuilder>(
        json,
        'amount',
        QuantityBuilder.fromJson,
        '$objectPath.amount',
      ),
    );
  }

  /// Deserialize [PackagedProductDefinitionContainedItemBuilder]
  /// from a [String] or [YamlMap] object
  factory PackagedProductDefinitionContainedItemBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PackagedProductDefinitionContainedItemBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PackagedProductDefinitionContainedItemBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PackagedProductDefinitionContainedItemBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PackagedProductDefinitionContainedItemBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PackagedProductDefinitionContainedItemBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PackagedProductDefinitionContainedItemBuilder.fromJson(json);
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
  CodeableReferenceBuilder? item;

  /// [amount]
  /// The number of this type of item within this packaging or for continuous
  /// items such as liquids it is the quantity (for example 25ml). See also
  /// PackagedProductDefinition.containedItemQuantity (especially the long
  /// definition).
  QuantityBuilder? amount;

  /// Converts a [PackagedProductDefinitionContainedItemBuilder]
  /// to [PackagedProductDefinitionContainedItem]
  @override
  PackagedProductDefinitionContainedItem build() =>
      PackagedProductDefinitionContainedItem.fromJson(toJson());

  /// Converts a [PackagedProductDefinitionContainedItemBuilder]
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
    addField('item', item);
    addField('amount', amount);
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
      case 'item':
        if (item != null) {
          fields.add(item!);
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
      case 'item':
        {
          if (child is CodeableReferenceBuilder) {
            item = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'amount':
        {
          if (child is QuantityBuilder) {
            amount = child;
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
      case 'item':
        return ['CodeableReferenceBuilder'];
      case 'amount':
        return ['QuantityBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [PackagedProductDefinitionContainedItemBuilder]
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
      case 'item':
        {
          item = CodeableReferenceBuilder.empty();
          return;
        }
      case 'amount':
        {
          amount = QuantityBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  PackagedProductDefinitionContainedItemBuilder clone() =>
      throw UnimplementedError();
  @override
  PackagedProductDefinitionContainedItemBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableReferenceBuilder? item,
    QuantityBuilder? amount,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = PackagedProductDefinitionContainedItemBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      item: item ?? this.item,
      amount: amount ?? this.amount,
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
    if (o is! PackagedProductDefinitionContainedItemBuilder) {
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
