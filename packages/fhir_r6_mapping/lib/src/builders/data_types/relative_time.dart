import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart'
    show RelativeTime, yamlMapToJson, yamlToJson;
import 'package:fhir_r6_mapping/fhir_r6_mapping.dart';
import 'package:yaml/yaml.dart';

/// [RelativeTimeBuilder]
/// RelativeTime is used to express a point in time or an interval of time
/// relative to an event defined in data types other than dateTime.
class RelativeTimeBuilder extends DataTypeBuilder
    implements ValueXEvidenceVariableDefinitionModifierBuilder {
  /// Primary constructor for
  /// [RelativeTimeBuilder]

  RelativeTimeBuilder({
    super.id,
    super.extension_,
    this.modifierExtension,
    this.contextReference,
    this.contextDefinition,
    this.contextPath,
    this.contextCode,
    OffsetXRelativeTimeBuilder? offsetX,
    FhirDurationBuilder? offsetDuration,
    RangeBuilder? offsetRange,
    this.text,
    super.disallowExtensions,
    super.objectPath = 'RelativeTimeBuilder',
  }) : offsetX = offsetX ?? offsetDuration ?? offsetRange;

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory RelativeTimeBuilder.empty() => RelativeTimeBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RelativeTimeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'RelativeTime';
    return RelativeTimeBuilder(
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
      contextReference: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'contextReference',
        ReferenceBuilder.fromJson,
        '$objectPath.contextReference',
      ),
      contextDefinition: JsonParser.parsePrimitive<FhirCanonicalBuilder>(
        json,
        'contextDefinition',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.contextDefinition',
      ),
      contextPath: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'contextPath',
        FhirStringBuilder.fromJson,
        '$objectPath.contextPath',
      ),
      contextCode: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'contextCode',
        CodeableConceptBuilder.fromJson,
        '$objectPath.contextCode',
      ),
      offsetX: JsonParser.parsePolymorphic<OffsetXRelativeTimeBuilder>(
        json,
        {
          'offsetDuration': FhirDurationBuilder.fromJson,
          'offsetRange': RangeBuilder.fromJson,
        },
        objectPath,
      ),
      text: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'text',
        FhirStringBuilder.fromJson,
        '$objectPath.text',
      ),
    );
  }

  /// Deserialize [RelativeTimeBuilder]
  /// from a [String] or [YamlMap] object
  factory RelativeTimeBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RelativeTimeBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RelativeTimeBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RelativeTimeBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RelativeTimeBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RelativeTimeBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return RelativeTimeBuilder.fromJson(json);
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
  List<FhirExtensionBuilder>? modifierExtension;

  /// [contextReference]
  /// The specific event occurrence or resource context used as a base point
  /// (reference point) in time. This establishes the context in which the
  /// 'path' is evaluated.
  ReferenceBuilder? contextReference;

  /// [contextDefinition]
  /// The type of event used as a base point. Instances of this definition
  /// will establish the context for evaluating the path to determine the
  /// base time for the offset.
  FhirCanonicalBuilder? contextDefinition;

  /// [contextPath]
  /// Path to the element defining the point in time. Any valid FHIRPath
  /// expression.
  FhirStringBuilder? contextPath;

  /// [contextCode]
  /// Coded representation of the event used as a base point (reference
  /// point) in time.
  CodeableConceptBuilder? contextCode;

  /// [offsetX]
  /// An offset or offset range before (negative values) or after (positive
  /// values) the event. Range is limited to time-valued quantities
  /// (Durations).
  OffsetXRelativeTimeBuilder? offsetX;

  /// Getter for [offsetDuration] as a FhirDurationBuilder
  FhirDurationBuilder? get offsetDuration =>
      offsetX?.isAs<FhirDurationBuilder>();

  /// Getter for [offsetRange] as a RangeBuilder
  RangeBuilder? get offsetRange => offsetX?.isAs<RangeBuilder>();

  /// [text]
  /// Free-text (human-readable) description.
  FhirStringBuilder? text;

  /// Converts a [RelativeTimeBuilder]
  /// to [RelativeTime]
  @override
  RelativeTime build() => RelativeTime.fromJson(toJson());

  /// Converts a [RelativeTimeBuilder]
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
    addField('contextReference', contextReference);
    addField('contextDefinition', contextDefinition);
    addField('contextPath', contextPath);
    addField('contextCode', contextCode);
    if (offsetX != null) {
      final fhirType = offsetX!.fhirType;
      addField('offset${fhirType.capitalizeFirstLetter()}', offsetX);
    }

    addField('text', text);
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
        if (offsetX is FhirDurationBuilder) {
          fields.add(offsetX!);
        }
      case 'offsetRange':
        if (offsetX is RangeBuilder) {
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
      case 'contextReference':
        {
          if (child is ReferenceBuilder) {
            contextReference = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contextDefinition':
        {
          if (child is FhirCanonicalBuilder) {
            contextDefinition = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                contextDefinition = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contextPath':
        {
          if (child is FhirStringBuilder) {
            contextPath = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                contextPath = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contextCode':
        {
          if (child is CodeableConceptBuilder) {
            contextCode = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'offset':
      case 'offsetX':
        {
          if (child is OffsetXRelativeTimeBuilder) {
            offsetX = child;
            return;
          } else {
            if (child is FhirDurationBuilder) {
              offsetX = child;
              return;
            }
            if (child is RangeBuilder) {
              offsetX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'offsetDuration':
        {
          if (child is FhirDurationBuilder) {
            offsetX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'offsetRange':
        {
          if (child is RangeBuilder) {
            offsetX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is FhirStringBuilder) {
            text = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                text = converted;
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
      case 'contextReference':
        return ['ReferenceBuilder'];
      case 'contextDefinition':
        return ['FhirCanonicalBuilder'];
      case 'contextPath':
        return ['FhirStringBuilder'];
      case 'contextCode':
        return ['CodeableConceptBuilder'];
      case 'offset':
      case 'offsetX':
        return [
          'FhirDurationBuilder',
          'RangeBuilder',
        ];
      case 'offsetDuration':
        return ['FhirDurationBuilder'];
      case 'offsetRange':
        return ['RangeBuilder'];
      case 'text':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [RelativeTimeBuilder]
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
      case 'contextReference':
        {
          contextReference = ReferenceBuilder.empty();
          return;
        }
      case 'contextDefinition':
        {
          contextDefinition = FhirCanonicalBuilder.empty();
          return;
        }
      case 'contextPath':
        {
          contextPath = FhirStringBuilder.empty();
          return;
        }
      case 'contextCode':
        {
          contextCode = CodeableConceptBuilder.empty();
          return;
        }
      case 'offset':
      case 'offsetX':
      case 'offsetDuration':
        {
          offsetX = FhirDurationBuilder.empty();
          return;
        }
      case 'offsetRange':
        {
          offsetX = RangeBuilder.empty();
          return;
        }
      case 'text':
        {
          text = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  RelativeTimeBuilder clone() => throw UnimplementedError();
  @override
  RelativeTimeBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ReferenceBuilder? contextReference,
    FhirCanonicalBuilder? contextDefinition,
    FhirStringBuilder? contextPath,
    CodeableConceptBuilder? contextCode,
    OffsetXRelativeTimeBuilder? offsetX,
    FhirStringBuilder? text,
    FhirDurationBuilder? offsetDuration,
    RangeBuilder? offsetRange,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = RelativeTimeBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      contextReference: contextReference ?? this.contextReference,
      contextDefinition: contextDefinition ?? this.contextDefinition,
      contextPath: contextPath ?? this.contextPath,
      contextCode: contextCode ?? this.contextCode,
      offsetX: offsetX ?? offsetDuration ?? offsetRange ?? this.offsetX,
      text: text ?? this.text,
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
    if (o is! RelativeTimeBuilder) {
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
