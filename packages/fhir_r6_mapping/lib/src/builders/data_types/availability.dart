import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart'
    show
        Availability,
        AvailabilityAvailableTime,
        AvailabilityNotAvailableTime,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r6_mapping/fhir_r6_mapping.dart';
import 'package:yaml/yaml.dart';

/// [AvailabilityBuilder]
/// Availability data for an {item}.
class AvailabilityBuilder extends DataTypeBuilder
    implements
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
  /// [AvailabilityBuilder]

  AvailabilityBuilder({
    super.id,
    super.extension_,
    this.availableTime,
    this.notAvailableTime,
    super.disallowExtensions,
    super.objectPath = 'AvailabilityBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AvailabilityBuilder.empty() => AvailabilityBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AvailabilityBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'Availability';
    return AvailabilityBuilder(
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
      availableTime: (json['availableTime'] as List<dynamic>?)
          ?.map<AvailabilityAvailableTimeBuilder>(
            (v) => AvailabilityAvailableTimeBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.availableTime',
              },
            ),
          )
          .toList(),
      notAvailableTime: (json['notAvailableTime'] as List<dynamic>?)
          ?.map<AvailabilityNotAvailableTimeBuilder>(
            (v) => AvailabilityNotAvailableTimeBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.notAvailableTime',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [AvailabilityBuilder]
  /// from a [String] or [YamlMap] object
  factory AvailabilityBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AvailabilityBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AvailabilityBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AvailabilityBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AvailabilityBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AvailabilityBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AvailabilityBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Availability';

  /// [availableTime]
  /// Times the {item} is available.
  List<AvailabilityAvailableTimeBuilder>? availableTime;

  /// [notAvailableTime]
  /// Not available during this time due to provided reason.
  List<AvailabilityNotAvailableTimeBuilder>? notAvailableTime;

  /// Converts a [AvailabilityBuilder]
  /// to [Availability]
  @override
  Availability build() => Availability.fromJson(toJson());

  /// Converts a [AvailabilityBuilder]
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
    addField('availableTime', availableTime);
    addField('notAvailableTime', notAvailableTime);
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
      case 'availableTime':
        {
          if (child is List<AvailabilityAvailableTimeBuilder>) {
            // Replace or create new list
            availableTime = child;
            return;
          } else if (child is AvailabilityAvailableTimeBuilder) {
            // Add single element to existing list or create new list
            availableTime = [
              ...(availableTime ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'notAvailableTime':
        {
          if (child is List<AvailabilityNotAvailableTimeBuilder>) {
            // Replace or create new list
            notAvailableTime = child;
            return;
          } else if (child is AvailabilityNotAvailableTimeBuilder) {
            // Add single element to existing list or create new list
            notAvailableTime = [
              ...(notAvailableTime ?? []),
              child,
            ];
            return;
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
      case 'availableTime':
        return ['AvailabilityAvailableTimeBuilder'];
      case 'notAvailableTime':
        return ['AvailabilityNotAvailableTimeBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AvailabilityBuilder]
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
      case 'availableTime':
        {
          availableTime = <AvailabilityAvailableTimeBuilder>[];
          return;
        }
      case 'notAvailableTime':
        {
          notAvailableTime = <AvailabilityNotAvailableTimeBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  AvailabilityBuilder clone() => throw UnimplementedError();
  @override
  AvailabilityBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<AvailabilityAvailableTimeBuilder>? availableTime,
    List<AvailabilityNotAvailableTimeBuilder>? notAvailableTime,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = AvailabilityBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      availableTime: availableTime ?? this.availableTime,
      notAvailableTime: notAvailableTime ?? this.notAvailableTime,
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
    if (o is! AvailabilityBuilder) {
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
    if (!listEquals<AvailabilityAvailableTimeBuilder>(
      availableTime,
      o.availableTime,
    )) {
      return false;
    }
    if (!listEquals<AvailabilityNotAvailableTimeBuilder>(
      notAvailableTime,
      o.notAvailableTime,
    )) {
      return false;
    }
    return true;
  }
}

/// [AvailabilityAvailableTimeBuilder]
/// Times the {item} is available.
class AvailabilityAvailableTimeBuilder extends ElementBuilder {
  /// Primary constructor for
  /// [AvailabilityAvailableTimeBuilder]

  AvailabilityAvailableTimeBuilder({
    super.id,
    super.extension_,
    this.daysOfWeek,
    this.allDay,
    this.availableStartTime,
    this.availableEndTime,
    super.disallowExtensions,
    super.objectPath = 'AvailabilityAvailableTimeBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AvailabilityAvailableTimeBuilder.empty() =>
      AvailabilityAvailableTimeBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AvailabilityAvailableTimeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath =
        json['resourceType'] as String? ?? 'AvailabilityAvailableTime';
    return AvailabilityAvailableTimeBuilder(
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
      daysOfWeek: JsonParser.parsePrimitiveList<DaysOfWeekBuilder>(
        json,
        'daysOfWeek',
        DaysOfWeekBuilder.fromJson,
        '$objectPath.daysOfWeek',
      ),
      allDay: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'allDay',
        FhirBooleanBuilder.fromJson,
        '$objectPath.allDay',
      ),
      availableStartTime: JsonParser.parsePrimitive<FhirTimeBuilder>(
        json,
        'availableStartTime',
        FhirTimeBuilder.fromJson,
        '$objectPath.availableStartTime',
      ),
      availableEndTime: JsonParser.parsePrimitive<FhirTimeBuilder>(
        json,
        'availableEndTime',
        FhirTimeBuilder.fromJson,
        '$objectPath.availableEndTime',
      ),
    );
  }

  /// Deserialize [AvailabilityAvailableTimeBuilder]
  /// from a [String] or [YamlMap] object
  factory AvailabilityAvailableTimeBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AvailabilityAvailableTimeBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AvailabilityAvailableTimeBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AvailabilityAvailableTimeBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AvailabilityAvailableTimeBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AvailabilityAvailableTimeBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AvailabilityAvailableTimeBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AvailabilityAvailableTime';

  /// [daysOfWeek]
  /// mon | tue | wed | thu | fri | sat | sun.
  List<DaysOfWeekBuilder>? daysOfWeek;

  /// [allDay]
  /// Always available? i.e. 24 hour service.
  FhirBooleanBuilder? allDay;

  /// [availableStartTime]
  /// Opening time of day (ignored if allDay = true).
  FhirTimeBuilder? availableStartTime;

  /// [availableEndTime]
  /// Closing time of day (ignored if allDay = true).
  FhirTimeBuilder? availableEndTime;

  /// Converts a [AvailabilityAvailableTimeBuilder]
  /// to [AvailabilityAvailableTime]
  @override
  AvailabilityAvailableTime build() =>
      AvailabilityAvailableTime.fromJson(toJson());

  /// Converts a [AvailabilityAvailableTimeBuilder]
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
    addField('daysOfWeek', daysOfWeek);
    addField('allDay', allDay);
    addField('availableStartTime', availableStartTime);
    addField('availableEndTime', availableEndTime);
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
      case 'daysOfWeek':
        {
          if (child is List<DaysOfWeekBuilder>) {
            // Replace or create new list
            daysOfWeek = child;
            return;
          } else if (child is DaysOfWeekBuilder) {
            // Add single element to existing list or create new list
            daysOfWeek = [
              ...(daysOfWeek ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <DaysOfWeekBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                // For enums, try to create directly from the string value
                try {
                  final converted = DaysOfWeekBuilder(stringValue);
                  convertedList.add(converted);
                } catch (e) {
                  // Continue if enum creation fails
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              daysOfWeek = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = DaysOfWeekBuilder(stringValue);
                daysOfWeek = [
                  ...(daysOfWeek ?? []),
                  converted,
                ];
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'allDay':
        {
          if (child is FhirBooleanBuilder) {
            allDay = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                allDay = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'availableStartTime':
        {
          if (child is FhirTimeBuilder) {
            availableStartTime = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                availableStartTime = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'availableEndTime':
        {
          if (child is FhirTimeBuilder) {
            availableEndTime = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                availableEndTime = converted;
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
      case 'daysOfWeek':
        return ['FhirCodeEnumBuilder'];
      case 'allDay':
        return ['FhirBooleanBuilder'];
      case 'availableStartTime':
        return ['FhirTimeBuilder'];
      case 'availableEndTime':
        return ['FhirTimeBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AvailabilityAvailableTimeBuilder]
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
      case 'daysOfWeek':
        {
          daysOfWeek = <DaysOfWeekBuilder>[];
          return;
        }
      case 'allDay':
        {
          allDay = FhirBooleanBuilder.empty();
          return;
        }
      case 'availableStartTime':
        {
          availableStartTime = FhirTimeBuilder.empty();
          return;
        }
      case 'availableEndTime':
        {
          availableEndTime = FhirTimeBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  AvailabilityAvailableTimeBuilder clone() => throw UnimplementedError();
  @override
  AvailabilityAvailableTimeBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<DaysOfWeekBuilder>? daysOfWeek,
    FhirBooleanBuilder? allDay,
    FhirTimeBuilder? availableStartTime,
    FhirTimeBuilder? availableEndTime,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = AvailabilityAvailableTimeBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      daysOfWeek: daysOfWeek ?? this.daysOfWeek,
      allDay: allDay ?? this.allDay,
      availableStartTime: availableStartTime ?? this.availableStartTime,
      availableEndTime: availableEndTime ?? this.availableEndTime,
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
    if (o is! AvailabilityAvailableTimeBuilder) {
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
    if (!listEquals<DaysOfWeekBuilder>(
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

/// [AvailabilityNotAvailableTimeBuilder]
/// Not available during this time due to provided reason.
class AvailabilityNotAvailableTimeBuilder extends ElementBuilder {
  /// Primary constructor for
  /// [AvailabilityNotAvailableTimeBuilder]

  AvailabilityNotAvailableTimeBuilder({
    super.id,
    super.extension_,
    this.description,
    this.during,
    super.disallowExtensions,
    super.objectPath = 'AvailabilityNotAvailableTimeBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AvailabilityNotAvailableTimeBuilder.empty() =>
      AvailabilityNotAvailableTimeBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AvailabilityNotAvailableTimeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath =
        json['resourceType'] as String? ?? 'AvailabilityNotAvailableTime';
    return AvailabilityNotAvailableTimeBuilder(
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
      description: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'description',
        FhirStringBuilder.fromJson,
        '$objectPath.description',
      ),
      during: JsonParser.parseObject<PeriodBuilder>(
        json,
        'during',
        PeriodBuilder.fromJson,
        '$objectPath.during',
      ),
    );
  }

  /// Deserialize [AvailabilityNotAvailableTimeBuilder]
  /// from a [String] or [YamlMap] object
  factory AvailabilityNotAvailableTimeBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AvailabilityNotAvailableTimeBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AvailabilityNotAvailableTimeBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AvailabilityNotAvailableTimeBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AvailabilityNotAvailableTimeBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AvailabilityNotAvailableTimeBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AvailabilityNotAvailableTimeBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AvailabilityNotAvailableTime';

  /// [description]
  /// Reason presented to the user explaining why time not available.
  FhirStringBuilder? description;

  /// [during]
  /// Service not available during this period.
  PeriodBuilder? during;

  /// Converts a [AvailabilityNotAvailableTimeBuilder]
  /// to [AvailabilityNotAvailableTime]
  @override
  AvailabilityNotAvailableTime build() =>
      AvailabilityNotAvailableTime.fromJson(toJson());

  /// Converts a [AvailabilityNotAvailableTimeBuilder]
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
    addField('description', description);
    addField('during', during);
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
      case 'description':
        {
          if (child is FhirStringBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                description = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'during':
        {
          if (child is PeriodBuilder) {
            during = child;
            return;
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
      case 'description':
        return ['FhirStringBuilder'];
      case 'during':
        return ['PeriodBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AvailabilityNotAvailableTimeBuilder]
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
      case 'description':
        {
          description = FhirStringBuilder.empty();
          return;
        }
      case 'during':
        {
          during = PeriodBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  AvailabilityNotAvailableTimeBuilder clone() => throw UnimplementedError();
  @override
  AvailabilityNotAvailableTimeBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    FhirStringBuilder? description,
    PeriodBuilder? during,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = AvailabilityNotAvailableTimeBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      description: description ?? this.description,
      during: during ?? this.during,
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
    if (o is! AvailabilityNotAvailableTimeBuilder) {
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
