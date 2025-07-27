import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'device_metric.g.dart';

/// [DeviceMetric]
/// Describes a measurement, calculation or setting capability of a device.
class DeviceMetric extends DomainResource {
  /// Primary constructor for
  /// [DeviceMetric]

  const DeviceMetric({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.type,
    this.unit,
    required this.device,
    this.operationalStatus,
    this.color,
    required this.category,
    this.measurementFrequency,
    this.calibration,
  }) : super(
          resourceType: R5ResourceType.DeviceMetric,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceMetric.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceMetric(
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
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      )!,
      unit: JsonParser.parseObject<CodeableConcept>(
        json,
        'unit',
        CodeableConcept.fromJson,
      ),
      device: JsonParser.parseObject<Reference>(
        json,
        'device',
        Reference.fromJson,
      )!,
      operationalStatus:
          JsonParser.parsePrimitive<DeviceMetricOperationalStatus>(
        json,
        'operationalStatus',
        DeviceMetricOperationalStatus.fromJson,
      ),
      color: JsonParser.parsePrimitive<ColorCodesOrRGB>(
        json,
        'color',
        ColorCodesOrRGB.fromJson,
      ),
      category: JsonParser.parsePrimitive<DeviceMetricCategory>(
        json,
        'category',
        DeviceMetricCategory.fromJson,
      )!,
      measurementFrequency: JsonParser.parseObject<Quantity>(
        json,
        'measurementFrequency',
        Quantity.fromJson,
      ),
      calibration: (json['calibration'] as List<dynamic>?)
          ?.map<DeviceMetricCalibration>(
            (v) => DeviceMetricCalibration.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DeviceMetric]
  /// from a [String] or [YamlMap] object
  factory DeviceMetric.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceMetric.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceMetric.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceMetric '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceMetric]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceMetric.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceMetric.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceMetric';

  /// [identifier]
  /// Instance identifiers assigned to a device, by the device or gateway
  /// software, manufacturers, other organizations or owners. For example,
  /// handle ID.
  final List<Identifier>? identifier;

  /// [type]
  /// Describes the type of the metric. For example: Heart Rate, PEEP
  /// Setting, etc.
  final CodeableConcept type;

  /// [unit]
  /// Describes the unit that an observed value determined for this metric
  /// will have. For example: Percent, Seconds, etc.
  final CodeableConcept? unit;

  /// [device]
  /// Describes the link to the Device. This is also known as a channel
  /// device.
  final Reference device;

  /// [operationalStatus]
  /// Indicates current operational state of the device. For example: On,
  /// Off, Standby, etc.
  final DeviceMetricOperationalStatus? operationalStatus;

  /// [color]
  /// The preferred color associated with the metric (e.g., display color).
  /// This is often used to aid clinicians to track and identify parameter
  /// types by color. In practice, consider a Patient Monitor that has ECG/HR
  /// and Pleth; the metrics are displayed in different characteristic
  /// colors, such as HR in blue, BP in green, and PR and SpO2 in magenta.
  final ColorCodesOrRGB? color;

  /// [category]
  /// Indicates the category of the observation generation process. A
  /// DeviceMetric can be for example a setting, measurement, or calculation.
  final DeviceMetricCategory category;

  /// [measurementFrequency]
  /// The frequency at which the metric is taken or recorded. Devices measure
  /// metrics at a wide range of frequencies; for example, an ECG might
  /// sample measurements in the millisecond range, while an NIBP might
  /// trigger only once an hour. Less often, the measurementFrequency may be
  /// based on a unit other than time, such as distance (e.g. for a measuring
  /// wheel). The update period may be different than the measurement
  /// frequency, if the device does not update the published observed value
  /// with the same frequency as it was measured.
  final Quantity? measurementFrequency;

  /// [calibration]
  /// Describes the calibrations that have been performed or that are
  /// required to be performed.
  final List<DeviceMetricCalibration>? calibration;
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
      'type',
      type,
    );
    addField(
      'unit',
      unit,
    );
    addField(
      'device',
      device,
    );
    addField(
      'operationalStatus',
      operationalStatus,
    );
    addField(
      'color',
      color,
    );
    addField(
      'category',
      category,
    );
    addField(
      'measurementFrequency',
      measurementFrequency,
    );
    addField(
      'calibration',
      calibration,
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
      'type',
      'unit',
      'device',
      'operationalStatus',
      'color',
      'category',
      'measurementFrequency',
      'calibration',
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
      case 'type':
        fields.add(type);
      case 'unit':
        if (unit != null) {
          fields.add(unit!);
        }
      case 'device':
        fields.add(device);
      case 'operationalStatus':
        if (operationalStatus != null) {
          fields.add(operationalStatus!);
        }
      case 'color':
        if (color != null) {
          fields.add(color!);
        }
      case 'category':
        fields.add(category);
      case 'measurementFrequency':
        if (measurementFrequency != null) {
          fields.add(measurementFrequency!);
        }
      case 'calibration':
        if (calibration != null) {
          fields.addAll(calibration!);
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
  DeviceMetric clone() => copyWith();

  /// Copy function for [DeviceMetric]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DeviceMetricCopyWith<DeviceMetric> get copyWith =>
      _$DeviceMetricCopyWithImpl<DeviceMetric>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceMetric) {
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
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      unit,
      o.unit,
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
      operationalStatus,
      o.operationalStatus,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      color,
      o.color,
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
      measurementFrequency,
      o.measurementFrequency,
    )) {
      return false;
    }
    if (!listEquals<DeviceMetricCalibration>(
      calibration,
      o.calibration,
    )) {
      return false;
    }
    return true;
  }
}

