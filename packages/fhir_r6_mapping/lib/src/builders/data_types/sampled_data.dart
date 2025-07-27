import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show SampledData, yamlMapToJson, yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [SampledDataBuilder]
/// A series of measurements taken by a device, with upper and lower
/// limits. There may be more than one dimension in the data.
class SampledDataBuilder extends DataTypeBuilder
    implements
        ValueXObservationBuilder,
        ValueXObservationComponentBuilder,
        ValueXParametersParameterBuilder,
        ValueXTaskInputBuilder,
        ValueXTaskOutputBuilder,
        ValueXTransportInputBuilder,
        ValueXTransportOutputBuilder,
        DefaultValueXElementDefinitionBuilder,
        FixedXElementDefinitionBuilder,
        PatternXElementDefinitionBuilder,
        ValueXElementDefinitionExampleBuilder,
        ValueXExtensionBuilder {
  /// Primary constructor for
  /// [SampledDataBuilder]

  SampledDataBuilder({
    super.id,
    super.extension_,
    this.origin,
    this.interval,
    this.intervalUnit,
    this.factor,
    this.lowerLimit,
    this.upperLimit,
    this.dimensions,
    this.codeMap,
    this.offsets,
    this.data,
    super.disallowExtensions,
    super.objectPath = 'SampledDataBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SampledDataBuilder.empty() => SampledDataBuilder(
        origin: QuantityBuilder.empty(),
        intervalUnit: FhirCodeBuilder.empty(),
        dimensions: FhirPositiveIntBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SampledDataBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'SampledData';
    return SampledDataBuilder(
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
      origin: JsonParser.parseObject<QuantityBuilder>(
        json,
        'origin',
        QuantityBuilder.fromJson,
        '$objectPath.origin',
      ),
      interval: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'interval',
        FhirDecimalBuilder.fromJson,
        '$objectPath.interval',
      ),
      intervalUnit: JsonParser.parsePrimitive<FhirCodeBuilder>(
        json,
        'intervalUnit',
        FhirCodeBuilder.fromJson,
        '$objectPath.intervalUnit',
      ),
      factor: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'factor',
        FhirDecimalBuilder.fromJson,
        '$objectPath.factor',
      ),
      lowerLimit: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'lowerLimit',
        FhirDecimalBuilder.fromJson,
        '$objectPath.lowerLimit',
      ),
      upperLimit: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'upperLimit',
        FhirDecimalBuilder.fromJson,
        '$objectPath.upperLimit',
      ),
      dimensions: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'dimensions',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.dimensions',
      ),
      codeMap: JsonParser.parsePrimitive<FhirCanonicalBuilder>(
        json,
        'codeMap',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.codeMap',
      ),
      offsets: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'offsets',
        FhirStringBuilder.fromJson,
        '$objectPath.offsets',
      ),
      data: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'data',
        FhirStringBuilder.fromJson,
        '$objectPath.data',
      ),
    );
  }

  /// Deserialize [SampledDataBuilder]
  /// from a [String] or [YamlMap] object
  factory SampledDataBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SampledDataBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SampledDataBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SampledDataBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SampledDataBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SampledDataBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SampledDataBuilder.fromJson(json);
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
  QuantityBuilder? origin;

  /// [interval]
  /// Amount of intervalUnits between samples, e.g. milliseconds for
  /// time-based sampling.
  FhirDecimalBuilder? interval;

  /// [intervalUnit]
  /// The measurement unit in which the sample interval is expressed.
  FhirCodeBuilder? intervalUnit;

  /// [factor]
  /// A correction factor that is applied to the sampled data points before
  /// they are added to the origin.
  FhirDecimalBuilder? factor;

  /// [lowerLimit]
  /// The lower limit of detection of the measured points. This is needed if
  /// any of the data points have the value "L" (lower than detection limit).
  FhirDecimalBuilder? lowerLimit;

  /// [upperLimit]
  /// The upper limit of detection of the measured points. This is needed if
  /// any of the data points have the value "U" (higher than detection
  /// limit).
  FhirDecimalBuilder? upperLimit;

  /// [dimensions]
  /// The number of sample points at each time point. If this value is
  /// greater than one, then the dimensions will be interlaced - all the
  /// sample points for a point in time will be recorded at once.
  FhirPositiveIntBuilder? dimensions;

  /// [codeMap]
  /// Reference to ConceptMap that defines the codes used in the data.
  FhirCanonicalBuilder? codeMap;

  /// [offsets]
  /// A series of data points which are decimal values separated by a single
  /// space (character u20). The units in which the offsets are expressed are
  /// found in intervalUnit. The absolute point at which the measurements
  /// begin SHALL be conveyed outside the scope of this datatype, e.g.
  /// Observation.effectiveDateTime for a timing offset.
  FhirStringBuilder? offsets;

  /// [data]
  /// A series of data points which are decimal values or codes separated by
  /// a single space (character u20). The special codes "E" (error), "L"
  /// (below detection limit) and "U" (above detection limit) are also
  /// defined for used in place of decimal values.
  FhirStringBuilder? data;

  /// Converts a [SampledDataBuilder]
  /// to [SampledData]
  @override
  SampledData build() => SampledData.fromJson(toJson());

  /// Converts a [SampledDataBuilder]
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
    addField('origin', origin);
    addField('interval', interval);
    addField('intervalUnit', intervalUnit);
    addField('factor', factor);
    addField('lowerLimit', lowerLimit);
    addField('upperLimit', upperLimit);
    addField('dimensions', dimensions);
    addField('codeMap', codeMap);
    addField('offsets', offsets);
    addField('data', data);
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
      case 'origin':
        if (origin != null) {
          fields.add(origin!);
        }
      case 'interval':
        if (interval != null) {
          fields.add(interval!);
        }
      case 'intervalUnit':
        if (intervalUnit != null) {
          fields.add(intervalUnit!);
        }
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
        if (dimensions != null) {
          fields.add(dimensions!);
        }
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
      case 'origin':
        {
          if (child is QuantityBuilder) {
            origin = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'interval':
        {
          if (child is FhirDecimalBuilder) {
            interval = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirDecimalBuilder.tryParse(numValue);
                if (converted != null) {
                  interval = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'intervalUnit':
        {
          if (child is FhirCodeBuilder) {
            intervalUnit = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCodeBuilder.tryParse(stringValue);
              if (converted != null) {
                intervalUnit = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'factor':
        {
          if (child is FhirDecimalBuilder) {
            factor = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirDecimalBuilder.tryParse(numValue);
                if (converted != null) {
                  factor = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'lowerLimit':
        {
          if (child is FhirDecimalBuilder) {
            lowerLimit = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirDecimalBuilder.tryParse(numValue);
                if (converted != null) {
                  lowerLimit = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'upperLimit':
        {
          if (child is FhirDecimalBuilder) {
            upperLimit = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirDecimalBuilder.tryParse(numValue);
                if (converted != null) {
                  upperLimit = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'dimensions':
        {
          if (child is FhirPositiveIntBuilder) {
            dimensions = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirPositiveIntBuilder.tryParse(numValue);
                if (converted != null) {
                  dimensions = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'codeMap':
        {
          if (child is FhirCanonicalBuilder) {
            codeMap = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                codeMap = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'offsets':
        {
          if (child is FhirStringBuilder) {
            offsets = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                offsets = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'data':
        {
          if (child is FhirStringBuilder) {
            data = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                data = converted;
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
      case 'origin':
        return ['QuantityBuilder'];
      case 'interval':
        return ['FhirDecimalBuilder'];
      case 'intervalUnit':
        return ['FhirCodeBuilder'];
      case 'factor':
        return ['FhirDecimalBuilder'];
      case 'lowerLimit':
        return ['FhirDecimalBuilder'];
      case 'upperLimit':
        return ['FhirDecimalBuilder'];
      case 'dimensions':
        return ['FhirPositiveIntBuilder'];
      case 'codeMap':
        return ['FhirCanonicalBuilder'];
      case 'offsets':
        return ['FhirStringBuilder'];
      case 'data':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SampledDataBuilder]
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
      case 'origin':
        {
          origin = QuantityBuilder.empty();
          return;
        }
      case 'interval':
        {
          interval = FhirDecimalBuilder.empty();
          return;
        }
      case 'intervalUnit':
        {
          intervalUnit = FhirCodeBuilder.empty();
          return;
        }
      case 'factor':
        {
          factor = FhirDecimalBuilder.empty();
          return;
        }
      case 'lowerLimit':
        {
          lowerLimit = FhirDecimalBuilder.empty();
          return;
        }
      case 'upperLimit':
        {
          upperLimit = FhirDecimalBuilder.empty();
          return;
        }
      case 'dimensions':
        {
          dimensions = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'codeMap':
        {
          codeMap = FhirCanonicalBuilder.empty();
          return;
        }
      case 'offsets':
        {
          offsets = FhirStringBuilder.empty();
          return;
        }
      case 'data':
        {
          data = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SampledDataBuilder clone() => throw UnimplementedError();
  @override
  SampledDataBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    QuantityBuilder? origin,
    FhirDecimalBuilder? interval,
    FhirCodeBuilder? intervalUnit,
    FhirDecimalBuilder? factor,
    FhirDecimalBuilder? lowerLimit,
    FhirDecimalBuilder? upperLimit,
    FhirPositiveIntBuilder? dimensions,
    FhirCanonicalBuilder? codeMap,
    FhirStringBuilder? offsets,
    FhirStringBuilder? data,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = SampledDataBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      origin: origin ?? this.origin,
      interval: interval ?? this.interval,
      intervalUnit: intervalUnit ?? this.intervalUnit,
      factor: factor ?? this.factor,
      lowerLimit: lowerLimit ?? this.lowerLimit,
      upperLimit: upperLimit ?? this.upperLimit,
      dimensions: dimensions ?? this.dimensions,
      codeMap: codeMap ?? this.codeMap,
      offsets: offsets ?? this.offsets,
      data: data ?? this.data,
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
    if (o is! SampledDataBuilder) {
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
