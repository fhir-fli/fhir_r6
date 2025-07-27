import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'imaging_selection.g.dart';

/// [ImagingSelection]
/// A selection of DICOM SOP instances and/or frames within a single Study
/// and Series. This might include additional specifics such as an image
/// region, an Observation UID or a Segmentation Number, allowing linkage
/// to an Observation Resource or transferring this information along with
/// the ImagingStudy Resource.
class ImagingSelection extends DomainResource {
  /// Primary constructor for
  /// [ImagingSelection]

  const ImagingSelection({
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
    this.subject,
    this.issued,
    this.performer,
    this.basedOn,
    this.category,
    required this.code,
    this.studyUid,
    this.derivedFrom,
    this.endpoint,
    this.seriesUid,
    this.seriesNumber,
    this.frameOfReferenceUid,
    this.bodySite,
    this.focus,
    this.instance,
  }) : super(
          resourceType: R6ResourceType.ImagingSelection,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImagingSelection.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImagingSelection(
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
      status: JsonParser.parsePrimitive<ImagingSelectionStatus>(
        json,
        'status',
        ImagingSelectionStatus.fromJson,
      )!,
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
      ),
      issued: JsonParser.parsePrimitive<FhirInstant>(
        json,
        'issued',
        FhirInstant.fromJson,
      ),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<ImagingSelectionPerformer>(
            (v) => ImagingSelectionPerformer.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      )!,
      studyUid: JsonParser.parsePrimitive<FhirId>(
        json,
        'studyUid',
        FhirId.fromJson,
      ),
      derivedFrom: (json['derivedFrom'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      endpoint: (json['endpoint'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      seriesUid: JsonParser.parsePrimitive<FhirId>(
        json,
        'seriesUid',
        FhirId.fromJson,
      ),
      seriesNumber: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'seriesNumber',
        FhirUnsignedInt.fromJson,
      ),
      frameOfReferenceUid: JsonParser.parsePrimitive<FhirId>(
        json,
        'frameOfReferenceUid',
        FhirId.fromJson,
      ),
      bodySite: JsonParser.parseObject<CodeableReference>(
        json,
        'bodySite',
        CodeableReference.fromJson,
      ),
      focus: (json['focus'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      instance: (json['instance'] as List<dynamic>?)
          ?.map<ImagingSelectionInstance>(
            (v) => ImagingSelectionInstance.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ImagingSelection]
  /// from a [String] or [YamlMap] object
  factory ImagingSelection.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImagingSelection.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImagingSelection.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImagingSelection '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImagingSelection]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImagingSelection.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImagingSelection.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImagingSelection';

  /// [identifier]
  /// A unique identifier assigned to this imaging selection.
  final List<Identifier>? identifier;

  /// [status]
  /// The current state of the ImagingSelection resource. This is not the
  /// status of any ImagingStudy, ServiceRequest, or Task resources
  /// associated with the ImagingSelection.
  final ImagingSelectionStatus status;

  /// [subject]
  /// The patient, or group of patients, location, device, organization,
  /// procedure or practitioner this imaging selection is about and into
  /// whose or what record the imaging selection is placed.
  final Reference? subject;

  /// [issued]
  /// The date and time this imaging selection was created.
  final FhirInstant? issued;

  /// [performer]
  /// Selector of the instances – human or machine.
  final List<ImagingSelectionPerformer>? performer;

  /// [basedOn]
  /// A list of the diagnostic requests that resulted in this imaging
  /// selection being performed.
  final List<Reference>? basedOn;

  /// [category]
  /// Classifies the imaging selection.
  final List<CodeableConcept>? category;

  /// [code]
  /// Reason for referencing the selected content.
  final CodeableConcept code;

  /// [studyUid]
  /// The Study Instance UID for the DICOM Study from which the images were
  /// selected.
  final FhirId? studyUid;

  /// [derivedFrom]
  /// The imaging study from which the imaging selection is made.
  final List<Reference>? derivedFrom;

  /// [endpoint]
  /// The network service providing retrieval access to the selected images,
  /// frames, etc. See implementation notes for information about using DICOM
  /// endpoints.
  final List<Reference>? endpoint;

  /// [seriesUid]
  /// The Series Instance UID for the DICOM Series from which the images were
  /// selected.
  final FhirId? seriesUid;

  /// [seriesNumber]
  /// The Series Number for the DICOM Series from which the images were
  /// selected.
  final FhirUnsignedInt? seriesNumber;

  /// [frameOfReferenceUid]
  /// The Frame of Reference UID identifying the coordinate system that
  /// conveys spatial and/or temporal information for the selected images or
  /// frames.
  final FhirId? frameOfReferenceUid;

  /// [bodySite]
  /// The anatomic structures examined. See DICOM Part 16 Annex L
  /// (http://dicom.nema.org/medical/dicom/current/output/chtml/part16/chapter_L.html)
  /// for DICOM to SNOMED-CT mappings.
  final CodeableReference? bodySite;

  /// [focus]
  /// The actual focus of an observation when it is not the patient of record
  /// representing something or someone associated with the patient such as a
  /// spouse, parent, fetus, or donor. For example, fetus observations in a
  /// mother's record. The focus of an observation could also be an existing
  /// condition, an intervention, the subject's diet, another observation of
  /// the subject, or a body structure such as tumor or implanted device. An
  /// example use case would be using the Observation resource to capture
  /// whether the mother is trained to change her child's tracheostomy tube.
  /// In this example, the child is the patient of record and the mother is
  /// the focus.
  final List<Reference>? focus;

  /// [instance]
  /// Each imaging selection includes one or more selected DICOM SOP
  /// instances.
  final List<ImagingSelectionInstance>? instance;
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
      'subject',
      subject,
    );
    addField(
      'issued',
      issued,
    );
    addField(
      'performer',
      performer,
    );
    addField(
      'basedOn',
      basedOn,
    );
    addField(
      'category',
      category,
    );
    addField(
      'code',
      code,
    );
    addField(
      'studyUid',
      studyUid,
    );
    addField(
      'derivedFrom',
      derivedFrom,
    );
    addField(
      'endpoint',
      endpoint,
    );
    addField(
      'seriesUid',
      seriesUid,
    );
    addField(
      'seriesNumber',
      seriesNumber,
    );
    addField(
      'frameOfReferenceUid',
      frameOfReferenceUid,
    );
    addField(
      'bodySite',
      bodySite,
    );
    addField(
      'focus',
      focus,
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
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'identifier',
      'status',
      'subject',
      'issued',
      'performer',
      'basedOn',
      'category',
      'code',
      'studyUid',
      'derivedFrom',
      'endpoint',
      'seriesUid',
      'seriesNumber',
      'frameOfReferenceUid',
      'bodySite',
      'focus',
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
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'issued':
        if (issued != null) {
          fields.add(issued!);
        }
      case 'performer':
        if (performer != null) {
          fields.addAll(performer!);
        }
      case 'basedOn':
        if (basedOn != null) {
          fields.addAll(basedOn!);
        }
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'code':
        fields.add(code);
      case 'studyUid':
        if (studyUid != null) {
          fields.add(studyUid!);
        }
      case 'derivedFrom':
        if (derivedFrom != null) {
          fields.addAll(derivedFrom!);
        }
      case 'endpoint':
        if (endpoint != null) {
          fields.addAll(endpoint!);
        }
      case 'seriesUid':
        if (seriesUid != null) {
          fields.add(seriesUid!);
        }
      case 'seriesNumber':
        if (seriesNumber != null) {
          fields.add(seriesNumber!);
        }
      case 'frameOfReferenceUid':
        if (frameOfReferenceUid != null) {
          fields.add(frameOfReferenceUid!);
        }
      case 'bodySite':
        if (bodySite != null) {
          fields.add(bodySite!);
        }
      case 'focus':
        if (focus != null) {
          fields.addAll(focus!);
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
  ImagingSelection clone() => copyWith();

  /// Copy function for [ImagingSelection]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ImagingSelectionCopyWith<ImagingSelection> get copyWith =>
      _$ImagingSelectionCopyWithImpl<ImagingSelection>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ImagingSelection) {
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
    if (!equalsDeepWithNull(
      subject,
      o.subject,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      issued,
      o.issued,
    )) {
      return false;
    }
    if (!listEquals<ImagingSelectionPerformer>(
      performer,
      o.performer,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      basedOn,
      o.basedOn,
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
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      studyUid,
      o.studyUid,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      derivedFrom,
      o.derivedFrom,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      endpoint,
      o.endpoint,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      seriesUid,
      o.seriesUid,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      seriesNumber,
      o.seriesNumber,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      frameOfReferenceUid,
      o.frameOfReferenceUid,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      bodySite,
      o.bodySite,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      focus,
      o.focus,
    )) {
      return false;
    }
    if (!listEquals<ImagingSelectionInstance>(
      instance,
      o.instance,
    )) {
      return false;
    }
    return true;
  }
}

/// [ImagingSelectionPerformer]
/// Selector of the instances – human or machine.
class ImagingSelectionPerformer extends BackboneElement {
  /// Primary constructor for
  /// [ImagingSelectionPerformer]

  const ImagingSelectionPerformer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    this.actor,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImagingSelectionPerformer.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImagingSelectionPerformer(
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
      ),
    );
  }

  /// Deserialize [ImagingSelectionPerformer]
  /// from a [String] or [YamlMap] object
  factory ImagingSelectionPerformer.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImagingSelectionPerformer.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImagingSelectionPerformer.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImagingSelectionPerformer '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImagingSelectionPerformer]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImagingSelectionPerformer.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImagingSelectionPerformer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImagingSelectionPerformer';

  /// [function_]
  /// Distinguishes the type of involvement of the performer.
  final CodeableConcept? function_;

  /// [actor]
  /// Author – human or machine.
  final Reference? actor;
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
        if (actor != null) {
          fields.add(actor!);
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
  ImagingSelectionPerformer clone() => copyWith();

  /// Copy function for [ImagingSelectionPerformer]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ImagingSelectionPerformerCopyWith<ImagingSelectionPerformer> get copyWith =>
      _$ImagingSelectionPerformerCopyWithImpl<ImagingSelectionPerformer>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ImagingSelectionPerformer) {
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
      function_,
      o.function_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      actor,
      o.actor,
    )) {
      return false;
    }
    return true;
  }
}

/// [ImagingSelectionInstance]
/// Each imaging selection includes one or more selected DICOM SOP
/// instances.
class ImagingSelectionInstance extends BackboneElement {
  /// Primary constructor for
  /// [ImagingSelectionInstance]

  const ImagingSelectionInstance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.uid,
    this.number,
    this.sopClass,
    this.subset,
    this.imageRegion2D,
    this.imageRegion3D,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImagingSelectionInstance.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImagingSelectionInstance(
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
      sopClass: JsonParser.parseObject<Coding>(
        json,
        'sopClass',
        Coding.fromJson,
      ),
      subset: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'subset',
        FhirString.fromJson,
      ),
      imageRegion2D: (json['imageRegion2D'] as List<dynamic>?)
          ?.map<ImagingSelectionImageRegion2D>(
            (v) => ImagingSelectionImageRegion2D.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      imageRegion3D: (json['imageRegion3D'] as List<dynamic>?)
          ?.map<ImagingSelectionImageRegion3D>(
            (v) => ImagingSelectionImageRegion3D.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ImagingSelectionInstance]
  /// from a [String] or [YamlMap] object
  factory ImagingSelectionInstance.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImagingSelectionInstance.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImagingSelectionInstance.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImagingSelectionInstance '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImagingSelectionInstance]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImagingSelectionInstance.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImagingSelectionInstance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImagingSelectionInstance';

  /// [uid]
  /// The SOP Instance UID for the selected DICOM instance.
  final FhirId uid;

  /// [number]
  /// The Instance Number for the selected DICOM instance.
  final FhirUnsignedInt? number;

  /// [sopClass]
  /// The SOP Class UID for the selected DICOM instance.
  final Coding? sopClass;

  /// [subset]
  /// Selected subset of the SOP Instance. The content and format of the
  /// subset item is determined by the SOP Class of the selected instance.
  ///  May be one of:
  ///  - A list of frame numbers selected from a multiframe SOP Instance.
  ///  - A list of Content Item Observation UID values selected from a DICOM
  /// SR or other structured document SOP Instance.
  ///  - A list of segment numbers selected from a segmentation SOP Instance.
  ///  - A list of Region of Interest (ROI) numbers selected from a
  /// radiotherapy structure set SOP Instance.
  final List<FhirString>? subset;

  /// [imageRegion2D]
  /// Each imaging selection instance or frame list might includes an image
  /// region, specified by a region type and a set of 2D coordinates.
  ///  If the parent imagingSelection.instance contains a subset element of
  /// type frame, the image region applies to all frames in the subset list.
  final List<ImagingSelectionImageRegion2D>? imageRegion2D;

  /// [imageRegion3D]
  /// Each imaging selection might includes a 3D image region, specified by a
  /// region type and a set of 3D coordinates.
  final List<ImagingSelectionImageRegion3D>? imageRegion3D;
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
      'sopClass',
      sopClass,
    );
    addField(
      'subset',
      subset,
    );
    addField(
      'imageRegion2D',
      imageRegion2D,
    );
    addField(
      'imageRegion3D',
      imageRegion3D,
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
      'sopClass',
      'subset',
      'imageRegion2D',
      'imageRegion3D',
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
      case 'sopClass':
        if (sopClass != null) {
          fields.add(sopClass!);
        }
      case 'subset':
        if (subset != null) {
          fields.addAll(subset!);
        }
      case 'imageRegion2D':
        if (imageRegion2D != null) {
          fields.addAll(imageRegion2D!);
        }
      case 'imageRegion3D':
        if (imageRegion3D != null) {
          fields.addAll(imageRegion3D!);
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
  ImagingSelectionInstance clone() => copyWith();

  /// Copy function for [ImagingSelectionInstance]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ImagingSelectionInstanceCopyWith<ImagingSelectionInstance> get copyWith =>
      _$ImagingSelectionInstanceCopyWithImpl<ImagingSelectionInstance>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ImagingSelectionInstance) {
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
      uid,
      o.uid,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      number,
      o.number,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sopClass,
      o.sopClass,
    )) {
      return false;
    }
    if (!listEquals<FhirString>(
      subset,
      o.subset,
    )) {
      return false;
    }
    if (!listEquals<ImagingSelectionImageRegion2D>(
      imageRegion2D,
      o.imageRegion2D,
    )) {
      return false;
    }
    if (!listEquals<ImagingSelectionImageRegion3D>(
      imageRegion3D,
      o.imageRegion3D,
    )) {
      return false;
    }
    return true;
  }
}

/// [ImagingSelectionImageRegion2D]
/// Each imaging selection instance or frame list might includes an image
/// region, specified by a region type and a set of 2D coordinates.
///  If the parent imagingSelection.instance contains a subset element of
/// type frame, the image region applies to all frames in the subset list.
class ImagingSelectionImageRegion2D extends BackboneElement {
  /// Primary constructor for
  /// [ImagingSelectionImageRegion2D]

