import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'imaging_study.g.dart';

/// [ImagingStudy]
/// Representation of the content produced in a DICOM imaging study. A
/// study comprises a set of series, each of which includes a set of
/// Service-Object Pair Instances (SOP Instances - images or other data)
/// acquired or produced in a common context. A series is of only one
/// modality (e.g. X-ray, CT, MR, ultrasound), but a study may have
/// multiple series of different modality values.
class ImagingStudy extends DomainResource {
  /// Primary constructor for
  /// [ImagingStudy]

  const ImagingStudy({
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
    this.modality,
    required this.subject,
    this.encounter,
    this.started,
    this.basedOn,
    this.partOf,
    this.referrer,
    this.endpoint,
    this.procedure,
    this.location,
    this.reason,
    this.note,
    this.description,
    this.numberOfSeries,
    this.numberOfInstances,
    this.series,
  }) : super(
          resourceType: R6ResourceType.ImagingStudy,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImagingStudy.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImagingStudy(
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
      status: JsonParser.parsePrimitive<ImagingStudyStatus>(
        json,
        'status',
        ImagingStudyStatus.fromJson,
      )!,
      modality: (json['modality'] as List<dynamic>?)
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
      )!,
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
      ),
      started: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'started',
        FhirDateTime.fromJson,
      ),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      referrer: JsonParser.parseObject<Reference>(
        json,
        'referrer',
        Reference.fromJson,
      ),
      endpoint: (json['endpoint'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      procedure: (json['procedure'] as List<dynamic>?)
          ?.map<CodeableReference>(
            (v) => CodeableReference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      location: JsonParser.parseObject<Reference>(
        json,
        'location',
        Reference.fromJson,
      ),
      reason: (json['reason'] as List<dynamic>?)
          ?.map<CodeableReference>(
            (v) => CodeableReference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
      ),
      numberOfSeries: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'numberOfSeries',
        FhirUnsignedInt.fromJson,
      ),
      numberOfInstances: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'numberOfInstances',
        FhirUnsignedInt.fromJson,
      ),
      series: (json['series'] as List<dynamic>?)
          ?.map<ImagingStudySeries>(
            (v) => ImagingStudySeries.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ImagingStudy]
  /// from a [String] or [YamlMap] object
  factory ImagingStudy.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImagingStudy.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImagingStudy.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImagingStudy '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImagingStudy]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImagingStudy.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImagingStudy.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImagingStudy';

  /// [identifier]
  /// Business identifiers assigned to this imaging study by the performer
  /// and/or other systems. These identifiers remain constant as the resource
  /// is updated and propagates from server to server. Typically this will
  /// include the DICOM Study Instance UID.
  final List<Identifier>? identifier;

  /// [status]
  /// The current state of the imaging study. This is distinct from the
  /// status of any service request or task associated with the imaging
  /// study.
  final ImagingStudyStatus status;

  /// [modality]
  /// All the distinct values of series.modality. This may be either an
  /// acquisition or a non-acquisition modality.
  final List<CodeableConcept>? modality;

  /// [subject]
  /// The subject, typically a patient, of the imaging study.
  final Reference subject;

  /// [encounter]
  /// The healthcare event (e.g. a patient and healthcare provider
  /// interaction) during which this ImagingStudy is made.
  final Reference? encounter;

  /// [started]
  /// Date and time the study started.
  final FhirDateTime? started;

  /// [basedOn]
  /// A plan or order that is fulfilled in whole or in part by this imaging
  /// study.
  final List<Reference>? basedOn;

  /// [partOf]
  /// A larger event of which this particular ImagingStudy is a component or
  /// step. For example, an ImagingStudy as part of a procedure.
  final List<Reference>? partOf;

  /// [referrer]
  /// The referring physician.
  final Reference? referrer;

  /// [endpoint]
  /// The network service providing access (e.g., query, view, or retrieval)
  /// for the study. See implementation notes for information about using
  /// DICOM endpoints. A study-level endpoint applies to each series in the
  /// study, unless overridden by a series-level endpoint with the same
  /// Endpoint.connectionType.
  final List<Reference>? endpoint;

  /// [procedure]
  /// A procedure or set of procedures during which this imaging study data
  /// was created.
  final List<CodeableReference>? procedure;

  /// [location]
  /// The principal physical location where the imaging study was performed.
  final Reference? location;

  /// [reason]
  /// Describes why the imaging study occurred in coded or textual form or
  /// indicates another resource whose existence justifies this imaging
  /// study.
  final List<CodeableReference>? reason;

  /// [note]
  /// Comments made about the imaging study by the performer, subject or
  /// other participants.
  final List<Annotation>? note;

  /// [description]
  /// Description or classification of the imaging study.
  final FhirString? description;

  /// [numberOfSeries]
  /// Number of known Series in the Study. This value might be present even
  /// if the ImagingStudy.series element is empty or only partially
  /// populated.
  final FhirUnsignedInt? numberOfSeries;

  /// [numberOfInstances]
  /// Number of known SOP Instances in Study. This value might be present
  /// even if the ImagingStudy.series.instance elements are empty or only
  /// partially populated.
  final FhirUnsignedInt? numberOfInstances;

  /// [series]
  /// The set of Series belonging to the study. Each Series contains a set of
  /// SOP Instances, which could be images, waveforms, or other content.
  final List<ImagingStudySeries>? series;
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
      'modality',
      modality,
    );
    addField(
      'subject',
      subject,
    );
    addField(
      'encounter',
      encounter,
    );
    addField(
      'started',
      started,
    );
    addField(
      'basedOn',
      basedOn,
    );
    addField(
      'partOf',
      partOf,
    );
    addField(
      'referrer',
      referrer,
    );
    addField(
      'endpoint',
      endpoint,
    );
    addField(
      'procedure',
      procedure,
    );
    addField(
      'location',
      location,
    );
    addField(
      'reason',
      reason,
    );
    addField(
      'note',
      note,
    );
    addField(
      'description',
      description,
    );
    addField(
      'numberOfSeries',
      numberOfSeries,
    );
    addField(
      'numberOfInstances',
      numberOfInstances,
    );
    addField(
      'series',
      series,
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
      'modality',
      'subject',
      'encounter',
      'started',
      'basedOn',
      'partOf',
      'referrer',
      'endpoint',
      'procedure',
      'location',
      'reason',
      'note',
      'description',
      'numberOfSeries',
      'numberOfInstances',
      'series',
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
      case 'modality':
        if (modality != null) {
          fields.addAll(modality!);
        }
      case 'subject':
        fields.add(subject);
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'started':
        if (started != null) {
          fields.add(started!);
        }
      case 'basedOn':
        if (basedOn != null) {
          fields.addAll(basedOn!);
        }
      case 'partOf':
        if (partOf != null) {
          fields.addAll(partOf!);
        }
      case 'referrer':
        if (referrer != null) {
          fields.add(referrer!);
        }
      case 'endpoint':
        if (endpoint != null) {
          fields.addAll(endpoint!);
        }
      case 'procedure':
        if (procedure != null) {
          fields.addAll(procedure!);
        }
      case 'location':
        if (location != null) {
          fields.add(location!);
        }
      case 'reason':
        if (reason != null) {
          fields.addAll(reason!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'numberOfSeries':
        if (numberOfSeries != null) {
          fields.add(numberOfSeries!);
        }
      case 'numberOfInstances':
        if (numberOfInstances != null) {
          fields.add(numberOfInstances!);
        }
      case 'series':
        if (series != null) {
          fields.addAll(series!);
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
  ImagingStudy clone() => copyWith();

  /// Copy function for [ImagingStudy]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ImagingStudyCopyWith<ImagingStudy> get copyWith =>
      _$ImagingStudyCopyWithImpl<ImagingStudy>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ImagingStudy) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      modality,
      o.modality,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      subject,
      o.subject,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      encounter,
      o.encounter,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      started,
      o.started,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Reference>(
      basedOn,
      o.basedOn,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Reference>(
      partOf,
      o.partOf,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      referrer,
      o.referrer,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Reference>(
      endpoint,
      o.endpoint,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableReference>(
      procedure,
      o.procedure,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      location,
      o.location,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableReference>(
      reason,
      o.reason,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      numberOfSeries,
      o.numberOfSeries,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      numberOfInstances,
      o.numberOfInstances,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ImagingStudySeries>(
      series,
      o.series,
    )) {
      return false;
    }
    return true;
  }
}

/// [ImagingStudySeries]
/// The set of Series belonging to the study. Each Series contains a set of
/// SOP Instances, which could be images, waveforms, or other content.
class ImagingStudySeries extends BackboneElement {
  /// Primary constructor for
  /// [ImagingStudySeries]

  const ImagingStudySeries({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.uid,
    this.number,
    required this.modality,
    this.description,
    this.numberOfInstances,
    this.endpoint,
    this.bodySite,
    this.laterality,
    this.specimen,
    this.started,
    this.performer,
    this.instance,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImagingStudySeries.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImagingStudySeries(
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
      uid: JsonParser.parsePrimitive<FhirId>(
        json,
        'uid',
        FhirId.fromJson,
      )!,
      number: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'number',
        FhirUnsignedInt.fromJson,
      ),
      modality: JsonParser.parseObject<CodeableConcept>(
        json,
        'modality',
        CodeableConcept.fromJson,
      )!,
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
      ),
      numberOfInstances: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'numberOfInstances',
        FhirUnsignedInt.fromJson,
      ),
      endpoint: (json['endpoint'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      bodySite: JsonParser.parseObject<CodeableReference>(
        json,
        'bodySite',
        CodeableReference.fromJson,
      ),
      laterality: JsonParser.parseObject<CodeableConcept>(
        json,
        'laterality',
        CodeableConcept.fromJson,
      ),
      specimen: (json['specimen'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      started: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'started',
        FhirDateTime.fromJson,
      ),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<ImagingStudyPerformer>(
            (v) => ImagingStudyPerformer.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      instance: (json['instance'] as List<dynamic>?)
          ?.map<ImagingStudyInstance>(
            (v) => ImagingStudyInstance.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ImagingStudySeries]
  /// from a [String] or [YamlMap] object
  factory ImagingStudySeries.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImagingStudySeries.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImagingStudySeries.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImagingStudySeries '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImagingStudySeries]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImagingStudySeries.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImagingStudySeries.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImagingStudySeries';

  /// [uid]
  /// The DICOM Series Instance UID of the series.
  final FhirId uid;

  /// [number]
  /// The numeric identifier of this series in the study.
  final FhirUnsignedInt? number;

  /// [modality]
  /// The distinct modality for this series. This MAY include both
  /// acquisition and non-acquisition modalities.
  final CodeableConcept modality;

  /// [description]
  /// Description or classification of the series.
  final FhirString? description;

  /// [numberOfInstances]
  /// Number of SOP Instances in the Study. The value given MAY be larger
  /// than the number of instance elements this resource contains due to
  /// resource availability, security, or other factors. This element SHOULD
  /// be present if any instance elements are present.
  final FhirUnsignedInt? numberOfInstances;

  /// [endpoint]
  /// The network service providing access for the study. See implementation
  /// notes for information about [using DICOM
  /// endpoints](imagingstudy.html#endpoints).
  final List<Reference>? endpoint;

  /// [bodySite]
  /// The anatomic structures examined. See [DICOM Part 16 Annex
  /// L](http://dicom.nema.org/medical/dicom/current/output/chtml/part16/chapter_L.html)
  /// for DICOM to SNOMED-CT mappings. The bodySite MAY indicate the
  /// laterality of body part imaged; if so, it SHALL be consistent with any
  /// content of ImagingStudy.series.laterality.
  final CodeableReference? bodySite;

  /// [laterality]
  /// The laterality of the (possibly paired) anatomic structures examined.
  /// E.g., the left knee, both lungs, or unpaired abdomen. If present, SHALL
  /// be consistent with any laterality information indicated in
  /// ImagingStudy.series.bodySite.
  final CodeableConcept? laterality;

  /// [specimen]
  /// The specimen imaged, e.g., for whole slide imaging of a biopsy.
  final List<Reference>? specimen;

  /// [started]
  /// The date and time the series was started.
  final FhirDateTime? started;

  /// [performer]
  /// Indicates who or what performed the series and how they were involved.
  final List<ImagingStudyPerformer>? performer;

  /// [instance]
  /// A single SOP instance within the series, e.g. an image, or presentation
  /// state.
  final List<ImagingStudyInstance>? instance;
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
      'uid',
      uid,
    );
    addField(
      'number',
      number,
    );
    addField(
      'modality',
      modality,
    );
    addField(
      'description',
      description,
    );
    addField(
      'numberOfInstances',
      numberOfInstances,
    );
    addField(
      'endpoint',
      endpoint,
    );
    addField(
      'bodySite',
      bodySite,
    );
    addField(
      'laterality',
      laterality,
    );
    addField(
      'specimen',
      specimen,
    );
    addField(
      'started',
      started,
    );
    addField(
      'performer',
      performer,
    );
    addField(
      'instance',
      instance,
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
      'uid',
      'number',
      'modality',
      'description',
      'numberOfInstances',
      'endpoint',
      'bodySite',
      'laterality',
      'specimen',
      'started',
      'performer',
      'instance',
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
      case 'uid':
        fields.add(uid);
      case 'number':
        if (number != null) {
          fields.add(number!);
        }
      case 'modality':
        fields.add(modality);
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'numberOfInstances':
        if (numberOfInstances != null) {
          fields.add(numberOfInstances!);
        }
      case 'endpoint':
        if (endpoint != null) {
          fields.addAll(endpoint!);
        }
      case 'bodySite':
        if (bodySite != null) {
          fields.add(bodySite!);
        }
      case 'laterality':
        if (laterality != null) {
          fields.add(laterality!);
        }
      case 'specimen':
        if (specimen != null) {
          fields.addAll(specimen!);
        }
      case 'started':
        if (started != null) {
          fields.add(started!);
        }
      case 'performer':
        if (performer != null) {
          fields.addAll(performer!);
        }
      case 'instance':
        if (instance != null) {
          fields.addAll(instance!);
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
  ImagingStudySeries clone() => copyWith();

  /// Copy function for [ImagingStudySeries]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ImagingStudySeriesCopyWith<ImagingStudySeries> get copyWith =>
      _$ImagingStudySeriesCopyWithImpl<ImagingStudySeries>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ImagingStudySeries) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      uid,
      o.uid,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      number,
      o.number,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      modality,
      o.modality,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      numberOfInstances,
      o.numberOfInstances,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Reference>(
      endpoint,
      o.endpoint,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      bodySite,
      o.bodySite,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      laterality,
      o.laterality,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Reference>(
      specimen,
      o.specimen,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      started,
      o.started,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ImagingStudyPerformer>(
      performer,
      o.performer,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ImagingStudyInstance>(
      instance,
      o.instance,
    )) {
      return false;
    }
    return true;
  }
}

/// [ImagingStudyPerformer]
/// Indicates who or what performed the series and how they were involved.
class ImagingStudyPerformer extends BackboneElement {
  /// Primary constructor for
  /// [ImagingStudyPerformer]

  const ImagingStudyPerformer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    required this.actor,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImagingStudyPerformer.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImagingStudyPerformer(
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
      function_: JsonParser.parseObject<CodeableConcept>(
        json,
        'function',
        CodeableConcept.fromJson,
      ),
      actor: JsonParser.parseObject<Reference>(
        json,
        'actor',
        Reference.fromJson,
      )!,
    );
  }

  /// Deserialize [ImagingStudyPerformer]
  /// from a [String] or [YamlMap] object
  factory ImagingStudyPerformer.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImagingStudyPerformer.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImagingStudyPerformer.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImagingStudyPerformer '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImagingStudyPerformer]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImagingStudyPerformer.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImagingStudyPerformer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImagingStudyPerformer';

  /// [function_]
  /// Distinguishes the type of involvement of the performer in the series.
  final CodeableConcept? function_;

  /// [actor]
  /// Indicates who or what performed the series.
  final Reference actor;
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
      'function',
      function_,
    );
    addField(
      'actor',
      actor,
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
      'function',
      'actor',
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
      case 'function':
        if (function_ != null) {
          fields.add(function_!);
        }
      case 'actor':
        fields.add(actor);
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
  ImagingStudyPerformer clone() => copyWith();

  /// Copy function for [ImagingStudyPerformer]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ImagingStudyPerformerCopyWith<ImagingStudyPerformer> get copyWith =>
      _$ImagingStudyPerformerCopyWithImpl<ImagingStudyPerformer>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ImagingStudyPerformer) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      function_,
      o.function_,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      actor,
      o.actor,
    )) {
      return false;
    }
    return true;
  }
}

/// [ImagingStudyInstance]
/// A single SOP instance within the series, e.g. an image, or presentation
/// state.
class ImagingStudyInstance extends BackboneElement {
  /// Primary constructor for
  /// [ImagingStudyInstance]

  const ImagingStudyInstance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.uid,
    required this.sopClass,
    this.number,
    this.title,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImagingStudyInstance.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImagingStudyInstance(
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
      uid: JsonParser.parsePrimitive<FhirId>(
        json,
        'uid',
        FhirId.fromJson,
      )!,
      sopClass: JsonParser.parsePrimitive<FhirOid>(
        json,
        'sopClass',
        FhirOid.fromJson,
      )!,
      number: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'number',
        FhirUnsignedInt.fromJson,
      ),
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [ImagingStudyInstance]
  /// from a [String] or [YamlMap] object
  factory ImagingStudyInstance.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImagingStudyInstance.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImagingStudyInstance.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImagingStudyInstance '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImagingStudyInstance]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImagingStudyInstance.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImagingStudyInstance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImagingStudyInstance';

  /// [uid]
  /// The DICOM SOP Instance UID for this image or other DICOM content.
  final FhirId uid;

  /// [sopClass]
  /// DICOM instance type.
  final FhirOid sopClass;

  /// [number]
  /// The number of instance in the series.
  final FhirUnsignedInt? number;

  /// [title]
  /// The description of the instance.
  final FhirString? title;
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
      'uid',
      uid,
    );
    addField(
      'sopClass',
      sopClass,
    );
    addField(
      'number',
      number,
    );
    addField(
      'title',
      title,
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
      'uid',
      'sopClass',
      'number',
      'title',
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
      case 'uid':
        fields.add(uid);
      case 'sopClass':
        fields.add(sopClass);
      case 'number':
        if (number != null) {
          fields.add(number!);
        }
      case 'title':
        if (title != null) {
          fields.add(title!);
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
  ImagingStudyInstance clone() => copyWith();

  /// Copy function for [ImagingStudyInstance]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ImagingStudyInstanceCopyWith<ImagingStudyInstance> get copyWith =>
      _$ImagingStudyInstanceCopyWithImpl<ImagingStudyInstance>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ImagingStudyInstance) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      uid,
      o.uid,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      sopClass,
      o.sopClass,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      number,
      o.number,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      title,
      o.title,
    )) {
      return false;
    }
    return true;
  }
}
