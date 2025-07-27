import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'device_association.g.dart';

/// [DeviceAssociation]
/// A record of association or dissociation of a device with a patient.
class DeviceAssociation extends DomainResource {
  /// Primary constructor for
  /// [DeviceAssociation]

  const DeviceAssociation({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.device,
    this.category,
    required this.status,
    this.statusReason,
    this.subject,
    this.bodyStructure,
    this.period,
    this.operation,
  }) : super(
          resourceType: R5ResourceType.DeviceAssociation,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceAssociation.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceAssociation(
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
      device: JsonParser.parseObject<Reference>(
        json,
        'device',
        Reference.fromJson,
      )!,
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      status: JsonParser.parseObject<CodeableConcept>(
        json,
        'status',
        CodeableConcept.fromJson,
      )!,
      statusReason: (json['statusReason'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
      ),
      bodyStructure: JsonParser.parseObject<Reference>(
        json,
        'bodyStructure',
        Reference.fromJson,
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
      ),
      operation: (json['operation'] as List<dynamic>?)
          ?.map<DeviceAssociationOperation>(
            (v) => DeviceAssociationOperation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DeviceAssociation]
  /// from a [String] or [YamlMap] object
  factory DeviceAssociation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceAssociation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceAssociation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceAssociation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceAssociation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceAssociation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceAssociation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceAssociation';

  /// [identifier]
  /// Instance identifier.
  final List<Identifier>? identifier;

  /// [device]
  /// Reference to the devices associated with the patient or group.
  final Reference device;

  /// [category]
  /// Describes the relationship between the device and subject.
  final List<CodeableConcept>? category;

  /// [status]
  /// Indicates the state of the Device association.
  final CodeableConcept status;

  /// [statusReason]
  /// The reasons given for the current association status.
  final List<CodeableConcept>? statusReason;

  /// [subject]
  /// The individual, group of individuals or device that the device is on or
  /// associated with.
  final Reference? subject;

  /// [bodyStructure]
  /// Current anatomical location of the device in/on subject.
  final Reference? bodyStructure;

  /// [period]
  /// Begin and end dates and times for the device association.
  final Period? period;

  /// [operation]
  /// The details about the device when it is in use to describe its
  /// operation.
  final List<DeviceAssociationOperation>? operation;
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
      'device',
      device,
    );
    addField(
      'category',
      category,
    );
    addField(
      'status',
      status,
    );
    addField(
      'statusReason',
      statusReason,
    );
    addField(
      'subject',
      subject,
    );
    addField(
      'bodyStructure',
      bodyStructure,
    );
    addField(
      'period',
      period,
    );
    addField(
      'operation',
      operation,
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
      'device',
      'category',
      'status',
      'statusReason',
      'subject',
      'bodyStructure',
      'period',
      'operation',
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
      case 'device':
        fields.add(device);
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'status':
        fields.add(status);
      case 'statusReason':
        if (statusReason != null) {
          fields.addAll(statusReason!);
        }
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'bodyStructure':
        if (bodyStructure != null) {
          fields.add(bodyStructure!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      case 'operation':
        if (operation != null) {
          fields.addAll(operation!);
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
  DeviceAssociation clone() => copyWith();

  /// Copy function for [DeviceAssociation]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DeviceAssociationCopyWith<DeviceAssociation> get copyWith =>
      _$DeviceAssociationCopyWithImpl<DeviceAssociation>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceAssociation) {
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
      device,
      o.device,
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
      status,
      o.status,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      statusReason,
      o.statusReason,
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
      bodyStructure,
      o.bodyStructure,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      period,
      o.period,
    )) {
      return false;
    }
    if (!listEquals<DeviceAssociationOperation>(
      operation,
      o.operation,
    )) {
      return false;
    }
    return true;
  }
}

/// [DeviceAssociationOperation]
/// The details about the device when it is in use to describe its
/// operation.
class DeviceAssociationOperation extends BackboneElement {
  /// Primary constructor for
  /// [DeviceAssociationOperation]

  const DeviceAssociationOperation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.status,
    this.operator_,
    this.period,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceAssociationOperation.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceAssociationOperation(
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
      status: JsonParser.parseObject<CodeableConcept>(
        json,
        'status',
        CodeableConcept.fromJson,
      )!,
      operator_: (json['operator'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
      ),
    );
  }

  /// Deserialize [DeviceAssociationOperation]
  /// from a [String] or [YamlMap] object
  factory DeviceAssociationOperation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceAssociationOperation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceAssociationOperation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceAssociationOperation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceAssociationOperation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceAssociationOperation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceAssociationOperation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceAssociationOperation';

  /// [status]
  /// Device operational condition corresponding to the association.
  final CodeableConcept status;

  /// [operator_]
  /// The individual performing the action enabled by the device.
  final List<Reference>? operator_;

  /// [period]
  /// Begin and end dates and times for the device's operation.
  final Period? period;
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
      'status',
      status,
    );
    addField(
      'operator',
      operator_,
    );
    addField(
      'period',
      period,
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
      'status',
      'operator',
      'period',
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
      case 'status':
        fields.add(status);
      case 'operator':
        if (operator_ != null) {
          fields.addAll(operator_!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
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
  DeviceAssociationOperation clone() => copyWith();

  /// Copy function for [DeviceAssociationOperation]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DeviceAssociationOperationCopyWith<DeviceAssociationOperation>
      get copyWith =>
          _$DeviceAssociationOperationCopyWithImpl<DeviceAssociationOperation>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceAssociationOperation) {
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
      status,
      o.status,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      operator_,
      o.operator_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      period,
      o.period,
    )) {
      return false;
    }
    return true;
  }
}
