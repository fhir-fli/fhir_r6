import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart'
    show
        DeviceAlert,
        DeviceAlertCondition,
        DeviceAlertSignal,
        R6ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r6_mapping/fhir_r6_mapping.dart';
import 'package:yaml/yaml.dart';

/// [DeviceAlertBuilder]
/// Describes a noteworthy condition or occurrence determined to exist by a
/// device.
class DeviceAlertBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [DeviceAlertBuilder]

  DeviceAlertBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.status,
    this.type,
    this.priority,
    this.subject,
    this.source,
    this.condition,
    this.derivedFrom,
    this.label,
    this.signal,
  }) : super(
          objectPath: 'DeviceAlert',
          resourceType: R6ResourceType.DeviceAlert,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DeviceAlertBuilder.empty() => DeviceAlertBuilder(
        status: DeviceAlertStatusCodesBuilder.values.first,
        subject: ReferenceBuilder.empty(),
        condition: DeviceAlertConditionBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceAlertBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceAlert';
    return DeviceAlertBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMetaBuilder>(
        json,
        'meta',
        FhirMetaBuilder.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'implicitRules',
        FhirUriBuilder.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<AllLanguagesBuilder>(
        json,
        'language',
        AllLanguagesBuilder.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<NarrativeBuilder>(
        json,
        'text',
        NarrativeBuilder.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<ResourceBuilder>(
            (v) => ResourceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
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
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<DeviceAlertStatusCodesBuilder>(
        json,
        'status',
        DeviceAlertStatusCodesBuilder.fromJson,
        '$objectPath.status',
      ),
      type: JsonParser.parsePrimitive<DeviceAlertTypeCodesBuilder>(
        json,
        'type',
        DeviceAlertTypeCodesBuilder.fromJson,
        '$objectPath.type',
      ),
      priority: JsonParser.parsePrimitive<DeviceAlertPriorityCodesBuilder>(
        json,
        'priority',
        DeviceAlertPriorityCodesBuilder.fromJson,
        '$objectPath.priority',
      ),
      subject: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'subject',
        ReferenceBuilder.fromJson,
        '$objectPath.subject',
      ),
      source: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'source',
        ReferenceBuilder.fromJson,
        '$objectPath.source',
      ),
      condition: JsonParser.parseObject<DeviceAlertConditionBuilder>(
        json,
        'condition',
        DeviceAlertConditionBuilder.fromJson,
        '$objectPath.condition',
      ),
      derivedFrom: (json['derivedFrom'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.derivedFrom',
              },
            ),
          )
          .toList(),
      label: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'label',
        FhirStringBuilder.fromJson,
        '$objectPath.label',
      ),
      signal: (json['signal'] as List<dynamic>?)
          ?.map<DeviceAlertSignalBuilder>(
            (v) => DeviceAlertSignalBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.signal',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DeviceAlertBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceAlertBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceAlertBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceAlertBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceAlertBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceAlertBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceAlertBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceAlertBuilder.fromJson(json);
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
  List<IdentifierBuilder>? identifier;

  /// [status]
  /// in-progress | completed | entered-in-error.
  DeviceAlertStatusCodesBuilder? status;

  /// [type]
  /// physiological | technical.
  DeviceAlertTypeCodesBuilder? type;

  /// [priority]
  /// The alert priority is usually reported by the source. A priority of
  /// `info` may indicate that the alert is "for information only" and not
  /// urgent action is required. The element may be omitted if the priority
  /// is unknown.
  DeviceAlertPriorityCodesBuilder? priority;

  /// [subject]
  /// The who or what the alert is about.
  ReferenceBuilder? subject;

  /// [source]
  /// A top-level or component Device (such as a MDS, VMD, or Channel) that
  /// detected the alert condition; or, within such a Device, the specific
  /// DeviceMetric (e.g. a heart rate reading) that was in an alert
  /// condition.
  ReferenceBuilder? source;

  /// [condition]
  /// The condition, event, or state being reported.
  DeviceAlertConditionBuilder? condition;

  /// [derivedFrom]
  /// The value causing the alert condition.
  List<ReferenceBuilder>? derivedFrom;

  /// [label]
  /// The label may combine information from the alert code, priority, the
  /// measurement type, measurement value, body sites and other sources,
  /// e.g., "HR > 180".
  FhirStringBuilder? label;

  /// [signal]
  /// Annunciation or notification of the alert condition.
  List<DeviceAlertSignalBuilder>? signal;

  /// Converts a [DeviceAlertBuilder]
  /// to [DeviceAlert]
  @override
  DeviceAlert build() => DeviceAlert.fromJson(toJson());

  /// Converts a [DeviceAlertBuilder]
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

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('status', status);
    addField('type', type);
    addField('priority', priority);
    addField('subject', subject);
    addField('source', source);
    addField('condition', condition);
    addField('derivedFrom', derivedFrom);
    addField('label', label);
    addField('signal', signal);
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
        if (status != null) {
          fields.add(status!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'priority':
        if (priority != null) {
          fields.add(priority!);
        }
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'source':
        if (source != null) {
          fields.add(source!);
        }
      case 'condition':
        if (condition != null) {
          fields.add(condition!);
        }
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
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                implicitRules = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'language':
        {
          if (child is AllLanguagesBuilder) {
            language = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = AllLanguagesBuilder(stringValue);
                language = converted;
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
      case 'text':
        {
          if (child is NarrativeBuilder) {
            text = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contained':
        {
          if (child is List<ResourceBuilder>) {
            // Replace or create new list
            contained = child;
            return;
          } else if (child is ResourceBuilder) {
            // Add single element to existing list or create new list
            contained = [
              ...(contained ?? []),
              child,
            ];
            return;
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
      case 'identifier':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            identifier = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            identifier = [
              ...(identifier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is DeviceAlertStatusCodesBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = DeviceAlertStatusCodesBuilder(stringValue);
                status = converted;
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
      case 'type':
        {
          if (child is DeviceAlertTypeCodesBuilder) {
            type = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = DeviceAlertTypeCodesBuilder(stringValue);
                type = converted;
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
      case 'priority':
        {
          if (child is DeviceAlertPriorityCodesBuilder) {
            priority = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = DeviceAlertPriorityCodesBuilder(stringValue);
                priority = converted;
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
      case 'subject':
        {
          if (child is ReferenceBuilder) {
            subject = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'source':
        {
          if (child is ReferenceBuilder) {
            source = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'condition':
        {
          if (child is DeviceAlertConditionBuilder) {
            condition = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'derivedFrom':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            derivedFrom = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            derivedFrom = [
              ...(derivedFrom ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'label':
        {
          if (child is FhirStringBuilder) {
            label = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                label = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'signal':
        {
          if (child is List<DeviceAlertSignalBuilder>) {
            // Replace or create new list
            signal = child;
            return;
          } else if (child is DeviceAlertSignalBuilder) {
            // Add single element to existing list or create new list
            signal = [
              ...(signal ?? []),
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
      case 'meta':
        return ['FhirMetaBuilder'];
      case 'implicitRules':
        return ['FhirUriBuilder'];
      case 'language':
        return ['FhirCodeEnumBuilder'];
      case 'text':
        return ['NarrativeBuilder'];
      case 'contained':
        return ['ResourceBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'type':
        return ['FhirCodeEnumBuilder'];
      case 'priority':
        return ['FhirCodeEnumBuilder'];
      case 'subject':
        return ['ReferenceBuilder'];
      case 'source':
        return ['ReferenceBuilder'];
      case 'condition':
        return ['DeviceAlertConditionBuilder'];
      case 'derivedFrom':
        return ['ReferenceBuilder'];
      case 'label':
        return ['FhirStringBuilder'];
      case 'signal':
        return ['DeviceAlertSignalBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceAlertBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'meta':
        {
          meta = FhirMetaBuilder.empty();
          return;
        }
      case 'implicitRules':
        {
          implicitRules = FhirUriBuilder.empty();
          return;
        }
      case 'language':
        {
          language = AllLanguagesBuilder.empty();
          return;
        }
      case 'text':
        {
          text = NarrativeBuilder.empty();
          return;
        }
      case 'contained':
        {
          contained = <ResourceBuilder>[];
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
      case 'identifier':
        {
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'status':
        {
          status = DeviceAlertStatusCodesBuilder.empty();
          return;
        }
      case 'type':
        {
          type = DeviceAlertTypeCodesBuilder.empty();
          return;
        }
      case 'priority':
        {
          priority = DeviceAlertPriorityCodesBuilder.empty();
          return;
        }
      case 'subject':
        {
          subject = ReferenceBuilder.empty();
          return;
        }
      case 'source':
        {
          source = ReferenceBuilder.empty();
          return;
        }
      case 'condition':
        {
          condition = DeviceAlertConditionBuilder.empty();
          return;
        }
      case 'derivedFrom':
        {
          derivedFrom = <ReferenceBuilder>[];
          return;
        }
      case 'label':
        {
          label = FhirStringBuilder.empty();
          return;
        }
      case 'signal':
        {
          signal = <DeviceAlertSignalBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  DeviceAlertBuilder clone() => throw UnimplementedError();
  @override
  DeviceAlertBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    DeviceAlertStatusCodesBuilder? status,
    DeviceAlertTypeCodesBuilder? type,
    DeviceAlertPriorityCodesBuilder? priority,
    ReferenceBuilder? subject,
    ReferenceBuilder? source,
    DeviceAlertConditionBuilder? condition,
    List<ReferenceBuilder>? derivedFrom,
    FhirStringBuilder? label,
    List<DeviceAlertSignalBuilder>? signal,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = DeviceAlertBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      type: type ?? this.type,
      priority: priority ?? this.priority,
      subject: subject ?? this.subject,
      source: source ?? this.source,
      condition: condition ?? this.condition,
      derivedFrom: derivedFrom ?? this.derivedFrom,
      label: label ?? this.label,
      signal: signal ?? this.signal,
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
    if (o is! DeviceAlertBuilder) {
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
    if (!listEquals<ResourceBuilder>(
      contained,
      o.contained,
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
    if (!listEquals<IdentifierBuilder>(
      identifier,
      o.identifier,
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
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      priority,
      o.priority,
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
      source,
      o.source,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      condition,
      o.condition,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      derivedFrom,
      o.derivedFrom,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      label,
      o.label,
    )) {
      return false;
    }
    if (!listEquals<DeviceAlertSignalBuilder>(
      signal,
      o.signal,
    )) {
      return false;
    }
    return true;
  }
}

/// [DeviceAlertConditionBuilder]
/// The condition, event, or state being reported.
class DeviceAlertConditionBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DeviceAlertConditionBuilder]

  DeviceAlertConditionBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.acknowledged,
    this.presence,
    this.timing,
    this.limit,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DeviceAlert.condition',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DeviceAlertConditionBuilder.empty() => DeviceAlertConditionBuilder(
        code: CodeableConceptBuilder.empty(),
        presence: FhirBooleanBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceAlertConditionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceAlert.condition';
    return DeviceAlertConditionBuilder(
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
      code: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'code',
        CodeableConceptBuilder.fromJson,
        '$objectPath.code',
      ),
      acknowledged: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'acknowledged',
        FhirBooleanBuilder.fromJson,
        '$objectPath.acknowledged',
      ),
      presence: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'presence',
        FhirBooleanBuilder.fromJson,
        '$objectPath.presence',
      ),
      timing: JsonParser.parseObject<PeriodBuilder>(
        json,
        'timing',
        PeriodBuilder.fromJson,
        '$objectPath.timing',
      ),
      limit: JsonParser.parseObject<RangeBuilder>(
        json,
        'limit',
        RangeBuilder.fromJson,
        '$objectPath.limit',
      ),
    );
  }

  /// Deserialize [DeviceAlertConditionBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceAlertConditionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceAlertConditionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceAlertConditionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceAlertConditionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceAlertConditionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceAlertConditionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceAlertConditionBuilder.fromJson(json);
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
  CodeableConceptBuilder? code;

  /// [acknowledged]
  /// An indication of whether (true) or not (false) the alert condition has
  /// been acknowledged.
  FhirBooleanBuilder? acknowledged;

  /// [presence]
  /// The alert condition is currently occurring.
  FhirBooleanBuilder? presence;

  /// [timing]
  /// An instantaneous condition is reported with the same start and end
  /// value. The end value is omitted if the condition is ongoing.
  PeriodBuilder? timing;

  /// [limit]
  /// The limits beyond which a value was detected to cause the alert
  /// condition. The actual value is in DeviceAlert.derivedFrom.
  RangeBuilder? limit;

  /// Converts a [DeviceAlertConditionBuilder]
  /// to [DeviceAlertCondition]
  @override
  DeviceAlertCondition build() => DeviceAlertCondition.fromJson(toJson());

  /// Converts a [DeviceAlertConditionBuilder]
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
    addField('code', code);
    addField('acknowledged', acknowledged);
    addField('presence', presence);
    addField('timing', timing);
    addField('limit', limit);
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
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'acknowledged':
        if (acknowledged != null) {
          fields.add(acknowledged!);
        }
      case 'presence':
        if (presence != null) {
          fields.add(presence!);
        }
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
      case 'code':
        {
          if (child is CodeableConceptBuilder) {
            code = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'acknowledged':
        {
          if (child is FhirBooleanBuilder) {
            acknowledged = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                acknowledged = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'presence':
        {
          if (child is FhirBooleanBuilder) {
            presence = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                presence = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'timing':
        {
          if (child is PeriodBuilder) {
            timing = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'limit':
        {
          if (child is RangeBuilder) {
            limit = child;
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
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'acknowledged':
        return ['FhirBooleanBuilder'];
      case 'presence':
        return ['FhirBooleanBuilder'];
      case 'timing':
        return ['PeriodBuilder'];
      case 'limit':
        return ['RangeBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceAlertConditionBuilder]
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
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
          return;
        }
      case 'acknowledged':
        {
          acknowledged = FhirBooleanBuilder.empty();
          return;
        }
      case 'presence':
        {
          presence = FhirBooleanBuilder.empty();
          return;
        }
      case 'timing':
        {
          timing = PeriodBuilder.empty();
          return;
        }
      case 'limit':
        {
          limit = RangeBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  DeviceAlertConditionBuilder clone() => throw UnimplementedError();
  @override
  DeviceAlertConditionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? code,
    FhirBooleanBuilder? acknowledged,
    FhirBooleanBuilder? presence,
    PeriodBuilder? timing,
    RangeBuilder? limit,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = DeviceAlertConditionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      acknowledged: acknowledged ?? this.acknowledged,
      presence: presence ?? this.presence,
      timing: timing ?? this.timing,
      limit: limit ?? this.limit,
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
    if (o is! DeviceAlertConditionBuilder) {
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
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      acknowledged,
      o.acknowledged,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      presence,
      o.presence,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      timing,
      o.timing,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      limit,
      o.limit,
    )) {
      return false;
    }
    return true;
  }
}

/// [DeviceAlertSignalBuilder]
/// Annunciation or notification of the alert condition.
class DeviceAlertSignalBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DeviceAlertSignalBuilder]

  DeviceAlertSignalBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.activationState,
    this.presence,
    this.annunciator,
    this.manifestation,
    this.type,
    this.indication,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DeviceAlert.signal',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DeviceAlertSignalBuilder.empty() => DeviceAlertSignalBuilder(
        activationState: DeviceAlertActivationStateCodesBuilder.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceAlertSignalBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceAlert.signal';
    return DeviceAlertSignalBuilder(
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
      activationState:
          JsonParser.parsePrimitive<DeviceAlertActivationStateCodesBuilder>(
        json,
        'activationState',
        DeviceAlertActivationStateCodesBuilder.fromJson,
        '$objectPath.activationState',
      ),
      presence: JsonParser.parsePrimitive<DeviceAlertPresenceCodesBuilder>(
        json,
        'presence',
        DeviceAlertPresenceCodesBuilder.fromJson,
        '$objectPath.presence',
      ),
      annunciator: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'annunciator',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.annunciator',
      ),
      manifestation: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'manifestation',
        CodeableConceptBuilder.fromJson,
        '$objectPath.manifestation',
      ),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.type',
              },
            ),
          )
          .toList(),
      indication: JsonParser.parseObject<PeriodBuilder>(
        json,
        'indication',
        PeriodBuilder.fromJson,
        '$objectPath.indication',
      ),
    );
  }

  /// Deserialize [DeviceAlertSignalBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceAlertSignalBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceAlertSignalBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceAlertSignalBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceAlertSignalBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceAlertSignalBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceAlertSignalBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceAlertSignalBuilder.fromJson(json);
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
  DeviceAlertActivationStateCodesBuilder? activationState;

  /// [presence]
  /// Indicates whether the signal is currently being annunciated. An on
  /// signal is currently being annunciated; a latched signal is currently
  /// being being annunciated although the alert condition has ended; an off
  /// signal is not currently being annunciated; and an acknowledged signal
  /// is not currently being annunciated because the user has acknowledged
  /// the signal.
  DeviceAlertPresenceCodesBuilder? presence;

  /// [annunciator]
  /// Signalling by the source device is local; signalling elsewhere is
  /// considered remote. A reference to the "top level" signalling device may
  /// also be present.
  CodeableReferenceBuilder? annunciator;

  /// [manifestation]
  /// How the signal is being annunciated.
  CodeableConceptBuilder? manifestation;

  /// [type]
  /// Details of the signal manifestation, such as a 1 meter visual indicator
  /// or a 4 meter visual indicator.
  List<CodeableConceptBuilder>? type;

  /// [indication]
  /// The period during which the signal was being annunciated. If there is
  /// no indicated period end, the annunciation is on-going.
  PeriodBuilder? indication;

  /// Converts a [DeviceAlertSignalBuilder]
  /// to [DeviceAlertSignal]
  @override
  DeviceAlertSignal build() => DeviceAlertSignal.fromJson(toJson());

  /// Converts a [DeviceAlertSignalBuilder]
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
    addField('activationState', activationState);
    addField('presence', presence);
    addField('annunciator', annunciator);
    addField('manifestation', manifestation);
    addField('type', type);
    addField('indication', indication);
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
      case 'activationState':
        if (activationState != null) {
          fields.add(activationState!);
        }
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
      case 'activationState':
        {
          if (child is DeviceAlertActivationStateCodesBuilder) {
            activationState = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted =
                    DeviceAlertActivationStateCodesBuilder(stringValue);
                activationState = converted;
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
      case 'presence':
        {
          if (child is DeviceAlertPresenceCodesBuilder) {
            presence = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = DeviceAlertPresenceCodesBuilder(stringValue);
                presence = converted;
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
      case 'annunciator':
        {
          if (child is CodeableReferenceBuilder) {
            annunciator = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'manifestation':
        {
          if (child is CodeableConceptBuilder) {
            manifestation = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            type = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            type = [
              ...(type ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'indication':
        {
          if (child is PeriodBuilder) {
            indication = child;
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
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'activationState':
        return ['FhirCodeEnumBuilder'];
      case 'presence':
        return ['FhirCodeEnumBuilder'];
      case 'annunciator':
        return ['CodeableReferenceBuilder'];
      case 'manifestation':
        return ['CodeableConceptBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'indication':
        return ['PeriodBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceAlertSignalBuilder]
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
      case 'activationState':
        {
          activationState = DeviceAlertActivationStateCodesBuilder.empty();
          return;
        }
      case 'presence':
        {
          presence = DeviceAlertPresenceCodesBuilder.empty();
          return;
        }
      case 'annunciator':
        {
          annunciator = CodeableReferenceBuilder.empty();
          return;
        }
      case 'manifestation':
        {
          manifestation = CodeableConceptBuilder.empty();
          return;
        }
      case 'type':
        {
          type = <CodeableConceptBuilder>[];
          return;
        }
      case 'indication':
        {
          indication = PeriodBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  DeviceAlertSignalBuilder clone() => throw UnimplementedError();
  @override
  DeviceAlertSignalBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    DeviceAlertActivationStateCodesBuilder? activationState,
    DeviceAlertPresenceCodesBuilder? presence,
    CodeableReferenceBuilder? annunciator,
    CodeableConceptBuilder? manifestation,
    List<CodeableConceptBuilder>? type,
    PeriodBuilder? indication,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = DeviceAlertSignalBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      activationState: activationState ?? this.activationState,
      presence: presence ?? this.presence,
      annunciator: annunciator ?? this.annunciator,
      manifestation: manifestation ?? this.manifestation,
      type: type ?? this.type,
      indication: indication ?? this.indication,
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
    if (o is! DeviceAlertSignalBuilder) {
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
      activationState,
      o.activationState,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      presence,
      o.presence,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      annunciator,
      o.annunciator,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      manifestation,
      o.manifestation,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      indication,
      o.indication,
    )) {
      return false;
    }
    return true;
  }
}
