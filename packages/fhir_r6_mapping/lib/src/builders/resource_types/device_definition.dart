import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        DeviceDefinition,
        DeviceDefinitionChargeItem,
        DeviceDefinitionClassification,
        DeviceDefinitionConformsTo,
        DeviceDefinitionCorrectiveAction,
        DeviceDefinitionDeviceName,
        DeviceDefinitionDistributor,
        DeviceDefinitionGuideline,
        DeviceDefinitionHasPart,
        DeviceDefinitionLink,
        DeviceDefinitionMarketDistribution,
        DeviceDefinitionMaterial,
        DeviceDefinitionPackaging,
        DeviceDefinitionProperty,
        DeviceDefinitionRegulatoryIdentifier,
        DeviceDefinitionUdiDeviceIdentifier,
        DeviceDefinitionVersion,
        R5ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [DeviceDefinitionBuilder]
/// The characteristics, operational status and capabilities of a
/// medical-related component of a medical device.
class DeviceDefinitionBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [DeviceDefinitionBuilder]

  DeviceDefinitionBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.identifier,
    this.udiDeviceIdentifier,
    this.regulatoryIdentifier,
    this.partNumber,
    this.manufacturer,
    this.deviceName,
    this.modelNumber,
    this.classification,
    this.conformsTo,
    this.hasPart,
    this.packaging,
    this.version,
    this.safety,
    this.shelfLifeStorage,
    this.languageCode,
    this.property,
    this.owner,
    this.contact,
    this.link,
    this.note,
    this.material,
    this.productionIdentifierInUDI,
    this.guideline,
    this.correctiveAction,
    this.chargeItem,
  }) : super(
          objectPath: 'DeviceDefinition',
          resourceType: R5ResourceType.DeviceDefinition,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DeviceDefinitionBuilder.empty() => DeviceDefinitionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceDefinition';
    return DeviceDefinitionBuilder(
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
      description: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'description',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.description',
      ),
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
      udiDeviceIdentifier: (json['udiDeviceIdentifier'] as List<dynamic>?)
          ?.map<DeviceDefinitionUdiDeviceIdentifierBuilder>(
            (v) => DeviceDefinitionUdiDeviceIdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.udiDeviceIdentifier',
              },
            ),
          )
          .toList(),
      regulatoryIdentifier: (json['regulatoryIdentifier'] as List<dynamic>?)
          ?.map<DeviceDefinitionRegulatoryIdentifierBuilder>(
            (v) => DeviceDefinitionRegulatoryIdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.regulatoryIdentifier',
              },
            ),
          )
          .toList(),
      partNumber: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'partNumber',
        FhirStringBuilder.fromJson,
        '$objectPath.partNumber',
      ),
      manufacturer: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'manufacturer',
        ReferenceBuilder.fromJson,
        '$objectPath.manufacturer',
      ),
      deviceName: (json['deviceName'] as List<dynamic>?)
          ?.map<DeviceDefinitionDeviceNameBuilder>(
            (v) => DeviceDefinitionDeviceNameBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.deviceName',
              },
            ),
          )
          .toList(),
      modelNumber: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'modelNumber',
        FhirStringBuilder.fromJson,
        '$objectPath.modelNumber',
      ),
      classification: (json['classification'] as List<dynamic>?)
          ?.map<DeviceDefinitionClassificationBuilder>(
            (v) => DeviceDefinitionClassificationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.classification',
              },
            ),
          )
          .toList(),
      conformsTo: (json['conformsTo'] as List<dynamic>?)
          ?.map<DeviceDefinitionConformsToBuilder>(
            (v) => DeviceDefinitionConformsToBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.conformsTo',
              },
            ),
          )
          .toList(),
      hasPart: (json['hasPart'] as List<dynamic>?)
          ?.map<DeviceDefinitionHasPartBuilder>(
            (v) => DeviceDefinitionHasPartBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.hasPart',
              },
            ),
          )
          .toList(),
      packaging: (json['packaging'] as List<dynamic>?)
          ?.map<DeviceDefinitionPackagingBuilder>(
            (v) => DeviceDefinitionPackagingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.packaging',
              },
            ),
          )
          .toList(),
      version: (json['version'] as List<dynamic>?)
          ?.map<DeviceDefinitionVersionBuilder>(
            (v) => DeviceDefinitionVersionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.version',
              },
            ),
          )
          .toList(),
      safety: (json['safety'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.safety',
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
      languageCode: (json['languageCode'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.languageCode',
              },
            ),
          )
          .toList(),
      property: (json['property'] as List<dynamic>?)
          ?.map<DeviceDefinitionPropertyBuilder>(
            (v) => DeviceDefinitionPropertyBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.property',
              },
            ),
          )
          .toList(),
      owner: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'owner',
        ReferenceBuilder.fromJson,
        '$objectPath.owner',
      ),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ContactPointBuilder>(
            (v) => ContactPointBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contact',
              },
            ),
          )
          .toList(),
      link: (json['link'] as List<dynamic>?)
          ?.map<DeviceDefinitionLinkBuilder>(
            (v) => DeviceDefinitionLinkBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.link',
              },
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<AnnotationBuilder>(
            (v) => AnnotationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
      material: (json['material'] as List<dynamic>?)
          ?.map<DeviceDefinitionMaterialBuilder>(
            (v) => DeviceDefinitionMaterialBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.material',
              },
            ),
          )
          .toList(),
      productionIdentifierInUDI:
          JsonParser.parsePrimitiveList<DeviceProductionIdentifierInUDIBuilder>(
        json,
        'productionIdentifierInUDI',
        DeviceProductionIdentifierInUDIBuilder.fromJson,
        '$objectPath.productionIdentifierInUDI',
      ),
      guideline: JsonParser.parseObject<DeviceDefinitionGuidelineBuilder>(
        json,
        'guideline',
        DeviceDefinitionGuidelineBuilder.fromJson,
        '$objectPath.guideline',
      ),
      correctiveAction:
          JsonParser.parseObject<DeviceDefinitionCorrectiveActionBuilder>(
        json,
        'correctiveAction',
        DeviceDefinitionCorrectiveActionBuilder.fromJson,
        '$objectPath.correctiveAction',
      ),
      chargeItem: (json['chargeItem'] as List<dynamic>?)
          ?.map<DeviceDefinitionChargeItemBuilder>(
            (v) => DeviceDefinitionChargeItemBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.chargeItem',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DeviceDefinitionBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinition';

  /// [description]
  /// Additional information to describe the device.
  FhirMarkdownBuilder? description;

  /// [identifier]
  /// Unique instance identifiers assigned to a device by the software,
  /// manufacturers, other organizations or owners. For example: handle ID.
  /// The identifier is typically valued if the udiDeviceIdentifier,
  /// partNumber or modelNumber is not valued and represents a different type
  /// of identifier. However, it is permissible to still include those
  /// identifiers in DeviceDefinition.identifier with the appropriate
  /// identifier.type.
  List<IdentifierBuilder>? identifier;

  /// [udiDeviceIdentifier]
  /// Unique device identifier (UDI) assigned to device label or package.
  /// Note that the Device may include multiple udiCarriers as it either may
  /// include just the udiCarrier for the jurisdiction it is sold, or for
  /// multiple jurisdictions it could have been sold.
  List<DeviceDefinitionUdiDeviceIdentifierBuilder>? udiDeviceIdentifier;

  /// [regulatoryIdentifier]
  /// Identifier associated with the regulatory documentation (certificates,
  /// technical documentation, post-market surveillance documentation and
  /// reports) of a set of device models sharing the same intended purpose,
  /// risk class and essential design and manufacturing characteristics. One
  /// example is the Basic UDI-DI in Europe.
  List<DeviceDefinitionRegulatoryIdentifierBuilder>? regulatoryIdentifier;

  /// [partNumber]
  /// The part number or catalog number of the device.
  FhirStringBuilder? partNumber;

  /// [manufacturer]
  /// A name of the manufacturer or legal representative e.g. labeler.
  /// Whether this is the actual manufacturer or the labeler or responsible
  /// depends on implementation and jurisdiction.
  ReferenceBuilder? manufacturer;

  /// [deviceName]
  /// The name or names of the device as given by the manufacturer.
  List<DeviceDefinitionDeviceNameBuilder>? deviceName;

  /// [modelNumber]
  /// The model number for the device for example as defined by the
  /// manufacturer or labeler, or other agency.
  FhirStringBuilder? modelNumber;

  /// [classification]
  /// What kind of device or device system this is.
  List<DeviceDefinitionClassificationBuilder>? classification;

  /// [conformsTo]
  /// Identifies the standards, specifications, or formal guidances for the
  /// capabilities supported by the device. The device may be certified as
  /// conformant to these specifications e.g., communication, performance,
  /// process, measurement, or specialization standards.
  List<DeviceDefinitionConformsToBuilder>? conformsTo;

  /// [hasPart]
  /// A device that is part (for example a component) of the present device.
  List<DeviceDefinitionHasPartBuilder>? hasPart;

  /// [packaging]
  /// Information about the packaging of the device, i.e. how the device is
  /// packaged.
  List<DeviceDefinitionPackagingBuilder>? packaging;

  /// [version]
  /// The version of the device or software.
  List<DeviceDefinitionVersionBuilder>? version;

  /// [safety]
  /// Safety characteristics of the device.
  List<CodeableConceptBuilder>? safety;

  /// [shelfLifeStorage]
  /// Shelf Life and storage information.
  List<ProductShelfLifeBuilder>? shelfLifeStorage;

  /// [languageCode]
  /// Language code for the human-readable text strings produced by the
  /// device (all supported).
  List<CodeableConceptBuilder>? languageCode;

  /// [property]
  /// Static or essentially fixed characteristics or features of this kind of
  /// device that are otherwise not captured in more specific attributes,
  /// e.g., time or timing attributes, resolution, accuracy, and physical
  /// attributes.
  List<DeviceDefinitionPropertyBuilder>? property;

  /// [owner]
  /// An organization that is responsible for the provision and ongoing
  /// maintenance of the device.
  ReferenceBuilder? owner;

  /// [contact]
  /// Contact details for an organization or a particular human that is
  /// responsible for the device.
  List<ContactPointBuilder>? contact;

  /// [link]
  /// An associated device, attached to, used with, communicating with or
  /// linking a previous or new device model to the focal device.
  List<DeviceDefinitionLinkBuilder>? link;

  /// [note]
  /// Descriptive information, usage information or implantation information
  /// that is not captured in an existing element.
  List<AnnotationBuilder>? note;

  /// [material]
  /// A substance used to create the material(s) of which the device is made.
  List<DeviceDefinitionMaterialBuilder>? material;

  /// [productionIdentifierInUDI]
  /// Indicates the production identifier(s) that are expected to appear in
  /// the UDI carrier on the device label.
  List<DeviceProductionIdentifierInUDIBuilder>? productionIdentifierInUDI;

  /// [guideline]
  /// Information aimed at providing directions for the usage of this model
  /// of device.
  DeviceDefinitionGuidelineBuilder? guideline;

  /// [correctiveAction]
  /// Tracking of latest field safety corrective action.
  DeviceDefinitionCorrectiveActionBuilder? correctiveAction;

  /// [chargeItem]
  /// Billing code or reference associated with the device.
  List<DeviceDefinitionChargeItemBuilder>? chargeItem;

  /// Converts a [DeviceDefinitionBuilder]
  /// to [DeviceDefinition]
  @override
  DeviceDefinition build() => DeviceDefinition.fromJson(toJson());

  /// Converts a [DeviceDefinitionBuilder]
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
    addField('description', description);
    addField('identifier', identifier);
    addField('udiDeviceIdentifier', udiDeviceIdentifier);
    addField('regulatoryIdentifier', regulatoryIdentifier);
    addField('partNumber', partNumber);
    addField('manufacturer', manufacturer);
    addField('deviceName', deviceName);
    addField('modelNumber', modelNumber);
    addField('classification', classification);
    addField('conformsTo', conformsTo);
    addField('hasPart', hasPart);
    addField('packaging', packaging);
    addField('version', version);
    addField('safety', safety);
    addField('shelfLifeStorage', shelfLifeStorage);
    addField('languageCode', languageCode);
    addField('property', property);
    addField('owner', owner);
    addField('contact', contact);
    addField('link', link);
    addField('note', note);
    addField('material', material);
    addField('productionIdentifierInUDI', productionIdentifierInUDI);
    addField('guideline', guideline);
    addField('correctiveAction', correctiveAction);
    addField('chargeItem', chargeItem);
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
      'description',
      'identifier',
      'udiDeviceIdentifier',
      'regulatoryIdentifier',
      'partNumber',
      'manufacturer',
      'deviceName',
      'modelNumber',
      'classification',
      'conformsTo',
      'hasPart',
      'packaging',
      'version',
      'safety',
      'shelfLifeStorage',
      'languageCode',
      'property',
      'owner',
      'contact',
      'link',
      'note',
      'material',
      'productionIdentifierInUDI',
      'guideline',
      'correctiveAction',
      'chargeItem',
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
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'udiDeviceIdentifier':
        if (udiDeviceIdentifier != null) {
          fields.addAll(udiDeviceIdentifier!);
        }
      case 'regulatoryIdentifier':
        if (regulatoryIdentifier != null) {
          fields.addAll(regulatoryIdentifier!);
        }
      case 'partNumber':
        if (partNumber != null) {
          fields.add(partNumber!);
        }
      case 'manufacturer':
        if (manufacturer != null) {
          fields.add(manufacturer!);
        }
      case 'deviceName':
        if (deviceName != null) {
          fields.addAll(deviceName!);
        }
      case 'modelNumber':
        if (modelNumber != null) {
          fields.add(modelNumber!);
        }
      case 'classification':
        if (classification != null) {
          fields.addAll(classification!);
        }
      case 'conformsTo':
        if (conformsTo != null) {
          fields.addAll(conformsTo!);
        }
      case 'hasPart':
        if (hasPart != null) {
          fields.addAll(hasPart!);
        }
      case 'packaging':
        if (packaging != null) {
          fields.addAll(packaging!);
        }
      case 'version':
        if (version != null) {
          fields.addAll(version!);
        }
      case 'safety':
        if (safety != null) {
          fields.addAll(safety!);
        }
      case 'shelfLifeStorage':
        if (shelfLifeStorage != null) {
          fields.addAll(shelfLifeStorage!);
        }
      case 'languageCode':
        if (languageCode != null) {
          fields.addAll(languageCode!);
        }
      case 'property':
        if (property != null) {
          fields.addAll(property!);
        }
      case 'owner':
        if (owner != null) {
          fields.add(owner!);
        }
      case 'contact':
        if (contact != null) {
          fields.addAll(contact!);
        }
      case 'link':
        if (link != null) {
          fields.addAll(link!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'material':
        if (material != null) {
          fields.addAll(material!);
        }
      case 'productionIdentifierInUDI':
        if (productionIdentifierInUDI != null) {
          fields.addAll(productionIdentifierInUDI!);
        }
      case 'guideline':
        if (guideline != null) {
          fields.add(guideline!);
        }
      case 'correctiveAction':
        if (correctiveAction != null) {
          fields.add(correctiveAction!);
        }
      case 'chargeItem':
        if (chargeItem != null) {
          fields.addAll(chargeItem!);
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
      case 'udiDeviceIdentifier':
        {
          if (child is List<DeviceDefinitionUdiDeviceIdentifierBuilder>) {
            // Replace or create new list
            udiDeviceIdentifier = child;
            return;
          } else if (child is DeviceDefinitionUdiDeviceIdentifierBuilder) {
            // Add single element to existing list or create new list
            udiDeviceIdentifier = [
              ...(udiDeviceIdentifier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'regulatoryIdentifier':
        {
          if (child is List<DeviceDefinitionRegulatoryIdentifierBuilder>) {
            // Replace or create new list
            regulatoryIdentifier = child;
            return;
          } else if (child is DeviceDefinitionRegulatoryIdentifierBuilder) {
            // Add single element to existing list or create new list
            regulatoryIdentifier = [
              ...(regulatoryIdentifier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'partNumber':
        {
          if (child is FhirStringBuilder) {
            partNumber = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                partNumber = converted;
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
          if (child is ReferenceBuilder) {
            manufacturer = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'deviceName':
        {
          if (child is List<DeviceDefinitionDeviceNameBuilder>) {
            // Replace or create new list
            deviceName = child;
            return;
          } else if (child is DeviceDefinitionDeviceNameBuilder) {
            // Add single element to existing list or create new list
            deviceName = [
              ...(deviceName ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modelNumber':
        {
          if (child is FhirStringBuilder) {
            modelNumber = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                modelNumber = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'classification':
        {
          if (child is List<DeviceDefinitionClassificationBuilder>) {
            // Replace or create new list
            classification = child;
            return;
          } else if (child is DeviceDefinitionClassificationBuilder) {
            // Add single element to existing list or create new list
            classification = [
              ...(classification ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'conformsTo':
        {
          if (child is List<DeviceDefinitionConformsToBuilder>) {
            // Replace or create new list
            conformsTo = child;
            return;
          } else if (child is DeviceDefinitionConformsToBuilder) {
            // Add single element to existing list or create new list
            conformsTo = [
              ...(conformsTo ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'hasPart':
        {
          if (child is List<DeviceDefinitionHasPartBuilder>) {
            // Replace or create new list
            hasPart = child;
            return;
          } else if (child is DeviceDefinitionHasPartBuilder) {
            // Add single element to existing list or create new list
            hasPart = [
              ...(hasPart ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'packaging':
        {
          if (child is List<DeviceDefinitionPackagingBuilder>) {
            // Replace or create new list
            packaging = child;
            return;
          } else if (child is DeviceDefinitionPackagingBuilder) {
            // Add single element to existing list or create new list
            packaging = [
              ...(packaging ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'version':
        {
          if (child is List<DeviceDefinitionVersionBuilder>) {
            // Replace or create new list
            version = child;
            return;
          } else if (child is DeviceDefinitionVersionBuilder) {
            // Add single element to existing list or create new list
            version = [
              ...(version ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'safety':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            safety = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            safety = [
              ...(safety ?? []),
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
      case 'languageCode':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            languageCode = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            languageCode = [
              ...(languageCode ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'property':
        {
          if (child is List<DeviceDefinitionPropertyBuilder>) {
            // Replace or create new list
            property = child;
            return;
          } else if (child is DeviceDefinitionPropertyBuilder) {
            // Add single element to existing list or create new list
            property = [
              ...(property ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'owner':
        {
          if (child is ReferenceBuilder) {
            owner = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contact':
        {
          if (child is List<ContactPointBuilder>) {
            // Replace or create new list
            contact = child;
            return;
          } else if (child is ContactPointBuilder) {
            // Add single element to existing list or create new list
            contact = [
              ...(contact ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'link':
        {
          if (child is List<DeviceDefinitionLinkBuilder>) {
            // Replace or create new list
            link = child;
            return;
          } else if (child is DeviceDefinitionLinkBuilder) {
            // Add single element to existing list or create new list
            link = [
              ...(link ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'note':
        {
          if (child is List<AnnotationBuilder>) {
            // Replace or create new list
            note = child;
            return;
          } else if (child is AnnotationBuilder) {
            // Add single element to existing list or create new list
            note = [
              ...(note ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'material':
        {
          if (child is List<DeviceDefinitionMaterialBuilder>) {
            // Replace or create new list
            material = child;
            return;
          } else if (child is DeviceDefinitionMaterialBuilder) {
            // Add single element to existing list or create new list
            material = [
              ...(material ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'productionIdentifierInUDI':
        {
          if (child is List<DeviceProductionIdentifierInUDIBuilder>) {
            // Replace or create new list
            productionIdentifierInUDI = child;
            return;
          } else if (child is DeviceProductionIdentifierInUDIBuilder) {
            // Add single element to existing list or create new list
            productionIdentifierInUDI = [
              ...(productionIdentifierInUDI ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <DeviceProductionIdentifierInUDIBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                // For enums, try to create directly from the string value
                try {
                  final converted =
                      DeviceProductionIdentifierInUDIBuilder(stringValue);
                  convertedList.add(converted);
                } catch (e) {
                  // Continue if enum creation fails
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              productionIdentifierInUDI = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted =
                    DeviceProductionIdentifierInUDIBuilder(stringValue);
                productionIdentifierInUDI = [
                  ...(productionIdentifierInUDI ?? []),
                  converted,
                ];
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
      case 'guideline':
        {
          if (child is DeviceDefinitionGuidelineBuilder) {
            guideline = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'correctiveAction':
        {
          if (child is DeviceDefinitionCorrectiveActionBuilder) {
            correctiveAction = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'chargeItem':
        {
          if (child is List<DeviceDefinitionChargeItemBuilder>) {
            // Replace or create new list
            chargeItem = child;
            return;
          } else if (child is DeviceDefinitionChargeItemBuilder) {
            // Add single element to existing list or create new list
            chargeItem = [
              ...(chargeItem ?? []),
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
      case 'description':
        return ['FhirMarkdownBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'udiDeviceIdentifier':
        return ['DeviceDefinitionUdiDeviceIdentifierBuilder'];
      case 'regulatoryIdentifier':
        return ['DeviceDefinitionRegulatoryIdentifierBuilder'];
      case 'partNumber':
        return ['FhirStringBuilder'];
      case 'manufacturer':
        return ['ReferenceBuilder'];
      case 'deviceName':
        return ['DeviceDefinitionDeviceNameBuilder'];
      case 'modelNumber':
        return ['FhirStringBuilder'];
      case 'classification':
        return ['DeviceDefinitionClassificationBuilder'];
      case 'conformsTo':
        return ['DeviceDefinitionConformsToBuilder'];
      case 'hasPart':
        return ['DeviceDefinitionHasPartBuilder'];
      case 'packaging':
        return ['DeviceDefinitionPackagingBuilder'];
      case 'version':
        return ['DeviceDefinitionVersionBuilder'];
      case 'safety':
        return ['CodeableConceptBuilder'];
      case 'shelfLifeStorage':
        return ['ProductShelfLifeBuilder'];
      case 'languageCode':
        return ['CodeableConceptBuilder'];
      case 'property':
        return ['DeviceDefinitionPropertyBuilder'];
      case 'owner':
        return ['ReferenceBuilder'];
      case 'contact':
        return ['ContactPointBuilder'];
      case 'link':
        return ['DeviceDefinitionLinkBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      case 'material':
        return ['DeviceDefinitionMaterialBuilder'];
      case 'productionIdentifierInUDI':
        return ['FhirCodeEnumBuilder'];
      case 'guideline':
        return ['DeviceDefinitionGuidelineBuilder'];
      case 'correctiveAction':
        return ['DeviceDefinitionCorrectiveActionBuilder'];
      case 'chargeItem':
        return ['DeviceDefinitionChargeItemBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceDefinitionBuilder]
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
      case 'description':
        {
          description = FhirMarkdownBuilder.empty();
          return;
        }
      case 'identifier':
        {
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'udiDeviceIdentifier':
        {
          udiDeviceIdentifier = <DeviceDefinitionUdiDeviceIdentifierBuilder>[];
          return;
        }
      case 'regulatoryIdentifier':
        {
          regulatoryIdentifier =
              <DeviceDefinitionRegulatoryIdentifierBuilder>[];
          return;
        }
      case 'partNumber':
        {
          partNumber = FhirStringBuilder.empty();
          return;
        }
      case 'manufacturer':
        {
          manufacturer = ReferenceBuilder.empty();
          return;
        }
      case 'deviceName':
        {
          deviceName = <DeviceDefinitionDeviceNameBuilder>[];
          return;
        }
      case 'modelNumber':
        {
          modelNumber = FhirStringBuilder.empty();
          return;
        }
      case 'classification':
        {
          classification = <DeviceDefinitionClassificationBuilder>[];
          return;
        }
      case 'conformsTo':
        {
          conformsTo = <DeviceDefinitionConformsToBuilder>[];
          return;
        }
      case 'hasPart':
        {
          hasPart = <DeviceDefinitionHasPartBuilder>[];
          return;
        }
      case 'packaging':
        {
          packaging = <DeviceDefinitionPackagingBuilder>[];
          return;
        }
      case 'version':
        {
          version = <DeviceDefinitionVersionBuilder>[];
          return;
        }
      case 'safety':
        {
          safety = <CodeableConceptBuilder>[];
          return;
        }
      case 'shelfLifeStorage':
        {
          shelfLifeStorage = <ProductShelfLifeBuilder>[];
          return;
        }
      case 'languageCode':
        {
          languageCode = <CodeableConceptBuilder>[];
          return;
        }
      case 'property':
        {
          property = <DeviceDefinitionPropertyBuilder>[];
          return;
        }
      case 'owner':
        {
          owner = ReferenceBuilder.empty();
          return;
        }
      case 'contact':
        {
          contact = <ContactPointBuilder>[];
          return;
        }
      case 'link':
        {
          link = <DeviceDefinitionLinkBuilder>[];
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      case 'material':
        {
          material = <DeviceDefinitionMaterialBuilder>[];
          return;
        }
      case 'productionIdentifierInUDI':
        {
          productionIdentifierInUDI =
              <DeviceProductionIdentifierInUDIBuilder>[];
          return;
        }
      case 'guideline':
        {
          guideline = DeviceDefinitionGuidelineBuilder.empty();
          return;
        }
      case 'correctiveAction':
        {
          correctiveAction = DeviceDefinitionCorrectiveActionBuilder.empty();
          return;
        }
      case 'chargeItem':
        {
          chargeItem = <DeviceDefinitionChargeItemBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  DeviceDefinitionBuilder clone() => throw UnimplementedError();
  @override
  DeviceDefinitionBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirMarkdownBuilder? description,
    List<IdentifierBuilder>? identifier,
    List<DeviceDefinitionUdiDeviceIdentifierBuilder>? udiDeviceIdentifier,
    List<DeviceDefinitionRegulatoryIdentifierBuilder>? regulatoryIdentifier,
    FhirStringBuilder? partNumber,
    ReferenceBuilder? manufacturer,
    List<DeviceDefinitionDeviceNameBuilder>? deviceName,
    FhirStringBuilder? modelNumber,
    List<DeviceDefinitionClassificationBuilder>? classification,
    List<DeviceDefinitionConformsToBuilder>? conformsTo,
    List<DeviceDefinitionHasPartBuilder>? hasPart,
    List<DeviceDefinitionPackagingBuilder>? packaging,
    List<DeviceDefinitionVersionBuilder>? version,
    List<CodeableConceptBuilder>? safety,
    List<ProductShelfLifeBuilder>? shelfLifeStorage,
    List<CodeableConceptBuilder>? languageCode,
    List<DeviceDefinitionPropertyBuilder>? property,
    ReferenceBuilder? owner,
    List<ContactPointBuilder>? contact,
    List<DeviceDefinitionLinkBuilder>? link,
    List<AnnotationBuilder>? note,
    List<DeviceDefinitionMaterialBuilder>? material,
    List<DeviceProductionIdentifierInUDIBuilder>? productionIdentifierInUDI,
    DeviceDefinitionGuidelineBuilder? guideline,
    DeviceDefinitionCorrectiveActionBuilder? correctiveAction,
    List<DeviceDefinitionChargeItemBuilder>? chargeItem,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = DeviceDefinitionBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      identifier: identifier ?? this.identifier,
      udiDeviceIdentifier: udiDeviceIdentifier ?? this.udiDeviceIdentifier,
      regulatoryIdentifier: regulatoryIdentifier ?? this.regulatoryIdentifier,
      partNumber: partNumber ?? this.partNumber,
      manufacturer: manufacturer ?? this.manufacturer,
      deviceName: deviceName ?? this.deviceName,
      modelNumber: modelNumber ?? this.modelNumber,
      classification: classification ?? this.classification,
      conformsTo: conformsTo ?? this.conformsTo,
      hasPart: hasPart ?? this.hasPart,
      packaging: packaging ?? this.packaging,
      version: version ?? this.version,
      safety: safety ?? this.safety,
      shelfLifeStorage: shelfLifeStorage ?? this.shelfLifeStorage,
      languageCode: languageCode ?? this.languageCode,
      property: property ?? this.property,
      owner: owner ?? this.owner,
      contact: contact ?? this.contact,
      link: link ?? this.link,
      note: note ?? this.note,
      material: material ?? this.material,
      productionIdentifierInUDI:
          productionIdentifierInUDI ?? this.productionIdentifierInUDI,
      guideline: guideline ?? this.guideline,
      correctiveAction: correctiveAction ?? this.correctiveAction,
      chargeItem: chargeItem ?? this.chargeItem,
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
    if (o is! DeviceDefinitionBuilder) {
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
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!listEquals<IdentifierBuilder>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!listEquals<DeviceDefinitionUdiDeviceIdentifierBuilder>(
      udiDeviceIdentifier,
      o.udiDeviceIdentifier,
    )) {
      return false;
    }
    if (!listEquals<DeviceDefinitionRegulatoryIdentifierBuilder>(
      regulatoryIdentifier,
      o.regulatoryIdentifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      partNumber,
      o.partNumber,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      manufacturer,
      o.manufacturer,
    )) {
      return false;
    }
    if (!listEquals<DeviceDefinitionDeviceNameBuilder>(
      deviceName,
      o.deviceName,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      modelNumber,
      o.modelNumber,
    )) {
      return false;
    }
    if (!listEquals<DeviceDefinitionClassificationBuilder>(
      classification,
      o.classification,
    )) {
      return false;
    }
    if (!listEquals<DeviceDefinitionConformsToBuilder>(
      conformsTo,
      o.conformsTo,
    )) {
      return false;
    }
    if (!listEquals<DeviceDefinitionHasPartBuilder>(
      hasPart,
      o.hasPart,
    )) {
      return false;
    }
    if (!listEquals<DeviceDefinitionPackagingBuilder>(
      packaging,
      o.packaging,
    )) {
      return false;
    }
    if (!listEquals<DeviceDefinitionVersionBuilder>(
      version,
      o.version,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      safety,
      o.safety,
    )) {
      return false;
    }
    if (!listEquals<ProductShelfLifeBuilder>(
      shelfLifeStorage,
      o.shelfLifeStorage,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      languageCode,
      o.languageCode,
    )) {
      return false;
    }
    if (!listEquals<DeviceDefinitionPropertyBuilder>(
      property,
      o.property,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      owner,
      o.owner,
    )) {
      return false;
    }
    if (!listEquals<ContactPointBuilder>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!listEquals<DeviceDefinitionLinkBuilder>(
      link,
      o.link,
    )) {
      return false;
    }
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<DeviceDefinitionMaterialBuilder>(
      material,
      o.material,
    )) {
      return false;
    }
    if (!listEquals<DeviceProductionIdentifierInUDIBuilder>(
      productionIdentifierInUDI,
      o.productionIdentifierInUDI,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      guideline,
      o.guideline,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      correctiveAction,
      o.correctiveAction,
    )) {
      return false;
    }
    if (!listEquals<DeviceDefinitionChargeItemBuilder>(
      chargeItem,
      o.chargeItem,
    )) {
      return false;
    }
    return true;
  }
}

/// [DeviceDefinitionUdiDeviceIdentifierBuilder]
/// Unique device identifier (UDI) assigned to device label or package.
/// Note that the Device may include multiple udiCarriers as it either may
/// include just the udiCarrier for the jurisdiction it is sold, or for
/// multiple jurisdictions it could have been sold.
class DeviceDefinitionUdiDeviceIdentifierBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DeviceDefinitionUdiDeviceIdentifierBuilder]

  DeviceDefinitionUdiDeviceIdentifierBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.deviceIdentifier,
    this.issuer,
    this.jurisdiction,
    this.marketDistribution,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DeviceDefinition.udiDeviceIdentifier',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DeviceDefinitionUdiDeviceIdentifierBuilder.empty() =>
      DeviceDefinitionUdiDeviceIdentifierBuilder(
        deviceIdentifier: FhirStringBuilder.empty(),
        issuer: FhirUriBuilder.empty(),
        jurisdiction: FhirUriBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionUdiDeviceIdentifierBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceDefinition.udiDeviceIdentifier';
    return DeviceDefinitionUdiDeviceIdentifierBuilder(
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
      deviceIdentifier: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'deviceIdentifier',
        FhirStringBuilder.fromJson,
        '$objectPath.deviceIdentifier',
      ),
      issuer: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'issuer',
        FhirUriBuilder.fromJson,
        '$objectPath.issuer',
      ),
      jurisdiction: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'jurisdiction',
        FhirUriBuilder.fromJson,
        '$objectPath.jurisdiction',
      ),
      marketDistribution: (json['marketDistribution'] as List<dynamic>?)
          ?.map<DeviceDefinitionMarketDistributionBuilder>(
            (v) => DeviceDefinitionMarketDistributionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.marketDistribution',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DeviceDefinitionUdiDeviceIdentifierBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionUdiDeviceIdentifierBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionUdiDeviceIdentifierBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionUdiDeviceIdentifierBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionUdiDeviceIdentifierBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionUdiDeviceIdentifierBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionUdiDeviceIdentifierBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionUdiDeviceIdentifierBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionUdiDeviceIdentifier';

  /// [deviceIdentifier]
  /// The identifier that is to be associated with every Device that
  /// references this DeviceDefintiion for the issuer and jurisdiction
  /// provided in the DeviceDefinition.udiDeviceIdentifier.
  FhirStringBuilder? deviceIdentifier;

  /// [issuer]
  /// The organization that assigns the identifier algorithm.
  FhirUriBuilder? issuer;

  /// [jurisdiction]
  /// The jurisdiction to which the deviceIdentifier applies.
  FhirUriBuilder? jurisdiction;

  /// [marketDistribution]
  /// Indicates where and when the device is available on the market.
  List<DeviceDefinitionMarketDistributionBuilder>? marketDistribution;

  /// Converts a [DeviceDefinitionUdiDeviceIdentifierBuilder]
  /// to [DeviceDefinitionUdiDeviceIdentifier]
  @override
  DeviceDefinitionUdiDeviceIdentifier build() =>
      DeviceDefinitionUdiDeviceIdentifier.fromJson(toJson());

  /// Converts a [DeviceDefinitionUdiDeviceIdentifierBuilder]
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
    addField('deviceIdentifier', deviceIdentifier);
    addField('issuer', issuer);
    addField('jurisdiction', jurisdiction);
    addField('marketDistribution', marketDistribution);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'deviceIdentifier',
      'issuer',
      'jurisdiction',
      'marketDistribution',
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
      case 'deviceIdentifier':
        if (deviceIdentifier != null) {
          fields.add(deviceIdentifier!);
        }
      case 'issuer':
        if (issuer != null) {
          fields.add(issuer!);
        }
      case 'jurisdiction':
        if (jurisdiction != null) {
          fields.add(jurisdiction!);
        }
      case 'marketDistribution':
        if (marketDistribution != null) {
          fields.addAll(marketDistribution!);
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
      case 'deviceIdentifier':
        {
          if (child is FhirStringBuilder) {
            deviceIdentifier = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                deviceIdentifier = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'issuer':
        {
          if (child is FhirUriBuilder) {
            issuer = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                issuer = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'jurisdiction':
        {
          if (child is FhirUriBuilder) {
            jurisdiction = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                jurisdiction = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'marketDistribution':
        {
          if (child is List<DeviceDefinitionMarketDistributionBuilder>) {
            // Replace or create new list
            marketDistribution = child;
            return;
          } else if (child is DeviceDefinitionMarketDistributionBuilder) {
            // Add single element to existing list or create new list
            marketDistribution = [
              ...(marketDistribution ?? []),
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
      case 'deviceIdentifier':
        return ['FhirStringBuilder'];
      case 'issuer':
        return ['FhirUriBuilder'];
      case 'jurisdiction':
        return ['FhirUriBuilder'];
      case 'marketDistribution':
        return ['DeviceDefinitionMarketDistributionBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceDefinitionUdiDeviceIdentifierBuilder]
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
      case 'deviceIdentifier':
        {
          deviceIdentifier = FhirStringBuilder.empty();
          return;
        }
      case 'issuer':
        {
          issuer = FhirUriBuilder.empty();
          return;
        }
      case 'jurisdiction':
        {
          jurisdiction = FhirUriBuilder.empty();
          return;
        }
      case 'marketDistribution':
        {
          marketDistribution = <DeviceDefinitionMarketDistributionBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  DeviceDefinitionUdiDeviceIdentifierBuilder clone() =>
      throw UnimplementedError();
  @override
  DeviceDefinitionUdiDeviceIdentifierBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? deviceIdentifier,
    FhirUriBuilder? issuer,
    FhirUriBuilder? jurisdiction,
    List<DeviceDefinitionMarketDistributionBuilder>? marketDistribution,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = DeviceDefinitionUdiDeviceIdentifierBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      deviceIdentifier: deviceIdentifier ?? this.deviceIdentifier,
      issuer: issuer ?? this.issuer,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      marketDistribution: marketDistribution ?? this.marketDistribution,
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
    if (o is! DeviceDefinitionUdiDeviceIdentifierBuilder) {
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
      deviceIdentifier,
      o.deviceIdentifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      issuer,
      o.issuer,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      jurisdiction,
      o.jurisdiction,
    )) {
      return false;
    }
    if (!listEquals<DeviceDefinitionMarketDistributionBuilder>(
      marketDistribution,
      o.marketDistribution,
    )) {
      return false;
    }
    return true;
  }
}

/// [DeviceDefinitionMarketDistributionBuilder]
/// Indicates where and when the device is available on the market.
class DeviceDefinitionMarketDistributionBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DeviceDefinitionMarketDistributionBuilder]

  DeviceDefinitionMarketDistributionBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.marketPeriod,
    this.subJurisdiction,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DeviceDefinition.udiDeviceIdentifier.marketDistribution',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DeviceDefinitionMarketDistributionBuilder.empty() =>
      DeviceDefinitionMarketDistributionBuilder(
        marketPeriod: PeriodBuilder.empty(),
        subJurisdiction: FhirUriBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionMarketDistributionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath =
        'DeviceDefinition.udiDeviceIdentifier.marketDistribution';
    return DeviceDefinitionMarketDistributionBuilder(
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
      marketPeriod: JsonParser.parseObject<PeriodBuilder>(
        json,
        'marketPeriod',
        PeriodBuilder.fromJson,
        '$objectPath.marketPeriod',
      ),
      subJurisdiction: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'subJurisdiction',
        FhirUriBuilder.fromJson,
        '$objectPath.subJurisdiction',
      ),
    );
  }

  /// Deserialize [DeviceDefinitionMarketDistributionBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionMarketDistributionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionMarketDistributionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionMarketDistributionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionMarketDistributionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionMarketDistributionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionMarketDistributionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionMarketDistributionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionMarketDistribution';

  /// [marketPeriod]
  /// Begin and end dates for the commercial distribution of the device.
  PeriodBuilder? marketPeriod;

  /// [subJurisdiction]
  /// National state or territory to which the marketDistribution recers,
  /// typically where the device is commercialized.
  FhirUriBuilder? subJurisdiction;

  /// Converts a [DeviceDefinitionMarketDistributionBuilder]
  /// to [DeviceDefinitionMarketDistribution]
  @override
  DeviceDefinitionMarketDistribution build() =>
      DeviceDefinitionMarketDistribution.fromJson(toJson());

  /// Converts a [DeviceDefinitionMarketDistributionBuilder]
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
    addField('marketPeriod', marketPeriod);
    addField('subJurisdiction', subJurisdiction);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'marketPeriod',
      'subJurisdiction',
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
      case 'marketPeriod':
        if (marketPeriod != null) {
          fields.add(marketPeriod!);
        }
      case 'subJurisdiction':
        if (subJurisdiction != null) {
          fields.add(subJurisdiction!);
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
      case 'marketPeriod':
        {
          if (child is PeriodBuilder) {
            marketPeriod = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subJurisdiction':
        {
          if (child is FhirUriBuilder) {
            subJurisdiction = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                subJurisdiction = converted;
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
      case 'marketPeriod':
        return ['PeriodBuilder'];
      case 'subJurisdiction':
        return ['FhirUriBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceDefinitionMarketDistributionBuilder]
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
      case 'marketPeriod':
        {
          marketPeriod = PeriodBuilder.empty();
          return;
        }
      case 'subJurisdiction':
        {
          subJurisdiction = FhirUriBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  DeviceDefinitionMarketDistributionBuilder clone() =>
      throw UnimplementedError();
  @override
  DeviceDefinitionMarketDistributionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    PeriodBuilder? marketPeriod,
    FhirUriBuilder? subJurisdiction,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = DeviceDefinitionMarketDistributionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      marketPeriod: marketPeriod ?? this.marketPeriod,
      subJurisdiction: subJurisdiction ?? this.subJurisdiction,
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
    if (o is! DeviceDefinitionMarketDistributionBuilder) {
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
      marketPeriod,
      o.marketPeriod,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      subJurisdiction,
      o.subJurisdiction,
    )) {
      return false;
    }
    return true;
  }
}

/// [DeviceDefinitionRegulatoryIdentifierBuilder]
/// Identifier associated with the regulatory documentation (certificates,
/// technical documentation, post-market surveillance documentation and
/// reports) of a set of device models sharing the same intended purpose,
/// risk class and essential design and manufacturing characteristics. One
/// example is the Basic UDI-DI in Europe.
class DeviceDefinitionRegulatoryIdentifierBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DeviceDefinitionRegulatoryIdentifierBuilder]

  DeviceDefinitionRegulatoryIdentifierBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.deviceIdentifier,
    this.issuer,
    this.jurisdiction,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DeviceDefinition.regulatoryIdentifier',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DeviceDefinitionRegulatoryIdentifierBuilder.empty() =>
      DeviceDefinitionRegulatoryIdentifierBuilder(
        type: DeviceDefinitionRegulatoryIdentifierTypeBuilder.values.first,
        deviceIdentifier: FhirStringBuilder.empty(),
        issuer: FhirUriBuilder.empty(),
        jurisdiction: FhirUriBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionRegulatoryIdentifierBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceDefinition.regulatoryIdentifier';
    return DeviceDefinitionRegulatoryIdentifierBuilder(
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
      type: JsonParser.parsePrimitive<
          DeviceDefinitionRegulatoryIdentifierTypeBuilder>(
        json,
        'type',
        DeviceDefinitionRegulatoryIdentifierTypeBuilder.fromJson,
        '$objectPath.type',
      ),
      deviceIdentifier: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'deviceIdentifier',
        FhirStringBuilder.fromJson,
        '$objectPath.deviceIdentifier',
      ),
      issuer: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'issuer',
        FhirUriBuilder.fromJson,
        '$objectPath.issuer',
      ),
      jurisdiction: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'jurisdiction',
        FhirUriBuilder.fromJson,
        '$objectPath.jurisdiction',
      ),
    );
  }

  /// Deserialize [DeviceDefinitionRegulatoryIdentifierBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionRegulatoryIdentifierBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionRegulatoryIdentifierBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionRegulatoryIdentifierBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionRegulatoryIdentifierBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionRegulatoryIdentifierBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionRegulatoryIdentifierBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionRegulatoryIdentifierBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionRegulatoryIdentifier';

  /// [type]
  /// The type of identifier itself.
  DeviceDefinitionRegulatoryIdentifierTypeBuilder? type;

  /// [deviceIdentifier]
  /// The identifier itself.
  FhirStringBuilder? deviceIdentifier;

  /// [issuer]
  /// The organization that issued this identifier.
  FhirUriBuilder? issuer;

  /// [jurisdiction]
  /// The jurisdiction to which the deviceIdentifier applies.
  FhirUriBuilder? jurisdiction;

  /// Converts a [DeviceDefinitionRegulatoryIdentifierBuilder]
  /// to [DeviceDefinitionRegulatoryIdentifier]
  @override
  DeviceDefinitionRegulatoryIdentifier build() =>
      DeviceDefinitionRegulatoryIdentifier.fromJson(toJson());

  /// Converts a [DeviceDefinitionRegulatoryIdentifierBuilder]
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
    addField('deviceIdentifier', deviceIdentifier);
    addField('issuer', issuer);
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
      'type',
      'deviceIdentifier',
      'issuer',
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'deviceIdentifier':
        if (deviceIdentifier != null) {
          fields.add(deviceIdentifier!);
        }
      case 'issuer':
        if (issuer != null) {
          fields.add(issuer!);
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
      case 'type':
        {
          if (child is DeviceDefinitionRegulatoryIdentifierTypeBuilder) {
            type = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted =
                    DeviceDefinitionRegulatoryIdentifierTypeBuilder(
                  stringValue,
                );
                type = converted;
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
      case 'deviceIdentifier':
        {
          if (child is FhirStringBuilder) {
            deviceIdentifier = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                deviceIdentifier = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'issuer':
        {
          if (child is FhirUriBuilder) {
            issuer = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                issuer = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'jurisdiction':
        {
          if (child is FhirUriBuilder) {
            jurisdiction = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                jurisdiction = converted;
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
      case 'type':
        return ['FhirCodeEnumBuilder'];
      case 'deviceIdentifier':
        return ['FhirStringBuilder'];
      case 'issuer':
        return ['FhirUriBuilder'];
      case 'jurisdiction':
        return ['FhirUriBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceDefinitionRegulatoryIdentifierBuilder]
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
          type = DeviceDefinitionRegulatoryIdentifierTypeBuilder.empty();
          return;
        }
      case 'deviceIdentifier':
        {
          deviceIdentifier = FhirStringBuilder.empty();
          return;
        }
      case 'issuer':
        {
          issuer = FhirUriBuilder.empty();
          return;
        }
      case 'jurisdiction':
        {
          jurisdiction = FhirUriBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  DeviceDefinitionRegulatoryIdentifierBuilder clone() =>
      throw UnimplementedError();
  @override
  DeviceDefinitionRegulatoryIdentifierBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    DeviceDefinitionRegulatoryIdentifierTypeBuilder? type,
    FhirStringBuilder? deviceIdentifier,
    FhirUriBuilder? issuer,
    FhirUriBuilder? jurisdiction,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = DeviceDefinitionRegulatoryIdentifierBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      deviceIdentifier: deviceIdentifier ?? this.deviceIdentifier,
      issuer: issuer ?? this.issuer,
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
    if (o is! DeviceDefinitionRegulatoryIdentifierBuilder) {
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
      deviceIdentifier,
      o.deviceIdentifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      issuer,
      o.issuer,
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

/// [DeviceDefinitionDeviceNameBuilder]
/// The name or names of the device as given by the manufacturer.
class DeviceDefinitionDeviceNameBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DeviceDefinitionDeviceNameBuilder]

  DeviceDefinitionDeviceNameBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.type,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DeviceDefinition.deviceName',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DeviceDefinitionDeviceNameBuilder.empty() =>
      DeviceDefinitionDeviceNameBuilder(
        name: FhirStringBuilder.empty(),
        type: DeviceNameTypeBuilder.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionDeviceNameBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceDefinition.deviceName';
    return DeviceDefinitionDeviceNameBuilder(
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
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      type: JsonParser.parsePrimitive<DeviceNameTypeBuilder>(
        json,
        'type',
        DeviceNameTypeBuilder.fromJson,
        '$objectPath.type',
      ),
    );
  }

  /// Deserialize [DeviceDefinitionDeviceNameBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionDeviceNameBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionDeviceNameBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionDeviceNameBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionDeviceNameBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionDeviceNameBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionDeviceNameBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionDeviceNameBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionDeviceName';

  /// [name]
  /// A human-friendly name that is used to refer to the device - depending
  /// on the type, it can be the brand name, the common name or alias, or
  /// other.
  FhirStringBuilder? name;

  /// [type]
  /// The type of deviceName.
  /// RegisteredName | UserFriendlyName | PatientReportedName.
  DeviceNameTypeBuilder? type;

  /// Converts a [DeviceDefinitionDeviceNameBuilder]
  /// to [DeviceDefinitionDeviceName]
  @override
  DeviceDefinitionDeviceName build() =>
      DeviceDefinitionDeviceName.fromJson(toJson());

  /// Converts a [DeviceDefinitionDeviceNameBuilder]
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
    addField('name', name);
    addField('type', type);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'name',
      'type',
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
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
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
          if (child is DeviceNameTypeBuilder) {
            type = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = DeviceNameTypeBuilder(stringValue);
                type = converted;
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
      case 'name':
        return ['FhirStringBuilder'];
      case 'type':
        return ['FhirCodeEnumBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceDefinitionDeviceNameBuilder]
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
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'type':
        {
          type = DeviceNameTypeBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  DeviceDefinitionDeviceNameBuilder clone() => throw UnimplementedError();
  @override
  DeviceDefinitionDeviceNameBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? name,
    DeviceNameTypeBuilder? type,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = DeviceDefinitionDeviceNameBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      type: type ?? this.type,
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
    if (o is! DeviceDefinitionDeviceNameBuilder) {
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
    return true;
  }
}

/// [DeviceDefinitionClassificationBuilder]
/// What kind of device or device system this is.
class DeviceDefinitionClassificationBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DeviceDefinitionClassificationBuilder]

  DeviceDefinitionClassificationBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.justification,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DeviceDefinition.classification',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DeviceDefinitionClassificationBuilder.empty() =>
      DeviceDefinitionClassificationBuilder(
        type: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionClassificationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceDefinition.classification';
    return DeviceDefinitionClassificationBuilder(
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
      justification: (json['justification'] as List<dynamic>?)
          ?.map<RelatedArtifactBuilder>(
            (v) => RelatedArtifactBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.justification',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DeviceDefinitionClassificationBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionClassificationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionClassificationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionClassificationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionClassificationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionClassificationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionClassificationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionClassificationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionClassification';

  /// [type]
  /// A classification or risk class of the device model.
  CodeableConceptBuilder? type;

  /// [justification]
  /// Further information qualifying this classification of the device model.
  List<RelatedArtifactBuilder>? justification;

  /// Converts a [DeviceDefinitionClassificationBuilder]
  /// to [DeviceDefinitionClassification]
  @override
  DeviceDefinitionClassification build() =>
      DeviceDefinitionClassification.fromJson(toJson());

  /// Converts a [DeviceDefinitionClassificationBuilder]
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
    addField('justification', justification);
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
      'justification',
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
      case 'justification':
        if (justification != null) {
          fields.addAll(justification!);
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
      case 'justification':
        {
          if (child is List<RelatedArtifactBuilder>) {
            // Replace or create new list
            justification = child;
            return;
          } else if (child is RelatedArtifactBuilder) {
            // Add single element to existing list or create new list
            justification = [
              ...(justification ?? []),
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
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'justification':
        return ['RelatedArtifactBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceDefinitionClassificationBuilder]
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
      case 'justification':
        {
          justification = <RelatedArtifactBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  DeviceDefinitionClassificationBuilder clone() => throw UnimplementedError();
  @override
  DeviceDefinitionClassificationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    List<RelatedArtifactBuilder>? justification,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = DeviceDefinitionClassificationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      justification: justification ?? this.justification,
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
    if (o is! DeviceDefinitionClassificationBuilder) {
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
    if (!listEquals<RelatedArtifactBuilder>(
      justification,
      o.justification,
    )) {
      return false;
    }
    return true;
  }
}

/// [DeviceDefinitionConformsToBuilder]
/// Identifies the standards, specifications, or formal guidances for the
/// capabilities supported by the device. The device may be certified as
/// conformant to these specifications e.g., communication, performance,
/// process, measurement, or specialization standards.
class DeviceDefinitionConformsToBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DeviceDefinitionConformsToBuilder]

  DeviceDefinitionConformsToBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.category,
    this.specification,
    this.version,
    this.source,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DeviceDefinition.conformsTo',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DeviceDefinitionConformsToBuilder.empty() =>
      DeviceDefinitionConformsToBuilder(
        specification: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionConformsToBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceDefinition.conformsTo';
    return DeviceDefinitionConformsToBuilder(
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
      category: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'category',
        CodeableConceptBuilder.fromJson,
        '$objectPath.category',
      ),
      specification: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'specification',
        CodeableConceptBuilder.fromJson,
        '$objectPath.specification',
      ),
      version: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'version',
        FhirStringBuilder.fromJson,
        '$objectPath.version',
      ),
      source: (json['source'] as List<dynamic>?)
          ?.map<RelatedArtifactBuilder>(
            (v) => RelatedArtifactBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.source',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DeviceDefinitionConformsToBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionConformsToBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionConformsToBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionConformsToBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionConformsToBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionConformsToBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionConformsToBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionConformsToBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionConformsTo';

  /// [category]
  /// Describes the type of the standard, specification, or formal guidance.
  CodeableConceptBuilder? category;

  /// [specification]
  /// Code that identifies the specific standard, specification, protocol,
  /// formal guidance, regulation, legislation, or certification scheme to
  /// which the device adheres.
  CodeableConceptBuilder? specification;

  /// [version]
  /// Identifies the specific form or variant of the standard, specification,
  /// or formal guidance. This may be a 'version number', release, document
  /// edition, publication year, or other label.
  List<FhirStringBuilder>? version;

  /// [source]
  /// Standard, regulation, certification, or guidance website, document, or
  /// other publication, or similar, supporting the conformance.
  List<RelatedArtifactBuilder>? source;

  /// Converts a [DeviceDefinitionConformsToBuilder]
  /// to [DeviceDefinitionConformsTo]
  @override
  DeviceDefinitionConformsTo build() =>
      DeviceDefinitionConformsTo.fromJson(toJson());

  /// Converts a [DeviceDefinitionConformsToBuilder]
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
    addField('category', category);
    addField('specification', specification);
    addField('version', version);
    addField('source', source);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'category',
      'specification',
      'version',
      'source',
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
      case 'category':
        if (category != null) {
          fields.add(category!);
        }
      case 'specification':
        if (specification != null) {
          fields.add(specification!);
        }
      case 'version':
        if (version != null) {
          fields.addAll(version!);
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
      case 'category':
        {
          if (child is CodeableConceptBuilder) {
            category = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'specification':
        {
          if (child is CodeableConceptBuilder) {
            specification = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'version':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            version = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            version = [
              ...(version ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirStringBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirStringBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              version = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                version = [
                  ...(version ?? []),
                  converted,
                ];
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'source':
        {
          if (child is List<RelatedArtifactBuilder>) {
            // Replace or create new list
            source = child;
            return;
          } else if (child is RelatedArtifactBuilder) {
            // Add single element to existing list or create new list
            source = [
              ...(source ?? []),
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
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'specification':
        return ['CodeableConceptBuilder'];
      case 'version':
        return ['FhirStringBuilder'];
      case 'source':
        return ['RelatedArtifactBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceDefinitionConformsToBuilder]
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
      case 'category':
        {
          category = CodeableConceptBuilder.empty();
          return;
        }
      case 'specification':
        {
          specification = CodeableConceptBuilder.empty();
          return;
        }
      case 'version':
        {
          version = <FhirStringBuilder>[];
          return;
        }
      case 'source':
        {
          source = <RelatedArtifactBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  DeviceDefinitionConformsToBuilder clone() => throw UnimplementedError();
  @override
  DeviceDefinitionConformsToBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? category,
    CodeableConceptBuilder? specification,
    List<FhirStringBuilder>? version,
    List<RelatedArtifactBuilder>? source,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = DeviceDefinitionConformsToBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      category: category ?? this.category,
      specification: specification ?? this.specification,
      version: version ?? this.version,
      source: source ?? this.source,
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
    if (o is! DeviceDefinitionConformsToBuilder) {
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
      category,
      o.category,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      specification,
      o.specification,
    )) {
      return false;
    }
    if (!listEquals<FhirStringBuilder>(
      version,
      o.version,
    )) {
      return false;
    }
    if (!listEquals<RelatedArtifactBuilder>(
      source,
      o.source,
    )) {
      return false;
    }
    return true;
  }
}

/// [DeviceDefinitionHasPartBuilder]
/// A device that is part (for example a component) of the present device.
class DeviceDefinitionHasPartBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DeviceDefinitionHasPartBuilder]

  DeviceDefinitionHasPartBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.reference,
    this.count,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DeviceDefinition.hasPart',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DeviceDefinitionHasPartBuilder.empty() =>
      DeviceDefinitionHasPartBuilder(
        reference: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionHasPartBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceDefinition.hasPart';
    return DeviceDefinitionHasPartBuilder(
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
      reference: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'reference',
        ReferenceBuilder.fromJson,
        '$objectPath.reference',
      ),
      count: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'count',
        FhirIntegerBuilder.fromJson,
        '$objectPath.count',
      ),
    );
  }

  /// Deserialize [DeviceDefinitionHasPartBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionHasPartBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionHasPartBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionHasPartBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionHasPartBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionHasPartBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionHasPartBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionHasPartBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionHasPart';

  /// [reference]
  /// Reference to the device that is part of the current device.
  ReferenceBuilder? reference;

  /// [count]
  /// Number of instances of the component device in the current device.
  FhirIntegerBuilder? count;

  /// Converts a [DeviceDefinitionHasPartBuilder]
  /// to [DeviceDefinitionHasPart]
  @override
  DeviceDefinitionHasPart build() => DeviceDefinitionHasPart.fromJson(toJson());

  /// Converts a [DeviceDefinitionHasPartBuilder]
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
    addField('reference', reference);
    addField('count', count);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'reference',
      'count',
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
      case 'reference':
        if (reference != null) {
          fields.add(reference!);
        }
      case 'count':
        if (count != null) {
          fields.add(count!);
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
      case 'reference':
        {
          if (child is ReferenceBuilder) {
            reference = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'count':
        {
          if (child is FhirIntegerBuilder) {
            count = child;
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
                  count = converted;
                  return;
                }
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
      case 'reference':
        return ['ReferenceBuilder'];
      case 'count':
        return ['FhirIntegerBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceDefinitionHasPartBuilder]
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
      case 'reference':
        {
          reference = ReferenceBuilder.empty();
          return;
        }
      case 'count':
        {
          count = FhirIntegerBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  DeviceDefinitionHasPartBuilder clone() => throw UnimplementedError();
  @override
  DeviceDefinitionHasPartBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ReferenceBuilder? reference,
    FhirIntegerBuilder? count,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = DeviceDefinitionHasPartBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      reference: reference ?? this.reference,
      count: count ?? this.count,
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
    if (o is! DeviceDefinitionHasPartBuilder) {
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
      reference,
      o.reference,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      count,
      o.count,
    )) {
      return false;
    }
    return true;
  }
}

/// [DeviceDefinitionPackagingBuilder]
/// Information about the packaging of the device, i.e. how the device is
/// packaged.
class DeviceDefinitionPackagingBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DeviceDefinitionPackagingBuilder]

  DeviceDefinitionPackagingBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.type,
    this.count,
    this.distributor,
    this.udiDeviceIdentifier,
    this.packaging,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DeviceDefinition.packaging',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DeviceDefinitionPackagingBuilder.empty() =>
      DeviceDefinitionPackagingBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionPackagingBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceDefinition.packaging';
    return DeviceDefinitionPackagingBuilder(
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
      identifier: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'identifier',
        IdentifierBuilder.fromJson,
        '$objectPath.identifier',
      ),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      count: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'count',
        FhirIntegerBuilder.fromJson,
        '$objectPath.count',
      ),
      distributor: (json['distributor'] as List<dynamic>?)
          ?.map<DeviceDefinitionDistributorBuilder>(
            (v) => DeviceDefinitionDistributorBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.distributor',
              },
            ),
          )
          .toList(),
      udiDeviceIdentifier: (json['udiDeviceIdentifier'] as List<dynamic>?)
          ?.map<DeviceDefinitionUdiDeviceIdentifierBuilder>(
            (v) => DeviceDefinitionUdiDeviceIdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.udiDeviceIdentifier',
              },
            ),
          )
          .toList(),
      packaging: (json['packaging'] as List<dynamic>?)
          ?.map<DeviceDefinitionPackagingBuilder>(
            (v) => DeviceDefinitionPackagingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.packaging',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DeviceDefinitionPackagingBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionPackagingBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionPackagingBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionPackagingBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionPackagingBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionPackagingBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionPackagingBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionPackagingBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionPackaging';

  /// [identifier]
  /// The business identifier of the packaged medication.
  IdentifierBuilder? identifier;

  /// [type]
  /// A code that defines the specific type of packaging.
  CodeableConceptBuilder? type;

  /// [count]
  /// The number of items contained in the package (devices or sub-packages).
  FhirIntegerBuilder? count;

  /// [distributor]
  /// An organization that distributes the packaged device.
  List<DeviceDefinitionDistributorBuilder>? distributor;

  /// [udiDeviceIdentifier]
  /// Unique Device Identifier (UDI) Barcode string on the packaging.
  List<DeviceDefinitionUdiDeviceIdentifierBuilder>? udiDeviceIdentifier;

  /// [packaging]
  /// Allows packages within packages.
  List<DeviceDefinitionPackagingBuilder>? packaging;

  /// Converts a [DeviceDefinitionPackagingBuilder]
  /// to [DeviceDefinitionPackaging]
  @override
  DeviceDefinitionPackaging build() =>
      DeviceDefinitionPackaging.fromJson(toJson());

  /// Converts a [DeviceDefinitionPackagingBuilder]
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
    addField('count', count);
    addField('distributor', distributor);
    addField('udiDeviceIdentifier', udiDeviceIdentifier);
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
      'count',
      'distributor',
      'udiDeviceIdentifier',
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
          fields.add(identifier!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'count':
        if (count != null) {
          fields.add(count!);
        }
      case 'distributor':
        if (distributor != null) {
          fields.addAll(distributor!);
        }
      case 'udiDeviceIdentifier':
        if (udiDeviceIdentifier != null) {
          fields.addAll(udiDeviceIdentifier!);
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
          if (child is IdentifierBuilder) {
            identifier = child;
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
      case 'count':
        {
          if (child is FhirIntegerBuilder) {
            count = child;
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
                  count = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'distributor':
        {
          if (child is List<DeviceDefinitionDistributorBuilder>) {
            // Replace or create new list
            distributor = child;
            return;
          } else if (child is DeviceDefinitionDistributorBuilder) {
            // Add single element to existing list or create new list
            distributor = [
              ...(distributor ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'udiDeviceIdentifier':
        {
          if (child is List<DeviceDefinitionUdiDeviceIdentifierBuilder>) {
            // Replace or create new list
            udiDeviceIdentifier = child;
            return;
          } else if (child is DeviceDefinitionUdiDeviceIdentifierBuilder) {
            // Add single element to existing list or create new list
            udiDeviceIdentifier = [
              ...(udiDeviceIdentifier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'packaging':
        {
          if (child is List<DeviceDefinitionPackagingBuilder>) {
            // Replace or create new list
            packaging = child;
            return;
          } else if (child is DeviceDefinitionPackagingBuilder) {
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
      case 'count':
        return ['FhirIntegerBuilder'];
      case 'distributor':
        return ['DeviceDefinitionDistributorBuilder'];
      case 'udiDeviceIdentifier':
        return ['DeviceDefinitionUdiDeviceIdentifierBuilder'];
      case 'packaging':
        return ['DeviceDefinitionPackagingBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceDefinitionPackagingBuilder]
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
          identifier = IdentifierBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'count':
        {
          count = FhirIntegerBuilder.empty();
          return;
        }
      case 'distributor':
        {
          distributor = <DeviceDefinitionDistributorBuilder>[];
          return;
        }
      case 'udiDeviceIdentifier':
        {
          udiDeviceIdentifier = <DeviceDefinitionUdiDeviceIdentifierBuilder>[];
          return;
        }
      case 'packaging':
        {
          packaging = <DeviceDefinitionPackagingBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  DeviceDefinitionPackagingBuilder clone() => throw UnimplementedError();
  @override
  DeviceDefinitionPackagingBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    IdentifierBuilder? identifier,
    CodeableConceptBuilder? type,
    FhirIntegerBuilder? count,
    List<DeviceDefinitionDistributorBuilder>? distributor,
    List<DeviceDefinitionUdiDeviceIdentifierBuilder>? udiDeviceIdentifier,
    List<DeviceDefinitionPackagingBuilder>? packaging,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = DeviceDefinitionPackagingBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      type: type ?? this.type,
      count: count ?? this.count,
      distributor: distributor ?? this.distributor,
      udiDeviceIdentifier: udiDeviceIdentifier ?? this.udiDeviceIdentifier,
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
    if (o is! DeviceDefinitionPackagingBuilder) {
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
      count,
      o.count,
    )) {
      return false;
    }
    if (!listEquals<DeviceDefinitionDistributorBuilder>(
      distributor,
      o.distributor,
    )) {
      return false;
    }
    if (!listEquals<DeviceDefinitionUdiDeviceIdentifierBuilder>(
      udiDeviceIdentifier,
      o.udiDeviceIdentifier,
    )) {
      return false;
    }
    if (!listEquals<DeviceDefinitionPackagingBuilder>(
      packaging,
      o.packaging,
    )) {
      return false;
    }
    return true;
  }
}

/// [DeviceDefinitionDistributorBuilder]
/// An organization that distributes the packaged device.
class DeviceDefinitionDistributorBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DeviceDefinitionDistributorBuilder]

  DeviceDefinitionDistributorBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.organizationReference,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DeviceDefinition.packaging.distributor',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DeviceDefinitionDistributorBuilder.empty() =>
      DeviceDefinitionDistributorBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionDistributorBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceDefinition.packaging.distributor';
    return DeviceDefinitionDistributorBuilder(
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
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      organizationReference: (json['organizationReference'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.organizationReference',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DeviceDefinitionDistributorBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionDistributorBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionDistributorBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionDistributorBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionDistributorBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionDistributorBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionDistributorBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionDistributorBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionDistributor';

  /// [name]
  /// Distributor's human-readable name.
  FhirStringBuilder? name;

  /// [organizationReference]
  /// Distributor as an Organization resource.
  List<ReferenceBuilder>? organizationReference;

  /// Converts a [DeviceDefinitionDistributorBuilder]
  /// to [DeviceDefinitionDistributor]
  @override
  DeviceDefinitionDistributor build() =>
      DeviceDefinitionDistributor.fromJson(toJson());

  /// Converts a [DeviceDefinitionDistributorBuilder]
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
    addField('name', name);
    addField('organizationReference', organizationReference);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'name',
      'organizationReference',
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
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'organizationReference':
        if (organizationReference != null) {
          fields.addAll(organizationReference!);
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
      case 'organizationReference':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            organizationReference = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            organizationReference = [
              ...(organizationReference ?? []),
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
      case 'name':
        return ['FhirStringBuilder'];
      case 'organizationReference':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceDefinitionDistributorBuilder]
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
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'organizationReference':
        {
          organizationReference = <ReferenceBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  DeviceDefinitionDistributorBuilder clone() => throw UnimplementedError();
  @override
  DeviceDefinitionDistributorBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? name,
    List<ReferenceBuilder>? organizationReference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = DeviceDefinitionDistributorBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      organizationReference:
          organizationReference ?? this.organizationReference,
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
    if (o is! DeviceDefinitionDistributorBuilder) {
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
      name,
      o.name,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      organizationReference,
      o.organizationReference,
    )) {
      return false;
    }
    return true;
  }
}

/// [DeviceDefinitionVersionBuilder]
/// The version of the device or software.
class DeviceDefinitionVersionBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DeviceDefinitionVersionBuilder]

  DeviceDefinitionVersionBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.component,
    this.value,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DeviceDefinition.version',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DeviceDefinitionVersionBuilder.empty() =>
      DeviceDefinitionVersionBuilder(
        value: FhirStringBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionVersionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceDefinition.version';
    return DeviceDefinitionVersionBuilder(
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
      component: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'component',
        IdentifierBuilder.fromJson,
        '$objectPath.component',
      ),
      value: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'value',
        FhirStringBuilder.fromJson,
        '$objectPath.value',
      ),
    );
  }

  /// Deserialize [DeviceDefinitionVersionBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionVersionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionVersionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionVersionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionVersionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionVersionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionVersionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionVersionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionVersion';

  /// [type]
  /// The type of the device version, e.g. manufacturer, approved, internal.
  CodeableConceptBuilder? type;

  /// [component]
  /// The hardware or software module of the device to which the version
  /// applies.
  IdentifierBuilder? component;

  /// [value]
  /// The version text.
  FhirStringBuilder? value;

  /// Converts a [DeviceDefinitionVersionBuilder]
  /// to [DeviceDefinitionVersion]
  @override
  DeviceDefinitionVersion build() => DeviceDefinitionVersion.fromJson(toJson());

  /// Converts a [DeviceDefinitionVersionBuilder]
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
    addField('component', component);
    addField('value', value);
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
      'component',
      'value',
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
      case 'component':
        if (component != null) {
          fields.add(component!);
        }
      case 'value':
        if (value != null) {
          fields.add(value!);
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
      case 'component':
        {
          if (child is IdentifierBuilder) {
            component = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'value':
        {
          if (child is FhirStringBuilder) {
            value = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                value = converted;
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
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'component':
        return ['IdentifierBuilder'];
      case 'value':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceDefinitionVersionBuilder]
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
      case 'component':
        {
          component = IdentifierBuilder.empty();
          return;
        }
      case 'value':
        {
          value = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  DeviceDefinitionVersionBuilder clone() => throw UnimplementedError();
  @override
  DeviceDefinitionVersionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    IdentifierBuilder? component,
    FhirStringBuilder? value,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = DeviceDefinitionVersionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      component: component ?? this.component,
      value: value ?? this.value,
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
    if (o is! DeviceDefinitionVersionBuilder) {
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
      component,
      o.component,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      value,
      o.value,
    )) {
      return false;
    }
    return true;
  }
}

/// [DeviceDefinitionPropertyBuilder]
/// Static or essentially fixed characteristics or features of this kind of
/// device that are otherwise not captured in more specific attributes,
/// e.g., time or timing attributes, resolution, accuracy, and physical
/// attributes.
class DeviceDefinitionPropertyBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DeviceDefinitionPropertyBuilder]

  DeviceDefinitionPropertyBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    ValueXDeviceDefinitionPropertyBuilder? valueX,
    QuantityBuilder? valueQuantity,
    CodeableConceptBuilder? valueCodeableConcept,
    FhirStringBuilder? valueString,
    FhirBooleanBuilder? valueBoolean,
    FhirIntegerBuilder? valueInteger,
    RangeBuilder? valueRange,
    AttachmentBuilder? valueAttachment,
    super.disallowExtensions,
  })  : valueX = valueX ??
            valueQuantity ??
            valueCodeableConcept ??
            valueString ??
            valueBoolean ??
            valueInteger ??
            valueRange ??
            valueAttachment,
        super(
          objectPath: 'DeviceDefinition.property',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DeviceDefinitionPropertyBuilder.empty() =>
      DeviceDefinitionPropertyBuilder(
        type: CodeableConceptBuilder.empty(),
        valueX: QuantityBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionPropertyBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceDefinition.property';
    return DeviceDefinitionPropertyBuilder(
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
      valueX:
          JsonParser.parsePolymorphic<ValueXDeviceDefinitionPropertyBuilder>(
        json,
        {
          'valueQuantity': QuantityBuilder.fromJson,
          'valueCodeableConcept': CodeableConceptBuilder.fromJson,
          'valueString': FhirStringBuilder.fromJson,
          'valueBoolean': FhirBooleanBuilder.fromJson,
          'valueInteger': FhirIntegerBuilder.fromJson,
          'valueRange': RangeBuilder.fromJson,
          'valueAttachment': AttachmentBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [DeviceDefinitionPropertyBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionPropertyBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionPropertyBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionPropertyBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionPropertyBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionPropertyBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionPropertyBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionPropertyBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionProperty';

  /// [type]
  /// Code that specifies the property such as a resolution or color being
  /// represented.
  CodeableConceptBuilder? type;

  /// [valueX]
  /// The value of the property specified by the associated property.type
  /// code.
  ValueXDeviceDefinitionPropertyBuilder? valueX;

  /// Getter for [valueQuantity] as a QuantityBuilder
  QuantityBuilder? get valueQuantity => valueX?.isAs<QuantityBuilder>();

  /// Getter for [valueCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get valueCodeableConcept =>
      valueX?.isAs<CodeableConceptBuilder>();

  /// Getter for [valueString] as a FhirStringBuilder
  FhirStringBuilder? get valueString => valueX?.isAs<FhirStringBuilder>();

  /// Getter for [valueBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get valueBoolean => valueX?.isAs<FhirBooleanBuilder>();

  /// Getter for [valueInteger] as a FhirIntegerBuilder
  FhirIntegerBuilder? get valueInteger => valueX?.isAs<FhirIntegerBuilder>();

  /// Getter for [valueRange] as a RangeBuilder
  RangeBuilder? get valueRange => valueX?.isAs<RangeBuilder>();

  /// Getter for [valueAttachment] as a AttachmentBuilder
  AttachmentBuilder? get valueAttachment => valueX?.isAs<AttachmentBuilder>();

  /// Converts a [DeviceDefinitionPropertyBuilder]
  /// to [DeviceDefinitionProperty]
  @override
  DeviceDefinitionProperty build() =>
      DeviceDefinitionProperty.fromJson(toJson());

  /// Converts a [DeviceDefinitionPropertyBuilder]
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
      case 'valueQuantity':
        if (valueX is QuantityBuilder) {
          fields.add(valueX!);
        }
      case 'valueCodeableConcept':
        if (valueX is CodeableConceptBuilder) {
          fields.add(valueX!);
        }
      case 'valueString':
        if (valueX is FhirStringBuilder) {
          fields.add(valueX!);
        }
      case 'valueBoolean':
        if (valueX is FhirBooleanBuilder) {
          fields.add(valueX!);
        }
      case 'valueInteger':
        if (valueX is FhirIntegerBuilder) {
          fields.add(valueX!);
        }
      case 'valueRange':
        if (valueX is RangeBuilder) {
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
          if (child is ValueXDeviceDefinitionPropertyBuilder) {
            valueX = child;
            return;
          } else {
            if (child is QuantityBuilder) {
              valueX = child;
              return;
            }
            if (child is CodeableConceptBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirBooleanBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirIntegerBuilder) {
              valueX = child;
              return;
            }
            if (child is RangeBuilder) {
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
      case 'valueQuantity':
        {
          if (child is QuantityBuilder) {
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
      case 'valueString':
        {
          if (child is FhirStringBuilder) {
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
      case 'valueInteger':
        {
          if (child is FhirIntegerBuilder) {
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
          'QuantityBuilder',
          'CodeableConceptBuilder',
          'FhirStringBuilder',
          'FhirBooleanBuilder',
          'FhirIntegerBuilder',
          'RangeBuilder',
          'AttachmentBuilder',
        ];
      case 'valueQuantity':
        return ['QuantityBuilder'];
      case 'valueCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'valueString':
        return ['FhirStringBuilder'];
      case 'valueBoolean':
        return ['FhirBooleanBuilder'];
      case 'valueInteger':
        return ['FhirIntegerBuilder'];
      case 'valueRange':
        return ['RangeBuilder'];
      case 'valueAttachment':
        return ['AttachmentBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceDefinitionPropertyBuilder]
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
      case 'valueQuantity':
        {
          valueX = QuantityBuilder.empty();
          return;
        }
      case 'valueCodeableConcept':
        {
          valueX = CodeableConceptBuilder.empty();
          return;
        }
      case 'valueString':
        {
          valueX = FhirStringBuilder.empty();
          return;
        }
      case 'valueBoolean':
        {
          valueX = FhirBooleanBuilder.empty();
          return;
        }
      case 'valueInteger':
        {
          valueX = FhirIntegerBuilder.empty();
          return;
        }
      case 'valueRange':
        {
          valueX = RangeBuilder.empty();
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
  DeviceDefinitionPropertyBuilder clone() => throw UnimplementedError();
  @override
  DeviceDefinitionPropertyBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    ValueXDeviceDefinitionPropertyBuilder? valueX,
    QuantityBuilder? valueQuantity,
    CodeableConceptBuilder? valueCodeableConcept,
    FhirStringBuilder? valueString,
    FhirBooleanBuilder? valueBoolean,
    FhirIntegerBuilder? valueInteger,
    RangeBuilder? valueRange,
    AttachmentBuilder? valueAttachment,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = DeviceDefinitionPropertyBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueX: valueX ??
          valueQuantity ??
          valueCodeableConcept ??
          valueString ??
          valueBoolean ??
          valueInteger ??
          valueRange ??
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
    if (o is! DeviceDefinitionPropertyBuilder) {
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

/// [DeviceDefinitionLinkBuilder]
/// An associated device, attached to, used with, communicating with or
/// linking a previous or new device model to the focal device.
class DeviceDefinitionLinkBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DeviceDefinitionLinkBuilder]

  DeviceDefinitionLinkBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.relation,
    this.relatedDevice,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DeviceDefinition.link',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DeviceDefinitionLinkBuilder.empty() => DeviceDefinitionLinkBuilder(
        relation: CodingBuilder.empty(),
        relatedDevice: CodeableReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionLinkBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceDefinition.link';
    return DeviceDefinitionLinkBuilder(
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
      relation: JsonParser.parseObject<CodingBuilder>(
        json,
        'relation',
        CodingBuilder.fromJson,
        '$objectPath.relation',
      ),
      relatedDevice: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'relatedDevice',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.relatedDevice',
      ),
    );
  }

  /// Deserialize [DeviceDefinitionLinkBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionLinkBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionLinkBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionLinkBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionLinkBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionLinkBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionLinkBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionLinkBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionLink';

  /// [relation]
  /// The type indicates the relationship of the related device to the device
  /// instance.
  CodingBuilder? relation;

  /// [relatedDevice]
  /// A reference to the linked device.
  CodeableReferenceBuilder? relatedDevice;

  /// Converts a [DeviceDefinitionLinkBuilder]
  /// to [DeviceDefinitionLink]
  @override
  DeviceDefinitionLink build() => DeviceDefinitionLink.fromJson(toJson());

  /// Converts a [DeviceDefinitionLinkBuilder]
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
    addField('relation', relation);
    addField('relatedDevice', relatedDevice);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'relation',
      'relatedDevice',
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
      case 'relation':
        if (relation != null) {
          fields.add(relation!);
        }
      case 'relatedDevice':
        if (relatedDevice != null) {
          fields.add(relatedDevice!);
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
      case 'relation':
        {
          if (child is CodingBuilder) {
            relation = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'relatedDevice':
        {
          if (child is CodeableReferenceBuilder) {
            relatedDevice = child;
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
      case 'relation':
        return ['CodingBuilder'];
      case 'relatedDevice':
        return ['CodeableReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceDefinitionLinkBuilder]
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
      case 'relation':
        {
          relation = CodingBuilder.empty();
          return;
        }
      case 'relatedDevice':
        {
          relatedDevice = CodeableReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  DeviceDefinitionLinkBuilder clone() => throw UnimplementedError();
  @override
  DeviceDefinitionLinkBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodingBuilder? relation,
    CodeableReferenceBuilder? relatedDevice,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = DeviceDefinitionLinkBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      relation: relation ?? this.relation,
      relatedDevice: relatedDevice ?? this.relatedDevice,
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
    if (o is! DeviceDefinitionLinkBuilder) {
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
      relation,
      o.relation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      relatedDevice,
      o.relatedDevice,
    )) {
      return false;
    }
    return true;
  }
}

/// [DeviceDefinitionMaterialBuilder]
/// A substance used to create the material(s) of which the device is made.
class DeviceDefinitionMaterialBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DeviceDefinitionMaterialBuilder]

  DeviceDefinitionMaterialBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.substance,
    this.alternate,
    this.allergenicIndicator,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DeviceDefinition.material',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DeviceDefinitionMaterialBuilder.empty() =>
      DeviceDefinitionMaterialBuilder(
        substance: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionMaterialBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceDefinition.material';
    return DeviceDefinitionMaterialBuilder(
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
      substance: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'substance',
        CodeableConceptBuilder.fromJson,
        '$objectPath.substance',
      ),
      alternate: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'alternate',
        FhirBooleanBuilder.fromJson,
        '$objectPath.alternate',
      ),
      allergenicIndicator: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'allergenicIndicator',
        FhirBooleanBuilder.fromJson,
        '$objectPath.allergenicIndicator',
      ),
    );
  }

  /// Deserialize [DeviceDefinitionMaterialBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionMaterialBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionMaterialBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionMaterialBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionMaterialBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionMaterialBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionMaterialBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionMaterialBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionMaterial';

  /// [substance]
  /// A substance that the device contains, may contain, or is made of - for
  /// example latex - to be used to determine patient compatibility. This is
  /// not intended to represent the composition of the device, only the
  /// clinically relevant materials.
  CodeableConceptBuilder? substance;

  /// [alternate]
  /// Indicates an alternative material of the device.
  FhirBooleanBuilder? alternate;

  /// [allergenicIndicator]
  /// Whether the substance is a known or suspected allergen.
  FhirBooleanBuilder? allergenicIndicator;

  /// Converts a [DeviceDefinitionMaterialBuilder]
  /// to [DeviceDefinitionMaterial]
  @override
  DeviceDefinitionMaterial build() =>
      DeviceDefinitionMaterial.fromJson(toJson());

  /// Converts a [DeviceDefinitionMaterialBuilder]
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
    addField('substance', substance);
    addField('alternate', alternate);
    addField('allergenicIndicator', allergenicIndicator);
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
      'alternate',
      'allergenicIndicator',
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
      case 'substance':
        if (substance != null) {
          fields.add(substance!);
        }
      case 'alternate':
        if (alternate != null) {
          fields.add(alternate!);
        }
      case 'allergenicIndicator':
        if (allergenicIndicator != null) {
          fields.add(allergenicIndicator!);
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
      case 'substance':
        {
          if (child is CodeableConceptBuilder) {
            substance = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'alternate':
        {
          if (child is FhirBooleanBuilder) {
            alternate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                alternate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'allergenicIndicator':
        {
          if (child is FhirBooleanBuilder) {
            allergenicIndicator = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                allergenicIndicator = converted;
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
      case 'substance':
        return ['CodeableConceptBuilder'];
      case 'alternate':
        return ['FhirBooleanBuilder'];
      case 'allergenicIndicator':
        return ['FhirBooleanBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceDefinitionMaterialBuilder]
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
      case 'substance':
        {
          substance = CodeableConceptBuilder.empty();
          return;
        }
      case 'alternate':
        {
          alternate = FhirBooleanBuilder.empty();
          return;
        }
      case 'allergenicIndicator':
        {
          allergenicIndicator = FhirBooleanBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  DeviceDefinitionMaterialBuilder clone() => throw UnimplementedError();
  @override
  DeviceDefinitionMaterialBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? substance,
    FhirBooleanBuilder? alternate,
    FhirBooleanBuilder? allergenicIndicator,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = DeviceDefinitionMaterialBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      substance: substance ?? this.substance,
      alternate: alternate ?? this.alternate,
      allergenicIndicator: allergenicIndicator ?? this.allergenicIndicator,
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
    if (o is! DeviceDefinitionMaterialBuilder) {
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
      substance,
      o.substance,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      alternate,
      o.alternate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      allergenicIndicator,
      o.allergenicIndicator,
    )) {
      return false;
    }
    return true;
  }
}

/// [DeviceDefinitionGuidelineBuilder]
/// Information aimed at providing directions for the usage of this model
/// of device.
class DeviceDefinitionGuidelineBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DeviceDefinitionGuidelineBuilder]

  DeviceDefinitionGuidelineBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.useContext,
    this.usageInstruction,
    this.relatedArtifact,
    this.indication,
    this.contraindication,
    this.warning,
    this.intendedUse,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DeviceDefinition.guideline',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DeviceDefinitionGuidelineBuilder.empty() =>
      DeviceDefinitionGuidelineBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionGuidelineBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceDefinition.guideline';
    return DeviceDefinitionGuidelineBuilder(
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
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map<UsageContextBuilder>(
            (v) => UsageContextBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.useContext',
              },
            ),
          )
          .toList(),
      usageInstruction: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'usageInstruction',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.usageInstruction',
      ),
      relatedArtifact: (json['relatedArtifact'] as List<dynamic>?)
          ?.map<RelatedArtifactBuilder>(
            (v) => RelatedArtifactBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.relatedArtifact',
              },
            ),
          )
          .toList(),
      indication: (json['indication'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.indication',
              },
            ),
          )
          .toList(),
      contraindication: (json['contraindication'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contraindication',
              },
            ),
          )
          .toList(),
      warning: (json['warning'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.warning',
              },
            ),
          )
          .toList(),
      intendedUse: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'intendedUse',
        FhirStringBuilder.fromJson,
        '$objectPath.intendedUse',
      ),
    );
  }

  /// Deserialize [DeviceDefinitionGuidelineBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionGuidelineBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionGuidelineBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionGuidelineBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionGuidelineBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionGuidelineBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionGuidelineBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionGuidelineBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionGuideline';

  /// [useContext]
  /// The circumstances that form the setting for using the device.
  List<UsageContextBuilder>? useContext;

  /// [usageInstruction]
  /// Detailed written and visual directions for the user on how to use the
  /// device.
  FhirMarkdownBuilder? usageInstruction;

  /// [relatedArtifact]
  /// A source of information or reference for this guideline.
  List<RelatedArtifactBuilder>? relatedArtifact;

  /// [indication]
  /// A clinical condition for which the device was designed to be used.
  List<CodeableConceptBuilder>? indication;

  /// [contraindication]
  /// A specific situation when a device should not be used because it may
  /// cause harm.
  List<CodeableConceptBuilder>? contraindication;

  /// [warning]
  /// Specific hazard alert information that a user needs to know before
  /// using the device.
  List<CodeableConceptBuilder>? warning;

  /// [intendedUse]
  /// A description of the general purpose or medical use of the device or
  /// its function.
  FhirStringBuilder? intendedUse;

  /// Converts a [DeviceDefinitionGuidelineBuilder]
  /// to [DeviceDefinitionGuideline]
  @override
  DeviceDefinitionGuideline build() =>
      DeviceDefinitionGuideline.fromJson(toJson());

  /// Converts a [DeviceDefinitionGuidelineBuilder]
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
    addField('useContext', useContext);
    addField('usageInstruction', usageInstruction);
    addField('relatedArtifact', relatedArtifact);
    addField('indication', indication);
    addField('contraindication', contraindication);
    addField('warning', warning);
    addField('intendedUse', intendedUse);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'useContext',
      'usageInstruction',
      'relatedArtifact',
      'indication',
      'contraindication',
      'warning',
      'intendedUse',
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
      case 'useContext':
        if (useContext != null) {
          fields.addAll(useContext!);
        }
      case 'usageInstruction':
        if (usageInstruction != null) {
          fields.add(usageInstruction!);
        }
      case 'relatedArtifact':
        if (relatedArtifact != null) {
          fields.addAll(relatedArtifact!);
        }
      case 'indication':
        if (indication != null) {
          fields.addAll(indication!);
        }
      case 'contraindication':
        if (contraindication != null) {
          fields.addAll(contraindication!);
        }
      case 'warning':
        if (warning != null) {
          fields.addAll(warning!);
        }
      case 'intendedUse':
        if (intendedUse != null) {
          fields.add(intendedUse!);
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
      case 'useContext':
        {
          if (child is List<UsageContextBuilder>) {
            // Replace or create new list
            useContext = child;
            return;
          } else if (child is UsageContextBuilder) {
            // Add single element to existing list or create new list
            useContext = [
              ...(useContext ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'usageInstruction':
        {
          if (child is FhirMarkdownBuilder) {
            usageInstruction = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                usageInstruction = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'relatedArtifact':
        {
          if (child is List<RelatedArtifactBuilder>) {
            // Replace or create new list
            relatedArtifact = child;
            return;
          } else if (child is RelatedArtifactBuilder) {
            // Add single element to existing list or create new list
            relatedArtifact = [
              ...(relatedArtifact ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'indication':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            indication = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            indication = [
              ...(indication ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contraindication':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            contraindication = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            contraindication = [
              ...(contraindication ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'warning':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            warning = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            warning = [
              ...(warning ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'intendedUse':
        {
          if (child is FhirStringBuilder) {
            intendedUse = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                intendedUse = converted;
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
      case 'useContext':
        return ['UsageContextBuilder'];
      case 'usageInstruction':
        return ['FhirMarkdownBuilder'];
      case 'relatedArtifact':
        return ['RelatedArtifactBuilder'];
      case 'indication':
        return ['CodeableConceptBuilder'];
      case 'contraindication':
        return ['CodeableConceptBuilder'];
      case 'warning':
        return ['CodeableConceptBuilder'];
      case 'intendedUse':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceDefinitionGuidelineBuilder]
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
      case 'useContext':
        {
          useContext = <UsageContextBuilder>[];
          return;
        }
      case 'usageInstruction':
        {
          usageInstruction = FhirMarkdownBuilder.empty();
          return;
        }
      case 'relatedArtifact':
        {
          relatedArtifact = <RelatedArtifactBuilder>[];
          return;
        }
      case 'indication':
        {
          indication = <CodeableConceptBuilder>[];
          return;
        }
      case 'contraindication':
        {
          contraindication = <CodeableConceptBuilder>[];
          return;
        }
      case 'warning':
        {
          warning = <CodeableConceptBuilder>[];
          return;
        }
      case 'intendedUse':
        {
          intendedUse = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  DeviceDefinitionGuidelineBuilder clone() => throw UnimplementedError();
  @override
  DeviceDefinitionGuidelineBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<UsageContextBuilder>? useContext,
    FhirMarkdownBuilder? usageInstruction,
    List<RelatedArtifactBuilder>? relatedArtifact,
    List<CodeableConceptBuilder>? indication,
    List<CodeableConceptBuilder>? contraindication,
    List<CodeableConceptBuilder>? warning,
    FhirStringBuilder? intendedUse,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = DeviceDefinitionGuidelineBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      useContext: useContext ?? this.useContext,
      usageInstruction: usageInstruction ?? this.usageInstruction,
      relatedArtifact: relatedArtifact ?? this.relatedArtifact,
      indication: indication ?? this.indication,
      contraindication: contraindication ?? this.contraindication,
      warning: warning ?? this.warning,
      intendedUse: intendedUse ?? this.intendedUse,
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
    if (o is! DeviceDefinitionGuidelineBuilder) {
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
    if (!listEquals<UsageContextBuilder>(
      useContext,
      o.useContext,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      usageInstruction,
      o.usageInstruction,
    )) {
      return false;
    }
    if (!listEquals<RelatedArtifactBuilder>(
      relatedArtifact,
      o.relatedArtifact,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      indication,
      o.indication,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      contraindication,
      o.contraindication,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      warning,
      o.warning,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      intendedUse,
      o.intendedUse,
    )) {
      return false;
    }
    return true;
  }
}

/// [DeviceDefinitionCorrectiveActionBuilder]
/// Tracking of latest field safety corrective action.
class DeviceDefinitionCorrectiveActionBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DeviceDefinitionCorrectiveActionBuilder]

  DeviceDefinitionCorrectiveActionBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.recall,
    this.scope,
    this.period,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DeviceDefinition.correctiveAction',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DeviceDefinitionCorrectiveActionBuilder.empty() =>
      DeviceDefinitionCorrectiveActionBuilder(
        recall: FhirBooleanBuilder.empty(),
        period: PeriodBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionCorrectiveActionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceDefinition.correctiveAction';
    return DeviceDefinitionCorrectiveActionBuilder(
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
      recall: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'recall',
        FhirBooleanBuilder.fromJson,
        '$objectPath.recall',
      ),
      scope: JsonParser.parsePrimitive<DeviceCorrectiveActionScopeBuilder>(
        json,
        'scope',
        DeviceCorrectiveActionScopeBuilder.fromJson,
        '$objectPath.scope',
      ),
      period: JsonParser.parseObject<PeriodBuilder>(
        json,
        'period',
        PeriodBuilder.fromJson,
        '$objectPath.period',
      ),
    );
  }

  /// Deserialize [DeviceDefinitionCorrectiveActionBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionCorrectiveActionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionCorrectiveActionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionCorrectiveActionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionCorrectiveActionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionCorrectiveActionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionCorrectiveActionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionCorrectiveActionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionCorrectiveAction';

  /// [recall]
  /// Whether the last corrective action known for this device was a recall.
  FhirBooleanBuilder? recall;

  /// [scope]
  /// The scope of the corrective action - whether the action targeted all
  /// units of a given device model, or only a specific set of batches
  /// identified by lot numbers, or individually identified devices
  /// identified by the serial name.
  DeviceCorrectiveActionScopeBuilder? scope;

  /// [period]
  /// Start and end dates of the corrective action.
  PeriodBuilder? period;

  /// Converts a [DeviceDefinitionCorrectiveActionBuilder]
  /// to [DeviceDefinitionCorrectiveAction]
  @override
  DeviceDefinitionCorrectiveAction build() =>
      DeviceDefinitionCorrectiveAction.fromJson(toJson());

  /// Converts a [DeviceDefinitionCorrectiveActionBuilder]
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
    addField('recall', recall);
    addField('scope', scope);
    addField('period', period);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'recall',
      'scope',
      'period',
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
      case 'recall':
        if (recall != null) {
          fields.add(recall!);
        }
      case 'scope':
        if (scope != null) {
          fields.add(scope!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
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
      case 'recall':
        {
          if (child is FhirBooleanBuilder) {
            recall = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                recall = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'scope':
        {
          if (child is DeviceCorrectiveActionScopeBuilder) {
            scope = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted =
                    DeviceCorrectiveActionScopeBuilder(stringValue);
                scope = converted;
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
      case 'period':
        {
          if (child is PeriodBuilder) {
            period = child;
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
      case 'recall':
        return ['FhirBooleanBuilder'];
      case 'scope':
        return ['FhirCodeEnumBuilder'];
      case 'period':
        return ['PeriodBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceDefinitionCorrectiveActionBuilder]
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
      case 'recall':
        {
          recall = FhirBooleanBuilder.empty();
          return;
        }
      case 'scope':
        {
          scope = DeviceCorrectiveActionScopeBuilder.empty();
          return;
        }
      case 'period':
        {
          period = PeriodBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  DeviceDefinitionCorrectiveActionBuilder clone() => throw UnimplementedError();
  @override
  DeviceDefinitionCorrectiveActionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirBooleanBuilder? recall,
    DeviceCorrectiveActionScopeBuilder? scope,
    PeriodBuilder? period,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = DeviceDefinitionCorrectiveActionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      recall: recall ?? this.recall,
      scope: scope ?? this.scope,
      period: period ?? this.period,
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
    if (o is! DeviceDefinitionCorrectiveActionBuilder) {
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
      recall,
      o.recall,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      scope,
      o.scope,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      period,
      o.period,
    )) {
      return false;
    }
    return true;
  }
}

/// [DeviceDefinitionChargeItemBuilder]
/// Billing code or reference associated with the device.
class DeviceDefinitionChargeItemBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DeviceDefinitionChargeItemBuilder]

  DeviceDefinitionChargeItemBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.chargeItemCode,
    this.count,
    this.effectivePeriod,
    this.useContext,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DeviceDefinition.chargeItem',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DeviceDefinitionChargeItemBuilder.empty() =>
      DeviceDefinitionChargeItemBuilder(
        chargeItemCode: CodeableReferenceBuilder.empty(),
        count: QuantityBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionChargeItemBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceDefinition.chargeItem';
    return DeviceDefinitionChargeItemBuilder(
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
      chargeItemCode: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'chargeItemCode',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.chargeItemCode',
      ),
      count: JsonParser.parseObject<QuantityBuilder>(
        json,
        'count',
        QuantityBuilder.fromJson,
        '$objectPath.count',
      ),
      effectivePeriod: JsonParser.parseObject<PeriodBuilder>(
        json,
        'effectivePeriod',
        PeriodBuilder.fromJson,
        '$objectPath.effectivePeriod',
      ),
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map<UsageContextBuilder>(
            (v) => UsageContextBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.useContext',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DeviceDefinitionChargeItemBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionChargeItemBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionChargeItemBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionChargeItemBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionChargeItemBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionChargeItemBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionChargeItemBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionChargeItemBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionChargeItem';

  /// [chargeItemCode]
  /// The code or reference for the charge item.
  CodeableReferenceBuilder? chargeItemCode;

  /// [count]
  /// Coefficient applicable to the billing code.
  QuantityBuilder? count;

  /// [effectivePeriod]
  /// A specific time period in which this charge item applies.
  PeriodBuilder? effectivePeriod;

  /// [useContext]
  /// The context to which this charge item applies.
  List<UsageContextBuilder>? useContext;

  /// Converts a [DeviceDefinitionChargeItemBuilder]
  /// to [DeviceDefinitionChargeItem]
  @override
  DeviceDefinitionChargeItem build() =>
      DeviceDefinitionChargeItem.fromJson(toJson());

  /// Converts a [DeviceDefinitionChargeItemBuilder]
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
    addField('chargeItemCode', chargeItemCode);
    addField('count', count);
    addField('effectivePeriod', effectivePeriod);
    addField('useContext', useContext);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'chargeItemCode',
      'count',
      'effectivePeriod',
      'useContext',
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
      case 'chargeItemCode':
        if (chargeItemCode != null) {
          fields.add(chargeItemCode!);
        }
      case 'count':
        if (count != null) {
          fields.add(count!);
        }
      case 'effectivePeriod':
        if (effectivePeriod != null) {
          fields.add(effectivePeriod!);
        }
      case 'useContext':
        if (useContext != null) {
          fields.addAll(useContext!);
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
      case 'chargeItemCode':
        {
          if (child is CodeableReferenceBuilder) {
            chargeItemCode = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'count':
        {
          if (child is QuantityBuilder) {
            count = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'effectivePeriod':
        {
          if (child is PeriodBuilder) {
            effectivePeriod = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'useContext':
        {
          if (child is List<UsageContextBuilder>) {
            // Replace or create new list
            useContext = child;
            return;
          } else if (child is UsageContextBuilder) {
            // Add single element to existing list or create new list
            useContext = [
              ...(useContext ?? []),
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
      case 'chargeItemCode':
        return ['CodeableReferenceBuilder'];
      case 'count':
        return ['QuantityBuilder'];
      case 'effectivePeriod':
        return ['PeriodBuilder'];
      case 'useContext':
        return ['UsageContextBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceDefinitionChargeItemBuilder]
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
      case 'chargeItemCode':
        {
          chargeItemCode = CodeableReferenceBuilder.empty();
          return;
        }
      case 'count':
        {
          count = QuantityBuilder.empty();
          return;
        }
      case 'effectivePeriod':
        {
          effectivePeriod = PeriodBuilder.empty();
          return;
        }
      case 'useContext':
        {
          useContext = <UsageContextBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  DeviceDefinitionChargeItemBuilder clone() => throw UnimplementedError();
  @override
  DeviceDefinitionChargeItemBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableReferenceBuilder? chargeItemCode,
    QuantityBuilder? count,
    PeriodBuilder? effectivePeriod,
    List<UsageContextBuilder>? useContext,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = DeviceDefinitionChargeItemBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      chargeItemCode: chargeItemCode ?? this.chargeItemCode,
      count: count ?? this.count,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
      useContext: useContext ?? this.useContext,
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
    if (o is! DeviceDefinitionChargeItemBuilder) {
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
      chargeItemCode,
      o.chargeItemCode,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      count,
      o.count,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      effectivePeriod,
      o.effectivePeriod,
    )) {
      return false;
    }
    if (!listEquals<UsageContextBuilder>(
      useContext,
      o.useContext,
    )) {
      return false;
    }
    return true;
  }
}
