import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'sampled_data.g.dart';

/// [SampledData]
/// A series of measurements taken by a device, with upper and lower
/// limits. There may be more than one dimension in the data.
class SampledData extends DataType
    implements
        ValueXObservation,
        ValueXObservationComponent,
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
  /// [SampledData]

  const SampledData({
    super.id,
    super.extension_,
    required this.origin,
    this.interval,
    required this.intervalUnit,
    this.factor,
    this.lowerLimit,
    this.upperLimit,
    required this.dimensions,
    this.codeMap,
    this.offsets,
    this.data,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SampledData.fromJson(
    Map<String, dynamic> json,
  ) {
    return SampledData(
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
      origin: JsonParser.parseObject<Quantity>(
        json,
        'origin',
        Quantity.fromJson,
      )!,
      interval: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'interval',
        FhirDecimal.fromJson,
      ),
      intervalUnit: JsonParser.parsePrimitive<FhirCode>(
        json,
        'intervalUnit',
        FhirCode.fromJson,
      )!,
      factor: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'factor',
        FhirDecimal.fromJson,
      ),
      lowerLimit: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'lowerLimit',
        FhirDecimal.fromJson,
      ),
      upperLimit: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'upperLimit',
        FhirDecimal.fromJson,
      ),
      dimensions: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'dimensions',
        FhirPositiveInt.fromJson,
      )!,
      codeMap: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'codeMap',
        FhirCanonical.fromJson,
      ),
      offsets: JsonParser.parsePrimitive<FhirString>(
        json,
        'offsets',
        FhirString.fromJson,
      ),
      data: JsonParser.parsePrimitive<FhirString>(
        json,
        'data',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [SampledData]
  /// from a [String] or [YamlMap] object
  factory SampledData.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SampledData.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SampledData.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SampledData '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SampledData]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SampledData.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SampledData.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SampledData';

  /// [origin]
  /// The base quantity that a measured value of zero represents. In
  /// addition, this provides the units of the entire measurement series.
  final Quantity origin;

  /// [interval]
  /// Amount of intervalUnits between samples, e.g. milliseconds for
  /// time-based sampling.
  final FhirDecimal? interval;

  /// [intervalUnit]
  /// The measurement unit in which the sample interval is expressed.
  final FhirCode intervalUnit;

  /// [factor]
  /// A correction factor that is applied to the sampled data points before
  /// they are added to the origin.
  final FhirDecimal? factor;

  /// [lowerLimit]
  /// The lower limit of detection of the measured points. This is needed if
  /// any of the data points have the value "L" (lower than detection limit).
  final FhirDecimal? lowerLimit;

  /// [upperLimit]
  /// The upper limit of detection of the measured points. This is needed if
  /// any of the data points have the value "U" (higher than detection
  /// limit).
  final FhirDecimal? upperLimit;

  /// [dimensions]
  /// The number of sample points at each time point. If this value is
  /// greater than one, then the dimensions will be interlaced - all the
  /// sample points for a point in time will be recorded at once.
  final FhirPositiveInt dimensions;

  /// [codeMap]
  /// Reference to ConceptMap that defines the codes used in the data.
  final FhirCanonical? codeMap;

  /// [offsets]
  /// A series of data points which are decimal values separated by a single
  /// space (character u20). The units in which the offsets are expressed are
  /// found in intervalUnit. The absolute point at which the measurements
  /// begin SHALL be conveyed outside the scope of this datatype, e.g.
  /// Observation.effectiveDateTime for a timing offset.
  final FhirString? offsets;

  /// [data]
  /// A series of data points which are decimal values or codes separated by
  /// a single space (character u20). The special codes "E" (error), "L"
  /// (below detection limit) and "U" (above detection limit) are also
  /// defined for used in place of decimal values.
  final FhirString? data;
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
      'origin',
      origin,
    );
    addField(
      'interval',
      interval,
    );
    addField(
      'intervalUnit',
      intervalUnit,
    );
    addField(
      'factor',
      factor,
    );
    addField(
      'lowerLimit',
      lowerLimit,
    );
    addField(
      'upperLimit',
      upperLimit,
    );
    addField(
      'dimensions',
      dimensions,
    );
    addField(
      'codeMap',
      codeMap,
    );
    addField(
      'offsets',
      offsets,
    );
    addField(
      'data',
      data,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'origin',
      'interval',
      'intervalUnit',
      'factor',
      'lowerLimit',
      'upperLimit',
      'dimensions',
      'codeMap',
      'offsets',
      'data',
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
      case 'origin':
        fields.add(origin);
      case 'interval':
        if (interval != null) {
          fields.add(interval!);
        }
      case 'intervalUnit':
        fields.add(intervalUnit);
      case 'factor':
        if (factor != null) {
          fields.add(factor!);
        }
      case 'lowerLimit':
        if (lowerLimit != null) {
          fields.add(lowerLimit!);
        }
      case 'upperLimit':
        if (upperLimit != null) {
          fields.add(upperLimit!);
        }
      case 'dimensions':
        fields.add(dimensions);
      case 'codeMap':
        if (codeMap != null) {
          fields.add(codeMap!);
        }
      case 'offsets':
        if (offsets != null) {
          fields.add(offsets!);
        }
      case 'data':
        if (data != null) {
          fields.add(data!);
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
  SampledData clone() => copyWith();

  /// Copy function for [SampledData]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SampledDataCopyWith<SampledData> get copyWith =>
      _$SampledDataCopyWithImpl<SampledData>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SampledData) {
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
      origin,
      o.origin,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      interval,
      o.interval,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      intervalUnit,
      o.intervalUnit,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      factor,
      o.factor,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      lowerLimit,
      o.lowerLimit,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      upperLimit,
      o.upperLimit,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      dimensions,
      o.dimensions,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      codeMap,
      o.codeMap,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      offsets,
      o.offsets,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      data,
      o.data,
    )) {
      return false;
    }
    return true;
  }
}
