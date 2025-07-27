import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'device_usage.g.dart';

/// [DeviceUsage]
/// A record of a device being used by a patient where the record is the
/// result of a report from the patient or a clinician.
class DeviceUsage extends DomainResource {
  /// Primary constructor for
  /// [DeviceUsage]

  const DeviceUsage({
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
    required this.status,
    this.category,
    required this.patient,
    this.derivedFrom,
    this.context,
    TimingXDeviceUsage? timingX,
    Timing? timingTiming,
    Period? timingPeriod,
    FhirDateTime? timingDateTime,
    this.dateAsserted,
    this.usageStatus,
    this.usageReason,
    this.adherence,
    this.informationSource,
    required this.device,
    this.reason,
    this.bodySite,
    this.note,
  })  : timingX = timingX ?? timingTiming ?? timingPeriod ?? timingDateTime,
        super(
          resourceType: R5ResourceType.DeviceUsage,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceUsage.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceUsage(
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
      status: JsonParser.parsePrimitive<DeviceUsageStatus>(
        json,
        'status',
        DeviceUsageStatus.fromJson,
      )!,
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      patient: JsonParser.parseObject<Reference>(
        json,
        'patient',
        Reference.fromJson,
      )!,
      derivedFrom: (json['derivedFrom'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      context: JsonParser.parseObject<Reference>(
        json,
        'context',
        Reference.fromJson,
      ),
      timingX: JsonParser.parsePolymorphic<TimingXDeviceUsage>(
        json,
        {
          'timingTiming': Timing.fromJson,
          'timingPeriod': Period.fromJson,
          'timingDateTime': FhirDateTime.fromJson,
        },
      ),
      dateAsserted: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'dateAsserted',
        FhirDateTime.fromJson,
      ),
      usageStatus: JsonParser.parseObject<CodeableConcept>(
        json,
        'usageStatus',
        CodeableConcept.fromJson,
      ),
      usageReason: (json['usageReason'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      adherence: JsonParser.parseObject<DeviceUsageAdherence>(
        json,
        'adherence',
        DeviceUsageAdherence.fromJson,
      ),
      informationSource: JsonParser.parseObject<Reference>(
        json,
        'informationSource',
        Reference.fromJson,
      ),
      device: JsonParser.parseObject<CodeableReference>(
        json,
        'device',
        CodeableReference.fromJson,
      )!,
      reason: (json['reason'] as List<dynamic>?)
          ?.map<CodeableReference>(
            (v) => CodeableReference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      bodySite: JsonParser.parseObject<CodeableReference>(
        json,
        'bodySite',
        CodeableReference.fromJson,
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DeviceUsage]
  /// from a [String] or [YamlMap] object
  factory DeviceUsage.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceUsage.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceUsage.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceUsage '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceUsage]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceUsage.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceUsage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceUsage';

  /// [identifier]
  /// An external identifier for this statement such as an IRI.
  final List<Identifier>? identifier;

  /// [basedOn]
  /// A plan, proposal or order that is fulfilled in whole or in part by this
  /// DeviceUsage.
  final List<Reference>? basedOn;

  /// [status]
  /// A code representing the patient or other source's judgment about the
  /// state of the device used that this statement is about. Generally this
  /// will be active or completed.
  final DeviceUsageStatus status;

  /// [category]
  /// This attribute indicates a category for the statement - The device
  /// statement may be made in an inpatient or outpatient settting (inpatient
  /// | outpatient | community | patientspecified).
  final List<CodeableConcept>? category;

  /// [patient]
  /// The patient who used the device.
  final Reference patient;

  /// [derivedFrom]
  /// Allows linking the DeviceUsage to the underlying Request, or to other
  /// information that supports or is used to derive the DeviceUsage.
  final List<Reference>? derivedFrom;

  /// [context]
  /// The encounter or episode of care that establishes the context for this
  /// device use statement.
  final Reference? context;

  /// [timingX]
  /// How often the device was used.
  final TimingXDeviceUsage? timingX;

  /// Getter for [timingTiming] as a Timing
  Timing? get timingTiming => timingX?.isAs<Timing>();

  /// Getter for [timingPeriod] as a Period
  Period? get timingPeriod => timingX?.isAs<Period>();

  /// Getter for [timingDateTime] as a FhirDateTime
  FhirDateTime? get timingDateTime => timingX?.isAs<FhirDateTime>();

  /// [dateAsserted]
  /// The time at which the statement was recorded by informationSource.
  final FhirDateTime? dateAsserted;

  /// [usageStatus]
  /// The status of the device usage, for example always, sometimes, never.
  /// This is not the same as the status of the statement.
  final CodeableConcept? usageStatus;

  /// [usageReason]
  /// The reason for asserting the usage status - for example forgot, lost,
  /// stolen, broken.
  final List<CodeableConcept>? usageReason;

  /// [adherence]
  /// This indicates how or if the device is being used.
  final DeviceUsageAdherence? adherence;

  /// [informationSource]
  /// Who reported the device was being used by the patient.
  final Reference? informationSource;

  /// [device]
  /// Code or Reference to device used.
  final CodeableReference device;

  /// [reason]
  /// Reason or justification for the use of the device. A coded concept, or
  /// another resource whose existence justifies this DeviceUsage.
  final List<CodeableReference>? reason;

  /// [bodySite]
  /// Indicates the anotomic location on the subject's body where the device
  /// was used ( i.e. the target).
  final CodeableReference? bodySite;

  /// [note]
  /// Details about the device statement that were not represented at all or
  /// sufficiently in one of the attributes provided in a class. These may
  /// include for example a comment, an instruction, or a note associated
  /// with the statement.
  final List<Annotation>? note;
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
      'status',
      status,
    );
    addField(
      'category',
      category,
    );
    addField(
      'patient',
      patient,
    );
    addField(
      'derivedFrom',
      derivedFrom,
    );
    addField(
      'context',
      context,
    );
    if (timingX != null) {
      final fhirType = timingX!.fhirType;
      addField(
        'timing${fhirType.capitalize()}',
        timingX,
      );
    }

    addField(
      'dateAsserted',
      dateAsserted,
    );
    addField(
      'usageStatus',
      usageStatus,
    );
    addField(
      'usageReason',
      usageReason,
    );
    addField(
      'adherence',
      adherence,
    );
    addField(
      'informationSource',
      informationSource,
    );
    addField(
      'device',
      device,
    );
    addField(
      'reason',
      reason,
    );
    addField(
      'bodySite',
      bodySite,
    );
    addField(
      'note',
      note,
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
      'status',
      'category',
      'patient',
      'derivedFrom',
      'context',
      'timingX',
      'dateAsserted',
      'usageStatus',
      'usageReason',
      'adherence',
      'informationSource',
      'device',
      'reason',
      'bodySite',
      'note',
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
      case 'status':
        fields.add(status);
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'patient':
        fields.add(patient);
      case 'derivedFrom':
        if (derivedFrom != null) {
          fields.addAll(derivedFrom!);
        }
      case 'context':
        if (context != null) {
          fields.add(context!);
        }
      case 'timing':
        fields.add(timingX!);
      case 'timingX':
        fields.add(timingX!);
      case 'timingTiming':
        if (timingX is Timing) {
          fields.add(timingX!);
        }
      case 'timingPeriod':
        if (timingX is Period) {
          fields.add(timingX!);
        }
      case 'timingDateTime':
        if (timingX is FhirDateTime) {
          fields.add(timingX!);
        }
      case 'dateAsserted':
        if (dateAsserted != null) {
          fields.add(dateAsserted!);
        }
      case 'usageStatus':
        if (usageStatus != null) {
          fields.add(usageStatus!);
        }
      case 'usageReason':
        if (usageReason != null) {
          fields.addAll(usageReason!);
        }
      case 'adherence':
        if (adherence != null) {
          fields.add(adherence!);
        }
      case 'informationSource':
        if (informationSource != null) {
          fields.add(informationSource!);
        }
      case 'device':
        fields.add(device);
      case 'reason':
        if (reason != null) {
          fields.addAll(reason!);
        }
      case 'bodySite':
        if (bodySite != null) {
          fields.add(bodySite!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
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
  DeviceUsage clone() => copyWith();

  /// Copy function for [DeviceUsage]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DeviceUsageCopyWith<DeviceUsage> get copyWith =>
      _$DeviceUsageCopyWithImpl<DeviceUsage>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceUsage) {
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
    if (!equalsDeepWithNull(
      status,
      o.status,
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
      patient,
      o.patient,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      derivedFrom,
      o.derivedFrom,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      context,
      o.context,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      timingX,
      o.timingX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      dateAsserted,
      o.dateAsserted,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      usageStatus,
      o.usageStatus,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      usageReason,
      o.usageReason,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      adherence,
      o.adherence,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      informationSource,
      o.informationSource,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      device,
      o.device,
    )) {
      return false;
    }
    if (!listEquals<CodeableReference>(
      reason,
      o.reason,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      bodySite,
      o.bodySite,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    return true;
  }
}

/// [DeviceUsageAdherence]
/// This indicates how or if the device is being used.
class DeviceUsageAdherence extends BackboneElement {
  /// Primary constructor for
  /// [DeviceUsageAdherence]

  const DeviceUsageAdherence({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    required this.reason,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceUsageAdherence.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceUsageAdherence(
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
      )!,
      reason: (json['reason'] as List<dynamic>)
          .map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DeviceUsageAdherence]
  /// from a [String] or [YamlMap] object
  factory DeviceUsageAdherence.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceUsageAdherence.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceUsageAdherence.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceUsageAdherence '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceUsageAdherence]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceUsageAdherence.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceUsageAdherence.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceUsageAdherence';

  /// [code]
  /// Type of adherence.
  final CodeableConcept code;

  /// [reason]
  /// Reason for adherence type.
  final List<CodeableConcept> reason;
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
      'reason',
      reason,
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
      'reason',
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
        fields.add(code);
      case 'reason':
        fields.addAll(reason);
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
  DeviceUsageAdherence clone() => copyWith();

  /// Copy function for [DeviceUsageAdherence]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DeviceUsageAdherenceCopyWith<DeviceUsageAdherence> get copyWith =>
      _$DeviceUsageAdherenceCopyWithImpl<DeviceUsageAdherence>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceUsageAdherence) {
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
    if (!listEquals<CodeableConcept>(
      reason,
      o.reason,
    )) {
      return false;
    }
    return true;
  }
}
