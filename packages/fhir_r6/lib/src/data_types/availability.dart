import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'availability.g.dart';

/// [Availability]
/// Availability data for an {item}.
class Availability extends DataType
    implements
        ValueXParametersParameter,
        ValueXTaskInput,
        ValueXTaskOutput,
        ValueXTransportInput,
        ValueXTransportOutput,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  /// Primary constructor for
  /// [Availability]

  const Availability({
    super.id,
    super.extension_,
    this.availableTime,
    this.notAvailableTime,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Availability.fromJson(
    Map<String, dynamic> json,
  ) {
    return Availability(
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
      availableTime: (json['availableTime'] as List<dynamic>?)
          ?.map<AvailabilityAvailableTime>(
            (v) => AvailabilityAvailableTime.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      notAvailableTime: (json['notAvailableTime'] as List<dynamic>?)
          ?.map<AvailabilityNotAvailableTime>(
            (v) => AvailabilityNotAvailableTime.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [Availability]
  /// from a [String] or [YamlMap] object
  factory Availability.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Availability.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Availability.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Availability '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Availability]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Availability.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Availability.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Availability';

  /// [availableTime]
  /// Times the {item} is available.
  final List<AvailabilityAvailableTime>? availableTime;

  /// [notAvailableTime]
  /// Not available during this time due to provided reason.
  final List<AvailabilityNotAvailableTime>? notAvailableTime;
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
      'availableTime',
      availableTime,
    );
    addField(
      'notAvailableTime',
      notAvailableTime,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'availableTime',
      'notAvailableTime',
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
      case 'availableTime':
        if (availableTime != null) {
          fields.addAll(availableTime!);
        }
      case 'notAvailableTime':
        if (notAvailableTime != null) {
          fields.addAll(notAvailableTime!);
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
  Availability clone() => copyWith();

  /// Copy function for [Availability]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $AvailabilityCopyWith<Availability> get copyWith =>
      _$AvailabilityCopyWithImpl<Availability>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Availability) {
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
    if (!listEquals<AvailabilityAvailableTime>(
      availableTime,
      o.availableTime,
    )) {
      return false;
    }
    if (!listEquals<AvailabilityNotAvailableTime>(
      notAvailableTime,
      o.notAvailableTime,
    )) {
      return false;
    }
    return true;
  }
}

/// [AvailabilityAvailableTime]
/// Times the {item} is available.
class AvailabilityAvailableTime extends Element {
  /// Primary constructor for
  /// [AvailabilityAvailableTime]

  const AvailabilityAvailableTime({
    super.id,
    super.extension_,
    this.daysOfWeek,
    this.allDay,
    this.availableStartTime,
    this.availableEndTime,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AvailabilityAvailableTime.fromJson(
    Map<String, dynamic> json,
  ) {
    return AvailabilityAvailableTime(
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
      daysOfWeek: JsonParser.parsePrimitiveList<DaysOfWeek>(
        json,
        'daysOfWeek',
        DaysOfWeek.fromJson,
      ),
      allDay: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'allDay',
        FhirBoolean.fromJson,
      ),
      availableStartTime: JsonParser.parsePrimitive<FhirTime>(
        json,
        'availableStartTime',
        FhirTime.fromJson,
      ),
      availableEndTime: JsonParser.parsePrimitive<FhirTime>(
        json,
        'availableEndTime',
        FhirTime.fromJson,
      ),
    );
  }

  /// Deserialize [AvailabilityAvailableTime]
  /// from a [String] or [YamlMap] object
  factory AvailabilityAvailableTime.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AvailabilityAvailableTime.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AvailabilityAvailableTime.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AvailabilityAvailableTime '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AvailabilityAvailableTime]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AvailabilityAvailableTime.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AvailabilityAvailableTime.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AvailabilityAvailableTime';

  /// [daysOfWeek]
  /// mon | tue | wed | thu | fri | sat | sun.
  final List<DaysOfWeek>? daysOfWeek;

  /// [allDay]
  /// Always available? i.e. 24 hour service.
  final FhirBoolean? allDay;

  /// [availableStartTime]
  /// Opening time of day (ignored if allDay = true).
  final FhirTime? availableStartTime;

  /// [availableEndTime]
  /// Closing time of day (ignored if allDay = true).
  final FhirTime? availableEndTime;
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
      'daysOfWeek',
      daysOfWeek,
    );
    addField(
      'allDay',
      allDay,
    );
    addField(
      'availableStartTime',
      availableStartTime,
    );
    addField(
      'availableEndTime',
      availableEndTime,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'daysOfWeek',
      'allDay',
      'availableStartTime',
      'availableEndTime',
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
      case 'daysOfWeek':
        if (daysOfWeek != null) {
          fields.addAll(daysOfWeek!);
        }
      case 'allDay':
        if (allDay != null) {
          fields.add(allDay!);
        }
      case 'availableStartTime':
        if (availableStartTime != null) {
          fields.add(availableStartTime!);
        }
      case 'availableEndTime':
        if (availableEndTime != null) {
          fields.add(availableEndTime!);
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
  AvailabilityAvailableTime clone() => copyWith();

  /// Copy function for [AvailabilityAvailableTime]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $AvailabilityAvailableTimeCopyWith<AvailabilityAvailableTime> get copyWith =>
      _$AvailabilityAvailableTimeCopyWithImpl<AvailabilityAvailableTime>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AvailabilityAvailableTime) {
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
    if (!listEquals<DaysOfWeek>(
      daysOfWeek,
      o.daysOfWeek,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      allDay,
      o.allDay,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      availableStartTime,
      o.availableStartTime,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      availableEndTime,
      o.availableEndTime,
    )) {
      return false;
    }
    return true;
  }
}

/// [AvailabilityNotAvailableTime]
/// Not available during this time due to provided reason.
class AvailabilityNotAvailableTime extends Element {
  /// Primary constructor for
  /// [AvailabilityNotAvailableTime]

  const AvailabilityNotAvailableTime({
    super.id,
    super.extension_,
    this.description,
    this.during,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AvailabilityNotAvailableTime.fromJson(
    Map<String, dynamic> json,
  ) {
    return AvailabilityNotAvailableTime(
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
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
      ),
      during: JsonParser.parseObject<Period>(
        json,
        'during',
        Period.fromJson,
      ),
    );
  }

  /// Deserialize [AvailabilityNotAvailableTime]
  /// from a [String] or [YamlMap] object
  factory AvailabilityNotAvailableTime.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AvailabilityNotAvailableTime.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AvailabilityNotAvailableTime.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AvailabilityNotAvailableTime '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AvailabilityNotAvailableTime]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AvailabilityNotAvailableTime.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AvailabilityNotAvailableTime.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AvailabilityNotAvailableTime';

  /// [description]
  /// Reason presented to the user explaining why time not available.
  final FhirString? description;

  /// [during]
  /// Service not available during this period.
  final Period? during;
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
      'description',
      description,
    );
    addField(
      'during',
      during,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'description',
      'during',
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
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'during':
        if (during != null) {
          fields.add(during!);
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
  AvailabilityNotAvailableTime clone() => copyWith();

  /// Copy function for [AvailabilityNotAvailableTime]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $AvailabilityNotAvailableTimeCopyWith<AvailabilityNotAvailableTime>
      get copyWith => _$AvailabilityNotAvailableTimeCopyWithImpl<
              AvailabilityNotAvailableTime>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AvailabilityNotAvailableTime) {
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
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      during,
      o.during,
    )) {
      return false;
    }
    return true;
  }
}
