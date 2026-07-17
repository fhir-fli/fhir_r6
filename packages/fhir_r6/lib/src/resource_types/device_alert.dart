import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'device_alert.g.dart';

/// [DeviceAlert]
/// Describes a noteworthy condition or occurrence determined to exist by a
/// device.
class DeviceAlert extends DomainResource {
  /// Primary constructor for
  /// [DeviceAlert]

  const DeviceAlert({
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
    this.type,
    this.priority,
    required this.subject,
    this.source,
    required this.condition,
    this.derivedFrom,
    this.label,
    this.signal,
  }) : super(
          resourceType: R6ResourceType.DeviceAlert,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceAlert.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceAlert(
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
      status: JsonParser.parsePrimitive<DeviceAlertStatusCodes>(
        json,
        'status',
        DeviceAlertStatusCodes.fromJson,
      )!,
      type: JsonParser.parsePrimitive<DeviceAlertTypeCodes>(
        json,
        'type',
        DeviceAlertTypeCodes.fromJson,
      ),
      priority: JsonParser.parsePrimitive<DeviceAlertPriorityCodes>(
        json,
        'priority',
        DeviceAlertPriorityCodes.fromJson,
      ),
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
      )!,
      source: JsonParser.parseObject<Reference>(
        json,
        'source',
        Reference.fromJson,
      ),
      condition: JsonParser.parseObject<DeviceAlertCondition>(
        json,
        'condition',
        DeviceAlertCondition.fromJson,
      )!,
      derivedFrom: (json['derivedFrom'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      label: JsonParser.parsePrimitive<FhirString>(
        json,
        'label',
        FhirString.fromJson,
      ),
      signal: (json['signal'] as List<dynamic>?)
          ?.map<DeviceAlertSignal>(
            (v) => DeviceAlertSignal.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DeviceAlert]
  /// from a [String] or [YamlMap] object
  factory DeviceAlert.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceAlert.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceAlert.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceAlert '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceAlert]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceAlert.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceAlert.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceAlert';

  /// [identifier]
  /// Instance identifiers assigned to a device, by the device or gateway
  /// software, manufacturers, other organizations or owners. For example,
  /// handle ID.
  final List<Identifier>? identifier;

  /// [status]
  /// in-progress | completed | entered-in-error.
  final DeviceAlertStatusCodes status;

  /// [type]
  /// physiological | technical.
  final DeviceAlertTypeCodes? type;

  /// [priority]
  /// The alert priority is usually reported by the source. A priority of
  /// `info` may indicate that the alert is "for information only" and not
  /// urgent action is required. The element may be omitted if the priority
  /// is unknown.
  final DeviceAlertPriorityCodes? priority;

  /// [subject]
  /// The who or what the alert is about.
  final Reference subject;

  /// [source]
  /// A top-level or component Device (such as a MDS, VMD, or Channel) that
  /// detected the alert condition; or, within such a Device, the specific
  /// DeviceMetric (e.g. a heart rate reading) that was in an alert
  /// condition.
  final Reference? source;

  /// [condition]
  /// The condition, event, or state being reported.
  final DeviceAlertCondition condition;

  /// [derivedFrom]
  /// The value causing the alert condition.
  final List<Reference>? derivedFrom;

  /// [label]
  /// The label may combine information from the alert code, priority, the
  /// measurement type, measurement value, body sites and other sources,
  /// e.g., "HR > 180".
  final FhirString? label;

  /// [signal]
  /// Annunciation or notification of the alert condition.
  final List<DeviceAlertSignal>? signal;
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
      'type',
      type,
    );
    addField(
      'priority',
      priority,
    );
    addField(
      'subject',
      subject,
    );
    addField(
      'source',
      source,
    );
    addField(
      'condition',
      condition,
    );
    addField(
      'derivedFrom',
      derivedFrom,
    );
    addField(
      'label',
      label,
    );
    addField(
      'signal',
      signal,
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
      'type',
      'priority',
      'subject',
      'source',
      'condition',
      'derivedFrom',
      'label',
      'signal',
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'priority':
        if (priority != null) {
          fields.add(priority!);
        }
      case 'subject':
        fields.add(subject);
      case 'source':
        if (source != null) {
          fields.add(source!);
        }
      case 'condition':
        fields.add(condition);
      case 'derivedFrom':
        if (derivedFrom != null) {
          fields.addAll(derivedFrom!);
        }
      case 'label':
        if (label != null) {
          fields.add(label!);
        }
      case 'signal':
        if (signal != null) {
          fields.addAll(signal!);
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
  DeviceAlert clone() => copyWith();

  /// Copy function for [DeviceAlert]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DeviceAlertCopyWith<DeviceAlert> get copyWith =>
      _$DeviceAlertCopyWithImpl<DeviceAlert>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceAlert) {
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
      status,
      o.status,
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
      priority,
      o.priority,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      subject,
      o.subject,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      source,
      o.source,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      condition,
      o.condition,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Reference>(
      derivedFrom,
      o.derivedFrom,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      label,
      o.label,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<DeviceAlertSignal>(
      signal,
      o.signal,
    )) {
      return false;
    }
    return true;
  }
}

/// [DeviceAlertCondition]
/// The condition, event, or state being reported.
class DeviceAlertCondition extends BackboneElement {
  /// Primary constructor for
  /// [DeviceAlertCondition]

  const DeviceAlertCondition({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.acknowledged,
    required this.presence,
    this.timing,
    this.limit,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceAlertCondition.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceAlertCondition(
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
      acknowledged: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'acknowledged',
        FhirBoolean.fromJson,
      ),
      presence: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'presence',
        FhirBoolean.fromJson,
      )!,
      timing: JsonParser.parseObject<Period>(
        json,
        'timing',
        Period.fromJson,
      ),
      limit: JsonParser.parseObject<Range>(
        json,
        'limit',
        Range.fromJson,
      ),
    );
  }

  /// Deserialize [DeviceAlertCondition]
  /// from a [String] or [YamlMap] object
  factory DeviceAlertCondition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceAlertCondition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceAlertCondition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceAlertCondition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceAlertCondition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceAlertCondition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceAlertCondition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceAlertCondition';

  /// [code]
  /// The DeviceAlert.code indicates the specific condition that triggered
  /// the alert. It may correspond to a DeviceMetric.alert.code or
  /// Device.alert.code.
  final CodeableConcept code;

  /// [acknowledged]
  /// An indication of whether (true) or not (false) the alert condition has
  /// been acknowledged.
  final FhirBoolean? acknowledged;

  /// [presence]
  /// The alert condition is currently occurring.
  final FhirBoolean presence;

  /// [timing]
  /// An instantaneous condition is reported with the same start and end
  /// value. The end value is omitted if the condition is ongoing.
  final Period? timing;

  /// [limit]
  /// The limits beyond which a value was detected to cause the alert
  /// condition. The actual value is in DeviceAlert.derivedFrom.
  final Range? limit;
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
      'acknowledged',
      acknowledged,
    );
    addField(
      'presence',
      presence,
    );
    addField(
      'timing',
      timing,
    );
    addField(
      'limit',
      limit,
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
      'acknowledged',
      'presence',
      'timing',
      'limit',
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
      case 'acknowledged':
        if (acknowledged != null) {
          fields.add(acknowledged!);
        }
      case 'presence':
        fields.add(presence);
      case 'timing':
        if (timing != null) {
          fields.add(timing!);
        }
      case 'limit':
        if (limit != null) {
          fields.add(limit!);
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
  DeviceAlertCondition clone() => copyWith();

  /// Copy function for [DeviceAlertCondition]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DeviceAlertConditionCopyWith<DeviceAlertCondition> get copyWith =>
      _$DeviceAlertConditionCopyWithImpl<DeviceAlertCondition>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceAlertCondition) {
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
      code,
      o.code,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      acknowledged,
      o.acknowledged,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      presence,
      o.presence,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      timing,
      o.timing,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      limit,
      o.limit,
    )) {
      return false;
    }
    return true;
  }
}

