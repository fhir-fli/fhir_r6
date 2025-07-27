import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'encounter_history.g.dart';

/// [EncounterHistory]
/// A record of significant events/milestones key data throughout the
/// history of an Encounter, often tracked for specific purposes such as
/// billing.
class EncounterHistory extends DomainResource {
  /// Primary constructor for
  /// [EncounterHistory]

  const EncounterHistory({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.encounter,
    this.identifier,
    required this.status,
    required this.class_,
    this.type,
    this.serviceType,
    this.subject,
    this.subjectStatus,
    this.actualPeriod,
    this.plannedStartDate,
    this.plannedEndDate,
    this.length,
    this.location,
  }) : super(
          resourceType: R6ResourceType.EncounterHistory,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EncounterHistory.fromJson(
    Map<String, dynamic> json,
  ) {
    return EncounterHistory(
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
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
      ),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<EncounterStatus>(
        json,
        'status',
        EncounterStatus.fromJson,
      )!,
      class_: JsonParser.parseObject<CodeableConcept>(
        json,
        'class',
        CodeableConcept.fromJson,
      )!,
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      serviceType: (json['serviceType'] as List<dynamic>?)
          ?.map<CodeableReference>(
            (v) => CodeableReference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
      ),
      subjectStatus: JsonParser.parseObject<CodeableConcept>(
        json,
        'subjectStatus',
        CodeableConcept.fromJson,
      ),
      actualPeriod: JsonParser.parseObject<Period>(
        json,
        'actualPeriod',
        Period.fromJson,
      ),
      plannedStartDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'plannedStartDate',
        FhirDateTime.fromJson,
      ),
      plannedEndDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'plannedEndDate',
        FhirDateTime.fromJson,
      ),
      length: JsonParser.parseObject<FhirDuration>(
        json,
        'length',
        FhirDuration.fromJson,
      ),
      location: (json['location'] as List<dynamic>?)
          ?.map<EncounterHistoryLocation>(
            (v) => EncounterHistoryLocation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [EncounterHistory]
  /// from a [String] or [YamlMap] object
  factory EncounterHistory.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EncounterHistory.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EncounterHistory.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EncounterHistory '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EncounterHistory]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EncounterHistory.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EncounterHistory.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EncounterHistory';

  /// [encounter]
  /// The Encounter associated with this set of historic values.
  final Reference? encounter;

  /// [identifier]
  /// Identifier(s) by which this encounter is known.
  final List<Identifier>? identifier;

  /// [status]
  /// planned | in-progress | on-hold | discharged | completed | cancelled |
  /// discontinued | entered-in-error | unknown.
  final EncounterStatus status;

  /// [class_]
  /// Concepts representing classification of patient encounter such as
  /// ambulatory (outpatient), inpatient, emergency, home health or others
  /// due to local variations.
  final CodeableConcept class_;

  /// [type]
  /// Specific type of encounter (e.g. e-mail consultation, surgical
  /// day-care, skilled nursing, rehabilitation).
  final List<CodeableConcept>? type;

  /// [serviceType]
  /// Broad categorization of the service that is to be provided (e.g.
  /// cardiology).
  final List<CodeableReference>? serviceType;

  /// [subject]
  /// The patient or group related to this encounter. In some use-cases the
  /// patient MAY not be present, such as a case meeting about a patient
  /// between several practitioners or a careteam.
  final Reference? subject;

  /// [subjectStatus]
  /// The subjectStatus value can be used to track the patient's status
  /// within the encounter. It details whether the patient has arrived or
  /// departed, has been triaged or is currently in a waiting status.
  final CodeableConcept? subjectStatus;

  /// [actualPeriod]
  /// The start and end time associated with this set of values associated
  /// with the encounter, may be different to the planned times for various
  /// reasons.
  final Period? actualPeriod;

  /// [plannedStartDate]
  /// The planned start date/time (or admission date) of the encounter.
  final FhirDateTime? plannedStartDate;

  /// [plannedEndDate]
  /// The planned end date/time (or discharge date) of the encounter.
  final FhirDateTime? plannedEndDate;

  /// [length]
  /// Actual quantity of time the encounter lasted. This excludes the time
  /// during leaves of absence. When missing it is the time in between the
  /// start and end values.
  final FhirDuration? length;

  /// [location]
  /// The location of the patient at this point in the encounter, the
  /// multiple cardinality permits de-normalizing the levels of the location
  /// hierarchy, such as site/ward/room/bed.
  final List<EncounterHistoryLocation>? location;
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
      'encounter',
      encounter,
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
      'class',
      class_,
    );
    addField(
      'type',
      type,
    );
    addField(
      'serviceType',
      serviceType,
    );
    addField(
      'subject',
      subject,
    );
    addField(
      'subjectStatus',
      subjectStatus,
    );
    addField(
      'actualPeriod',
      actualPeriod,
    );
    addField(
      'plannedStartDate',
      plannedStartDate,
    );
    addField(
      'plannedEndDate',
      plannedEndDate,
    );
    addField(
      'length',
      length,
    );
    addField(
      'location',
      location,
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
      'encounter',
      'identifier',
      'status',
      'class',
      'type',
      'serviceType',
      'subject',
      'subjectStatus',
      'actualPeriod',
      'plannedStartDate',
      'plannedEndDate',
      'length',
      'location',
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
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'status':
        fields.add(status);
      case 'class':
        fields.add(class_);
      case 'type':
        if (type != null) {
          fields.addAll(type!);
        }
      case 'serviceType':
        if (serviceType != null) {
          fields.addAll(serviceType!);
        }
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'subjectStatus':
        if (subjectStatus != null) {
          fields.add(subjectStatus!);
        }
      case 'actualPeriod':
        if (actualPeriod != null) {
          fields.add(actualPeriod!);
        }
      case 'plannedStartDate':
        if (plannedStartDate != null) {
          fields.add(plannedStartDate!);
        }
      case 'plannedEndDate':
        if (plannedEndDate != null) {
          fields.add(plannedEndDate!);
        }
      case 'length':
        if (length != null) {
          fields.add(length!);
        }
      case 'location':
        if (location != null) {
          fields.addAll(location!);
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
  EncounterHistory clone() => copyWith();

  /// Copy function for [EncounterHistory]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $EncounterHistoryCopyWith<EncounterHistory> get copyWith =>
      _$EncounterHistoryCopyWithImpl<EncounterHistory>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EncounterHistory) {
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
    if (!equalsDeepWithNull(
      encounter,
      o.encounter,
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
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      class_,
      o.class_,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<CodeableReference>(
      serviceType,
      o.serviceType,
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
      subjectStatus,
      o.subjectStatus,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      actualPeriod,
      o.actualPeriod,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      plannedStartDate,
      o.plannedStartDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      plannedEndDate,
      o.plannedEndDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      length,
      o.length,
    )) {
      return false;
    }
    if (!listEquals<EncounterHistoryLocation>(
      location,
      o.location,
    )) {
      return false;
    }
    return true;
  }
}

/// [EncounterHistoryLocation]
/// The location of the patient at this point in the encounter, the
/// multiple cardinality permits de-normalizing the levels of the location
/// hierarchy, such as site/ward/room/bed.
class EncounterHistoryLocation extends BackboneElement {
  /// Primary constructor for
  /// [EncounterHistoryLocation]

  const EncounterHistoryLocation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.location,
    this.form,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EncounterHistoryLocation.fromJson(
    Map<String, dynamic> json,
  ) {
    return EncounterHistoryLocation(
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
      location: JsonParser.parseObject<Reference>(
        json,
        'location',
        Reference.fromJson,
      )!,
      form: JsonParser.parseObject<CodeableConcept>(
        json,
        'form',
        CodeableConcept.fromJson,
      ),
    );
  }

  /// Deserialize [EncounterHistoryLocation]
  /// from a [String] or [YamlMap] object
  factory EncounterHistoryLocation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EncounterHistoryLocation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EncounterHistoryLocation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EncounterHistoryLocation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EncounterHistoryLocation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EncounterHistoryLocation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EncounterHistoryLocation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EncounterHistoryLocation';

  /// [location]
  /// The location where the encounter takes place.
  final Reference location;

  /// [form]
  /// This will be used to specify the required levels (bed/ward/room/etc.)
  /// desired to be recorded to simplify either messaging or query.
  final CodeableConcept? form;
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
      'location',
      location,
    );
    addField(
      'form',
      form,
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
      'location',
      'form',
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
      case 'location':
        fields.add(location);
      case 'form':
        if (form != null) {
          fields.add(form!);
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
  EncounterHistoryLocation clone() => copyWith();

  /// Copy function for [EncounterHistoryLocation]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $EncounterHistoryLocationCopyWith<EncounterHistoryLocation> get copyWith =>
      _$EncounterHistoryLocationCopyWithImpl<EncounterHistoryLocation>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EncounterHistoryLocation) {
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
      location,
      o.location,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      form,
      o.form,
    )) {
      return false;
    }
    return true;
  }
}
