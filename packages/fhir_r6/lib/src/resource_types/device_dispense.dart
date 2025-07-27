import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'device_dispense.g.dart';

/// [DeviceDispense]
/// A record of dispensation of a device - i.e., assigning a device to a
/// patient, or to a professional for their use.
class DeviceDispense extends DomainResource {
  /// Primary constructor for
  /// [DeviceDispense]

  const DeviceDispense({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.basedOn,
    this.partOf,
    required this.status,
    this.statusReason,
    this.category,
    required this.device,
    required this.subject,
    this.receiver,
    this.encounter,
    this.supportingInformation,
    this.performer,
    this.location,
    this.type,
    this.quantity,
    this.preparedDate,
    this.whenHandedOver,
    this.destination,
    this.note,
    this.usageInstruction,
    this.eventHistory,
  }) : super(
          resourceType: R5ResourceType.DeviceDispense,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDispense.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceDispense(
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
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<DeviceDispenseStatusCodes>(
        json,
        'status',
        DeviceDispenseStatusCodes.fromJson,
      )!,
      statusReason: JsonParser.parseObject<CodeableReference>(
        json,
        'statusReason',
        CodeableReference.fromJson,
      ),
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      device: JsonParser.parseObject<CodeableReference>(
        json,
        'device',
        CodeableReference.fromJson,
      )!,
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
      )!,
      receiver: JsonParser.parseObject<Reference>(
        json,
        'receiver',
        Reference.fromJson,
      ),
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
      ),
      supportingInformation: (json['supportingInformation'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<DeviceDispensePerformer>(
            (v) => DeviceDispensePerformer.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      location: JsonParser.parseObject<Reference>(
        json,
        'location',
        Reference.fromJson,
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
      ),
      preparedDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'preparedDate',
        FhirDateTime.fromJson,
      ),
      whenHandedOver: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'whenHandedOver',
        FhirDateTime.fromJson,
      ),
      destination: JsonParser.parseObject<Reference>(
        json,
        'destination',
        Reference.fromJson,
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      usageInstruction: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'usageInstruction',
        FhirMarkdown.fromJson,
      ),
      eventHistory: (json['eventHistory'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DeviceDispense]
  /// from a [String] or [YamlMap] object
  factory DeviceDispense.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDispense.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDispense.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDispense '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDispense]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDispense.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDispense.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDispense';

  /// [identifier]
  /// Business identifier for this dispensation.
  final List<Identifier>? identifier;

  /// [basedOn]
  /// The order or request that this dispense is fulfilling.
  final List<Reference>? basedOn;

  /// [partOf]
  /// The bigger event that this dispense is a part of.
  final List<Reference>? partOf;

  /// [status]
  /// A code specifying the state of the set of dispense events.
  final DeviceDispenseStatusCodes status;

  /// [statusReason]
  /// Indicates the reason why a dispense was or was not performed.
  final CodeableReference? statusReason;

  /// [category]
  /// Indicates the type of device dispense.
  final List<CodeableConcept>? category;

  /// [device]
  /// Identifies the device being dispensed. This is either a link to a
  /// resource representing the details of the device or a simple attribute
  /// carrying a code that identifies the device from a known list of
  /// devices.
  final CodeableReference device;

  /// [subject]
  /// A link to a resource representing the person to whom the device is
  /// intended.
  final Reference subject;

  /// [receiver]
  /// Identifies the person who picked up the device or the person or
  /// location where the device was delivered. This may be a patient or their
  /// caregiver, but some cases exist where it can be a healthcare
  /// professional or a location.
  final Reference? receiver;

  /// [encounter]
  /// The encounter that establishes the context for this event.
  final Reference? encounter;

  /// [supportingInformation]
  /// Additional information that supports the device being dispensed.
  final List<Reference>? supportingInformation;

  /// [performer]
  /// Indicates who or what performed the event.
  final List<DeviceDispensePerformer>? performer;

  /// [location]
  /// The principal physical location where the dispense was performed.
  final Reference? location;

  /// [type]
  /// Indicates the type of dispensing event that is performed.
  final CodeableConcept? type;

  /// [quantity]
  /// The number of devices that have been dispensed.
  final Quantity? quantity;

  /// [preparedDate]
  /// The time when the dispensed product was packaged and reviewed.
  final FhirDateTime? preparedDate;

  /// [whenHandedOver]
  /// The time the dispensed product was made available to the patient or
  /// their representative.
  final FhirDateTime? whenHandedOver;

  /// [destination]
  /// Identification of the facility/location where the device was /should be
  /// shipped to, as part of the dispense process.
  final Reference? destination;

  /// [note]
  /// Extra information about the dispense that could not be conveyed in the
  /// other attributes.
  final List<Annotation>? note;

  /// [usageInstruction]
  /// The full representation of the instructions.
  final FhirMarkdown? usageInstruction;

  /// [eventHistory]
  /// A summary of the events of interest that have occurred, such as when
  /// the dispense was verified.
  final List<Reference>? eventHistory;
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
      'basedOn',
      basedOn,
    );
    addField(
      'partOf',
      partOf,
    );
    addField(
      'status',
      status,
    );
    addField(
      'statusReason',
      statusReason,
    );
    addField(
      'category',
      category,
    );
    addField(
      'device',
      device,
    );
    addField(
      'subject',
      subject,
    );
    addField(
      'receiver',
      receiver,
    );
    addField(
      'encounter',
      encounter,
    );
    addField(
      'supportingInformation',
      supportingInformation,
    );
    addField(
      'performer',
      performer,
    );
    addField(
      'location',
      location,
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
      'preparedDate',
      preparedDate,
    );
    addField(
      'whenHandedOver',
      whenHandedOver,
    );
    addField(
      'destination',
      destination,
    );
    addField(
      'note',
      note,
    );
    addField(
      'usageInstruction',
      usageInstruction,
    );
    addField(
      'eventHistory',
      eventHistory,
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
      'basedOn',
      'partOf',
      'status',
      'statusReason',
      'category',
      'device',
      'subject',
      'receiver',
      'encounter',
      'supportingInformation',
      'performer',
      'location',
      'type',
      'quantity',
      'preparedDate',
      'whenHandedOver',
      'destination',
      'note',
      'usageInstruction',
      'eventHistory',
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
      case 'basedOn':
        if (basedOn != null) {
          fields.addAll(basedOn!);
        }
      case 'partOf':
        if (partOf != null) {
          fields.addAll(partOf!);
        }
      case 'status':
        fields.add(status);
      case 'statusReason':
        if (statusReason != null) {
          fields.add(statusReason!);
        }
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'device':
        fields.add(device);
      case 'subject':
        fields.add(subject);
      case 'receiver':
        if (receiver != null) {
          fields.add(receiver!);
        }
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'supportingInformation':
        if (supportingInformation != null) {
          fields.addAll(supportingInformation!);
        }
      case 'performer':
        if (performer != null) {
          fields.addAll(performer!);
        }
      case 'location':
        if (location != null) {
          fields.add(location!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'preparedDate':
        if (preparedDate != null) {
          fields.add(preparedDate!);
        }
      case 'whenHandedOver':
        if (whenHandedOver != null) {
          fields.add(whenHandedOver!);
        }
      case 'destination':
        if (destination != null) {
          fields.add(destination!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'usageInstruction':
        if (usageInstruction != null) {
          fields.add(usageInstruction!);
        }
      case 'eventHistory':
        if (eventHistory != null) {
          fields.addAll(eventHistory!);
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
  DeviceDispense clone() => copyWith();

  /// Copy function for [DeviceDispense]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DeviceDispenseCopyWith<DeviceDispense> get copyWith =>
      _$DeviceDispenseCopyWithImpl<DeviceDispense>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceDispense) {
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
    if (!listEquals<Reference>(
      basedOn,
      o.basedOn,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      partOf,
      o.partOf,
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
      statusReason,
      o.statusReason,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      category,
      o.category,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      device,
      o.device,
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
      receiver,
      o.receiver,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      encounter,
      o.encounter,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      supportingInformation,
      o.supportingInformation,
    )) {
      return false;
    }
    if (!listEquals<DeviceDispensePerformer>(
      performer,
      o.performer,
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
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      preparedDate,
      o.preparedDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      whenHandedOver,
      o.whenHandedOver,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      destination,
      o.destination,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      usageInstruction,
      o.usageInstruction,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      eventHistory,
      o.eventHistory,
    )) {
      return false;
    }
    return true;
  }
}

/// [DeviceDispensePerformer]
/// Indicates who or what performed the event.
class DeviceDispensePerformer extends BackboneElement {
  /// Primary constructor for
  /// [DeviceDispensePerformer]

  const DeviceDispensePerformer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    required this.actor,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceDispensePerformer.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceDispensePerformer(
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
      function_: JsonParser.parseObject<CodeableConcept>(
        json,
        'function',
        CodeableConcept.fromJson,
      ),
      actor: JsonParser.parseObject<Reference>(
        json,
        'actor',
        Reference.fromJson,
      )!,
    );
  }

  /// Deserialize [DeviceDispensePerformer]
  /// from a [String] or [YamlMap] object
  factory DeviceDispensePerformer.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceDispensePerformer.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceDispensePerformer.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceDispensePerformer '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceDispensePerformer]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceDispensePerformer.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceDispensePerformer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceDispensePerformer';

  /// [function_]
  /// Distinguishes the type of performer in the dispense. For example, date
  /// enterer, packager, final checker.
  final CodeableConcept? function_;

  /// [actor]
  /// The device, practitioner, etc. who performed the action. It should be
  /// assumed that the actor is the dispenser of the device.
  final Reference actor;
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
      'function',
      function_,
    );
    addField(
      'actor',
      actor,
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
      'function',
      'actor',
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
      case 'function':
        if (function_ != null) {
          fields.add(function_!);
        }
      case 'actor':
        fields.add(actor);
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
  DeviceDispensePerformer clone() => copyWith();

  /// Copy function for [DeviceDispensePerformer]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DeviceDispensePerformerCopyWith<DeviceDispensePerformer> get copyWith =>
      _$DeviceDispensePerformerCopyWithImpl<DeviceDispensePerformer>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceDispensePerformer) {
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
      function_,
      o.function_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      actor,
      o.actor,
    )) {
      return false;
    }
    return true;
  }
}
