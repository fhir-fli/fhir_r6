import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'device.g.dart';

/// [Device]
/// A manufactured item that is used in the provision of healthcare without
/// being substantially changed through that activity. The device may be a
/// medical or non-medical device.
class Device extends DomainResource {
  /// Primary constructor for
  /// [Device]

  const Device({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
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
    this.deviceVersion,
    this.conformsTo,
    this.property,
    this.additive,
    this.contact,
    this.location,
    this.note,
    this.safety,
    this.parent,
  }) : super(
          resourceType: R6ResourceType.Device,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Device.fromJson(
    Map<String, dynamic> json,
  ) {
    return Device(
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
      definition: JsonParser.parseObject<Reference>(
        json,
        'definition',
        Reference.fromJson,
      ),
      udiCarrier: (json['udiCarrier'] as List<dynamic>?)
          ?.map<DeviceUdiCarrier>(
            (v) => DeviceUdiCarrier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<FHIRDeviceStatus>(
        json,
        'status',
        FHIRDeviceStatus.fromJson,
      ),
      availabilityStatus: JsonParser.parseObject<CodeableConcept>(
        json,
        'availabilityStatus',
        CodeableConcept.fromJson,
      ),
      biologicalSourceEvent: JsonParser.parseObject<Identifier>(
        json,
        'biologicalSourceEvent',
        Identifier.fromJson,
      ),
      manufacturer: JsonParser.parsePrimitive<FhirString>(
        json,
        'manufacturer',
        FhirString.fromJson,
      ),
      manufactureDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'manufactureDate',
        FhirDateTime.fromJson,
      ),
      expirationDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'expirationDate',
        FhirDateTime.fromJson,
      ),
      lotNumber: JsonParser.parsePrimitive<FhirString>(
        json,
        'lotNumber',
        FhirString.fromJson,
      ),
      serialNumber: JsonParser.parsePrimitive<FhirString>(
        json,
        'serialNumber',
        FhirString.fromJson,
      ),
      name: (json['name'] as List<dynamic>?)
          ?.map<DeviceName>(
            (v) => DeviceName.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modelNumber: JsonParser.parsePrimitive<FhirString>(
        json,
        'modelNumber',
        FhirString.fromJson,
      ),
      partNumber: JsonParser.parsePrimitive<FhirString>(
        json,
        'partNumber',
        FhirString.fromJson,
      ),
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      deviceVersion: (json['deviceVersion'] as List<dynamic>?)
          ?.map<DeviceDeviceVersion>(
            (v) => DeviceDeviceVersion.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      conformsTo: (json['conformsTo'] as List<dynamic>?)
          ?.map<DeviceConformsTo>(
            (v) => DeviceConformsTo.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      property: (json['property'] as List<dynamic>?)
          ?.map<DeviceProperty>(
            (v) => DeviceProperty.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      additive: (json['additive'] as List<dynamic>?)
          ?.map<DeviceAdditive>(
            (v) => DeviceAdditive.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ContactPoint>(
            (v) => ContactPoint.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      location: JsonParser.parseObject<Reference>(
        json,
        'location',
        Reference.fromJson,
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
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
      parent: JsonParser.parseObject<Reference>(
        json,
        'parent',
        Reference.fromJson,
      ),
    );
  }

  /// Deserialize [Device]
  /// from a [String] or [YamlMap] object
  factory Device.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Device.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Device.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Device '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Device]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Device.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Device.fromJson(json);
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
  final List<Identifier>? identifier;

  /// [definition]
  /// The reference to the definition for the device.
  final Reference? definition;

  /// [udiCarrier]
  /// Unique Device Identifier (UDI) placed on a device label or package.
  /// Note that the Device may include multiple UDIs if it is sold in
  /// multiple jurisdictions.
  final List<DeviceUdiCarrier>? udiCarrier;

  /// [status]
  /// The Device record status. This is not the status of the device like
  /// availability.
  final FHIRDeviceStatus? status;

  /// [availabilityStatus]
  /// The availability of the device.
  final CodeableConcept? availabilityStatus;

  /// [biologicalSourceEvent]
  /// A production identifier of the donation, collection, or pooling event
  /// from which biological material in this device was derived.
  final Identifier? biologicalSourceEvent;

  /// [manufacturer]
  /// A name of the manufacturer or entity legally responsible for the
  /// device.
  final FhirString? manufacturer;

  /// [manufactureDate]
  /// The date and time when the device was manufactured.
  final FhirDateTime? manufactureDate;

  /// [expirationDate]
  /// The date and time beyond which this device is no longer valid or should
  /// not be used (if applicable).
  final FhirDateTime? expirationDate;

  /// [lotNumber]
  /// Lot number assigned by the manufacturer.
  final FhirString? lotNumber;

  /// [serialNumber]
  /// The serial number assigned by the organization when the device was
  /// manufactured.
  final FhirString? serialNumber;

  /// [name]
  /// This represents the manufacturer's name of the device as provided by
  /// the device, from a UDI label, or by a person describing the Device.
  /// This typically would be used when a person provides the name(s) or when
  /// the device represents one of the names available from DeviceDefinition.
  final List<DeviceName>? name;

  /// [modelNumber]
  /// The manufacturer's model number for the device.
  final FhirString? modelNumber;

  /// [partNumber]
  /// The part number or catalog number of the device.
  final FhirString? partNumber;

  /// [category]
  /// Devices may be associated with one or more categories.
  final List<CodeableConcept>? category;

  /// [type]
  /// The kind or type of device. A device instance may have more than one
  /// type - in which case those are the types that apply to the specific
  /// instance of the device.
  final List<CodeableConcept>? type;

  /// [deviceVersion]
  /// The actual design of the device or software version running on the
  /// device.
  final List<DeviceDeviceVersion>? deviceVersion;

  /// [conformsTo]
  /// Identifies the standards, specifications, or formal guidances for the
  /// capabilities supported by the device. The device may be certified as
  /// conformant to these specifications e.g., communication, performance,
  /// process, measurement, or specialization standards.
  final List<DeviceConformsTo>? conformsTo;

  /// [property]
  /// Static or essentially fixed characteristics or features of the device
  /// (e.g., time or timing attributes, resolution, accuracy, intended use or
  /// instructions for use, and physical attributes) that are not otherwise
  /// captured in more specific attributes.
  final List<DeviceProperty>? property;

  /// [additive]
  /// Material added to a container device (typically used in specimen
  /// collection or initial processing). The material may be added by the
  /// device manufacturer or by a different party subsequent to
  /// manufacturing.
  final List<DeviceAdditive>? additive;

  /// [contact]
  /// Contact details for an organization or a particular human that is
  /// responsible for the device.
  final List<ContactPoint>? contact;

  /// [location]
  /// The place where the device can be found.
  final Reference? location;

  /// [note]
  /// Descriptive information, usage information or implantation information
  /// that is not captured in an existing element.
  final List<Annotation>? note;

  /// [safety]
  /// Provides additional safety characteristics about a medical device. For
  /// example devices containing latex.
  final List<CodeableConcept>? safety;

  /// [parent]
  /// The higher level or encompassing device that this device is a logical
  /// part of.
  final Reference? parent;
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
      'definition',
      definition,
    );
    addField(
      'udiCarrier',
      udiCarrier,
    );
    addField(
      'status',
      status,
    );
    addField(
      'availabilityStatus',
      availabilityStatus,
    );
    addField(
      'biologicalSourceEvent',
      biologicalSourceEvent,
    );
    addField(
      'manufacturer',
      manufacturer,
    );
    addField(
      'manufactureDate',
      manufactureDate,
    );
    addField(
      'expirationDate',
      expirationDate,
    );
    addField(
      'lotNumber',
      lotNumber,
    );
    addField(
      'serialNumber',
      serialNumber,
    );
    addField(
      'name',
      name,
    );
    addField(
      'modelNumber',
      modelNumber,
    );
    addField(
      'partNumber',
      partNumber,
    );
    addField(
      'category',
      category,
    );
    addField(
      'type',
      type,
    );
    addField(
      'deviceVersion',
      deviceVersion,
    );
    addField(
      'conformsTo',
      conformsTo,
    );
    addField(
      'property',
      property,
    );
    addField(
      'additive',
      additive,
    );
    addField(
      'contact',
      contact,
    );
    addField(
      'location',
      location,
    );
    addField(
      'note',
      note,
    );
    addField(
      'safety',
      safety,
    );
    addField(
      'parent',
      parent,
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
      'deviceVersion',
      'conformsTo',
      'property',
      'additive',
      'contact',
      'location',
      'note',
      'safety',
      'parent',
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
      case 'deviceVersion':
        if (deviceVersion != null) {
          fields.addAll(deviceVersion!);
        }
      case 'conformsTo':
        if (conformsTo != null) {
          fields.addAll(conformsTo!);
        }
      case 'property':
        if (property != null) {
          fields.addAll(property!);
        }
      case 'additive':
        if (additive != null) {
          fields.addAll(additive!);
        }
      case 'contact':
        if (contact != null) {
          fields.addAll(contact!);
        }
      case 'location':
        if (location != null) {
          fields.add(location!);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  Device clone() => copyWith();

  /// Copy function for [Device]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DeviceCopyWith<Device> get copyWith => _$DeviceCopyWithImpl<Device>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Device) {
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
    if (!FhirBase.listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      definition,
      o.definition,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<DeviceUdiCarrier>(
      udiCarrier,
      o.udiCarrier,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      availabilityStatus,
      o.availabilityStatus,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      biologicalSourceEvent,
      o.biologicalSourceEvent,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      manufacturer,
      o.manufacturer,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      manufactureDate,
      o.manufactureDate,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      expirationDate,
      o.expirationDate,
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
      serialNumber,
      o.serialNumber,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<DeviceName>(
      name,
      o.name,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      modelNumber,
      o.modelNumber,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      partNumber,
      o.partNumber,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      category,
      o.category,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      type,
      o.type,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<DeviceDeviceVersion>(
      deviceVersion,
      o.deviceVersion,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<DeviceConformsTo>(
      conformsTo,
      o.conformsTo,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<DeviceProperty>(
      property,
      o.property,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<DeviceAdditive>(
      additive,
      o.additive,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ContactPoint>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      location,
      o.location,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      safety,
      o.safety,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      parent,
      o.parent,
    )) {
      return false;
    }
    return true;
  }
}

/// [DeviceUdiCarrier]
/// Unique Device Identifier (UDI) placed on a device label or package.
/// Note that the Device may include multiple UDIs if it is sold in
/// multiple jurisdictions.
class DeviceUdiCarrier extends BackboneElement {
  /// Primary constructor for
  /// [DeviceUdiCarrier]

  const DeviceUdiCarrier({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.deviceIdentifier,
    this.deviceIdentifierSystem,
    required this.issuer,
    this.jurisdiction,
    this.carrierAIDC,
    this.carrierHRF,
    this.entryType,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceUdiCarrier.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceUdiCarrier(
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
      deviceIdentifierSystem: JsonParser.parsePrimitive<FhirUri>(
        json,
        'deviceIdentifierSystem',
        FhirUri.fromJson,
      ),
      issuer: JsonParser.parsePrimitive<FhirUri>(
        json,
        'issuer',
        FhirUri.fromJson,
      )!,
      jurisdiction: JsonParser.parsePrimitive<FhirUri>(
        json,
        'jurisdiction',
        FhirUri.fromJson,
      ),
      carrierAIDC: JsonParser.parsePrimitive<FhirBase64Binary>(
        json,
        'carrierAIDC',
        FhirBase64Binary.fromJson,
      ),
      carrierHRF: JsonParser.parsePrimitive<FhirString>(
        json,
        'carrierHRF',
        FhirString.fromJson,
      ),
      entryType: JsonParser.parsePrimitive<UDIEntryType>(
        json,
        'entryType',
        UDIEntryType.fromJson,
      ),
    );
  }

  /// Deserialize [DeviceUdiCarrier]
  /// from a [String] or [YamlMap] object
  factory DeviceUdiCarrier.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceUdiCarrier.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceUdiCarrier.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceUdiCarrier '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceUdiCarrier]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceUdiCarrier.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceUdiCarrier.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceUdiCarrier';

  /// [deviceIdentifier]
  /// The device identifier (UDI-DI) is a mandatory, fixed portion of a UDI
  /// that identifies the labeler and the specific version or model of a
  /// device. The UDI-DI portion is placed on a device label or package. Note
  /// that the DeviceDefinition may include multiple UDI-DIs if it is sold in
  /// multiple jurisdictions.
  final FhirString deviceIdentifier;

  /// [deviceIdentifierSystem]
  /// Establishes the namespace for the device identifier value that is an
  /// URL, OID, urn or uuid.
  final FhirUri? deviceIdentifierSystem;

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
  final FhirUri issuer;

  /// [jurisdiction]
  /// The identity of the authoritative source for UDI generation within a
  /// jurisdiction. All UDIs are globally unique within a single namespace
  /// with the appropriate repository uri as the system. For example, UDIs of
  /// devices managed in the U.S. by the FDA, the value is
  /// http://hl7.org/fhir/NamingSystem/us-fda-udi or in the European Union by
  /// the European Commission http://hl7.org/fhir/NamingSystem/eu-ec-udi.
  final FhirUri? jurisdiction;

  /// [carrierAIDC]
  /// The full UDI carrier of the Automatic Identification and Data Capture
  /// (AIDC) technology representation as printed on the packaging of the
  /// device - e.g., a barcode or RFID. Because of limitations on character
  /// sets in XML and the need to round-trip JSON data through XML, AIDC
  /// Formats *SHALL* be base64 encoded.
  final FhirBase64Binary? carrierAIDC;

  /// [carrierHRF]
  /// The full UDI carrier as the human readable form (HRF) representation of
  /// the barcode string as printed on the packaging of the device.
  final FhirString? carrierHRF;

  /// [entryType]
  /// A coded entry to indicate how the data was entered.
  final UDIEntryType? entryType;
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
      'deviceIdentifierSystem',
      deviceIdentifierSystem,
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
      'carrierAIDC',
      carrierAIDC,
    );
    addField(
      'carrierHRF',
      carrierHRF,
    );
    addField(
      'entryType',
      entryType,
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
      'deviceIdentifierSystem',
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
      case 'deviceIdentifierSystem':
        if (deviceIdentifierSystem != null) {
          fields.add(deviceIdentifierSystem!);
        }
      case 'issuer':
        fields.add(issuer);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  DeviceUdiCarrier clone() => copyWith();

  /// Copy function for [DeviceUdiCarrier]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DeviceUdiCarrierCopyWith<DeviceUdiCarrier> get copyWith =>
      _$DeviceUdiCarrierCopyWithImpl<DeviceUdiCarrier>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceUdiCarrier) {
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
      deviceIdentifier,
      o.deviceIdentifier,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      deviceIdentifierSystem,
      o.deviceIdentifierSystem,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      issuer,
      o.issuer,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      jurisdiction,
      o.jurisdiction,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      carrierAIDC,
      o.carrierAIDC,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      carrierHRF,
      o.carrierHRF,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      entryType,
      o.entryType,
    )) {
      return false;
    }
    return true;
  }
}

/// [DeviceName]
/// This represents the manufacturer's name of the device as provided by
/// the device, from a UDI label, or by a person describing the Device.
/// This typically would be used when a person provides the name(s) or when
/// the device represents one of the names available from DeviceDefinition.
class DeviceName extends BackboneElement {
  /// Primary constructor for
  /// [DeviceName]

  const DeviceName({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.value,
    required this.type,
    this.display,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceName.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceName(
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
      value: JsonParser.parsePrimitive<FhirString>(
        json,
        'value',
        FhirString.fromJson,
      )!,
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      )!,
      display: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'display',
        FhirBoolean.fromJson,
      ),
    );
  }

  /// Deserialize [DeviceName]
  /// from a [String] or [YamlMap] object
  factory DeviceName.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceName.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceName.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceName '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceName]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceName.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceName.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceName';

  /// [value]
  /// The actual name that identifies the device.
  final FhirString value;

  /// [type]
  /// Indicates the kind of name. RegisteredName | UserFriendlyName |
  /// PatientReportedName.
  final CodeableConcept type;

  /// [display]
  /// Indicates the default or preferred name to be displayed.
  final FhirBoolean? display;
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
      'value',
      value,
    );
    addField(
      'type',
      type,
    );
    addField(
      'display',
      display,
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
      'value',
      'type',
      'display',
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
      case 'value':
        fields.add(value);
      case 'type':
        fields.add(type);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  DeviceName clone() => copyWith();

  /// Copy function for [DeviceName]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DeviceNameCopyWith<DeviceName> get copyWith =>
      _$DeviceNameCopyWithImpl<DeviceName>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceName) {
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
      value,
      o.value,
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
      display,
      o.display,
    )) {
      return false;
    }
    return true;
  }
}

/// [DeviceDeviceVersion]
/// The actual design of the device or software version running on the
/// device.
class DeviceDeviceVersion extends BackboneElement {
  /// Primary constructor for
  /// [DeviceDeviceVersion]

  const DeviceDeviceVersion({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.component,
    this.installDate,
    required this.value,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDeviceVersion.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceDeviceVersion(
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
      installDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'installDate',
        FhirDateTime.fromJson,
      ),
      value: JsonParser.parsePrimitive<FhirString>(
        json,
        'value',
        FhirString.fromJson,
      )!,
    );
  }

  /// Deserialize [DeviceDeviceVersion]
  /// from a [String] or [YamlMap] object
  factory DeviceDeviceVersion.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDeviceVersion.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDeviceVersion.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDeviceVersion '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDeviceVersion]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDeviceVersion.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDeviceVersion.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDeviceVersion';

  /// [type]
  /// The type of the device version, e.g. manufacturer, approved, internal.
  final CodeableConcept? type;

  /// [component]
  /// The hardware or software module of the device to which the version
  /// applies.
  final Identifier? component;

  /// [installDate]
  /// The date the version was installed on the device.
  final FhirDateTime? installDate;

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
      'installDate',
      installDate,
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
      'installDate',
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
      case 'installDate':
        if (installDate != null) {
          fields.add(installDate!);
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
  DeviceDeviceVersion clone() => copyWith();

  /// Copy function for [DeviceDeviceVersion]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DeviceDeviceVersionCopyWith<DeviceDeviceVersion> get copyWith =>
      _$DeviceDeviceVersionCopyWithImpl<DeviceDeviceVersion>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceDeviceVersion) {
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
      component,
      o.component,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      installDate,
      o.installDate,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      value,
      o.value,
    )) {
      return false;
    }
    return true;
  }
}

/// [DeviceConformsTo]
/// Identifies the standards, specifications, or formal guidances for the
/// capabilities supported by the device. The device may be certified as
/// conformant to these specifications e.g., communication, performance,
/// process, measurement, or specialization standards.
class DeviceConformsTo extends BackboneElement {
  /// Primary constructor for
  /// [DeviceConformsTo]

  const DeviceConformsTo({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.category,
    required this.specification,
    this.version,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceConformsTo.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceConformsTo(
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
      version: JsonParser.parsePrimitive<FhirString>(
        json,
        'version',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [DeviceConformsTo]
  /// from a [String] or [YamlMap] object
  factory DeviceConformsTo.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceConformsTo.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceConformsTo.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceConformsTo '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceConformsTo]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceConformsTo.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceConformsTo.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceConformsTo';

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
  final FhirString? version;
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  DeviceConformsTo clone() => copyWith();

  /// Copy function for [DeviceConformsTo]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DeviceConformsToCopyWith<DeviceConformsTo> get copyWith =>
      _$DeviceConformsToCopyWithImpl<DeviceConformsTo>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceConformsTo) {
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
      category,
      o.category,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      specification,
      o.specification,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      version,
      o.version,
    )) {
      return false;
    }
    return true;
  }
}

/// [DeviceProperty]
/// Static or essentially fixed characteristics or features of the device
/// (e.g., time or timing attributes, resolution, accuracy, intended use or
/// instructions for use, and physical attributes) that are not otherwise
/// captured in more specific attributes.
class DeviceProperty extends BackboneElement {
  /// Primary constructor for
  /// [DeviceProperty]

  const DeviceProperty({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.valueX,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceProperty.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceProperty(
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
      valueX: JsonParser.parsePolymorphic<ValueXDeviceProperty>(
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

  /// Deserialize [DeviceProperty]
  /// from a [String] or [YamlMap] object
  factory DeviceProperty.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceProperty.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceProperty.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceProperty '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceProperty]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceProperty.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceProperty.fromJson(json);
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
  final CodeableConcept type;

  /// [valueX]
  /// The value of the property specified by the associated property.type
  /// code.
  final ValueXDeviceProperty valueX;

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
  DeviceProperty clone() => copyWith();

  /// Copy function for [DeviceProperty]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DevicePropertyCopyWith<DeviceProperty> get copyWith =>
      _$DevicePropertyCopyWithImpl<DeviceProperty>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceProperty) {
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

/// [DeviceAdditive]
/// Material added to a container device (typically used in specimen
/// collection or initial processing). The material may be added by the
/// device manufacturer or by a different party subsequent to
/// manufacturing.
class DeviceAdditive extends BackboneElement {
  /// Primary constructor for
  /// [DeviceAdditive]

  const DeviceAdditive({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.quantity,
    this.performer,
    this.performed,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceAdditive.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceAdditive(
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
      type: JsonParser.parseObject<CodeableReference>(
        json,
        'type',
        CodeableReference.fromJson,
      )!,
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
      ),
      performer: JsonParser.parseObject<Reference>(
        json,
        'performer',
        Reference.fromJson,
      ),
      performed: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'performed',
        FhirDateTime.fromJson,
      ),
    );
  }

  /// Deserialize [DeviceAdditive]
  /// from a [String] or [YamlMap] object
  factory DeviceAdditive.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceAdditive.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceAdditive.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceAdditive '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceAdditive]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceAdditive.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceAdditive.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceAdditive';

  /// [type]
  /// The type of the substance added to the container. This is represented
  /// as a concept from a code system or described in a Substance resource.
  final CodeableReference type;

  /// [quantity]
  /// The quantity of the additive substance in the container; may be volume,
  /// dimensions, or other appropriate measurements, depending on the
  /// container and additive substance type.
  final Quantity? quantity;

  /// [performer]
  /// The performer who adds the substance to the container.
  final Reference? performer;

  /// [performed]
  /// Time when the additive substance was placed into the container by the
  /// performer.
  final FhirDateTime? performed;
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
      'quantity',
      quantity,
    );
    addField(
      'performer',
      performer,
    );
    addField(
      'performed',
      performed,
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
      'quantity',
      'performer',
      'performed',
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
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'performer':
        if (performer != null) {
          fields.add(performer!);
        }
      case 'performed':
        if (performed != null) {
          fields.add(performed!);
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
  DeviceAdditive clone() => copyWith();

  /// Copy function for [DeviceAdditive]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DeviceAdditiveCopyWith<DeviceAdditive> get copyWith =>
      _$DeviceAdditiveCopyWithImpl<DeviceAdditive>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceAdditive) {
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
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      performer,
      o.performer,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      performed,
      o.performed,
    )) {
      return false;
    }
    return true;
  }
}
