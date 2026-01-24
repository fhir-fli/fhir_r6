import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'device_definition.g.dart';

/// [DeviceDefinition]
/// The definition of a kind of device or device component. Typically, this
/// definition corresponds to a device model although it may be a broader
/// category of device.
class DeviceDefinition extends DomainResource {
  /// Primary constructor for
  /// [DeviceDefinition]

  const DeviceDefinition({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.url,
    this.identifier,
    this.version,
    VersionAlgorithmXDeviceDefinition? versionAlgorithmX,
    FhirString? versionAlgorithmString,
    Coding? versionAlgorithmCoding,
    this.name,
    this.title,
    required this.status,
    this.experimental,
    this.partNumber,
    this.manufacturer,
    this.modelNumber,
    this.date,
    this.contact,
    this.publisher,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.copyright,
    this.copyrightLabel,
    this.udiDeviceIdentifier,
    this.regulatoryIdentifier,
    this.deviceName,
    this.classification,
    this.conformsTo,
    this.hasPart,
    this.packaging,
    this.deviceVersion,
    this.safety,
    this.shelfLifeStorage,
    this.outputLanguage,
    this.property,
    this.link,
    this.note,
    this.material,
    this.productionIdentifierInUDI,
    this.guideline,
    this.correctiveAction,
    this.chargeItem,
  })  : versionAlgorithmX = versionAlgorithmX ??
            versionAlgorithmString ??
            versionAlgorithmCoding,
        super(
          resourceType: R6ResourceType.DeviceDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceDefinition(
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
      url: JsonParser.parsePrimitive<FhirUri>(
        json,
        'url',
        FhirUri.fromJson,
      ),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      version: JsonParser.parsePrimitive<FhirString>(
        json,
        'version',
        FhirString.fromJson,
      ),
      versionAlgorithmX:
          JsonParser.parsePolymorphic<VersionAlgorithmXDeviceDefinition>(
        json,
        {
          'versionAlgorithmString': FhirString.fromJson,
          'versionAlgorithmCoding': Coding.fromJson,
        },
      ),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      ),
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
      ),
      status: JsonParser.parsePrimitive<PublicationStatus>(
        json,
        'status',
        PublicationStatus.fromJson,
      )!,
      experimental: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'experimental',
        FhirBoolean.fromJson,
      ),
      partNumber: JsonParser.parsePrimitive<FhirString>(
        json,
        'partNumber',
        FhirString.fromJson,
      ),
      manufacturer: JsonParser.parseObject<Reference>(
        json,
        'manufacturer',
        Reference.fromJson,
      ),
      modelNumber: JsonParser.parsePrimitive<FhirString>(
        json,
        'modelNumber',
        FhirString.fromJson,
      ),
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
      ),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      publisher: JsonParser.parsePrimitive<FhirString>(
        json,
        'publisher',
        FhirString.fromJson,
      ),
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map<UsageContext>(
            (v) => UsageContext.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      purpose: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'purpose',
        FhirMarkdown.fromJson,
      ),
      copyright: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'copyright',
        FhirMarkdown.fromJson,
      ),
      copyrightLabel: JsonParser.parsePrimitive<FhirString>(
        json,
        'copyrightLabel',
        FhirString.fromJson,
      ),
      udiDeviceIdentifier: (json['udiDeviceIdentifier'] as List<dynamic>?)
          ?.map<DeviceDefinitionUdiDeviceIdentifier>(
            (v) => DeviceDefinitionUdiDeviceIdentifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      regulatoryIdentifier: (json['regulatoryIdentifier'] as List<dynamic>?)
          ?.map<DeviceDefinitionRegulatoryIdentifier>(
            (v) => DeviceDefinitionRegulatoryIdentifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      deviceName: (json['deviceName'] as List<dynamic>?)
          ?.map<DeviceDefinitionDeviceName>(
            (v) => DeviceDefinitionDeviceName.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      classification: (json['classification'] as List<dynamic>?)
          ?.map<DeviceDefinitionClassification>(
            (v) => DeviceDefinitionClassification.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      conformsTo: (json['conformsTo'] as List<dynamic>?)
          ?.map<DeviceDefinitionConformsTo>(
            (v) => DeviceDefinitionConformsTo.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      hasPart: (json['hasPart'] as List<dynamic>?)
          ?.map<DeviceDefinitionHasPart>(
            (v) => DeviceDefinitionHasPart.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      packaging: (json['packaging'] as List<dynamic>?)
          ?.map<DeviceDefinitionPackaging>(
            (v) => DeviceDefinitionPackaging.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      deviceVersion: (json['deviceVersion'] as List<dynamic>?)
          ?.map<DeviceDefinitionDeviceVersion>(
            (v) => DeviceDefinitionDeviceVersion.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      safety: (json['safety'] as List<dynamic>?)
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
      outputLanguage: JsonParser.parsePrimitiveList<AllLanguages>(
        json,
        'outputLanguage',
        AllLanguages.fromJson,
      ),
      property: (json['property'] as List<dynamic>?)
          ?.map<DeviceDefinitionProperty>(
            (v) => DeviceDefinitionProperty.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      link: (json['link'] as List<dynamic>?)
          ?.map<DeviceDefinitionLink>(
            (v) => DeviceDefinitionLink.fromJson(
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
      material: (json['material'] as List<dynamic>?)
          ?.map<DeviceDefinitionMaterial>(
            (v) => DeviceDefinitionMaterial.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      productionIdentifierInUDI:
          (json['productionIdentifierInUDI'] as List<dynamic>?)
              ?.map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  {...v as Map<String, dynamic>},
                ),
              )
              .toList(),
      guideline: JsonParser.parseObject<DeviceDefinitionGuideline>(
        json,
        'guideline',
        DeviceDefinitionGuideline.fromJson,
      ),
      correctiveAction:
          JsonParser.parseObject<DeviceDefinitionCorrectiveAction>(
        json,
        'correctiveAction',
        DeviceDefinitionCorrectiveAction.fromJson,
      ),
      chargeItem: (json['chargeItem'] as List<dynamic>?)
          ?.map<DeviceDefinitionChargeItem>(
            (v) => DeviceDefinitionChargeItem.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DeviceDefinition]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinition';

  /// [url]
  /// An absolute URI that is used to identify this DeviceDefinition when it
  /// is referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which an authoritative instance of this
  /// DeviceDefinition is (or will be) published. This URL can be the target
  /// of a canonical reference. It SHALL remain the same when the
  /// DeviceDefinition is stored on different servers.
  final FhirUri? url;

  /// [identifier]
  /// A formal identifier that is used to identify this DeviceDefinition when
  /// it is represented in other formats, or referenced in a specification,
  /// model, design or an instance.
  final List<Identifier>? identifier;

  /// [version]
  /// The identifier that is used to identify this version of the
  /// DeviceDefinition when it is referenced in a specification.
  final FhirString? version;

  /// [versionAlgorithmX]
  /// Indicates the mechanism used to compare versions to determine which is
  /// more current.
  final VersionAlgorithmXDeviceDefinition? versionAlgorithmX;

  /// Getter for [versionAlgorithmString] as a FhirString
  FhirString? get versionAlgorithmString =>
      versionAlgorithmX?.isAs<FhirString>();

  /// Getter for [versionAlgorithmCoding] as a Coding
  Coding? get versionAlgorithmCoding => versionAlgorithmX?.isAs<Coding>();

  /// [name]
  /// A natural language name identifying the DeviceDefinition. This name
  /// should be usable as an identifier for the resource by machine
  /// processing applications such as code generation.
  final FhirString? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the DeviceDefinition.
  final FhirString? title;

  /// [status]
  /// The current state of this DeviceDefinition.
  final PublicationStatus status;

  /// [experimental]
  /// A Boolean value to indicate that this DeviceDefinition is authored for
  /// testing purposes (or education/evaluation/marketing) and no version of
  /// this resource will ever be intended for genuine usage.
  final FhirBoolean? experimental;

  /// [partNumber]
  /// The part number or catalog number of the device.
  final FhirString? partNumber;

  /// [manufacturer]
  /// A name of the manufacturer or legal representative e.g. labeler.
  /// Whether this is the actual manufacturer or the labeler or responsible
  /// depends on implementation and jurisdiction.
  final Reference? manufacturer;

  /// [modelNumber]
  /// The model number for the device for example as defined by the
  /// manufacturer or labeler, or other agency.
  final FhirString? modelNumber;

  /// [date]
  /// The date (and optionally time) when the DeviceDefinition was last
  /// significantly changed. The date must change when the business version
  /// changes and it must change if the status code changes. In addition, it
  /// should change when the substantive content of the DeviceDefinition
  /// changes.
  final FhirDateTime? date;

  /// [contact]
  /// Contact details for an organization or a particular human that is
  /// responsible for the device.
  final List<ContactDetail>? contact;

  /// [publisher]
  /// The name of the organization or individual responsible for the release
  /// and ongoing maintenance of the device definition.
  final FhirString? publisher;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories
  /// (gender, age, ...) or may be references to specific programs (insurance
  /// plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate DeviceDefinitions.
  final List<UsageContext>? useContext;

  /// [jurisdiction]
  /// A legal or geographic region in which the DeviceDefinition is intended
  /// to be used.
  final List<CodeableConcept>? jurisdiction;

  /// [purpose]
  /// Explanation of why this DeviceDefinition is needed and why it has been
  /// designed as it has.
  final FhirMarkdown? purpose;

  /// [copyright]
  /// A copyright statement relating to the DeviceDefinition and/or its
  /// contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the DeviceDefinition.
  final FhirMarkdown? copyright;

  /// [copyrightLabel]
  /// A short string (<50 characters), suitable for inclusion in a page
  /// footer that identifies the copyright holder, effective period, and
  /// optionally whether rights are resctricted. (e.g. 'All rights reserved',
  /// 'Some rights reserved').
  final FhirString? copyrightLabel;

  /// [udiDeviceIdentifier]
  /// Unique device identifier (UDI) assigned to device label or package.
  /// Note that the Device may include multiple udiCarriers as it either may
  /// include just the udiCarrier for the jurisdiction it is sold, or for
  /// multiple jurisdictions it could have been sold.
  final List<DeviceDefinitionUdiDeviceIdentifier>? udiDeviceIdentifier;

  /// [regulatoryIdentifier]
  /// Identifier associated with the regulatory documentation (certificates,
  /// technical documentation, post-market surveillance documentation and
  /// reports) of a set of device models sharing the same intended purpose,
  /// risk class and essential design and manufacturing characteristics. One
  /// example is the Basic UDI-DI in Europe.
  final List<DeviceDefinitionRegulatoryIdentifier>? regulatoryIdentifier;

  /// [deviceName]
  /// The name or names of the device as given by the manufacturer.
  final List<DeviceDefinitionDeviceName>? deviceName;

  /// [classification]
  /// What kind of device or device system this is.
  final List<DeviceDefinitionClassification>? classification;

  /// [conformsTo]
  /// Identifies the standards, specifications, or formal guidances for the
  /// capabilities supported by the device. The device may be certified as
  /// conformant to these specifications e.g., communication, performance,
  /// process, measurement, or specialization standards.
  final List<DeviceDefinitionConformsTo>? conformsTo;

  /// [hasPart]
  /// A device that is part (for example a component) of the present device.
  final List<DeviceDefinitionHasPart>? hasPart;

  /// [packaging]
  /// Information about the packaging of the device, i.e. how the device is
  /// packaged.
  final List<DeviceDefinitionPackaging>? packaging;

  /// [deviceVersion]
  /// The version of the device or software.
  final List<DeviceDefinitionDeviceVersion>? deviceVersion;

  /// [safety]
  /// Safety characteristics of the device.
  final List<CodeableConcept>? safety;

  /// [shelfLifeStorage]
  /// Shelf Life and storage information.
  final List<ProductShelfLife>? shelfLifeStorage;

  /// [outputLanguage]
  /// Language code for the human-readable text strings produced by the
  /// device (all supported).
  final List<AllLanguages>? outputLanguage;

  /// [property]
  /// Static or essentially fixed characteristics or features of this kind of
  /// device that are otherwise not captured in more specific attributes,
  /// e.g., time or timing attributes, resolution, accuracy, and physical
  /// attributes.
  final List<DeviceDefinitionProperty>? property;

  /// [link]
  /// An associated device, attached to, used with, communicating with or
  /// linking a previous or new device model to the focal device.
  final List<DeviceDefinitionLink>? link;

  /// [note]
  /// Descriptive information, usage information or implantation information
  /// that is not captured in an existing element.
  final List<Annotation>? note;

  /// [material]
  /// A substance used to create the material(s) of which the device is made.
  final List<DeviceDefinitionMaterial>? material;

  /// [productionIdentifierInUDI]
  /// Indicates the production identifier(s) that are expected to appear in
  /// the UDI carrier on the device label.
  final List<CodeableConcept>? productionIdentifierInUDI;

  /// [guideline]
  /// Information aimed at providing directions for the usage of this model
  /// of device.
  final DeviceDefinitionGuideline? guideline;

  /// [correctiveAction]
  /// Tracking of latest field safety corrective action.
  final DeviceDefinitionCorrectiveAction? correctiveAction;

  /// [chargeItem]
  /// Billing code or reference associated with the device.
  final List<DeviceDefinitionChargeItem>? chargeItem;
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
      'url',
      url,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'version',
      version,
    );
    if (versionAlgorithmX != null) {
      final fhirType = versionAlgorithmX!.fhirType;
      addField(
        'versionAlgorithm${fhirType.capitalize()}',
        versionAlgorithmX,
      );
    }

    addField(
      'name',
      name,
    );
    addField(
      'title',
      title,
    );
    addField(
      'status',
      status,
    );
    addField(
      'experimental',
      experimental,
    );
    addField(
      'partNumber',
      partNumber,
    );
    addField(
      'manufacturer',
      manufacturer,
    );
    addField(
      'modelNumber',
      modelNumber,
    );
    addField(
      'date',
      date,
    );
    addField(
      'contact',
      contact,
    );
    addField(
      'publisher',
      publisher,
    );
    addField(
      'useContext',
      useContext,
    );
    addField(
      'jurisdiction',
      jurisdiction,
    );
    addField(
      'purpose',
      purpose,
    );
    addField(
      'copyright',
      copyright,
    );
    addField(
      'copyrightLabel',
      copyrightLabel,
    );
    addField(
      'udiDeviceIdentifier',
      udiDeviceIdentifier,
    );
    addField(
      'regulatoryIdentifier',
      regulatoryIdentifier,
    );
    addField(
      'deviceName',
      deviceName,
    );
    addField(
      'classification',
      classification,
    );
    addField(
      'conformsTo',
      conformsTo,
    );
    addField(
      'hasPart',
      hasPart,
    );
    addField(
      'packaging',
      packaging,
    );
    addField(
      'deviceVersion',
      deviceVersion,
    );
    addField(
      'safety',
      safety,
    );
    addField(
      'shelfLifeStorage',
      shelfLifeStorage,
    );
    addField(
      'outputLanguage',
      outputLanguage,
    );
    addField(
      'property',
      property,
    );
    addField(
      'link',
      link,
    );
    addField(
      'note',
      note,
    );
    addField(
      'material',
      material,
    );
    addField(
      'productionIdentifierInUDI',
      productionIdentifierInUDI,
    );
    addField(
      'guideline',
      guideline,
    );
    addField(
      'correctiveAction',
      correctiveAction,
    );
    addField(
      'chargeItem',
      chargeItem,
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
      'url',
      'identifier',
      'version',
      'versionAlgorithmX',
      'name',
      'title',
      'status',
      'experimental',
      'partNumber',
      'manufacturer',
      'modelNumber',
      'date',
      'contact',
      'publisher',
      'useContext',
      'jurisdiction',
      'purpose',
      'copyright',
      'copyrightLabel',
      'udiDeviceIdentifier',
      'regulatoryIdentifier',
      'deviceName',
      'classification',
      'conformsTo',
      'hasPart',
      'packaging',
      'deviceVersion',
      'safety',
      'shelfLifeStorage',
      'outputLanguage',
      'property',
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
      case 'url':
        if (url != null) {
          fields.add(url!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'version':
        if (version != null) {
          fields.add(version!);
        }
      case 'versionAlgorithm':
        if (versionAlgorithmX != null) {
          fields.add(versionAlgorithmX!);
        }
      case 'versionAlgorithmX':
        if (versionAlgorithmX != null) {
          fields.add(versionAlgorithmX!);
        }
      case 'versionAlgorithmString':
        if (versionAlgorithmX is FhirString) {
          fields.add(versionAlgorithmX!);
        }
      case 'versionAlgorithmCoding':
        if (versionAlgorithmX is Coding) {
          fields.add(versionAlgorithmX!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'status':
        fields.add(status);
      case 'experimental':
        if (experimental != null) {
          fields.add(experimental!);
        }
      case 'partNumber':
        if (partNumber != null) {
          fields.add(partNumber!);
        }
      case 'manufacturer':
        if (manufacturer != null) {
          fields.add(manufacturer!);
        }
      case 'modelNumber':
        if (modelNumber != null) {
          fields.add(modelNumber!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'contact':
        if (contact != null) {
          fields.addAll(contact!);
        }
      case 'publisher':
        if (publisher != null) {
          fields.add(publisher!);
        }
      case 'useContext':
        if (useContext != null) {
          fields.addAll(useContext!);
        }
      case 'jurisdiction':
        if (jurisdiction != null) {
          fields.addAll(jurisdiction!);
        }
      case 'purpose':
        if (purpose != null) {
          fields.add(purpose!);
        }
      case 'copyright':
        if (copyright != null) {
          fields.add(copyright!);
        }
      case 'copyrightLabel':
        if (copyrightLabel != null) {
          fields.add(copyrightLabel!);
        }
      case 'udiDeviceIdentifier':
        if (udiDeviceIdentifier != null) {
          fields.addAll(udiDeviceIdentifier!);
        }
      case 'regulatoryIdentifier':
        if (regulatoryIdentifier != null) {
          fields.addAll(regulatoryIdentifier!);
        }
      case 'deviceName':
        if (deviceName != null) {
          fields.addAll(deviceName!);
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
      case 'deviceVersion':
        if (deviceVersion != null) {
          fields.addAll(deviceVersion!);
        }
      case 'safety':
        if (safety != null) {
          fields.addAll(safety!);
        }
      case 'shelfLifeStorage':
        if (shelfLifeStorage != null) {
          fields.addAll(shelfLifeStorage!);
        }
      case 'outputLanguage':
        if (outputLanguage != null) {
          fields.addAll(outputLanguage!);
        }
      case 'property':
        if (property != null) {
          fields.addAll(property!);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  DeviceDefinition clone() => copyWith();

  /// Copy function for [DeviceDefinition]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DeviceDefinitionCopyWith<DeviceDefinition> get copyWith =>
      _$DeviceDefinitionCopyWithImpl<DeviceDefinition>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceDefinition) {
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
      url,
      o.url,
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
      version,
      o.version,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      versionAlgorithmX,
      o.versionAlgorithmX,
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
      title,
      o.title,
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
      experimental,
      o.experimental,
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
    if (!equalsDeepWithNull(
      modelNumber,
      o.modelNumber,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      date,
      o.date,
    )) {
      return false;
    }
    if (!listEquals<ContactDetail>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      publisher,
      o.publisher,
    )) {
      return false;
    }
    if (!listEquals<UsageContext>(
      useContext,
      o.useContext,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      jurisdiction,
      o.jurisdiction,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      purpose,
      o.purpose,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      copyright,
      o.copyright,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      copyrightLabel,
      o.copyrightLabel,
    )) {
      return false;
    }
    if (!listEquals<DeviceDefinitionUdiDeviceIdentifier>(
      udiDeviceIdentifier,
      o.udiDeviceIdentifier,
    )) {
      return false;
    }
    if (!listEquals<DeviceDefinitionRegulatoryIdentifier>(
      regulatoryIdentifier,
      o.regulatoryIdentifier,
    )) {
      return false;
    }
    if (!listEquals<DeviceDefinitionDeviceName>(
      deviceName,
      o.deviceName,
    )) {
      return false;
    }
    if (!listEquals<DeviceDefinitionClassification>(
      classification,
      o.classification,
    )) {
      return false;
    }
    if (!listEquals<DeviceDefinitionConformsTo>(
      conformsTo,
      o.conformsTo,
    )) {
      return false;
    }
    if (!listEquals<DeviceDefinitionHasPart>(
      hasPart,
      o.hasPart,
    )) {
      return false;
    }
    if (!listEquals<DeviceDefinitionPackaging>(
      packaging,
      o.packaging,
    )) {
      return false;
    }
    if (!listEquals<DeviceDefinitionDeviceVersion>(
      deviceVersion,
      o.deviceVersion,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      safety,
      o.safety,
    )) {
      return false;
    }
    if (!listEquals<ProductShelfLife>(
      shelfLifeStorage,
      o.shelfLifeStorage,
    )) {
      return false;
    }
    if (!listEquals<AllLanguages>(
      outputLanguage,
      o.outputLanguage,
    )) {
      return false;
    }
    if (!listEquals<DeviceDefinitionProperty>(
      property,
      o.property,
    )) {
      return false;
    }
    if (!listEquals<DeviceDefinitionLink>(
      link,
      o.link,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<DeviceDefinitionMaterial>(
      material,
      o.material,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
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
    if (!listEquals<DeviceDefinitionChargeItem>(
      chargeItem,
      o.chargeItem,
    )) {
      return false;
    }
    return true;
  }
}

/// [DeviceDefinitionUdiDeviceIdentifier]
/// Unique device identifier (UDI) assigned to device label or package.
/// Note that the Device may include multiple udiCarriers as it either may
/// include just the udiCarrier for the jurisdiction it is sold, or for
/// multiple jurisdictions it could have been sold.
class DeviceDefinitionUdiDeviceIdentifier extends BackboneElement {
  /// Primary constructor for
  /// [DeviceDefinitionUdiDeviceIdentifier]

  const DeviceDefinitionUdiDeviceIdentifier({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.deviceIdentifier,
    required this.issuer,
    required this.jurisdiction,
    this.marketDistribution,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionUdiDeviceIdentifier.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceDefinitionUdiDeviceIdentifier(
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
      deviceIdentifier: JsonParser.parsePrimitive<FhirString>(
        json,
        'deviceIdentifier',
        FhirString.fromJson,
      )!,
      issuer: JsonParser.parsePrimitive<FhirUri>(
        json,
        'issuer',
        FhirUri.fromJson,
      )!,
      jurisdiction: JsonParser.parsePrimitive<FhirUri>(
        json,
        'jurisdiction',
        FhirUri.fromJson,
      )!,
      marketDistribution: (json['marketDistribution'] as List<dynamic>?)
          ?.map<DeviceDefinitionMarketDistribution>(
            (v) => DeviceDefinitionMarketDistribution.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DeviceDefinitionUdiDeviceIdentifier]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionUdiDeviceIdentifier.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionUdiDeviceIdentifier.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionUdiDeviceIdentifier.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionUdiDeviceIdentifier '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionUdiDeviceIdentifier]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionUdiDeviceIdentifier.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionUdiDeviceIdentifier.fromJson(json);
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
  final FhirString deviceIdentifier;

  /// [issuer]
  /// The organization that assigns the identifier algorithm.
  final FhirUri issuer;

  /// [jurisdiction]
  /// The jurisdiction to which the deviceIdentifier applies.
  final FhirUri jurisdiction;

  /// [marketDistribution]
  /// Indicates where and when the device is available on the market.
  final List<DeviceDefinitionMarketDistribution>? marketDistribution;
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
      'deviceIdentifier',
      deviceIdentifier,
    );
    addField(
      'issuer',
      issuer,
    );
    addField(
      'jurisdiction',
      jurisdiction,
    );
    addField(
      'marketDistribution',
      marketDistribution,
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
      'deviceIdentifier',
      'issuer',
      'jurisdiction',
      'marketDistribution',
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
      case 'deviceIdentifier':
        fields.add(deviceIdentifier);
      case 'issuer':
        fields.add(issuer);
      case 'jurisdiction':
        fields.add(jurisdiction);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  DeviceDefinitionUdiDeviceIdentifier clone() => copyWith();

  /// Copy function for [DeviceDefinitionUdiDeviceIdentifier]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DeviceDefinitionUdiDeviceIdentifierCopyWith<
          DeviceDefinitionUdiDeviceIdentifier>
      get copyWith => _$DeviceDefinitionUdiDeviceIdentifierCopyWithImpl<
              DeviceDefinitionUdiDeviceIdentifier>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceDefinitionUdiDeviceIdentifier) {
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
    if (!listEquals<DeviceDefinitionMarketDistribution>(
      marketDistribution,
      o.marketDistribution,
    )) {
      return false;
    }
    return true;
  }
}

/// [DeviceDefinitionMarketDistribution]
/// Indicates where and when the device is available on the market.
class DeviceDefinitionMarketDistribution extends BackboneElement {
  /// Primary constructor for
  /// [DeviceDefinitionMarketDistribution]

  const DeviceDefinitionMarketDistribution({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.marketPeriod,
    required this.subJurisdiction,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionMarketDistribution.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceDefinitionMarketDistribution(
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
      marketPeriod: JsonParser.parseObject<Period>(
        json,
        'marketPeriod',
        Period.fromJson,
      )!,
      subJurisdiction: JsonParser.parsePrimitive<FhirUri>(
        json,
        'subJurisdiction',
        FhirUri.fromJson,
      )!,
    );
  }

  /// Deserialize [DeviceDefinitionMarketDistribution]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionMarketDistribution.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionMarketDistribution.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionMarketDistribution.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionMarketDistribution '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionMarketDistribution]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionMarketDistribution.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionMarketDistribution.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionMarketDistribution';

  /// [marketPeriod]
  /// Begin and end dates for the commercial distribution of the device.
  final Period marketPeriod;

  /// [subJurisdiction]
  /// National state or territory to which the marketDistribution recers,
  /// typically where the device is commercialized.
  final FhirUri subJurisdiction;
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
      'marketPeriod',
      marketPeriod,
    );
    addField(
      'subJurisdiction',
      subJurisdiction,
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
      'marketPeriod',
      'subJurisdiction',
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
      case 'marketPeriod':
        fields.add(marketPeriod);
      case 'subJurisdiction':
        fields.add(subJurisdiction);
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
  DeviceDefinitionMarketDistribution clone() => copyWith();

  /// Copy function for [DeviceDefinitionMarketDistribution]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DeviceDefinitionMarketDistributionCopyWith<
          DeviceDefinitionMarketDistribution>
      get copyWith => _$DeviceDefinitionMarketDistributionCopyWithImpl<
              DeviceDefinitionMarketDistribution>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceDefinitionMarketDistribution) {
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

/// [DeviceDefinitionRegulatoryIdentifier]
/// Identifier associated with the regulatory documentation (certificates,
/// technical documentation, post-market surveillance documentation and
/// reports) of a set of device models sharing the same intended purpose,
/// risk class and essential design and manufacturing characteristics. One
/// example is the Basic UDI-DI in Europe.
class DeviceDefinitionRegulatoryIdentifier extends BackboneElement {
  /// Primary constructor for
  /// [DeviceDefinitionRegulatoryIdentifier]

  const DeviceDefinitionRegulatoryIdentifier({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.deviceIdentifier,
    required this.issuer,
    required this.jurisdiction,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionRegulatoryIdentifier.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceDefinitionRegulatoryIdentifier(
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
      type: JsonParser.parsePrimitive<DeviceDefinitionRegulatoryIdentifierType>(
        json,
        'type',
        DeviceDefinitionRegulatoryIdentifierType.fromJson,
      )!,
      deviceIdentifier: JsonParser.parsePrimitive<FhirString>(
        json,
        'deviceIdentifier',
        FhirString.fromJson,
      )!,
      issuer: JsonParser.parsePrimitive<FhirUri>(
        json,
        'issuer',
        FhirUri.fromJson,
      )!,
      jurisdiction: JsonParser.parsePrimitive<FhirUri>(
        json,
        'jurisdiction',
        FhirUri.fromJson,
      )!,
    );
  }

  /// Deserialize [DeviceDefinitionRegulatoryIdentifier]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionRegulatoryIdentifier.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionRegulatoryIdentifier.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionRegulatoryIdentifier.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionRegulatoryIdentifier '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionRegulatoryIdentifier]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionRegulatoryIdentifier.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionRegulatoryIdentifier.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionRegulatoryIdentifier';

  /// [type]
  /// The type of identifier itself.
  final DeviceDefinitionRegulatoryIdentifierType type;

  /// [deviceIdentifier]
  /// The identifier itself.
  final FhirString deviceIdentifier;

  /// [issuer]
  /// The organization that issued this identifier.
  final FhirUri issuer;

  /// [jurisdiction]
  /// The jurisdiction to which the deviceIdentifier applies.
  final FhirUri jurisdiction;
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
      'deviceIdentifier',
      deviceIdentifier,
    );
    addField(
      'issuer',
      issuer,
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
      'type',
      'deviceIdentifier',
      'issuer',
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
      case 'type':
        fields.add(type);
      case 'deviceIdentifier':
        fields.add(deviceIdentifier);
      case 'issuer':
        fields.add(issuer);
      case 'jurisdiction':
        fields.add(jurisdiction);
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
  DeviceDefinitionRegulatoryIdentifier clone() => copyWith();

  /// Copy function for [DeviceDefinitionRegulatoryIdentifier]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DeviceDefinitionRegulatoryIdentifierCopyWith<
          DeviceDefinitionRegulatoryIdentifier>
      get copyWith => _$DeviceDefinitionRegulatoryIdentifierCopyWithImpl<
              DeviceDefinitionRegulatoryIdentifier>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceDefinitionRegulatoryIdentifier) {
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

/// [DeviceDefinitionDeviceName]
/// The name or names of the device as given by the manufacturer.
class DeviceDefinitionDeviceName extends BackboneElement {
  /// Primary constructor for
  /// [DeviceDefinitionDeviceName]

  const DeviceDefinitionDeviceName({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    required this.type,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionDeviceName.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceDefinitionDeviceName(
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
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      )!,
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      )!,
    );
  }

  /// Deserialize [DeviceDefinitionDeviceName]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionDeviceName.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionDeviceName.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionDeviceName.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionDeviceName '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionDeviceName]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionDeviceName.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionDeviceName.fromJson(json);
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
  final FhirString name;

  /// [type]
  /// The type of deviceName.
  /// RegisteredName | UserFriendlyName | PatientReportedName.
  final CodeableConcept type;
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
      'name',
      name,
    );
    addField(
      'type',
      type,
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
      'name',
      'type',
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
      case 'name':
        fields.add(name);
      case 'type':
        fields.add(type);
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
  DeviceDefinitionDeviceName clone() => copyWith();

  /// Copy function for [DeviceDefinitionDeviceName]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DeviceDefinitionDeviceNameCopyWith<DeviceDefinitionDeviceName>
      get copyWith =>
          _$DeviceDefinitionDeviceNameCopyWithImpl<DeviceDefinitionDeviceName>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceDefinitionDeviceName) {
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

/// [DeviceDefinitionClassification]
/// What kind of device or device system this is.
class DeviceDefinitionClassification extends BackboneElement {
  /// Primary constructor for
  /// [DeviceDefinitionClassification]

  const DeviceDefinitionClassification({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.justification,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionClassification.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceDefinitionClassification(
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
      justification: (json['justification'] as List<dynamic>?)
          ?.map<RelatedArtifact>(
            (v) => RelatedArtifact.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DeviceDefinitionClassification]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionClassification.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionClassification.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionClassification.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionClassification '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionClassification]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionClassification.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionClassification.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionClassification';

  /// [type]
  /// A classification or risk class of the device model.
  final CodeableConcept type;

  /// [justification]
  /// Further information qualifying this classification of the device model.
  final List<RelatedArtifact>? justification;
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
      'justification',
      justification,
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
      'justification',
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  DeviceDefinitionClassification clone() => copyWith();

  /// Copy function for [DeviceDefinitionClassification]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DeviceDefinitionClassificationCopyWith<DeviceDefinitionClassification>
      get copyWith => _$DeviceDefinitionClassificationCopyWithImpl<
              DeviceDefinitionClassification>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceDefinitionClassification) {
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
    if (!listEquals<RelatedArtifact>(
      justification,
      o.justification,
    )) {
      return false;
    }
    return true;
  }
}

/// [DeviceDefinitionConformsTo]
/// Identifies the standards, specifications, or formal guidances for the
/// capabilities supported by the device. The device may be certified as
/// conformant to these specifications e.g., communication, performance,
/// process, measurement, or specialization standards.
class DeviceDefinitionConformsTo extends BackboneElement {
  /// Primary constructor for
  /// [DeviceDefinitionConformsTo]

  const DeviceDefinitionConformsTo({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.category,
    required this.specification,
    this.version,
    this.source,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionConformsTo.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceDefinitionConformsTo(
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
      category: JsonParser.parseObject<CodeableConcept>(
        json,
        'category',
        CodeableConcept.fromJson,
      ),
      specification: JsonParser.parseObject<CodeableConcept>(
        json,
        'specification',
        CodeableConcept.fromJson,
      )!,
      version: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'version',
        FhirString.fromJson,
      ),
      source: (json['source'] as List<dynamic>?)
          ?.map<RelatedArtifact>(
            (v) => RelatedArtifact.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DeviceDefinitionConformsTo]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionConformsTo.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionConformsTo.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionConformsTo.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionConformsTo '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionConformsTo]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionConformsTo.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionConformsTo.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionConformsTo';

  /// [category]
  /// Describes the type of the standard, specification, or formal guidance.
  final CodeableConcept? category;

  /// [specification]
  /// Code that identifies the specific standard, specification, protocol,
  /// formal guidance, regulation, legislation, or certification scheme to
  /// which the device adheres.
  final CodeableConcept specification;

  /// [version]
  /// Identifies the specific form or variant of the standard, specification,
  /// or formal guidance. This may be a 'version number', release, document
  /// edition, publication year, or other label.
  final List<FhirString>? version;

  /// [source]
  /// Standard, regulation, certification, or guidance website, document, or
  /// other publication, or similar, supporting the conformance.
  final List<RelatedArtifact>? source;
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
      'category',
      category,
    );
    addField(
      'specification',
      specification,
    );
    addField(
      'version',
      version,
    );
    addField(
      'source',
      source,
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
      'category',
      'specification',
      'version',
      'source',
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
      case 'category':
        if (category != null) {
          fields.add(category!);
        }
      case 'specification':
        fields.add(specification);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  DeviceDefinitionConformsTo clone() => copyWith();

  /// Copy function for [DeviceDefinitionConformsTo]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DeviceDefinitionConformsToCopyWith<DeviceDefinitionConformsTo>
      get copyWith =>
          _$DeviceDefinitionConformsToCopyWithImpl<DeviceDefinitionConformsTo>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceDefinitionConformsTo) {
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
    if (!listEquals<FhirString>(
      version,
      o.version,
    )) {
      return false;
    }
    if (!listEquals<RelatedArtifact>(
      source,
      o.source,
    )) {
      return false;
    }
    return true;
  }
}

/// [DeviceDefinitionHasPart]
/// A device that is part (for example a component) of the present device.
class DeviceDefinitionHasPart extends BackboneElement {
  /// Primary constructor for
  /// [DeviceDefinitionHasPart]

  const DeviceDefinitionHasPart({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.reference,
    this.count,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionHasPart.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceDefinitionHasPart(
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
      reference: JsonParser.parseObject<Reference>(
        json,
        'reference',
        Reference.fromJson,
      )!,
      count: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'count',
        FhirInteger.fromJson,
      ),
    );
  }

  /// Deserialize [DeviceDefinitionHasPart]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionHasPart.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionHasPart.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionHasPart.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionHasPart '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionHasPart]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionHasPart.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionHasPart.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionHasPart';

  /// [reference]
  /// Reference to the device that is part of the current device.
  final Reference reference;

  /// [count]
  /// Number of instances of the component device in the current device.
  final FhirInteger? count;
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
      'reference',
      reference,
    );
    addField(
      'count',
      count,
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
      'reference',
      'count',
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
      case 'reference':
        fields.add(reference);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  DeviceDefinitionHasPart clone() => copyWith();

  /// Copy function for [DeviceDefinitionHasPart]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DeviceDefinitionHasPartCopyWith<DeviceDefinitionHasPart> get copyWith =>
      _$DeviceDefinitionHasPartCopyWithImpl<DeviceDefinitionHasPart>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceDefinitionHasPart) {
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

/// [DeviceDefinitionPackaging]
/// Information about the packaging of the device, i.e. how the device is
/// packaged.
class DeviceDefinitionPackaging extends BackboneElement {
  /// Primary constructor for
  /// [DeviceDefinitionPackaging]

  const DeviceDefinitionPackaging({
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionPackaging.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceDefinitionPackaging(
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
      identifier: JsonParser.parseObject<Identifier>(
        json,
        'identifier',
        Identifier.fromJson,
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      count: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'count',
        FhirInteger.fromJson,
      ),
      distributor: (json['distributor'] as List<dynamic>?)
          ?.map<DeviceDefinitionDistributor>(
            (v) => DeviceDefinitionDistributor.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      udiDeviceIdentifier: (json['udiDeviceIdentifier'] as List<dynamic>?)
          ?.map<DeviceDefinitionUdiDeviceIdentifier>(
            (v) => DeviceDefinitionUdiDeviceIdentifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      packaging: (json['packaging'] as List<dynamic>?)
          ?.map<DeviceDefinitionPackaging>(
            (v) => DeviceDefinitionPackaging.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DeviceDefinitionPackaging]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionPackaging.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionPackaging.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionPackaging.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionPackaging '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionPackaging]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionPackaging.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionPackaging.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionPackaging';

  /// [identifier]
  /// The business identifier of the packaged medication.
  final Identifier? identifier;

  /// [type]
  /// A code that defines the specific type of packaging.
  final CodeableConcept? type;

  /// [count]
  /// The number of items contained in the package (devices or sub-packages).
  final FhirInteger? count;

  /// [distributor]
  /// An organization that distributes the packaged device.
  final List<DeviceDefinitionDistributor>? distributor;

  /// [udiDeviceIdentifier]
  /// Unique Device Identifier (UDI) Barcode string on the packaging.
  final List<DeviceDefinitionUdiDeviceIdentifier>? udiDeviceIdentifier;

  /// [packaging]
  /// Allows packages within packages.
  final List<DeviceDefinitionPackaging>? packaging;
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
      'count',
      count,
    );
    addField(
      'distributor',
      distributor,
    );
    addField(
      'udiDeviceIdentifier',
      udiDeviceIdentifier,
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
      'count',
      'distributor',
      'udiDeviceIdentifier',
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  DeviceDefinitionPackaging clone() => copyWith();

  /// Copy function for [DeviceDefinitionPackaging]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DeviceDefinitionPackagingCopyWith<DeviceDefinitionPackaging> get copyWith =>
      _$DeviceDefinitionPackagingCopyWithImpl<DeviceDefinitionPackaging>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceDefinitionPackaging) {
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
    if (!listEquals<DeviceDefinitionDistributor>(
      distributor,
      o.distributor,
    )) {
      return false;
    }
    if (!listEquals<DeviceDefinitionUdiDeviceIdentifier>(
      udiDeviceIdentifier,
      o.udiDeviceIdentifier,
    )) {
      return false;
    }
    if (!listEquals<DeviceDefinitionPackaging>(
      packaging,
      o.packaging,
    )) {
      return false;
    }
    return true;
  }
}

/// [DeviceDefinitionDistributor]
/// An organization that distributes the packaged device.
class DeviceDefinitionDistributor extends BackboneElement {
  /// Primary constructor for
  /// [DeviceDefinitionDistributor]

  const DeviceDefinitionDistributor({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.organizationReference,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionDistributor.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceDefinitionDistributor(
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
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      ),
      organizationReference: (json['organizationReference'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DeviceDefinitionDistributor]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionDistributor.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionDistributor.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionDistributor.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionDistributor '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionDistributor]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionDistributor.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionDistributor.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionDistributor';

  /// [name]
  /// Distributor's human-readable name.
  final FhirString? name;

  /// [organizationReference]
  /// Distributor as an Organization resource.
  final List<Reference>? organizationReference;
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
      'name',
      name,
    );
    addField(
      'organizationReference',
      organizationReference,
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
      'name',
      'organizationReference',
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  DeviceDefinitionDistributor clone() => copyWith();

  /// Copy function for [DeviceDefinitionDistributor]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DeviceDefinitionDistributorCopyWith<DeviceDefinitionDistributor>
      get copyWith => _$DeviceDefinitionDistributorCopyWithImpl<
              DeviceDefinitionDistributor>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceDefinitionDistributor) {
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
      name,
      o.name,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      organizationReference,
      o.organizationReference,
    )) {
      return false;
    }
    return true;
  }
}

/// [DeviceDefinitionDeviceVersion]
/// The version of the device or software.
class DeviceDefinitionDeviceVersion extends BackboneElement {
  /// Primary constructor for
  /// [DeviceDefinitionDeviceVersion]

  const DeviceDefinitionDeviceVersion({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.component,
    required this.value,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionDeviceVersion.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceDefinitionDeviceVersion(
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
      component: JsonParser.parseObject<Identifier>(
        json,
        'component',
        Identifier.fromJson,
      ),
      value: JsonParser.parsePrimitive<FhirString>(
        json,
        'value',
        FhirString.fromJson,
      )!,
    );
  }

  /// Deserialize [DeviceDefinitionDeviceVersion]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionDeviceVersion.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionDeviceVersion.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionDeviceVersion.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionDeviceVersion '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionDeviceVersion]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionDeviceVersion.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionDeviceVersion.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionDeviceVersion';

  /// [type]
  /// The type of the device version, e.g. manufacturer, approved, internal.
  final CodeableConcept? type;

  /// [component]
  /// The hardware or software module of the device to which the version
  /// applies.
  final Identifier? component;

  /// [value]
  /// The version text.
  final FhirString value;
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
      'component',
      component,
    );
    addField(
      'value',
      value,
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
      'component',
      'value',
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
      case 'component':
        if (component != null) {
          fields.add(component!);
        }
      case 'value':
        fields.add(value);
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
  DeviceDefinitionDeviceVersion clone() => copyWith();

  /// Copy function for [DeviceDefinitionDeviceVersion]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DeviceDefinitionDeviceVersionCopyWith<DeviceDefinitionDeviceVersion>
      get copyWith => _$DeviceDefinitionDeviceVersionCopyWithImpl<
              DeviceDefinitionDeviceVersion>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceDefinitionDeviceVersion) {
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

/// [DeviceDefinitionProperty]
/// Static or essentially fixed characteristics or features of this kind of
/// device that are otherwise not captured in more specific attributes,
/// e.g., time or timing attributes, resolution, accuracy, and physical
/// attributes.
class DeviceDefinitionProperty extends BackboneElement {
  /// Primary constructor for
  /// [DeviceDefinitionProperty]

  const DeviceDefinitionProperty({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.valueX,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionProperty.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceDefinitionProperty(
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
      valueX: JsonParser.parsePolymorphic<ValueXDeviceDefinitionProperty>(
        json,
        {
          'valueQuantity': Quantity.fromJson,
          'valueCodeableConcept': CodeableConcept.fromJson,
          'valueString': FhirString.fromJson,
          'valueBoolean': FhirBoolean.fromJson,
          'valueInteger': FhirInteger.fromJson,
          'valueRange': Range.fromJson,
          'valueAttachment': Attachment.fromJson,
        },
      )!,
    );
  }

  /// Deserialize [DeviceDefinitionProperty]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionProperty.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionProperty.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionProperty.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionProperty '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionProperty]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionProperty.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionProperty.fromJson(json);
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
  final CodeableConcept type;

  /// [valueX]
  /// The value of the property specified by the associated property.type
  /// code.
  final ValueXDeviceDefinitionProperty valueX;

  /// Getter for [valueQuantity] as a Quantity
  Quantity? get valueQuantity => valueX.isAs<Quantity>();

  /// Getter for [valueCodeableConcept] as a CodeableConcept
  CodeableConcept? get valueCodeableConcept => valueX.isAs<CodeableConcept>();

  /// Getter for [valueString] as a FhirString
  FhirString? get valueString => valueX.isAs<FhirString>();

  /// Getter for [valueBoolean] as a FhirBoolean
  FhirBoolean? get valueBoolean => valueX.isAs<FhirBoolean>();

  /// Getter for [valueInteger] as a FhirInteger
  FhirInteger? get valueInteger => valueX.isAs<FhirInteger>();

  /// Getter for [valueRange] as a Range
  Range? get valueRange => valueX.isAs<Range>();

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
      case 'valueQuantity':
        if (valueX is Quantity) {
          fields.add(valueX);
        }
      case 'valueCodeableConcept':
        if (valueX is CodeableConcept) {
          fields.add(valueX);
        }
      case 'valueString':
        if (valueX is FhirString) {
          fields.add(valueX);
        }
      case 'valueBoolean':
        if (valueX is FhirBoolean) {
          fields.add(valueX);
        }
      case 'valueInteger':
        if (valueX is FhirInteger) {
          fields.add(valueX);
        }
      case 'valueRange':
        if (valueX is Range) {
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
  DeviceDefinitionProperty clone() => copyWith();

  /// Copy function for [DeviceDefinitionProperty]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DeviceDefinitionPropertyCopyWith<DeviceDefinitionProperty> get copyWith =>
      _$DeviceDefinitionPropertyCopyWithImpl<DeviceDefinitionProperty>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceDefinitionProperty) {
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

/// [DeviceDefinitionLink]
/// An associated device, attached to, used with, communicating with or
/// linking a previous or new device model to the focal device.
class DeviceDefinitionLink extends BackboneElement {
  /// Primary constructor for
  /// [DeviceDefinitionLink]

  const DeviceDefinitionLink({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.relation,
    required this.relatedDevice,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionLink.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceDefinitionLink(
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
      relation: JsonParser.parseObject<Coding>(
        json,
        'relation',
        Coding.fromJson,
      )!,
      relatedDevice: JsonParser.parseObject<CodeableReference>(
        json,
        'relatedDevice',
        CodeableReference.fromJson,
      )!,
    );
  }

  /// Deserialize [DeviceDefinitionLink]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionLink.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionLink.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionLink.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionLink '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionLink]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionLink.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionLink.fromJson(json);
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
  final Coding relation;

  /// [relatedDevice]
  /// A reference to the linked device.
  final CodeableReference relatedDevice;
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
      'relation',
      relation,
    );
    addField(
      'relatedDevice',
      relatedDevice,
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
      'relation',
      'relatedDevice',
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
      case 'relation':
        fields.add(relation);
      case 'relatedDevice':
        fields.add(relatedDevice);
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
  DeviceDefinitionLink clone() => copyWith();

  /// Copy function for [DeviceDefinitionLink]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DeviceDefinitionLinkCopyWith<DeviceDefinitionLink> get copyWith =>
      _$DeviceDefinitionLinkCopyWithImpl<DeviceDefinitionLink>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceDefinitionLink) {
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

/// [DeviceDefinitionMaterial]
/// A substance used to create the material(s) of which the device is made.
class DeviceDefinitionMaterial extends BackboneElement {
  /// Primary constructor for
  /// [DeviceDefinitionMaterial]

  const DeviceDefinitionMaterial({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.substance,
    this.alternate,
    this.allergenicIndicator,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionMaterial.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceDefinitionMaterial(
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
      substance: JsonParser.parseObject<CodeableConcept>(
        json,
        'substance',
        CodeableConcept.fromJson,
      )!,
      alternate: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'alternate',
        FhirBoolean.fromJson,
      ),
      allergenicIndicator: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'allergenicIndicator',
        FhirBoolean.fromJson,
      ),
    );
  }

  /// Deserialize [DeviceDefinitionMaterial]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionMaterial.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionMaterial.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionMaterial.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionMaterial '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionMaterial]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionMaterial.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionMaterial.fromJson(json);
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
  final CodeableConcept substance;

  /// [alternate]
  /// Indicates an alternative material of the device.
  final FhirBoolean? alternate;

  /// [allergenicIndicator]
  /// Whether the substance is a known or suspected allergen.
  final FhirBoolean? allergenicIndicator;
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
    addField(
      'alternate',
      alternate,
    );
    addField(
      'allergenicIndicator',
      allergenicIndicator,
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
      'alternate',
      'allergenicIndicator',
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  DeviceDefinitionMaterial clone() => copyWith();

  /// Copy function for [DeviceDefinitionMaterial]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DeviceDefinitionMaterialCopyWith<DeviceDefinitionMaterial> get copyWith =>
      _$DeviceDefinitionMaterialCopyWithImpl<DeviceDefinitionMaterial>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceDefinitionMaterial) {
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

/// [DeviceDefinitionGuideline]
/// Information aimed at providing directions for the usage of this model
/// of device.
class DeviceDefinitionGuideline extends BackboneElement {
  /// Primary constructor for
  /// [DeviceDefinitionGuideline]

  const DeviceDefinitionGuideline({
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionGuideline.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceDefinitionGuideline(
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
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map<UsageContext>(
            (v) => UsageContext.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      usageInstruction: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'usageInstruction',
        FhirMarkdown.fromJson,
      ),
      relatedArtifact: (json['relatedArtifact'] as List<dynamic>?)
          ?.map<RelatedArtifact>(
            (v) => RelatedArtifact.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      indication: (json['indication'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      contraindication: (json['contraindication'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      warning: (json['warning'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      intendedUse: JsonParser.parsePrimitive<FhirString>(
        json,
        'intendedUse',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [DeviceDefinitionGuideline]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionGuideline.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionGuideline.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionGuideline.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionGuideline '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionGuideline]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionGuideline.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionGuideline.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionGuideline';

  /// [useContext]
  /// The circumstances that form the setting for using the device.
  final List<UsageContext>? useContext;

  /// [usageInstruction]
  /// Detailed written and visual directions for the user on how to use the
  /// device.
  final FhirMarkdown? usageInstruction;

  /// [relatedArtifact]
  /// A source of information or reference for this guideline.
  final List<RelatedArtifact>? relatedArtifact;

  /// [indication]
  /// A clinical condition for which the device was designed to be used.
  final List<CodeableConcept>? indication;

  /// [contraindication]
  /// A specific situation when a device should not be used because it may
  /// cause harm.
  final List<CodeableConcept>? contraindication;

  /// [warning]
  /// Specific hazard alert information that a user needs to know before
  /// using the device.
  final List<CodeableConcept>? warning;

  /// [intendedUse]
  /// A description of the general purpose or medical use of the device or
  /// its function.
  final FhirString? intendedUse;
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
      'useContext',
      useContext,
    );
    addField(
      'usageInstruction',
      usageInstruction,
    );
    addField(
      'relatedArtifact',
      relatedArtifact,
    );
    addField(
      'indication',
      indication,
    );
    addField(
      'contraindication',
      contraindication,
    );
    addField(
      'warning',
      warning,
    );
    addField(
      'intendedUse',
      intendedUse,
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  DeviceDefinitionGuideline clone() => copyWith();

  /// Copy function for [DeviceDefinitionGuideline]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DeviceDefinitionGuidelineCopyWith<DeviceDefinitionGuideline> get copyWith =>
      _$DeviceDefinitionGuidelineCopyWithImpl<DeviceDefinitionGuideline>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceDefinitionGuideline) {
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
    if (!listEquals<UsageContext>(
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
    if (!listEquals<RelatedArtifact>(
      relatedArtifact,
      o.relatedArtifact,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      indication,
      o.indication,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      contraindication,
      o.contraindication,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
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

/// [DeviceDefinitionCorrectiveAction]
/// Tracking of latest field safety corrective action.
class DeviceDefinitionCorrectiveAction extends BackboneElement {
  /// Primary constructor for
  /// [DeviceDefinitionCorrectiveAction]

  const DeviceDefinitionCorrectiveAction({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.recall,
    this.scope,
    required this.period,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionCorrectiveAction.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceDefinitionCorrectiveAction(
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
      recall: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'recall',
        FhirBoolean.fromJson,
      )!,
      scope: JsonParser.parsePrimitive<DeviceCorrectiveActionScope>(
        json,
        'scope',
        DeviceCorrectiveActionScope.fromJson,
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
      )!,
    );
  }

  /// Deserialize [DeviceDefinitionCorrectiveAction]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionCorrectiveAction.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionCorrectiveAction.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionCorrectiveAction.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionCorrectiveAction '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionCorrectiveAction]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionCorrectiveAction.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionCorrectiveAction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionCorrectiveAction';

  /// [recall]
  /// Whether the last corrective action known for this device was a recall.
  final FhirBoolean recall;

  /// [scope]
  /// The scope of the corrective action - whether the action targeted all
  /// units of a given device model, or only a specific set of batches
  /// identified by lot numbers, or individually identified devices
  /// identified by the serial name.
  final DeviceCorrectiveActionScope? scope;

  /// [period]
  /// Start and end dates of the corrective action.
  final Period period;
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
      'recall',
      recall,
    );
    addField(
      'scope',
      scope,
    );
    addField(
      'period',
      period,
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
      'recall',
      'scope',
      'period',
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
      case 'recall':
        fields.add(recall);
      case 'scope':
        if (scope != null) {
          fields.add(scope!);
        }
      case 'period':
        fields.add(period);
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
  DeviceDefinitionCorrectiveAction clone() => copyWith();

  /// Copy function for [DeviceDefinitionCorrectiveAction]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DeviceDefinitionCorrectiveActionCopyWith<DeviceDefinitionCorrectiveAction>
      get copyWith => _$DeviceDefinitionCorrectiveActionCopyWithImpl<
              DeviceDefinitionCorrectiveAction>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceDefinitionCorrectiveAction) {
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

/// [DeviceDefinitionChargeItem]
/// Billing code or reference associated with the device.
class DeviceDefinitionChargeItem extends BackboneElement {
  /// Primary constructor for
  /// [DeviceDefinitionChargeItem]

  const DeviceDefinitionChargeItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.chargeItemCode,
    required this.count,
    this.effectivePeriod,
    this.useContext,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDefinitionChargeItem.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceDefinitionChargeItem(
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
      chargeItemCode: JsonParser.parseObject<CodeableReference>(
        json,
        'chargeItemCode',
        CodeableReference.fromJson,
      )!,
      count: JsonParser.parseObject<Quantity>(
        json,
        'count',
        Quantity.fromJson,
      )!,
      effectivePeriod: JsonParser.parseObject<Period>(
        json,
        'effectivePeriod',
        Period.fromJson,
      ),
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map<UsageContext>(
            (v) => UsageContext.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DeviceDefinitionChargeItem]
  /// from a [String] or [YamlMap] object
  factory DeviceDefinitionChargeItem.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDefinitionChargeItem.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDefinitionChargeItem.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDefinitionChargeItem '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDefinitionChargeItem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDefinitionChargeItem.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDefinitionChargeItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDefinitionChargeItem';

  /// [chargeItemCode]
  /// The code or reference for the charge item.
  final CodeableReference chargeItemCode;

  /// [count]
  /// Coefficient applicable to the billing code.
  final Quantity count;

  /// [effectivePeriod]
  /// A specific time period in which this charge item applies.
  final Period? effectivePeriod;

  /// [useContext]
  /// The context to which this charge item applies.
  final List<UsageContext>? useContext;
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
      'chargeItemCode',
      chargeItemCode,
    );
    addField(
      'count',
      count,
    );
    addField(
      'effectivePeriod',
      effectivePeriod,
    );
    addField(
      'useContext',
      useContext,
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
      'chargeItemCode',
      'count',
      'effectivePeriod',
      'useContext',
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
      case 'chargeItemCode':
        fields.add(chargeItemCode);
      case 'count':
        fields.add(count);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  DeviceDefinitionChargeItem clone() => copyWith();

  /// Copy function for [DeviceDefinitionChargeItem]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DeviceDefinitionChargeItemCopyWith<DeviceDefinitionChargeItem>
      get copyWith =>
          _$DeviceDefinitionChargeItemCopyWithImpl<DeviceDefinitionChargeItem>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceDefinitionChargeItem) {
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
    if (!listEquals<UsageContext>(
      useContext,
      o.useContext,
    )) {
      return false;
    }
    return true;
  }
}
