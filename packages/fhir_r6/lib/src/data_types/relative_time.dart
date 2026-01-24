import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'relative_time.g.dart';

/// [RelativeTime]
/// RelativeTime is used to express a point in time or an interval of time
/// relative to an event defined in data types other than dateTime.
class RelativeTime extends DataType
    implements ValueXEvidenceVariableDefinitionModifier {
  /// Primary constructor for
  /// [RelativeTime]

  const RelativeTime({
    super.id,
    super.extension_,
    this.modifierExtension,
    this.contextReference,
    this.contextDefinition,
    this.contextPath,
    this.contextCode,
    OffsetXRelativeTime? offsetX,
    FhirDuration? offsetDuration,
    Range? offsetRange,
    this.text,
    super.disallowExtensions,
  }) : offsetX = offsetX ?? offsetDuration ?? offsetRange;

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RelativeTime.fromJson(
    Map<String, dynamic> json,
  ) {
    return RelativeTime(
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
      contextReference: JsonParser.parseObject<Reference>(
        json,
        'contextReference',
        Reference.fromJson,
      ),
      contextDefinition: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'contextDefinition',
        FhirCanonical.fromJson,
      ),
      contextPath: JsonParser.parsePrimitive<FhirString>(
        json,
        'contextPath',
        FhirString.fromJson,
      ),
      contextCode: JsonParser.parseObject<CodeableConcept>(
        json,
        'contextCode',
        CodeableConcept.fromJson,
      ),
      offsetX: JsonParser.parsePolymorphic<OffsetXRelativeTime>(
        json,
        {
          'offsetDuration': FhirDuration.fromJson,
          'offsetRange': Range.fromJson,
        },
      ),
      text: JsonParser.parsePrimitive<FhirString>(
        json,
        'text',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [RelativeTime]
  /// from a [String] or [YamlMap] object
  factory RelativeTime.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RelativeTime.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RelativeTime.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RelativeTime '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RelativeTime]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RelativeTime.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return RelativeTime.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'RelativeTime';

  /// [modifierExtension]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element and that modifies the understanding of
  /// the element in which it is contained and/or the understanding of the
  /// containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// managable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension. Applications processing a resource are
  /// required to check for modifier extensions.
  ///
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  final List<FhirExtension>? modifierExtension;

  /// [contextReference]
  /// The specific event occurrence or resource context used as a base point
  /// (reference point) in time. This establishes the context in which the
  /// 'path' is evaluated.
  final Reference? contextReference;

  /// [contextDefinition]
  /// The type of event used as a base point. Instances of this definition
  /// will establish the context for evaluating the path to determine the
  /// base time for the offset.
  final FhirCanonical? contextDefinition;

  /// [contextPath]
  /// Path to the element defining the point in time. Any valid FHIRPath
  /// expression.
  final FhirString? contextPath;

  /// [contextCode]
  /// Coded representation of the event used as a base point (reference
  /// point) in time.
  final CodeableConcept? contextCode;

  /// [offsetX]
  /// An offset or offset range before (negative values) or after (positive
  /// values) the event. Range is limited to time-valued quantities
  /// (Durations).
  final OffsetXRelativeTime? offsetX;

  /// Getter for [offsetDuration] as a FhirDuration
  FhirDuration? get offsetDuration => offsetX?.isAs<FhirDuration>();

  /// Getter for [offsetRange] as a Range
  Range? get offsetRange => offsetX?.isAs<Range>();

  /// [text]
  /// Free-text (human-readable) description.
  final FhirString? text;
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
      'contextReference',
      contextReference,
    );
    addField(
      'contextDefinition',
      contextDefinition,
    );
    addField(
      'contextPath',
      contextPath,
    );
    addField(
      'contextCode',
      contextCode,
    );
    if (offsetX != null) {
      final fhirType = offsetX!.fhirType;
      addField(
        'offset${fhirType.capitalize()}',
        offsetX,
      );
    }

    addField(
      'text',
      text,
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
      'contextReference',
      'contextDefinition',
      'contextPath',
      'contextCode',
      'offsetX',
      'text',
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
      case 'contextReference':
        if (contextReference != null) {
          fields.add(contextReference!);
        }
      case 'contextDefinition':
        if (contextDefinition != null) {
          fields.add(contextDefinition!);
        }
      case 'contextPath':
        if (contextPath != null) {
          fields.add(contextPath!);
        }
      case 'contextCode':
        if (contextCode != null) {
          fields.add(contextCode!);
        }
      case 'offset':
        if (offsetX != null) {
          fields.add(offsetX!);
        }
      case 'offsetX':
        if (offsetX != null) {
          fields.add(offsetX!);
        }
      case 'offsetDuration':
        if (offsetX is FhirDuration) {
          fields.add(offsetX!);
        }
      case 'offsetRange':
        if (offsetX is Range) {
          fields.add(offsetX!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
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
  RelativeTime clone() => copyWith();

  /// Copy function for [RelativeTime]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $RelativeTimeCopyWith<RelativeTime> get copyWith =>
      _$RelativeTimeCopyWithImpl<RelativeTime>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! RelativeTime) {
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
      contextReference,
      o.contextReference,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      contextDefinition,
      o.contextDefinition,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      contextPath,
      o.contextPath,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      contextCode,
      o.contextCode,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      offsetX,
      o.offsetX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    return true;
  }
}
