import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'genomic_study.g.dart';

/// [GenomicStudy]
/// A GenomicStudy is a set of analyses performed to analyze and generate
/// genomic data.
class GenomicStudy extends DomainResource {
  /// Primary constructor for
  /// [GenomicStudy]

  const GenomicStudy({
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
    this.type,
    required this.subject,
    this.encounter,
    this.startDate,
    this.basedOn,
    this.referrer,
    this.interpreter,
    this.reason,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.note,
    this.description,
    this.analysis,
  }) : super(
          resourceType: R5ResourceType.GenomicStudy,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory GenomicStudy.fromJson(
    Map<String, dynamic> json,
  ) {
    return GenomicStudy(
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
      status: JsonParser.parsePrimitive<GenomicStudyStatus>(
        json,
        'status',
        GenomicStudyStatus.fromJson,
      )!,
      type: (json['type'] as List<dynamic>?)
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
      startDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'startDate',
        FhirDateTime.fromJson,
      ),
      basedOn: (json['basedOn'] as List<dynamic>?)
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
      interpreter: (json['interpreter'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      reason: (json['reason'] as List<dynamic>?)
          ?.map<CodeableReference>(
            (v) => CodeableReference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      instantiatesCanonical: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'instantiatesCanonical',
        FhirCanonical.fromJson,
      ),
      instantiatesUri: JsonParser.parsePrimitive<FhirUri>(
        json,
        'instantiatesUri',
        FhirUri.fromJson,
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      analysis: (json['analysis'] as List<dynamic>?)
          ?.map<GenomicStudyAnalysis>(
            (v) => GenomicStudyAnalysis.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [GenomicStudy]
  /// from a [String] or [YamlMap] object
  factory GenomicStudy.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return GenomicStudy.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return GenomicStudy.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'GenomicStudy '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [GenomicStudy]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory GenomicStudy.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return GenomicStudy.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'GenomicStudy';

  /// [identifier]
  /// Identifiers for this genomic study.
  final List<Identifier>? identifier;

  /// [status]
  /// The status of the genomic study.
  final GenomicStudyStatus status;

  /// [type]
  /// The type of the study, e.g., Familial variant segregation, Functional
  /// variation detection, or Gene expression profiling.
  final List<CodeableConcept>? type;

  /// [subject]
  /// The primary subject of the genomic study.
  final Reference subject;

  /// [encounter]
  /// The healthcare event with which this genomics study is associated.
  final Reference? encounter;

  /// [startDate]
  /// When the genomic study was started.
  final FhirDateTime? startDate;

  /// [basedOn]
  /// Event resources that the genomic study is based on.
  final List<Reference>? basedOn;

  /// [referrer]
  /// Healthcare professional who requested or referred the genomic study.
  final Reference? referrer;

  /// [interpreter]
  /// Healthcare professionals who interpreted the genomic study.
  final List<Reference>? interpreter;

  /// [reason]
  /// Why the genomic study was performed.
  final List<CodeableReference>? reason;

  /// [instantiatesCanonical]
  /// The defined protocol that describes the study.
  final FhirCanonical? instantiatesCanonical;

  /// [instantiatesUri]
  /// The URL pointing to an externally maintained protocol that describes
  /// the study.
  final FhirUri? instantiatesUri;

  /// [note]
  /// Comments related to the genomic study.
  final List<Annotation>? note;

  /// [description]
  /// Description of the genomic study.
  final FhirMarkdown? description;

  /// [analysis]
  /// The details about a specific analysis that was performed in this
  /// GenomicStudy.
  final List<GenomicStudyAnalysis>? analysis;
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
      'type',
      type,
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
      'startDate',
      startDate,
    );
    addField(
      'basedOn',
      basedOn,
    );
    addField(
      'referrer',
      referrer,
    );
    addField(
      'interpreter',
      interpreter,
    );
    addField(
      'reason',
      reason,
    );
    addField(
      'instantiatesCanonical',
      instantiatesCanonical,
    );
    addField(
      'instantiatesUri',
      instantiatesUri,
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
      'analysis',
      analysis,
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
      'type',
      'subject',
      'encounter',
      'startDate',
      'basedOn',
      'referrer',
      'interpreter',
      'reason',
      'instantiatesCanonical',
      'instantiatesUri',
      'note',
      'description',
      'analysis',
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
      case 'type':
        if (type != null) {
          fields.addAll(type!);
        }
      case 'subject':
        fields.add(subject);
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'startDate':
        if (startDate != null) {
          fields.add(startDate!);
        }
      case 'basedOn':
        if (basedOn != null) {
          fields.addAll(basedOn!);
        }
      case 'referrer':
        if (referrer != null) {
          fields.add(referrer!);
        }
      case 'interpreter':
        if (interpreter != null) {
          fields.addAll(interpreter!);
        }
      case 'reason':
        if (reason != null) {
          fields.addAll(reason!);
        }
      case 'instantiatesCanonical':
        if (instantiatesCanonical != null) {
          fields.add(instantiatesCanonical!);
        }
      case 'instantiatesUri':
        if (instantiatesUri != null) {
          fields.add(instantiatesUri!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'analysis':
        if (analysis != null) {
          fields.addAll(analysis!);
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
  GenomicStudy clone() => copyWith();

  /// Copy function for [GenomicStudy]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $GenomicStudyCopyWith<GenomicStudy> get copyWith =>
      _$GenomicStudyCopyWithImpl<GenomicStudy>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! GenomicStudy) {
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
    if (!listEquals<CodeableConcept>(
      type,
      o.type,
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
      encounter,
      o.encounter,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      startDate,
      o.startDate,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      basedOn,
      o.basedOn,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      referrer,
      o.referrer,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      interpreter,
      o.interpreter,
    )) {
      return false;
    }
    if (!listEquals<CodeableReference>(
      reason,
      o.reason,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      instantiatesCanonical,
      o.instantiatesCanonical,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      instantiatesUri,
      o.instantiatesUri,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!listEquals<GenomicStudyAnalysis>(
      analysis,
      o.analysis,
    )) {
      return false;
    }
    return true;
  }
}

/// [GenomicStudyAnalysis]
/// The details about a specific analysis that was performed in this
/// GenomicStudy.
class GenomicStudyAnalysis extends BackboneElement {
  /// Primary constructor for
  /// [GenomicStudyAnalysis]

  const GenomicStudyAnalysis({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.methodType,
    this.changeType,
    this.genomeBuild,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.title,
    this.focus,
    this.specimen,
    this.date,
    this.note,
    this.protocolPerformed,
    this.regionsStudied,
    this.regionsCalled,
    this.input,
    this.output,
    this.performer,
    this.device,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory GenomicStudyAnalysis.fromJson(
    Map<String, dynamic> json,
  ) {
    return GenomicStudyAnalysis(
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
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      methodType: (json['methodType'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      changeType: (json['changeType'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      genomeBuild: JsonParser.parseObject<CodeableConcept>(
        json,
        'genomeBuild',
        CodeableConcept.fromJson,
      ),
      instantiatesCanonical: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'instantiatesCanonical',
        FhirCanonical.fromJson,
      ),
      instantiatesUri: JsonParser.parsePrimitive<FhirUri>(
        json,
        'instantiatesUri',
        FhirUri.fromJson,
      ),
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
      ),
      focus: (json['focus'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      specimen: (json['specimen'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      protocolPerformed: JsonParser.parseObject<Reference>(
        json,
        'protocolPerformed',
        Reference.fromJson,
      ),
      regionsStudied: (json['regionsStudied'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      regionsCalled: (json['regionsCalled'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      input: (json['input'] as List<dynamic>?)
          ?.map<GenomicStudyInput>(
            (v) => GenomicStudyInput.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      output: (json['output'] as List<dynamic>?)
          ?.map<GenomicStudyOutput>(
            (v) => GenomicStudyOutput.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<GenomicStudyPerformer>(
            (v) => GenomicStudyPerformer.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      device: (json['device'] as List<dynamic>?)
          ?.map<GenomicStudyDevice>(
            (v) => GenomicStudyDevice.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [GenomicStudyAnalysis]
  /// from a [String] or [YamlMap] object
  factory GenomicStudyAnalysis.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return GenomicStudyAnalysis.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return GenomicStudyAnalysis.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'GenomicStudyAnalysis '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [GenomicStudyAnalysis]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory GenomicStudyAnalysis.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return GenomicStudyAnalysis.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'GenomicStudyAnalysis';

  /// [identifier]
  /// Identifiers for the analysis event.
  final List<Identifier>? identifier;

  /// [methodType]
  /// Type of the methods used in the analysis, e.g., Fluorescence in situ
  /// hybridization (FISH), Karyotyping, or Microsatellite instability
  /// testing (MSI).
  final List<CodeableConcept>? methodType;

  /// [changeType]
  /// Type of the genomic changes studied in the analysis, e.g., DNA, RNA, or
  /// amino acid change.
  final List<CodeableConcept>? changeType;

  /// [genomeBuild]
  /// The reference genome build that is used in this analysis.
  final CodeableConcept? genomeBuild;

  /// [instantiatesCanonical]
  /// The defined protocol that describes the analysis.
  final FhirCanonical? instantiatesCanonical;

  /// [instantiatesUri]
  /// The URL pointing to an externally maintained protocol that describes
  /// the analysis.
  final FhirUri? instantiatesUri;

  /// [title]
  /// Name of the analysis event (human friendly).
  final FhirString? title;

  /// [focus]
  /// The focus of a genomic analysis when it is not the patient of record
  /// representing something or someone associated with the patient such as a
  /// spouse, parent, child, or sibling. For example, in trio testing, the
  /// GenomicStudy.subject would be the child (proband) and the
  /// GenomicStudy.analysis.focus of a specific analysis would be the parent.
  final List<Reference>? focus;

  /// [specimen]
  /// The specimen used in the analysis event.
  final List<Reference>? specimen;

  /// [date]
  /// The date of the analysis event.
  final FhirDateTime? date;

  /// [note]
  /// Any notes capture with the analysis event.
  final List<Annotation>? note;

  /// [protocolPerformed]
  /// The protocol that was performed for the analysis event.
  final Reference? protocolPerformed;

  /// [regionsStudied]
  /// The genomic regions to be studied in the analysis (BED file).
  final List<Reference>? regionsStudied;

  /// [regionsCalled]
  /// Genomic regions actually called in the analysis event (BED file).
  final List<Reference>? regionsCalled;

  /// [input]
  /// Inputs for the analysis event.
  final List<GenomicStudyInput>? input;

  /// [output]
  /// Outputs for the analysis event.
  final List<GenomicStudyOutput>? output;

  /// [performer]
  /// Performer for the analysis event.
  final List<GenomicStudyPerformer>? performer;

  /// [device]
  /// Devices used for the analysis (e.g., instruments, software), with
  /// settings and parameters.
  final List<GenomicStudyDevice>? device;
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
      'identifier',
      identifier,
    );
    addField(
      'methodType',
      methodType,
    );
    addField(
      'changeType',
      changeType,
    );
    addField(
      'genomeBuild',
      genomeBuild,
    );
    addField(
      'instantiatesCanonical',
      instantiatesCanonical,
    );
    addField(
      'instantiatesUri',
      instantiatesUri,
    );
    addField(
      'title',
      title,
    );
    addField(
      'focus',
      focus,
    );
    addField(
      'specimen',
      specimen,
    );
    addField(
      'date',
      date,
    );
    addField(
      'note',
      note,
    );
    addField(
      'protocolPerformed',
      protocolPerformed,
    );
    addField(
      'regionsStudied',
      regionsStudied,
    );
    addField(
      'regionsCalled',
      regionsCalled,
    );
    addField(
      'input',
      input,
    );
    addField(
      'output',
      output,
    );
    addField(
      'performer',
      performer,
    );
    addField(
      'device',
      device,
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
      'identifier',
      'methodType',
      'changeType',
      'genomeBuild',
      'instantiatesCanonical',
      'instantiatesUri',
      'title',
      'focus',
      'specimen',
      'date',
      'note',
      'protocolPerformed',
      'regionsStudied',
      'regionsCalled',
      'input',
      'output',
      'performer',
      'device',
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
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'methodType':
        if (methodType != null) {
          fields.addAll(methodType!);
        }
      case 'changeType':
        if (changeType != null) {
          fields.addAll(changeType!);
        }
      case 'genomeBuild':
        if (genomeBuild != null) {
          fields.add(genomeBuild!);
        }
      case 'instantiatesCanonical':
        if (instantiatesCanonical != null) {
          fields.add(instantiatesCanonical!);
        }
      case 'instantiatesUri':
        if (instantiatesUri != null) {
          fields.add(instantiatesUri!);
        }
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'focus':
        if (focus != null) {
          fields.addAll(focus!);
        }
      case 'specimen':
        if (specimen != null) {
          fields.addAll(specimen!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'protocolPerformed':
        if (protocolPerformed != null) {
          fields.add(protocolPerformed!);
        }
      case 'regionsStudied':
        if (regionsStudied != null) {
          fields.addAll(regionsStudied!);
        }
      case 'regionsCalled':
        if (regionsCalled != null) {
          fields.addAll(regionsCalled!);
        }
      case 'input':
        if (input != null) {
          fields.addAll(input!);
        }
      case 'output':
        if (output != null) {
          fields.addAll(output!);
        }
      case 'performer':
        if (performer != null) {
          fields.addAll(performer!);
        }
      case 'device':
        if (device != null) {
          fields.addAll(device!);
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
  GenomicStudyAnalysis clone() => copyWith();

  /// Copy function for [GenomicStudyAnalysis]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $GenomicStudyAnalysisCopyWith<GenomicStudyAnalysis> get copyWith =>
      _$GenomicStudyAnalysisCopyWithImpl<GenomicStudyAnalysis>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! GenomicStudyAnalysis) {
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
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      methodType,
      o.methodType,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      changeType,
      o.changeType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      genomeBuild,
      o.genomeBuild,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      instantiatesCanonical,
      o.instantiatesCanonical,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      instantiatesUri,
      o.instantiatesUri,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      title,
      o.title,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      focus,
      o.focus,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      specimen,
      o.specimen,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      date,
      o.date,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      protocolPerformed,
      o.protocolPerformed,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      regionsStudied,
      o.regionsStudied,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      regionsCalled,
      o.regionsCalled,
    )) {
      return false;
    }
    if (!listEquals<GenomicStudyInput>(
      input,
      o.input,
    )) {
      return false;
    }
    if (!listEquals<GenomicStudyOutput>(
      output,
      o.output,
    )) {
      return false;
    }
    if (!listEquals<GenomicStudyPerformer>(
      performer,
      o.performer,
    )) {
      return false;
    }
    if (!listEquals<GenomicStudyDevice>(
      device,
      o.device,
    )) {
      return false;
    }
    return true;
  }
}

/// [GenomicStudyInput]
/// Inputs for the analysis event.
class GenomicStudyInput extends BackboneElement {
  /// Primary constructor for
  /// [GenomicStudyInput]

  const GenomicStudyInput({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.file,
    this.type,
    GeneratedByXGenomicStudyInput? generatedByX,
    Identifier? generatedByIdentifier,
    Reference? generatedByReference,
    super.disallowExtensions,
  })  : generatedByX =
            generatedByX ?? generatedByIdentifier ?? generatedByReference,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory GenomicStudyInput.fromJson(
    Map<String, dynamic> json,
  ) {
    return GenomicStudyInput(
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
      file: JsonParser.parseObject<Reference>(
        json,
        'file',
        Reference.fromJson,
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      generatedByX: JsonParser.parsePolymorphic<GeneratedByXGenomicStudyInput>(
        json,
        {
          'generatedByIdentifier': Identifier.fromJson,
          'generatedByReference': Reference.fromJson,
        },
      ),
    );
  }

  /// Deserialize [GenomicStudyInput]
  /// from a [String] or [YamlMap] object
  factory GenomicStudyInput.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return GenomicStudyInput.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return GenomicStudyInput.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'GenomicStudyInput '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [GenomicStudyInput]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory GenomicStudyInput.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return GenomicStudyInput.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'GenomicStudyInput';

  /// [file]
  /// File containing input data.
  final Reference? file;

  /// [type]
  /// Type of input data, e.g., BAM, CRAM, or FASTA.
  final CodeableConcept? type;

  /// [generatedByX]
  /// The analysis event or other GenomicStudy that generated this input
  /// file.
  final GeneratedByXGenomicStudyInput? generatedByX;

  /// Getter for [generatedByIdentifier] as a Identifier
  Identifier? get generatedByIdentifier => generatedByX?.isAs<Identifier>();

  /// Getter for [generatedByReference] as a Reference
  Reference? get generatedByReference => generatedByX?.isAs<Reference>();
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
      'file',
      file,
    );
    addField(
      'type',
      type,
    );
    if (generatedByX != null) {
      final fhirType = generatedByX!.fhirType;
      addField(
        'generatedBy${fhirType.capitalize()}',
        generatedByX,
      );
    }

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'file',
      'type',
      'generatedByX',
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
      case 'file':
        if (file != null) {
          fields.add(file!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'generatedBy':
        fields.add(generatedByX!);
      case 'generatedByX':
        fields.add(generatedByX!);
      case 'generatedByIdentifier':
        if (generatedByX is Identifier) {
          fields.add(generatedByX!);
        }
      case 'generatedByReference':
        if (generatedByX is Reference) {
          fields.add(generatedByX!);
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
  GenomicStudyInput clone() => copyWith();

  /// Copy function for [GenomicStudyInput]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $GenomicStudyInputCopyWith<GenomicStudyInput> get copyWith =>
      _$GenomicStudyInputCopyWithImpl<GenomicStudyInput>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! GenomicStudyInput) {
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
      file,
      o.file,
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
      generatedByX,
      o.generatedByX,
    )) {
      return false;
    }
    return true;
  }
}

/// [GenomicStudyOutput]
/// Outputs for the analysis event.
class GenomicStudyOutput extends BackboneElement {
  /// Primary constructor for
  /// [GenomicStudyOutput]

  const GenomicStudyOutput({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.file,
    this.type,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory GenomicStudyOutput.fromJson(
    Map<String, dynamic> json,
  ) {
    return GenomicStudyOutput(
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
      file: JsonParser.parseObject<Reference>(
        json,
        'file',
        Reference.fromJson,
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
    );
  }

  /// Deserialize [GenomicStudyOutput]
  /// from a [String] or [YamlMap] object
  factory GenomicStudyOutput.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return GenomicStudyOutput.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return GenomicStudyOutput.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'GenomicStudyOutput '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [GenomicStudyOutput]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory GenomicStudyOutput.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return GenomicStudyOutput.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'GenomicStudyOutput';

  /// [file]
  /// File containing output data.
  final Reference? file;

  /// [type]
  /// Type of output data, e.g., VCF, MAF, or BAM.
  final CodeableConcept? type;
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
      'file',
      file,
    );
    addField(
      'type',
      type,
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
      'file',
      'type',
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
      case 'file':
        if (file != null) {
          fields.add(file!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
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
  GenomicStudyOutput clone() => copyWith();

  /// Copy function for [GenomicStudyOutput]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $GenomicStudyOutputCopyWith<GenomicStudyOutput> get copyWith =>
      _$GenomicStudyOutputCopyWithImpl<GenomicStudyOutput>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! GenomicStudyOutput) {
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
      file,
      o.file,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    return true;
  }
}

/// [GenomicStudyPerformer]
/// Performer for the analysis event.
class GenomicStudyPerformer extends BackboneElement {
  /// Primary constructor for
  /// [GenomicStudyPerformer]

  const GenomicStudyPerformer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.actor,
    this.role,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory GenomicStudyPerformer.fromJson(
    Map<String, dynamic> json,
  ) {
    return GenomicStudyPerformer(
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
      actor: JsonParser.parseObject<Reference>(
        json,
        'actor',
        Reference.fromJson,
      ),
      role: JsonParser.parseObject<CodeableConcept>(
        json,
        'role',
        CodeableConcept.fromJson,
      ),
    );
  }

  /// Deserialize [GenomicStudyPerformer]
  /// from a [String] or [YamlMap] object
  factory GenomicStudyPerformer.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return GenomicStudyPerformer.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return GenomicStudyPerformer.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'GenomicStudyPerformer '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [GenomicStudyPerformer]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory GenomicStudyPerformer.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return GenomicStudyPerformer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'GenomicStudyPerformer';

  /// [actor]
  /// The organization, healthcare professional, or others who participated
  /// in performing this analysis.
  final Reference? actor;

  /// [role]
  /// Role of the actor for this analysis.
  final CodeableConcept? role;
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
      'actor',
      actor,
    );
    addField(
      'role',
      role,
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
      'actor',
      'role',
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
      case 'actor':
        if (actor != null) {
          fields.add(actor!);
        }
      case 'role':
        if (role != null) {
          fields.add(role!);
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
  GenomicStudyPerformer clone() => copyWith();

  /// Copy function for [GenomicStudyPerformer]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $GenomicStudyPerformerCopyWith<GenomicStudyPerformer> get copyWith =>
      _$GenomicStudyPerformerCopyWithImpl<GenomicStudyPerformer>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! GenomicStudyPerformer) {
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
      actor,
      o.actor,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      role,
      o.role,
    )) {
      return false;
    }
    return true;
  }
}

/// [GenomicStudyDevice]
/// Devices used for the analysis (e.g., instruments, software), with
/// settings and parameters.
class GenomicStudyDevice extends BackboneElement {
  /// Primary constructor for
  /// [GenomicStudyDevice]

  const GenomicStudyDevice({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.device,
    this.function_,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory GenomicStudyDevice.fromJson(
    Map<String, dynamic> json,
  ) {
    return GenomicStudyDevice(
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
      device: JsonParser.parseObject<Reference>(
        json,
        'device',
        Reference.fromJson,
      ),
      function_: JsonParser.parseObject<CodeableConcept>(
        json,
        'function',
        CodeableConcept.fromJson,
      ),
    );
  }

  /// Deserialize [GenomicStudyDevice]
  /// from a [String] or [YamlMap] object
  factory GenomicStudyDevice.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return GenomicStudyDevice.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return GenomicStudyDevice.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'GenomicStudyDevice '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [GenomicStudyDevice]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory GenomicStudyDevice.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return GenomicStudyDevice.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'GenomicStudyDevice';

  /// [device]
  /// Device used for the analysis.
  final Reference? device;

  /// [function_]
  /// Specific function for the device used for the analysis.
  final CodeableConcept? function_;
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
      'device',
      device,
    );
    addField(
      'function',
      function_,
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
      'device',
      'function',
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
      case 'device':
        if (device != null) {
          fields.add(device!);
        }
      case 'function':
        if (function_ != null) {
          fields.add(function_!);
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
  GenomicStudyDevice clone() => copyWith();

  /// Copy function for [GenomicStudyDevice]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $GenomicStudyDeviceCopyWith<GenomicStudyDevice> get copyWith =>
      _$GenomicStudyDeviceCopyWithImpl<GenomicStudyDevice>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! GenomicStudyDevice) {
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
      device,
      o.device,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      function_,
      o.function_,
    )) {
      return false;
    }
    return true;
  }
}
