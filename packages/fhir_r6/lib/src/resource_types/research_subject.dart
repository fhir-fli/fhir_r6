import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'research_subject.g.dart';

/// [ResearchSubject]
/// A ResearchSubject is a participant or object which is the recipient of
/// investigative activities in a research study.
class ResearchSubject extends DomainResource {
  /// Primary constructor for
  /// [ResearchSubject]

  const ResearchSubject({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    this.progress,
    this.period,
    required this.study,
    required this.subject,
    this.assignedComparisonGroup,
    this.actualComparisonGroup,
    this.consent,
  }) : super(
          resourceType: R5ResourceType.ResearchSubject,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchSubject.fromJson(
    Map<String, dynamic> json,
  ) {
    return ResearchSubject(
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
      status: JsonParser.parsePrimitive<PublicationStatus>(
        json,
        'status',
        PublicationStatus.fromJson,
      )!,
      progress: (json['progress'] as List<dynamic>?)
          ?.map<ResearchSubjectProgress>(
            (v) => ResearchSubjectProgress.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
      ),
      study: JsonParser.parseObject<Reference>(
        json,
        'study',
        Reference.fromJson,
      )!,
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
      )!,
      assignedComparisonGroup: JsonParser.parsePrimitive<FhirId>(
        json,
        'assignedComparisonGroup',
        FhirId.fromJson,
      ),
      actualComparisonGroup: JsonParser.parsePrimitive<FhirId>(
        json,
        'actualComparisonGroup',
        FhirId.fromJson,
      ),
      consent: (json['consent'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ResearchSubject]
  /// from a [String] or [YamlMap] object
  factory ResearchSubject.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ResearchSubject.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ResearchSubject.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ResearchSubject '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ResearchSubject]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchSubject.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ResearchSubject.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ResearchSubject';

  /// [identifier]
  /// Identifiers assigned to this research subject for a study.
  final List<Identifier>? identifier;

  /// [status]
  /// The publication state of the resource (not of the subject).
  final PublicationStatus status;

  /// [progress]
  /// The current state (status) of the subject and resons for status change
  /// where appropriate.
  final List<ResearchSubjectProgress>? progress;

  /// [period]
  /// The dates the subject began and ended their participation in the study.
  final Period? period;

  /// [study]
  /// Reference to the study the subject is participating in.
  final Reference study;

  /// [subject]
  /// The record of the person, animal or other entity involved in the study.
  final Reference subject;

  /// [assignedComparisonGroup]
  /// The name of the arm in the study the subject is expected to follow as
  /// part of this study.
  final FhirId? assignedComparisonGroup;

  /// [actualComparisonGroup]
  /// The name of the arm in the study the subject actually followed as part
  /// of this study.
  final FhirId? actualComparisonGroup;

  /// [consent]
  /// A record of the patient's informed agreement to participate in the
  /// study.
  final List<Reference>? consent;
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
      'status',
      status,
    );
    addField(
      'progress',
      progress,
    );
    addField(
      'period',
      period,
    );
    addField(
      'study',
      study,
    );
    addField(
      'subject',
      subject,
    );
    addField(
      'assignedComparisonGroup',
      assignedComparisonGroup,
    );
    addField(
      'actualComparisonGroup',
      actualComparisonGroup,
    );
    addField(
      'consent',
      consent,
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
      'status',
      'progress',
      'period',
      'study',
      'subject',
      'assignedComparisonGroup',
      'actualComparisonGroup',
      'consent',
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
      case 'status':
        fields.add(status);
      case 'progress':
        if (progress != null) {
          fields.addAll(progress!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      case 'study':
        fields.add(study);
      case 'subject':
        fields.add(subject);
      case 'assignedComparisonGroup':
        if (assignedComparisonGroup != null) {
          fields.add(assignedComparisonGroup!);
        }
      case 'actualComparisonGroup':
        if (actualComparisonGroup != null) {
          fields.add(actualComparisonGroup!);
        }
      case 'consent':
        if (consent != null) {
          fields.addAll(consent!);
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
  ResearchSubject clone() => copyWith();

  /// Copy function for [ResearchSubject]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ResearchSubjectCopyWith<ResearchSubject> get copyWith =>
      _$ResearchSubjectCopyWithImpl<ResearchSubject>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ResearchSubject) {
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
      status,
      o.status,
    )) {
      return false;
    }
    if (!listEquals<ResearchSubjectProgress>(
      progress,
      o.progress,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      period,
      o.period,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      study,
      o.study,
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
      assignedComparisonGroup,
      o.assignedComparisonGroup,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      actualComparisonGroup,
      o.actualComparisonGroup,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      consent,
      o.consent,
    )) {
      return false;
    }
    return true;
  }
}

/// [ResearchSubjectProgress]
/// The current state (status) of the subject and resons for status change
/// where appropriate.
class ResearchSubjectProgress extends BackboneElement {
  /// Primary constructor for
  /// [ResearchSubjectProgress]

  const ResearchSubjectProgress({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.subjectState,
    this.milestone,
    this.reason,
    this.startDate,
    this.endDate,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchSubjectProgress.fromJson(
    Map<String, dynamic> json,
  ) {
    return ResearchSubjectProgress(
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
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      subjectState: JsonParser.parseObject<CodeableConcept>(
        json,
        'subjectState',
        CodeableConcept.fromJson,
      ),
      milestone: JsonParser.parseObject<CodeableConcept>(
        json,
        'milestone',
        CodeableConcept.fromJson,
      ),
      reason: JsonParser.parseObject<CodeableConcept>(
        json,
        'reason',
        CodeableConcept.fromJson,
      ),
      startDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'startDate',
        FhirDateTime.fromJson,
      ),
      endDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'endDate',
        FhirDateTime.fromJson,
      ),
    );
  }

  /// Deserialize [ResearchSubjectProgress]
  /// from a [String] or [YamlMap] object
  factory ResearchSubjectProgress.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ResearchSubjectProgress.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ResearchSubjectProgress.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ResearchSubjectProgress '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ResearchSubjectProgress]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchSubjectProgress.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ResearchSubjectProgress.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ResearchSubjectProgress';

  /// [type]
  /// Identifies the aspect of the subject's journey that the state refers
  /// to.
  final CodeableConcept? type;

  /// [subjectState]
  /// The current state of the subject.
  final CodeableConcept? subjectState;

  /// [milestone]
  /// The milestones the subject has passed through.
  final CodeableConcept? milestone;

  /// [reason]
  /// The reason for the state change. If coded it should follow the formal
  /// subject state model.
  final CodeableConcept? reason;

  /// [startDate]
  /// The date when the new status started.
  final FhirDateTime? startDate;

  /// [endDate]
  /// The date when the state ended.
  final FhirDateTime? endDate;
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
      'subjectState',
      subjectState,
    );
    addField(
      'milestone',
      milestone,
    );
    addField(
      'reason',
      reason,
    );
    addField(
      'startDate',
      startDate,
    );
    addField(
      'endDate',
      endDate,
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
      'subjectState',
      'milestone',
      'reason',
      'startDate',
      'endDate',
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
      case 'subjectState':
        if (subjectState != null) {
          fields.add(subjectState!);
        }
      case 'milestone':
        if (milestone != null) {
          fields.add(milestone!);
        }
      case 'reason':
        if (reason != null) {
          fields.add(reason!);
        }
      case 'startDate':
        if (startDate != null) {
          fields.add(startDate!);
        }
      case 'endDate':
        if (endDate != null) {
          fields.add(endDate!);
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
  ResearchSubjectProgress clone() => copyWith();

  /// Copy function for [ResearchSubjectProgress]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ResearchSubjectProgressCopyWith<ResearchSubjectProgress> get copyWith =>
      _$ResearchSubjectProgressCopyWithImpl<ResearchSubjectProgress>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ResearchSubjectProgress) {
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
      subjectState,
      o.subjectState,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      milestone,
      o.milestone,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reason,
      o.reason,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      startDate,
      o.startDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      endDate,
      o.endDate,
    )) {
      return false;
    }
    return true;
  }
}