/// [DeviceMetricCalibration]
/// Describes the calibrations that have been performed or that are
/// required to be performed.
class DeviceMetricCalibration extends BackboneElement {
  /// Primary constructor for
  /// [DeviceMetricCalibration]

  const DeviceMetricCalibration({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.state,
    this.time,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceMetricCalibration.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceMetricCalibration(
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
      type: JsonParser.parsePrimitive<DeviceMetricCalibrationType>(
        json,
        'type',
        DeviceMetricCalibrationType.fromJson,
      ),
      state: JsonParser.parsePrimitive<DeviceMetricCalibrationState>(
        json,
        'state',
        DeviceMetricCalibrationState.fromJson,
      ),
      time: JsonParser.parsePrimitive<FhirInstant>(
        json,
        'time',
        FhirInstant.fromJson,
      ),
    );
  }

  /// Deserialize [DeviceMetricCalibration]
  /// from a [String] or [YamlMap] object
  factory DeviceMetricCalibration.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceMetricCalibration.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceMetricCalibration.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceMetricCalibration '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceMetricCalibration]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceMetricCalibration.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceMetricCalibration.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceMetricCalibration';

  /// [type]
  /// Describes the type of the calibration method.
  final DeviceMetricCalibrationType? type;

  /// [state]
  /// Describes the state of the calibration.
  final DeviceMetricCalibrationState? state;

  /// [time]
  /// Describes the time last calibration has been performed.
  final FhirInstant? time;
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
      'state',
      state,
    );
    addField(
      'time',
      time,
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
      'state',
      'time',
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
      case 'state':
        if (state != null) {
          fields.add(state!);
        }
      case 'time':
        if (time != null) {
          fields.add(time!);
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
  DeviceMetricCalibration clone() => copyWith();

  /// Copy function for [DeviceMetricCalibration]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DeviceMetricCalibrationCopyWith<DeviceMetricCalibration> get copyWith =>
      _$DeviceMetricCalibrationCopyWithImpl<DeviceMetricCalibration>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceMetricCalibration) {
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
      state,
      o.state,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      time,
      o.time,
    )) {
      return false;
    }
    return true;
  }
}