  const ImagingSelectionImageRegion2D({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.regionType,
    required this.coordinate,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImagingSelectionImageRegion2D.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImagingSelectionImageRegion2D(
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
      regionType: JsonParser.parsePrimitive<ImagingSelection2DGraphicType>(
        json,
        'regionType',
        ImagingSelection2DGraphicType.fromJson,
      )!,
      coordinate: JsonParser.parsePrimitiveList<FhirDecimal>(
        json,
        'coordinate',
        FhirDecimal.fromJson,
      )!,
    );
  }

  /// Deserialize [ImagingSelectionImageRegion2D]
  /// from a [String] or [YamlMap] object
  factory ImagingSelectionImageRegion2D.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImagingSelectionImageRegion2D.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImagingSelectionImageRegion2D.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImagingSelectionImageRegion2D '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImagingSelectionImageRegion2D]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImagingSelectionImageRegion2D.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImagingSelectionImageRegion2D.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImagingSelectionImageRegion2D';

  /// [regionType]
  /// Specifies the type of image region.
  final ImagingSelection2DGraphicType regionType;

  /// [coordinate]
  /// The coordinates describing the image region. Encoded as a set of
  /// (column, row) pairs that denote positions in the selected image /
  /// frames specified with sub-pixel resolution.
  ///  The origin at the TLHC of the TLHC pixel is 0.0\0.0, the BRHC of the
  /// TLHC pixel is 1.0\1.0, and the BRHC of the BRHC pixel is the number of
  /// columns\rows in the image / frames. The values must be within the range
  /// 0\0 to the number of columns\rows in the image / frames.
  final List<FhirDecimal> coordinate;
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
      'regionType',
      regionType,
    );
    addField(
      'coordinate',
      coordinate,
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
      'regionType',
      'coordinate',
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
      case 'regionType':
        fields.add(regionType);
      case 'coordinate':
        fields.addAll(coordinate);
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
  ImagingSelectionImageRegion2D clone() => copyWith();

  /// Copy function for [ImagingSelectionImageRegion2D]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ImagingSelectionImageRegion2DCopyWith<ImagingSelectionImageRegion2D>
      get copyWith => _$ImagingSelectionImageRegion2DCopyWithImpl<
              ImagingSelectionImageRegion2D>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ImagingSelectionImageRegion2D) {
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
      regionType,
      o.regionType,
    )) {
      return false;
    }
    if (!listEquals<FhirDecimal>(
      coordinate,
      o.coordinate,
    )) {
      return false;
    }
    return true;
  }
}

