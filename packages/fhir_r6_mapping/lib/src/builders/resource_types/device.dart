import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        Device,
        DeviceConformsTo,
        DeviceName,
        DeviceProperty,
        DeviceUdiCarrier,
        DeviceVersion,
        R5ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [DeviceBuilder]
/// A type of a manufactured item that is used in the provision of
/// healthcare without being substantially changed through that activity.
/// The device may be a medical or non-medical device.
class DeviceBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [DeviceBuilder]

  DeviceBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.displayName,
    this.definition,
    this.udiCarrier,
    this.status,
    this.availabilityStatus,
    this.biologicalSourceEvent,
    this.manufacturer,
    this.manufactureDate,
    this.expirationDate,
    this.lotNumber,
    this.serialNumber,
    this.name,
    this.modelNumber,
    this.partNumber,
    this.category,
    this.type,
    this.version,
    this.conformsTo,
    this.property,
    this.mode,
    this.cycle,
    this.duration,
    this.owner,
    this.contact,
    this.location,
    this.url,
    this.endpoint,
    this.gateway,
    this.note,
    this.safety,
    this.parent,
  }) : super(
          objectPath: 'Device',
          resourceType: R5ResourceType.Device,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DeviceBuilder.empty() => DeviceBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Device';
    return DeviceBuilder(
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
      displayName: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'displayName',
        FhirStringBuilder.fromJson,
        '$objectPath.displayName',
      ),
      definition: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'definition',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.definition',
      ),
      udiCarrier: (json['udiCarrier'] as List<dynamic>?)
          ?.map<DeviceUdiCarrierBuilder>(
            (v) => DeviceUdiCarrierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.udiCarrier',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<FHIRDeviceStatusBuilder>(
        json,
        'status',
        FHIRDeviceStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      availabilityStatus: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'availabilityStatus',
        CodeableConceptBuilder.fromJson,
        '$objectPath.availabilityStatus',
      ),
      biologicalSourceEvent: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'biologicalSourceEvent',
        IdentifierBuilder.fromJson,
        '$objectPath.biologicalSourceEvent',
      ),
      manufacturer: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'manufacturer',
        FhirStringBuilder.fromJson,
        '$objectPath.manufacturer',
      ),
      manufactureDate: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'manufactureDate',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.manufactureDate',
      ),
      expirationDate: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'expirationDate',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.expirationDate',
      ),
      lotNumber: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'lotNumber',
        FhirStringBuilder.fromJson,
        '$objectPath.lotNumber',
      ),
      serialNumber: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'serialNumber',
        FhirStringBuilder.fromJson,
        '$objectPath.serialNumber',
      ),
      name: (json['name'] as List<dynamic>?)
          ?.map<DeviceNameBuilder>(
            (v) => DeviceNameBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.name',
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
      partNumber: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'partNumber',
        FhirStringBuilder.fromJson,
        '$objectPath.partNumber',
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
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.type',
              },
            ),
          )
          .toList(),
      version: (json['version'] as List<dynamic>?)
          ?.map<DeviceVersionBuilder>(
            (v) => DeviceVersionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.version',
              },
            ),
          )
          .toList(),
      conformsTo: (json['conformsTo'] as List<dynamic>?)
          ?.map<DeviceConformsToBuilder>(
            (v) => DeviceConformsToBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.conformsTo',
              },
            ),
          )
          .toList(),
      property: (json['property'] as List<dynamic>?)
          ?.map<DevicePropertyBuilder>(
            (v) => DevicePropertyBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.property',
              },
            ),
          )
          .toList(),
      mode: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'mode',
        CodeableConceptBuilder.fromJson,
        '$objectPath.mode',
      ),
      cycle: JsonParser.parseObject<CountBuilder>(
        json,
        'cycle',
        CountBuilder.fromJson,
        '$objectPath.cycle',
      ),
      duration: JsonParser.parseObject<FhirDurationBuilder>(
        json,
        'duration',
        FhirDurationBuilder.fromJson,
        '$objectPath.duration',
      ),
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
      location: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'location',
        ReferenceBuilder.fromJson,
        '$objectPath.location',
      ),
      url: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'url',
        FhirUriBuilder.fromJson,
        '$objectPath.url',
      ),
      endpoint: (json['endpoint'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.endpoint',
              },
            ),
          )
          .toList(),
      gateway: (json['gateway'] as List<dynamic>?)
          ?.map<CodeableReferenceBuilder>(
            (v) => CodeableReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.gateway',
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
      parent: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'parent',
        ReferenceBuilder.fromJson,
        '$objectPath.parent',
      ),
    );
  }

  /// Deserialize [DeviceBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Device';

  /// [identifier]
  /// Unique instance identifiers assigned to a device by manufacturers other
  /// organizations or owners.
  List<IdentifierBuilder>? identifier;

  /// [displayName]
  /// The name used to display by default when the device is referenced.
  /// Based on intent of use by the resource creator, this may reflect one of
  /// the names in Device.name, or may be another simple name.
  FhirStringBuilder? displayName;

  /// [definition]
  /// The reference to the definition for the device.
  CodeableReferenceBuilder? definition;

  /// [udiCarrier]
  /// Unique device identifier (UDI) assigned to device label or package.
  /// Note that the Device may include multiple udiCarriers as it either may
  /// include just the udiCarrier for the jurisdiction it is sold, or for
  /// multiple jurisdictions it could have been sold.
  List<DeviceUdiCarrierBuilder>? udiCarrier;

  /// [status]
  /// The Device record status. This is not the status of the device like
  /// availability.
  FHIRDeviceStatusBuilder? status;

  /// [availabilityStatus]
  /// The availability of the device.
  CodeableConceptBuilder? availabilityStatus;

  /// [biologicalSourceEvent]
  /// An identifier that supports traceability to the event during which
  /// material in this product from one or more biological entities was
  /// obtained or pooled.
  IdentifierBuilder? biologicalSourceEvent;

  /// [manufacturer]
  /// A name of the manufacturer or entity legally responsible for the
  /// device.
  FhirStringBuilder? manufacturer;

  /// [manufactureDate]
  /// The date and time when the device was manufactured.
  FhirDateTimeBuilder? manufactureDate;

  /// [expirationDate]
  /// The date and time beyond which this device is no longer valid or should
  /// not be used (if applicable).
  FhirDateTimeBuilder? expirationDate;

  /// [lotNumber]
  /// Lot number assigned by the manufacturer.
  FhirStringBuilder? lotNumber;

  /// [serialNumber]
  /// The serial number assigned by the organization when the device was
  /// manufactured.
  FhirStringBuilder? serialNumber;

  /// [name]
  /// This represents the manufacturer's name of the device as provided by
  /// the device, from a UDI label, or by a person describing the Device.
  /// This typically would be used when a person provides the name(s) or when
  /// the device represents one of the names available from DeviceDefinition.
  List<DeviceNameBuilder>? name;

  /// [modelNumber]
  /// The manufacturer's model number for the device.
  FhirStringBuilder? modelNumber;

  /// [partNumber]
  /// The part number or catalog number of the device.
  FhirStringBuilder? partNumber;

  /// [category]
  /// Devices may be associated with one or more categories.
  List<CodeableConceptBuilder>? category;

  /// [type]
  /// The kind or type of device. A device instance may have more than one
  /// type - in which case those are the types that apply to the specific
  /// instance of the device.
  List<CodeableConceptBuilder>? type;

  /// [version]
  /// The actual design of the device or software version running on the
  /// device.
  List<DeviceVersionBuilder>? version;

  /// [conformsTo]
  /// Identifies the standards, specifications, or formal guidances for the
  /// capabilities supported by the device. The device may be certified as
  /// conformant to these specifications e.g., communication, performance,
  /// process, measurement, or specialization standards.
  List<DeviceConformsToBuilder>? conformsTo;

  /// [property]
  /// Static or essentially fixed characteristics or features of the device
  /// (e.g., time or timing attributes, resolution, accuracy, intended use or
  /// instructions for use, and physical attributes) that are not otherwise
  /// captured in more specific attributes.
  List<DevicePropertyBuilder>? property;

  /// [mode]
  /// The designated condition for performing a task with the device.
  CodeableConceptBuilder? mode;

  /// [cycle]
  /// The series of occurrences that repeats during the operation of the
  /// device.
  CountBuilder? cycle;

  /// [duration]
  /// A measurement of time during the device's operation (e.g., days, hours,
  /// mins, etc.).
  FhirDurationBuilder? duration;

  /// [owner]
  /// An organization that is responsible for the provision and ongoing
  /// maintenance of the device.
  ReferenceBuilder? owner;

  /// [contact]
  /// Contact details for an organization or a particular human that is
  /// responsible for the device.
  List<ContactPointBuilder>? contact;

  /// [location]
  /// The place where the device can be found.
  ReferenceBuilder? location;

  /// [url]
  /// A network address on which the device may be contacted directly.
  FhirUriBuilder? url;

  /// [endpoint]
  /// Technical endpoints providing access to services provided by the device
  /// defined at this resource.
  List<ReferenceBuilder>? endpoint;

  /// [gateway]
  /// The linked device acting as a communication controller, data collector,
  /// translator, or concentrator for the current device (e.g., mobile phone
  /// application that relays a blood pressure device's data).
  List<CodeableReferenceBuilder>? gateway;

  /// [note]
  /// Descriptive information, usage information or implantation information
  /// that is not captured in an existing element.
  List<AnnotationBuilder>? note;

  /// [safety]
  /// Provides additional safety characteristics about a medical device. For
  /// example devices containing latex.
  List<CodeableConceptBuilder>? safety;

  /// [parent]
  /// The higher level or encompassing device that this device is a logical
  /// part of.
  ReferenceBuilder? parent;

  /// Converts a [DeviceBuilder]
  /// to [Device]
  @override
  Device build() => Device.fromJson(toJson());

  /// Converts a [DeviceBuilder]
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
    addField('displayName', displayName);
    addField('definition', definition);
    addField('udiCarrier', udiCarrier);
    addField('status', status);
    addField('availabilityStatus', availabilityStatus);
    addField('biologicalSourceEvent', biologicalSourceEvent);
    addField('manufacturer', manufacturer);
    addField('manufactureDate', manufactureDate);
    addField('expirationDate', expirationDate);
    addField('lotNumber', lotNumber);
    addField('serialNumber', serialNumber);
    addField('name', name);
    addField('modelNumber', modelNumber);
    addField('partNumber', partNumber);
    addField('category', category);
    addField('type', type);
    addField('version', version);
    addField('conformsTo', conformsTo);
    addField('property', property);
    addField('mode', mode);
    addField('cycle', cycle);
    addField('duration', duration);
    addField('owner', owner);
    addField('contact', contact);
    addField('location', location);
    addField('url', url);
    addField('endpoint', endpoint);
    addField('gateway', gateway);
    addField('note', note);
    addField('safety', safety);
    addField('parent', parent);
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
      'displayName',
      'definition',
      'udiCarrier',
      'status',
      'availabilityStatus',
      'biologicalSourceEvent',
      'manufacturer',
      'manufactureDate',
      'expirationDate',
      'lotNumber',
      'serialNumber',
      'name',
      'modelNumber',
      'partNumber',
      'category',
      'type',
      'version',
      'conformsTo',
      'property',
      'mode',
      'cycle',
      'duration',
      'owner',
      'contact',
      'location',
      'url',
      'endpoint',
      'gateway',
      'note',
      'safety',
      'parent',
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
      case 'displayName':
        if (displayName != null) {
          fields.add(displayName!);
        }
      case 'definition':
        if (definition != null) {
          fields.add(definition!);
        }
      case 'udiCarrier':
        if (udiCarrier != null) {
          fields.addAll(udiCarrier!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'availabilityStatus':
        if (availabilityStatus != null) {
          fields.add(availabilityStatus!);
        }
      case 'biologicalSourceEvent':
        if (biologicalSourceEvent != null) {
          fields.add(biologicalSourceEvent!);
        }
      case 'manufacturer':
        if (manufacturer != null) {
          fields.add(manufacturer!);
        }
      case 'manufactureDate':
        if (manufactureDate != null) {
          fields.add(manufactureDate!);
        }
      case 'expirationDate':
        if (expirationDate != null) {
          fields.add(expirationDate!);
        }
      case 'lotNumber':
        if (lotNumber != null) {
          fields.add(lotNumber!);
        }
      case 'serialNumber':
        if (serialNumber != null) {
          fields.add(serialNumber!);
        }
      case 'name':
        if (name != null) {
          fields.addAll(name!);
        }
      case 'modelNumber':
        if (modelNumber != null) {
          fields.add(modelNumber!);
        }
      case 'partNumber':
        if (partNumber != null) {
          fields.add(partNumber!);
        }
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'type':
        if (type != null) {
          fields.addAll(type!);
        }
      case 'version':
        if (version != null) {
          fields.addAll(version!);
        }
      case 'conformsTo':
        if (conformsTo != null) {
          fields.addAll(conformsTo!);
        }
      case 'property':
        if (property != null) {
          fields.addAll(property!);
        }
      case 'mode':
        if (mode != null) {
          fields.add(mode!);
        }
      case 'cycle':
        if (cycle != null) {
          fields.add(cycle!);
        }
      case 'duration':
        if (duration != null) {
          fields.add(duration!);
        }
      case 'owner':
        if (owner != null) {
          fields.add(owner!);
        }
      case 'contact':
        if (contact != null) {
          fields.addAll(contact!);
        }
      case 'location':
        if (location != null) {
          fields.add(location!);
        }
      case 'url':
        if (url != null) {
          fields.add(url!);
        }
      case 'endpoint':
        if (endpoint != null) {
          fields.addAll(endpoint!);
        }
      case 'gateway':
        if (gateway != null) {
          fields.addAll(gateway!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'safety':
        if (safety != null) {
          fields.addAll(safety!);
        }
      case 'parent':
        if (parent != null) {
          fields.add(parent!);
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
      case 'displayName':
        {
          if (child is FhirStringBuilder) {
            displayName = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                displayName = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'definition':
        {
          if (child is CodeableReferenceBuilder) {
            definition = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'udiCarrier':
        {
          if (child is List<DeviceUdiCarrierBuilder>) {
            // Replace or create new list
            udiCarrier = child;
            return;
          } else if (child is DeviceUdiCarrierBuilder) {
            // Add single element to existing list or create new list
            udiCarrier = [
              ...(udiCarrier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is FHIRDeviceStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = FHIRDeviceStatusBuilder(stringValue);
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
      case 'availabilityStatus':
        {
          if (child is CodeableConceptBuilder) {
            availabilityStatus = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'biologicalSourceEvent':
        {
          if (child is IdentifierBuilder) {
            biologicalSourceEvent = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'manufacturer':
        {
          if (child is FhirStringBuilder) {
            manufacturer = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                manufacturer = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'manufactureDate':
        {
          if (child is FhirDateTimeBuilder) {
            manufactureDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                manufactureDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'expirationDate':
        {
          if (child is FhirDateTimeBuilder) {
            expirationDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                expirationDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
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
      case 'serialNumber':
        {
          if (child is FhirStringBuilder) {
            serialNumber = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                serialNumber = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'name':
        {
          if (child is List<DeviceNameBuilder>) {
            // Replace or create new list
            name = child;
            return;
          } else if (child is DeviceNameBuilder) {
            // Add single element to existing list or create new list
            name = [
              ...(name ?? []),
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
      case 'type':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            type = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            type = [
              ...(type ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'version':
        {
          if (child is List<DeviceVersionBuilder>) {
            // Replace or create new list
            version = child;
            return;
          } else if (child is DeviceVersionBuilder) {
            // Add single element to existing list or create new list
            version = [
              ...(version ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'conformsTo':
        {
          if (child is List<DeviceConformsToBuilder>) {
            // Replace or create new list
            conformsTo = child;
            return;
          } else if (child is DeviceConformsToBuilder) {
            // Add single element to existing list or create new list
            conformsTo = [
              ...(conformsTo ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'property':
        {
          if (child is List<DevicePropertyBuilder>) {
            // Replace or create new list
            property = child;
            return;
          } else if (child is DevicePropertyBuilder) {
            // Add single element to existing list or create new list
            property = [
              ...(property ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'mode':
        {
          if (child is CodeableConceptBuilder) {
            mode = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'cycle':
        {
          if (child is CountBuilder) {
            cycle = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'duration':
        {
          if (child is FhirDurationBuilder) {
            duration = child;
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
      case 'location':
        {
          if (child is ReferenceBuilder) {
            location = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'url':
        {
          if (child is FhirUriBuilder) {
            url = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                url = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'endpoint':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            endpoint = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            endpoint = [
              ...(endpoint ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'gateway':
        {
          if (child is List<CodeableReferenceBuilder>) {
            // Replace or create new list
            gateway = child;
            return;
          } else if (child is CodeableReferenceBuilder) {
            // Add single element to existing list or create new list
            gateway = [
              ...(gateway ?? []),
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
      case 'parent':
        {
          if (child is ReferenceBuilder) {
            parent = child;
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
      case 'displayName':
        return ['FhirStringBuilder'];
      case 'definition':
        return ['CodeableReferenceBuilder'];
      case 'udiCarrier':
        return ['DeviceUdiCarrierBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'availabilityStatus':
        return ['CodeableConceptBuilder'];
      case 'biologicalSourceEvent':
        return ['IdentifierBuilder'];
      case 'manufacturer':
        return ['FhirStringBuilder'];
      case 'manufactureDate':
        return ['FhirDateTimeBuilder'];
      case 'expirationDate':
        return ['FhirDateTimeBuilder'];
      case 'lotNumber':
        return ['FhirStringBuilder'];
      case 'serialNumber':
        return ['FhirStringBuilder'];
      case 'name':
        return ['DeviceNameBuilder'];
      case 'modelNumber':
        return ['FhirStringBuilder'];
      case 'partNumber':
        return ['FhirStringBuilder'];
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'version':
        return ['DeviceVersionBuilder'];
      case 'conformsTo':
        return ['DeviceConformsToBuilder'];
      case 'property':
        return ['DevicePropertyBuilder'];
      case 'mode':
        return ['CodeableConceptBuilder'];
      case 'cycle':
        return ['CountBuilder'];
      case 'duration':
        return ['FhirDurationBuilder'];
      case 'owner':
        return ['ReferenceBuilder'];
      case 'contact':
        return ['ContactPointBuilder'];
      case 'location':
        return ['ReferenceBuilder'];
      case 'url':
        return ['FhirUriBuilder'];
      case 'endpoint':
        return ['ReferenceBuilder'];
      case 'gateway':
        return ['CodeableReferenceBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      case 'safety':
        return ['CodeableConceptBuilder'];
      case 'parent':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceBuilder]
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
      case 'displayName':
        {
          displayName = FhirStringBuilder.empty();
          return;
        }
      case 'definition':
        {
          definition = CodeableReferenceBuilder.empty();
          return;
        }
      case 'udiCarrier':
        {
          udiCarrier = <DeviceUdiCarrierBuilder>[];
          return;
        }
      case 'status':
        {
          status = FHIRDeviceStatusBuilder.empty();
          return;
        }
      case 'availabilityStatus':
        {
          availabilityStatus = CodeableConceptBuilder.empty();
          return;
        }
      case 'biologicalSourceEvent':
        {
          biologicalSourceEvent = IdentifierBuilder.empty();
          return;
        }
      case 'manufacturer':
        {
          manufacturer = FhirStringBuilder.empty();
          return;
        }
      case 'manufactureDate':
        {
          manufactureDate = FhirDateTimeBuilder.empty();
          return;
        }
      case 'expirationDate':
        {
          expirationDate = FhirDateTimeBuilder.empty();
          return;
        }
      case 'lotNumber':
        {
          lotNumber = FhirStringBuilder.empty();
          return;
        }
      case 'serialNumber':
        {
          serialNumber = FhirStringBuilder.empty();
          return;
        }
      case 'name':
        {
          name = <DeviceNameBuilder>[];
          return;
        }
      case 'modelNumber':
        {
          modelNumber = FhirStringBuilder.empty();
          return;
        }
      case 'partNumber':
        {
          partNumber = FhirStringBuilder.empty();
          return;
        }
      case 'category':
        {
          category = <CodeableConceptBuilder>[];
          return;
        }
      case 'type':
        {
          type = <CodeableConceptBuilder>[];
          return;
        }
      case 'version':
        {
          version = <DeviceVersionBuilder>[];
          return;
        }
      case 'conformsTo':
        {
          conformsTo = <DeviceConformsToBuilder>[];
          return;
        }
      case 'property':
        {
          property = <DevicePropertyBuilder>[];
          return;
        }
      case 'mode':
        {
          mode = CodeableConceptBuilder.empty();
          return;
        }
      case 'cycle':
        {
          cycle = CountBuilder.empty();
          return;
        }
      case 'duration':
        {
          duration = FhirDurationBuilder.empty();
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
      case 'location':
        {
          location = ReferenceBuilder.empty();
          return;
        }
      case 'url':
        {
          url = FhirUriBuilder.empty();
          return;
        }
      case 'endpoint':
        {
          endpoint = <ReferenceBuilder>[];
          return;
        }
      case 'gateway':
        {
          gateway = <CodeableReferenceBuilder>[];
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      case 'safety':
        {
          safety = <CodeableConceptBuilder>[];
          return;
        }
      case 'parent':
        {
          parent = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  DeviceBuilder clone() => throw UnimplementedError();
  @override
  DeviceBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    FhirStringBuilder? displayName,
    CodeableReferenceBuilder? definition,
    List<DeviceUdiCarrierBuilder>? udiCarrier,
    FHIRDeviceStatusBuilder? status,
    CodeableConceptBuilder? availabilityStatus,
    IdentifierBuilder? biologicalSourceEvent,
    FhirStringBuilder? manufacturer,
    FhirDateTimeBuilder? manufactureDate,
    FhirDateTimeBuilder? expirationDate,
    FhirStringBuilder? lotNumber,
    FhirStringBuilder? serialNumber,
    List<DeviceNameBuilder>? name,
    FhirStringBuilder? modelNumber,
    FhirStringBuilder? partNumber,
    List<CodeableConceptBuilder>? category,
    List<CodeableConceptBuilder>? type,
    List<DeviceVersionBuilder>? version,
    List<DeviceConformsToBuilder>? conformsTo,
    List<DevicePropertyBuilder>? property,
    CodeableConceptBuilder? mode,
    CountBuilder? cycle,
    FhirDurationBuilder? duration,
    ReferenceBuilder? owner,
    List<ContactPointBuilder>? contact,
    ReferenceBuilder? location,
    FhirUriBuilder? url,
    List<ReferenceBuilder>? endpoint,
    List<CodeableReferenceBuilder>? gateway,
    List<AnnotationBuilder>? note,
    List<CodeableConceptBuilder>? safety,
    ReferenceBuilder? parent,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = DeviceBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      displayName: displayName ?? this.displayName,
      definition: definition ?? this.definition,
      udiCarrier: udiCarrier ?? this.udiCarrier,
      status: status ?? this.status,
      availabilityStatus: availabilityStatus ?? this.availabilityStatus,
      biologicalSourceEvent:
          biologicalSourceEvent ?? this.biologicalSourceEvent,
      manufacturer: manufacturer ?? this.manufacturer,
      manufactureDate: manufactureDate ?? this.manufactureDate,
      expirationDate: expirationDate ?? this.expirationDate,
      lotNumber: lotNumber ?? this.lotNumber,
      serialNumber: serialNumber ?? this.serialNumber,
      name: name ?? this.name,
      modelNumber: modelNumber ?? this.modelNumber,
      partNumber: partNumber ?? this.partNumber,
      category: category ?? this.category,
      type: type ?? this.type,
      version: version ?? this.version,
      conformsTo: conformsTo ?? this.conformsTo,
      property: property ?? this.property,
      mode: mode ?? this.mode,
      cycle: cycle ?? this.cycle,
      duration: duration ?? this.duration,
      owner: owner ?? this.owner,
      contact: contact ?? this.contact,
      location: location ?? this.location,
      url: url ?? this.url,
      endpoint: endpoint ?? this.endpoint,
      gateway: gateway ?? this.gateway,
      note: note ?? this.note,
      safety: safety ?? this.safety,
      parent: parent ?? this.parent,
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
    if (o is! DeviceBuilder) {
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
      displayName,
      o.displayName,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      definition,
      o.definition,
    )) {
      return false;
    }
    if (!listEquals<DeviceUdiCarrierBuilder>(
      udiCarrier,
      o.udiCarrier,
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
      availabilityStatus,
      o.availabilityStatus,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      biologicalSourceEvent,
      o.biologicalSourceEvent,
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
      manufactureDate,
      o.manufactureDate,
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
      lotNumber,
      o.lotNumber,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      serialNumber,
      o.serialNumber,
    )) {
      return false;
    }
    if (!listEquals<DeviceNameBuilder>(
      name,
      o.name,
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
      partNumber,
      o.partNumber,
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
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<DeviceVersionBuilder>(
      version,
      o.version,
    )) {
      return false;
    }
    if (!listEquals<DeviceConformsToBuilder>(
      conformsTo,
      o.conformsTo,
    )) {
      return false;
    }
    if (!listEquals<DevicePropertyBuilder>(
      property,
      o.property,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      mode,
      o.mode,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      cycle,
      o.cycle,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      duration,
      o.duration,
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
    if (!equalsDeepWithNull(
      location,
      o.location,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      url,
      o.url,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      endpoint,
      o.endpoint,
    )) {
      return false;
    }
    if (!listEquals<CodeableReferenceBuilder>(
      gateway,
      o.gateway,
    )) {
      return false;
    }
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      safety,
      o.safety,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      parent,
      o.parent,
    )) {
      return false;
    }
    return true;
  }
}

/// [DeviceUdiCarrierBuilder]
/// Unique device identifier (UDI) assigned to device label or package.
/// Note that the Device may include multiple udiCarriers as it either may
/// include just the udiCarrier for the jurisdiction it is sold, or for
/// multiple jurisdictions it could have been sold.
class DeviceUdiCarrierBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DeviceUdiCarrierBuilder]

  DeviceUdiCarrierBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.deviceIdentifier,
    this.issuer,
    this.jurisdiction,
    this.carrierAIDC,
    this.carrierHRF,
    this.entryType,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Device.udiCarrier',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DeviceUdiCarrierBuilder.empty() => DeviceUdiCarrierBuilder(
        deviceIdentifier: FhirStringBuilder.empty(),
        issuer: FhirUriBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceUdiCarrierBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Device.udiCarrier';
    return DeviceUdiCarrierBuilder(
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
      carrierAIDC: JsonParser.parsePrimitive<FhirBase64BinaryBuilder>(
        json,
        'carrierAIDC',
        FhirBase64BinaryBuilder.fromJson,
        '$objectPath.carrierAIDC',
      ),
      carrierHRF: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'carrierHRF',
        FhirStringBuilder.fromJson,
        '$objectPath.carrierHRF',
      ),
      entryType: JsonParser.parsePrimitive<UDIEntryTypeBuilder>(
        json,
        'entryType',
        UDIEntryTypeBuilder.fromJson,
        '$objectPath.entryType',
      ),
    );
  }

  /// Deserialize [DeviceUdiCarrierBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceUdiCarrierBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceUdiCarrierBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceUdiCarrierBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceUdiCarrierBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceUdiCarrierBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceUdiCarrierBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceUdiCarrierBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceUdiCarrier';

  /// [deviceIdentifier]
  /// The device identifier (DI) is a mandatory, fixed portion of a UDI that
  /// identifies the labeler and the specific version or model of a device.
  FhirStringBuilder? deviceIdentifier;

  /// [issuer]
  /// Organization that is charged with issuing UDIs for devices. For
  /// example, the US FDA issuers include:
  /// 1) GS1: http://hl7.org/fhir/NamingSystem/gs1-di,
  /// 2) HIBCC: http://hl7.org/fhir/NamingSystem/hibcc-diI,
  /// 3) ICCBBA for blood containers:
  /// http://hl7.org/fhir/NamingSystem/iccbba-blood-di,
  /// 4) ICCBA for other devices:
  /// http://hl7.org/fhir/NamingSystem/iccbba-other-di # Informationsstelle
  /// für Arzneispezialitäten (IFA GmbH) (EU only):
  /// http://hl7.org/fhir/NamingSystem/ifa-gmbh-di.
  FhirUriBuilder? issuer;

  /// [jurisdiction]
  /// The identity of the authoritative source for UDI generation within a
  /// jurisdiction. All UDIs are globally unique within a single namespace
  /// with the appropriate repository uri as the system. For example, UDIs of
  /// devices managed in the U.S. by the FDA, the value is
  /// http://hl7.org/fhir/NamingSystem/us-fda-udi or in the European Union by
  /// the European Commission http://hl7.org/fhir/NamingSystem/eu-ec-udi.
  FhirUriBuilder? jurisdiction;

  /// [carrierAIDC]
  /// The full UDI carrier of the Automatic Identification and Data Capture
  /// (AIDC) technology representation of the barcode string as printed on
  /// the packaging of the device - e.g., a barcode or RFID. Because of
  /// limitations on character sets in XML and the need to round-trip JSON
  /// data through XML, AIDC Formats *SHALL* be base64 encoded.
  FhirBase64BinaryBuilder? carrierAIDC;

  /// [carrierHRF]
  /// The full UDI carrier as the human readable form (HRF) representation of
  /// the barcode string as printed on the packaging of the device.
  FhirStringBuilder? carrierHRF;

  /// [entryType]
  /// A coded entry to indicate how the data was entered.
  UDIEntryTypeBuilder? entryType;

  /// Converts a [DeviceUdiCarrierBuilder]
  /// to [DeviceUdiCarrier]
  @override
  DeviceUdiCarrier build() => DeviceUdiCarrier.fromJson(toJson());

  /// Converts a [DeviceUdiCarrierBuilder]
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
    addField('carrierAIDC', carrierAIDC);
    addField('carrierHRF', carrierHRF);
    addField('entryType', entryType);
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
      'carrierAIDC',
      'carrierHRF',
      'entryType',
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
      case 'carrierAIDC':
        if (carrierAIDC != null) {
          fields.add(carrierAIDC!);
        }
      case 'carrierHRF':
        if (carrierHRF != null) {
          fields.add(carrierHRF!);
        }
      case 'entryType':
        if (entryType != null) {
          fields.add(entryType!);
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
      case 'carrierAIDC':
        {
          if (child is FhirBase64BinaryBuilder) {
            carrierAIDC = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBase64BinaryBuilder.tryParse(stringValue);
              if (converted != null) {
                carrierAIDC = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'carrierHRF':
        {
          if (child is FhirStringBuilder) {
            carrierHRF = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                carrierHRF = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'entryType':
        {
          if (child is UDIEntryTypeBuilder) {
            entryType = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = UDIEntryTypeBuilder(stringValue);
                entryType = converted;
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
      case 'deviceIdentifier':
        return ['FhirStringBuilder'];
      case 'issuer':
        return ['FhirUriBuilder'];
      case 'jurisdiction':
        return ['FhirUriBuilder'];
      case 'carrierAIDC':
        return ['FhirBase64BinaryBuilder'];
      case 'carrierHRF':
        return ['FhirStringBuilder'];
      case 'entryType':
        return ['FhirCodeEnumBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceUdiCarrierBuilder]
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
      case 'carrierAIDC':
        {
          carrierAIDC = FhirBase64BinaryBuilder.empty();
          return;
        }
      case 'carrierHRF':
        {
          carrierHRF = FhirStringBuilder.empty();
          return;
        }
      case 'entryType':
        {
          entryType = UDIEntryTypeBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  DeviceUdiCarrierBuilder clone() => throw UnimplementedError();
  @override
  DeviceUdiCarrierBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? deviceIdentifier,
    FhirUriBuilder? issuer,
    FhirUriBuilder? jurisdiction,
    FhirBase64BinaryBuilder? carrierAIDC,
    FhirStringBuilder? carrierHRF,
    UDIEntryTypeBuilder? entryType,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = DeviceUdiCarrierBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      deviceIdentifier: deviceIdentifier ?? this.deviceIdentifier,
      issuer: issuer ?? this.issuer,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      carrierAIDC: carrierAIDC ?? this.carrierAIDC,
      carrierHRF: carrierHRF ?? this.carrierHRF,
      entryType: entryType ?? this.entryType,
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
    if (o is! DeviceUdiCarrierBuilder) {
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
    if (!equalsDeepWithNull(
      carrierAIDC,
      o.carrierAIDC,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      carrierHRF,
      o.carrierHRF,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      entryType,
      o.entryType,
    )) {
      return false;
    }
    return true;
  }
}

/// [DeviceNameBuilder]
/// This represents the manufacturer's name of the device as provided by
/// the device, from a UDI label, or by a person describing the Device.
/// This typically would be used when a person provides the name(s) or when
/// the device represents one of the names available from DeviceDefinition.
class DeviceNameBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DeviceNameBuilder]

  DeviceNameBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.value,
    this.type,
    this.display,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Device.name',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DeviceNameBuilder.empty() => DeviceNameBuilder(
        value: FhirStringBuilder.empty(),
        type: DeviceNameTypeBuilder.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceNameBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Device.name';
    return DeviceNameBuilder(
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
      value: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'value',
        FhirStringBuilder.fromJson,
        '$objectPath.value',
      ),
      type: JsonParser.parsePrimitive<DeviceNameTypeBuilder>(
        json,
        'type',
        DeviceNameTypeBuilder.fromJson,
        '$objectPath.type',
      ),
      display: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'display',
        FhirBooleanBuilder.fromJson,
        '$objectPath.display',
      ),
    );
  }

  /// Deserialize [DeviceNameBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceNameBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceNameBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceNameBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceNameBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceNameBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceNameBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceNameBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceName';

  /// [value]
  /// The actual name that identifies the device.
  FhirStringBuilder? value;

  /// [type]
  /// Indicates the kind of name. RegisteredName | UserFriendlyName |
  /// PatientReportedName.
  DeviceNameTypeBuilder? type;

  /// [display]
  /// Indicates the default or preferred name to be displayed.
  FhirBooleanBuilder? display;

  /// Converts a [DeviceNameBuilder]
  /// to [DeviceName]
  @override
  DeviceName build() => DeviceName.fromJson(toJson());

  /// Converts a [DeviceNameBuilder]
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
    addField('value', value);
    addField('type', type);
    addField('display', display);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'value',
      'type',
      'display',
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
      case 'value':
        if (value != null) {
          fields.add(value!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'display':
        if (display != null) {
          fields.add(display!);
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
      case 'display':
        {
          if (child is FhirBooleanBuilder) {
            display = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                display = converted;
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
      case 'value':
        return ['FhirStringBuilder'];
      case 'type':
        return ['FhirCodeEnumBuilder'];
      case 'display':
        return ['FhirBooleanBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceNameBuilder]
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
      case 'value':
        {
          value = FhirStringBuilder.empty();
          return;
        }
      case 'type':
        {
          type = DeviceNameTypeBuilder.empty();
          return;
        }
      case 'display':
        {
          display = FhirBooleanBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  DeviceNameBuilder clone() => throw UnimplementedError();
  @override
  DeviceNameBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? value,
    DeviceNameTypeBuilder? type,
    FhirBooleanBuilder? display,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = DeviceNameBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      value: value ?? this.value,
      type: type ?? this.type,
      display: display ?? this.display,
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
    if (o is! DeviceNameBuilder) {
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
      value,
      o.value,
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
      display,
      o.display,
    )) {
      return false;
    }
    return true;
  }
}

/// [DeviceVersionBuilder]
/// The actual design of the device or software version running on the
/// device.
class DeviceVersionBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DeviceVersionBuilder]

  DeviceVersionBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.component,
    this.installDate,
    this.value,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Device.version',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DeviceVersionBuilder.empty() => DeviceVersionBuilder(
        value: FhirStringBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceVersionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Device.version';
    return DeviceVersionBuilder(
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
      installDate: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'installDate',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.installDate',
      ),
      value: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'value',
        FhirStringBuilder.fromJson,
        '$objectPath.value',
      ),
    );
  }

  /// Deserialize [DeviceVersionBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceVersionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceVersionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceVersionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceVersionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceVersionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceVersionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceVersionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceVersion';

  /// [type]
  /// The type of the device version, e.g. manufacturer, approved, internal.
  CodeableConceptBuilder? type;

  /// [component]
  /// The hardware or software module of the device to which the version
  /// applies.
  IdentifierBuilder? component;

  /// [installDate]
  /// The date the version was installed on the device.
  FhirDateTimeBuilder? installDate;

  /// [value]
  /// The version text.
  FhirStringBuilder? value;

  /// Converts a [DeviceVersionBuilder]
  /// to [DeviceVersion]
  @override
  DeviceVersion build() => DeviceVersion.fromJson(toJson());

  /// Converts a [DeviceVersionBuilder]
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
    addField('installDate', installDate);
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
      'installDate',
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
      case 'installDate':
        if (installDate != null) {
          fields.add(installDate!);
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
      case 'installDate':
        {
          if (child is FhirDateTimeBuilder) {
            installDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                installDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
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
      case 'installDate':
        return ['FhirDateTimeBuilder'];
      case 'value':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceVersionBuilder]
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
      case 'installDate':
        {
          installDate = FhirDateTimeBuilder.empty();
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
  DeviceVersionBuilder clone() => throw UnimplementedError();
  @override
  DeviceVersionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    IdentifierBuilder? component,
    FhirDateTimeBuilder? installDate,
    FhirStringBuilder? value,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = DeviceVersionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      component: component ?? this.component,
      installDate: installDate ?? this.installDate,
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
    if (o is! DeviceVersionBuilder) {
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
      installDate,
      o.installDate,
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

/// [DeviceConformsToBuilder]
/// Identifies the standards, specifications, or formal guidances for the
/// capabilities supported by the device. The device may be certified as
/// conformant to these specifications e.g., communication, performance,
/// process, measurement, or specialization standards.
class DeviceConformsToBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DeviceConformsToBuilder]

  DeviceConformsToBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.category,
    this.specification,
    this.version,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Device.conformsTo',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DeviceConformsToBuilder.empty() => DeviceConformsToBuilder(
        specification: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceConformsToBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Device.conformsTo';
    return DeviceConformsToBuilder(
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
      version: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'version',
        FhirStringBuilder.fromJson,
        '$objectPath.version',
      ),
    );
  }

  /// Deserialize [DeviceConformsToBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceConformsToBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceConformsToBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceConformsToBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceConformsToBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceConformsToBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceConformsToBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceConformsToBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceConformsTo';

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
  FhirStringBuilder? version;

  /// Converts a [DeviceConformsToBuilder]
  /// to [DeviceConformsTo]
  @override
  DeviceConformsTo build() => DeviceConformsTo.fromJson(toJson());

  /// Converts a [DeviceConformsToBuilder]
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
          fields.add(version!);
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
          if (child is FhirStringBuilder) {
            version = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                version = converted;
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
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'specification':
        return ['CodeableConceptBuilder'];
      case 'version':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceConformsToBuilder]
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
          version = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  DeviceConformsToBuilder clone() => throw UnimplementedError();
  @override
  DeviceConformsToBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? category,
    CodeableConceptBuilder? specification,
    FhirStringBuilder? version,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = DeviceConformsToBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      category: category ?? this.category,
      specification: specification ?? this.specification,
      version: version ?? this.version,
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
    if (o is! DeviceConformsToBuilder) {
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
    if (!equalsDeepWithNull(
      version,
      o.version,
    )) {
      return false;
    }
    return true;
  }
}

/// [DevicePropertyBuilder]
/// Static or essentially fixed characteristics or features of the device
/// (e.g., time or timing attributes, resolution, accuracy, intended use or
/// instructions for use, and physical attributes) that are not otherwise
/// captured in more specific attributes.
class DevicePropertyBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DevicePropertyBuilder]

  DevicePropertyBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    ValueXDevicePropertyBuilder? valueX,
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
          objectPath: 'Device.property',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DevicePropertyBuilder.empty() => DevicePropertyBuilder(
        type: CodeableConceptBuilder.empty(),
        valueX: QuantityBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DevicePropertyBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Device.property';
    return DevicePropertyBuilder(
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
      valueX: JsonParser.parsePolymorphic<ValueXDevicePropertyBuilder>(
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

  /// Deserialize [DevicePropertyBuilder]
  /// from a [String] or [YamlMap] object
  factory DevicePropertyBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DevicePropertyBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DevicePropertyBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DevicePropertyBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DevicePropertyBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DevicePropertyBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DevicePropertyBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceProperty';

  /// [type]
  /// Code that specifies the property, such as resolution, color, size,
  /// being represented.
  CodeableConceptBuilder? type;

  /// [valueX]
  /// The value of the property specified by the associated property.type
  /// code.
  ValueXDevicePropertyBuilder? valueX;

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

  /// Converts a [DevicePropertyBuilder]
  /// to [DeviceProperty]
  @override
  DeviceProperty build() => DeviceProperty.fromJson(toJson());

  /// Converts a [DevicePropertyBuilder]
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
          if (child is ValueXDevicePropertyBuilder) {
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

  /// Creates a new [DevicePropertyBuilder]
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
  DevicePropertyBuilder clone() => throw UnimplementedError();
  @override
  DevicePropertyBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    ValueXDevicePropertyBuilder? valueX,
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
    final newResult = DevicePropertyBuilder(
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
    if (o is! DevicePropertyBuilder) {
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