/// [DeviceAlertSignal]
/// Annunciation or notification of the alert condition.
class DeviceAlertSignal extends BackboneElement {
  /// Primary constructor for
  /// [DeviceAlertSignal]

  const DeviceAlertSignal({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.activationState,
    this.presence,
    this.annunciator,
    this.manifestation,
    this.type,
    this.indication,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceAlertSignal.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceAlertSignal(
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
      activationState:
          JsonParser.parsePrimitive<DeviceAlertActivationStateCodes>(
        json,
        'activationState',
        DeviceAlertActivationStateCodes.fromJson,
      )!,
      presence: JsonParser.parsePrimitive<DeviceAlertPresenceCodes>(
        json,
        'presence',
        DeviceAlertPresenceCodes.fromJson,
      ),
      annunciator: JsonParser.parseObject<CodeableReference>(
        json,
        'annunciator',
        CodeableReference.fromJson,
      ),
      manifestation: JsonParser.parseObject<CodeableConcept>(
        json,
        'manifestation',
        CodeableConcept.fromJson,
      ),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      indication: JsonParser.parseObject<Period>(
        json,
        'indication',
        Period.fromJson,
      ),
    );
  }

  /// Deserialize [DeviceAlertSignal]
  /// from a [String] or [YamlMap] object
  factory DeviceAlertSignal.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceAlertSignal.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceAlertSignal.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceAlertSignal '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceAlertSignal]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceAlertSignal.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceAlertSignal.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceAlertSignal';

  /// [activationState]
  /// Paused indicates that annunciation has temporarily been disabled
  /// ("snooze").
  final DeviceAlertActivationStateCodes activationState;

  /// [presence]
  /// Indicates whether the signal is currently being annunciated. An on
  /// signal is currently being annunciated; a latched signal is currently
  /// being being annunciated although the alert condition has ended; an off
  /// signal is not currently being annunciated; and an acknowledged signal
  /// is not currently being annunciated because the user has acknowledged
  /// the signal.
  final DeviceAlertPresenceCodes? presence;

  /// [annunciator]
  /// Signalling by the source device is local; signalling elsewhere is
  /// considered remote. A reference to the "top level" signalling device may
  /// also be present.
  final CodeableReference? annunciator;

  /// [manifestation]
  /// How the signal is being annunciated.
  final CodeableConcept? manifestation;

  /// [type]
  /// Details of the signal manifestation, such as a 1 meter visual indicator
  /// or a 4 meter visual indicator.
  final List<CodeableConcept>? type;

  /// [indication]
  /// The period during which the signal was being annunciated. If there is
  /// no indicated period end, the annunciation is on-going.
  final Period? indication;
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
      'activationState',
      activationState,
    );
    addField(
      'presence',
      presence,
    );
    addField(
      'annunciator',
      annunciator,
    );
    addField(
      'manifestation',
      manifestation,
    );
    addField(
      'type',
      type,
    );
    addField(
      'indication',
      indication,
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
      'activationState',
      'presence',
      'annunciator',
      'manifestation',
      'type',
      'indication',
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
      case 'activationState':
        fields.add(activationState);
      case 'presence':
        if (presence != null) {
          fields.add(presence!);
        }
      case 'annunciator':
        if (annunciator != null) {
          fields.add(annunciator!);
        }
      case 'manifestation':
        if (manifestation != null) {
          fields.add(manifestation!);
        }
      case 'type':
        if (type != null) {
          fields.addAll(type!);
        }
      case 'indication':
        if (indication != null) {
          fields.add(indication!);
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
  DeviceAlertSignal clone() => copyWith();

  /// Copy function for [DeviceAlertSignal]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DeviceAlertSignalCopyWith<DeviceAlertSignal> get copyWith =>
      _$DeviceAlertSignalCopyWithImpl<DeviceAlertSignal>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceAlertSignal) {
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
      activationState,
      o.activationState,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      presence,
      o.presence,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      annunciator,
      o.annunciator,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      manifestation,
      o.manifestation,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      type,
      o.type,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      indication,
      o.indication,
    )) {
      return false;
    }
    return true;
  }
}