/// [ImagingSelectionImageRegion3D]
/// Each imaging selection might includes a 3D image region, specified by a
/// region type and a set of 3D coordinates.
class ImagingSelectionImageRegion3D extends BackboneElement {
  /// Primary constructor for
  /// [ImagingSelectionImageRegion3D]

  const ImagingSelectionImageRegion3D({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.regionType,
    required this.coordinate,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImagingSelectionImageRegion3D.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImagingSelectionImageRegion3D(
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
      regionType: JsonParser.parsePrimitive<ImagingSelection3DGraphicType>(
        json,
        'regionType',
        ImagingSelection3DGraphicType.fromJson,
      )!,
      coordinate: JsonParser.parsePrimitiveList<FhirDecimal>(
        json,
        'coordinate',
        FhirDecimal.fromJson,
      )!,
    );
  }

  /// Deserialize [ImagingSelectionImageRegion3D]
  /// from a [String] or [YamlMap] object
  factory ImagingSelectionImageRegion3D.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImagingSelectionImageRegion3D.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImagingSelectionImageRegion3D.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImagingSelectionImageRegion3D '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImagingSelectionImageRegion3D]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImagingSelectionImageRegion3D.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImagingSelectionImageRegion3D.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImagingSelectionImageRegion3D';

  /// [regionType]
  /// Specifies the type of image region.
  final ImagingSelection3DGraphicType regionType;

  /// [coordinate]
  /// The coordinates describing the image region. Encoded as an ordered set
  /// of (x,y,z) triplets (in mm and may be negative) that define a region of
  /// interest in the patient-relative Reference Coordinate System defined by
  /// ImagingSelection.frameOfReferenceUid element.
  final List<FhirDecimal> coordinate;
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
      'regionType',
      regionType,
    );
    addField(
      'coordinate',
      coordinate,
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
      'regionType',
      'coordinate',
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
      case 'regionType':
        fields.add(regionType);
      case 'coordinate':
        fields.addAll(coordinate);
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
  ImagingSelectionImageRegion3D clone() => copyWith();

  /// Copy function for [ImagingSelectionImageRegion3D]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ImagingSelectionImageRegion3DCopyWith<ImagingSelectionImageRegion3D>
      get copyWith => _$ImagingSelectionImageRegion3DCopyWithImpl<
              ImagingSelectionImageRegion3D>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ImagingSelectionImageRegion3D) {
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
      regionType,
      o.regionType,
    )) {
      return false;
    }
    if (!listEquals<FhirDecimal>(
      coordinate,
      o.coordinate,
    )) {
      return false;
    }
    return true;
  }
}
