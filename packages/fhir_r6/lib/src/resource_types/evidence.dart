import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'evidence.g.dart';

/// [Evidence]
/// The Evidence Resource provides a machine-interpretable expression of an
/// evidence concept including the evidence variables (e.g., population,
/// exposures/interventions, comparators, outcomes, measured variables,
/// confounding variables), the statistics, and the certainty of this
/// evidence.
class Evidence extends MetadataResource {
  /// Primary constructor for
  /// [Evidence]

  const Evidence({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    super.url,
    this.identifier,
    super.version,
    VersionAlgorithmXEvidence? versionAlgorithmX,
    FhirString? versionAlgorithmString,
    Coding? versionAlgorithmCoding,
    this.name,
    this.title,
    this.citeAs,
    required super.status,
    super.experimental,
    super.date,
    super.approvalDate,
    super.lastReviewDate,
    super.author,
    super.publisher,
    super.contact,
    this.recorder,
    super.editor,
    super.reviewer,
    super.endorser,
    super.useContext,
    this.purpose,
    this.copyright,
    this.copyrightLabel,
    this.relatesTo,
    super.description,
    this.assertion,
    this.note,
    this.variableDefinition,
    this.synthesisType,
    this.studyDesign,
    this.statistic,
    this.certainty,
  })  : versionAlgorithmX = versionAlgorithmX ??
            versionAlgorithmString ??
            versionAlgorithmCoding,
        super(
          resourceType: R6ResourceType.Evidence,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Evidence.fromJson(
    Map<String, dynamic> json,
  ) {
    return Evidence(
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
      url: JsonParser.parsePrimitive<FhirUri>(
        json,
        'url',
        FhirUri.fromJson,
      ),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      version: JsonParser.parsePrimitive<FhirString>(
        json,
        'version',
        FhirString.fromJson,
      ),
      versionAlgorithmX: JsonParser.parsePolymorphic<VersionAlgorithmXEvidence>(
        json,
        {
          'versionAlgorithmString': FhirString.fromJson,
          'versionAlgorithmCoding': Coding.fromJson,
        },
      ),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      ),
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
      ),
      citeAs: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'citeAs',
        FhirMarkdown.fromJson,
      ),
      status: JsonParser.parsePrimitive<PublicationStatus>(
        json,
        'status',
        PublicationStatus.fromJson,
      ),
      experimental: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'experimental',
        FhirBoolean.fromJson,
      ),
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
      ),
      approvalDate: JsonParser.parsePrimitive<FhirDate>(
        json,
        'approvalDate',
        FhirDate.fromJson,
      ),
      lastReviewDate: JsonParser.parsePrimitive<FhirDate>(
        json,
        'lastReviewDate',
        FhirDate.fromJson,
      ),
      author: (json['author'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      publisher: JsonParser.parsePrimitive<FhirString>(
        json,
        'publisher',
        FhirString.fromJson,
      ),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      recorder: (json['recorder'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      editor: (json['editor'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      reviewer: (json['reviewer'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      endorser: (json['endorser'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map<UsageContext>(
            (v) => UsageContext.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      purpose: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'purpose',
        FhirMarkdown.fromJson,
      ),
      copyright: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'copyright',
        FhirMarkdown.fromJson,
      ),
      copyrightLabel: JsonParser.parsePrimitive<FhirString>(
        json,
        'copyrightLabel',
        FhirString.fromJson,
      ),
      relatesTo: (json['relatesTo'] as List<dynamic>?)
          ?.map<EvidenceRelatesTo>(
            (v) => EvidenceRelatesTo.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      assertion: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'assertion',
        FhirMarkdown.fromJson,
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      variableDefinition: (json['variableDefinition'] as List<dynamic>?)
          ?.map<EvidenceVariableDefinition>(
            (v) => EvidenceVariableDefinition.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      synthesisType: (json['synthesisType'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      studyDesign: (json['studyDesign'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      statistic: (json['statistic'] as List<dynamic>?)
          ?.map<EvidenceStatistic>(
            (v) => EvidenceStatistic.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      certainty: (json['certainty'] as List<dynamic>?)
          ?.map<EvidenceCertainty>(
            (v) => EvidenceCertainty.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [Evidence]
  /// from a [String] or [YamlMap] object
  factory Evidence.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Evidence.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Evidence.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Evidence '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Evidence]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Evidence.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Evidence.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Evidence';

  /// [identifier]
  /// A formal identifier that is used to identify this summary when it is
  /// represented in other formats, or referenced in a specification, model,
  /// design or an instance.
  final List<Identifier>? identifier;

  /// [versionAlgorithmX]
  /// Indicates the mechanism used to compare versions to determine which is
  /// more current.
  final VersionAlgorithmXEvidence? versionAlgorithmX;

  /// Getter for [versionAlgorithmString] as a FhirString
  FhirString? get versionAlgorithmString =>
      versionAlgorithmX?.isAs<FhirString>();

  /// Getter for [versionAlgorithmCoding] as a Coding
  Coding? get versionAlgorithmCoding => versionAlgorithmX?.isAs<Coding>();

  /// [name]
  /// A natural language name identifying the evidence. This name should be
  /// usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the summary.
  final FhirString? title;

  /// [citeAs]
  /// Display of the suggested method of how to cite this Evidence.
  final FhirMarkdown? citeAs;

  /// [recorder]
  /// Who entered the data for the evidence.
  final List<ContactDetail>? recorder;

  /// [purpose]
  /// Explanation of why this Evidence is needed and why it has been designed
  /// as it has.
  final FhirMarkdown? purpose;

  /// [copyright]
  /// A copyright statement relating to the Evidence and/or its contents.
  /// Copyright statements are legal notices of intellectual property
  /// ownership and may include restrictions on the use and publishing of the
  /// Evidence.
  final FhirMarkdown? copyright;

  /// [copyrightLabel]
  /// A short string (<50 characters), suitable for inclusion in a page
  /// footer that identifies the copyright holder, effective period, and
  /// optionally whether rights are restricted. (e.g. 'All rights reserved',
  /// 'Some rights reserved').
  final FhirString? copyrightLabel;

  /// [relatesTo]
  /// Relationships that this Evidence has with other FHIR or non-FHIR
  /// resources that already exist.
  final List<EvidenceRelatesTo>? relatesTo;

  /// [assertion]
  /// Declarative description of the Evidence, such as conclusion or bottom
  /// line statement.
  final FhirMarkdown? assertion;

  /// [note]
  /// Footnotes and/or explanatory notes.
  final List<Annotation>? note;

  /// [variableDefinition]
  /// Description, classification, and definition of a single variable. The
  /// collection of variables defines what the evidence is about.
  final List<EvidenceVariableDefinition>? variableDefinition;

  /// [synthesisType]
  /// The design of the synthesis (combination of studies) that produced this
  /// evidence. The design is described with any number of synthesis
  /// characteristics, such as type of meta-analysis.
  final List<CodeableConcept>? synthesisType;

  /// [studyDesign]
  /// The design of the study that produced this evidence. The design is
  /// described with any number of study design characteristics.
  final List<CodeableConcept>? studyDesign;

  /// [statistic]
  /// Values and parameters for a single statistic.
  final List<EvidenceStatistic>? statistic;

  /// [certainty]
  /// Assessment of certainty, confidence in the estimates, or quality of the
  /// evidence.
  final List<EvidenceCertainty>? certainty;
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
      'url',
      url,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'version',
      version,
    );
    if (versionAlgorithmX != null) {
      final fhirType = versionAlgorithmX!.fhirType;
      addField(
        'versionAlgorithm${fhirType.capitalize()}',
        versionAlgorithmX,
      );
    }

    addField(
      'name',
      name,
    );
    addField(
      'title',
      title,
    );
    addField(
      'citeAs',
      citeAs,
    );
    addField(
      'status',
      status,
    );
    addField(
      'experimental',
      experimental,
    );
    addField(
      'date',
      date,
    );
    addField(
      'approvalDate',
      approvalDate,
    );
    addField(
      'lastReviewDate',
      lastReviewDate,
    );
    addField(
      'author',
      author,
    );
    addField(
      'publisher',
      publisher,
    );
    addField(
      'contact',
      contact,
    );
    addField(
      'recorder',
      recorder,
    );
    addField(
      'editor',
      editor,
    );
    addField(
      'reviewer',
      reviewer,
    );
    addField(
      'endorser',
      endorser,
    );
    addField(
      'useContext',
      useContext,
    );
    addField(
      'purpose',
      purpose,
    );
    addField(
      'copyright',
      copyright,
    );
    addField(
      'copyrightLabel',
      copyrightLabel,
    );
    addField(
      'relatesTo',
      relatesTo,
    );
    addField(
      'description',
      description,
    );
    addField(
      'assertion',
      assertion,
    );
    addField(
      'note',
      note,
    );
    addField(
      'variableDefinition',
      variableDefinition,
    );
    addField(
      'synthesisType',
      synthesisType,
    );
    addField(
      'studyDesign',
      studyDesign,
    );
    addField(
      'statistic',
      statistic,
    );
    addField(
      'certainty',
      certainty,
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
      'url',
      'identifier',
      'version',
      'versionAlgorithmX',
      'name',
      'title',
      'citeAs',
      'status',
      'experimental',
      'date',
      'approvalDate',
      'lastReviewDate',
      'author',
      'publisher',
      'contact',
      'recorder',
      'editor',
      'reviewer',
      'endorser',
      'useContext',
      'purpose',
      'copyright',
      'copyrightLabel',
      'relatesTo',
      'description',
      'assertion',
      'note',
      'variableDefinition',
      'synthesisType',
      'studyDesign',
      'statistic',
      'certainty',
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
      case 'url':
        if (url != null) {
          fields.add(url!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'version':
        if (version != null) {
          fields.add(version!);
        }
      case 'versionAlgorithm':
        if (versionAlgorithmX != null) {
          fields.add(versionAlgorithmX!);
        }
      case 'versionAlgorithmX':
        if (versionAlgorithmX != null) {
          fields.add(versionAlgorithmX!);
        }
      case 'versionAlgorithmString':
        if (versionAlgorithmX is FhirString) {
          fields.add(versionAlgorithmX!);
        }
      case 'versionAlgorithmCoding':
        if (versionAlgorithmX is Coding) {
          fields.add(versionAlgorithmX!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'citeAs':
        if (citeAs != null) {
          fields.add(citeAs!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'experimental':
        if (experimental != null) {
          fields.add(experimental!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'approvalDate':
        if (approvalDate != null) {
          fields.add(approvalDate!);
        }
      case 'lastReviewDate':
        if (lastReviewDate != null) {
          fields.add(lastReviewDate!);
        }
      case 'author':
        if (author != null) {
          fields.addAll(author!);
        }
      case 'publisher':
        if (publisher != null) {
          fields.add(publisher!);
        }
      case 'contact':
        if (contact != null) {
          fields.addAll(contact!);
        }
      case 'recorder':
        if (recorder != null) {
          fields.addAll(recorder!);
        }
      case 'editor':
        if (editor != null) {
          fields.addAll(editor!);
        }
      case 'reviewer':
        if (reviewer != null) {
          fields.addAll(reviewer!);
        }
      case 'endorser':
        if (endorser != null) {
          fields.addAll(endorser!);
        }
      case 'useContext':
        if (useContext != null) {
          fields.addAll(useContext!);
        }
      case 'purpose':
        if (purpose != null) {
          fields.add(purpose!);
        }
      case 'copyright':
        if (copyright != null) {
          fields.add(copyright!);
        }
      case 'copyrightLabel':
        if (copyrightLabel != null) {
          fields.add(copyrightLabel!);
        }
      case 'relatesTo':
        if (relatesTo != null) {
          fields.addAll(relatesTo!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'assertion':
        if (assertion != null) {
          fields.add(assertion!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'variableDefinition':
        if (variableDefinition != null) {
          fields.addAll(variableDefinition!);
        }
      case 'synthesisType':
        if (synthesisType != null) {
          fields.addAll(synthesisType!);
        }
      case 'studyDesign':
        if (studyDesign != null) {
          fields.addAll(studyDesign!);
        }
      case 'statistic':
        if (statistic != null) {
          fields.addAll(statistic!);
        }
      case 'certainty':
        if (certainty != null) {
          fields.addAll(certainty!);
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
  Evidence clone() => copyWith();

  /// Copy function for [Evidence]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $EvidenceCopyWith<Evidence> get copyWith => _$EvidenceCopyWithImpl<Evidence>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Evidence) {
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
    if (!FhirBase.equalsDeepWithNull(
      url,
      o.url,
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
      version,
      o.version,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      versionAlgorithmX,
      o.versionAlgorithmX,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      title,
      o.title,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      citeAs,
      o.citeAs,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      experimental,
      o.experimental,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      date,
      o.date,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      approvalDate,
      o.approvalDate,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      lastReviewDate,
      o.lastReviewDate,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ContactDetail>(
      author,
      o.author,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      publisher,
      o.publisher,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ContactDetail>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ContactDetail>(
      recorder,
      o.recorder,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ContactDetail>(
      editor,
      o.editor,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ContactDetail>(
      reviewer,
      o.reviewer,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ContactDetail>(
      endorser,
      o.endorser,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<UsageContext>(
      useContext,
      o.useContext,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      purpose,
      o.purpose,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      copyright,
      o.copyright,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      copyrightLabel,
      o.copyrightLabel,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<EvidenceRelatesTo>(
      relatesTo,
      o.relatesTo,
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
      assertion,
      o.assertion,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<EvidenceVariableDefinition>(
      variableDefinition,
      o.variableDefinition,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      synthesisType,
      o.synthesisType,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      studyDesign,
      o.studyDesign,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<EvidenceStatistic>(
      statistic,
      o.statistic,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<EvidenceCertainty>(
      certainty,
      o.certainty,
    )) {
      return false;
    }
    return true;
  }
}

/// [EvidenceRelatesTo]
/// Relationships that this Evidence has with other FHIR or non-FHIR
/// resources that already exist.
class EvidenceRelatesTo extends BackboneElement {
  /// Primary constructor for
  /// [EvidenceRelatesTo]

  const EvidenceRelatesTo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.targetX,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceRelatesTo.fromJson(
    Map<String, dynamic> json,
  ) {
    return EvidenceRelatesTo(
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
      type: JsonParser.parsePrimitive<ArtifactRelationshipType>(
        json,
        'type',
        ArtifactRelationshipType.fromJson,
      )!,
      targetX: JsonParser.parsePolymorphic<TargetXEvidenceRelatesTo>(
        json,
        {
          'targetUri': FhirUri.fromJson,
          'targetAttachment': Attachment.fromJson,
          'targetCanonical': FhirCanonical.fromJson,
          'targetReference': Reference.fromJson,
          'targetMarkdown': FhirMarkdown.fromJson,
        },
      )!,
    );
  }

  /// Deserialize [EvidenceRelatesTo]
  /// from a [String] or [YamlMap] object
  factory EvidenceRelatesTo.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceRelatesTo.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceRelatesTo.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceRelatesTo '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceRelatesTo]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceRelatesTo.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceRelatesTo.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EvidenceRelatesTo';

  /// [type]
  /// The type of relationship to the related artifact.
  final ArtifactRelationshipType type;

  /// [targetX]
  /// The artifact that is related to this Evidence Resource.
  final TargetXEvidenceRelatesTo targetX;

  /// Getter for [targetUri] as a FhirUri
  FhirUri? get targetUri => targetX.isAs<FhirUri>();

  /// Getter for [targetAttachment] as a Attachment
  Attachment? get targetAttachment => targetX.isAs<Attachment>();

  /// Getter for [targetCanonical] as a FhirCanonical
  FhirCanonical? get targetCanonical => targetX.isAs<FhirCanonical>();

  /// Getter for [targetReference] as a Reference
  Reference? get targetReference => targetX.isAs<Reference>();

  /// Getter for [targetMarkdown] as a FhirMarkdown
  FhirMarkdown? get targetMarkdown => targetX.isAs<FhirMarkdown>();
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
    final targetXFhirType = targetX.fhirType;
    addField(
      'target${targetXFhirType.capitalize()}',
      targetX,
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
      'targetX',
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
        fields.add(type);
      case 'target':
        fields.add(targetX);
      case 'targetX':
        fields.add(targetX);
      case 'targetUri':
        if (targetX is FhirUri) {
          fields.add(targetX);
        }
      case 'targetAttachment':
        if (targetX is Attachment) {
          fields.add(targetX);
        }
      case 'targetCanonical':
        if (targetX is FhirCanonical) {
          fields.add(targetX);
        }
      case 'targetReference':
        if (targetX is Reference) {
          fields.add(targetX);
        }
      case 'targetMarkdown':
        if (targetX is FhirMarkdown) {
          fields.add(targetX);
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
  EvidenceRelatesTo clone() => copyWith();

  /// Copy function for [EvidenceRelatesTo]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $EvidenceRelatesToCopyWith<EvidenceRelatesTo> get copyWith =>
      _$EvidenceRelatesToCopyWithImpl<EvidenceRelatesTo>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EvidenceRelatesTo) {
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
      type,
      o.type,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      targetX,
      o.targetX,
    )) {
      return false;
    }
    return true;
  }
}

/// [EvidenceVariableDefinition]
/// Description, classification, and definition of a single variable. The
/// collection of variables defines what the evidence is about.
class EvidenceVariableDefinition extends BackboneElement {
  /// Primary constructor for
  /// [EvidenceVariableDefinition]

  const EvidenceVariableDefinition({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.note,
    required this.variableRole,
    this.roleSubtype,
    this.comparatorCategory,
    this.observed,
    this.intended,
    this.directnessMatch,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceVariableDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    return EvidenceVariableDefinition(
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
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      variableRole: JsonParser.parsePrimitive<EvidenceVariableRole>(
        json,
        'variableRole',
        EvidenceVariableRole.fromJson,
      )!,
      roleSubtype: JsonParser.parseObject<CodeableConcept>(
        json,
        'roleSubtype',
        CodeableConcept.fromJson,
      ),
      comparatorCategory: JsonParser.parsePrimitive<FhirString>(
        json,
        'comparatorCategory',
        FhirString.fromJson,
      ),
      observed: JsonParser.parseObject<Reference>(
        json,
        'observed',
        Reference.fromJson,
      ),
      intended: JsonParser.parseObject<Reference>(
        json,
        'intended',
        Reference.fromJson,
      ),
      directnessMatch: JsonParser.parseObject<CodeableConcept>(
        json,
        'directnessMatch',
        CodeableConcept.fromJson,
      ),
    );
  }

  /// Deserialize [EvidenceVariableDefinition]
  /// from a [String] or [YamlMap] object
  factory EvidenceVariableDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceVariableDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceVariableDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceVariableDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceVariableDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceVariableDefinition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceVariableDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EvidenceVariableDefinition';

  /// [description]
  /// A text description or summary of the variable.
  final FhirMarkdown? description;

  /// [note]
  /// Footnotes and/or explanatory notes.
  final List<Annotation>? note;

  /// [variableRole]
  /// Classification of the role of the variable.
  final EvidenceVariableRole variableRole;

  /// [roleSubtype]
  /// Sub-classification of the role of the variable.
  final CodeableConcept? roleSubtype;

  /// [comparatorCategory]
  /// The reference value used for comparison.
  final FhirString? comparatorCategory;

  /// [observed]
  /// Definition of the actual variable related to the statistic(s), i.e.,
  /// the population being the actual study sample or the measured variable
  /// (exposure, outcome, or covariate) being the actual observation that
  /// occurred or will occur in the study.
  final Reference? observed;

  /// [intended]
  /// Definition of the intended variable related to the Evidence, i.e., the
  /// population, exposure, or outcome for which the statistical finding is
  /// being interpreted.
  final Reference? intended;

  /// [directnessMatch]
  /// Indication of quality of match between intended variable to actual
  /// variable.
  final CodeableConcept? directnessMatch;
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
      'description',
      description,
    );
    addField(
      'note',
      note,
    );
    addField(
      'variableRole',
      variableRole,
    );
    addField(
      'roleSubtype',
      roleSubtype,
    );
    addField(
      'comparatorCategory',
      comparatorCategory,
    );
    addField(
      'observed',
      observed,
    );
    addField(
      'intended',
      intended,
    );
    addField(
      'directnessMatch',
      directnessMatch,
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
      'description',
      'note',
      'variableRole',
      'roleSubtype',
      'comparatorCategory',
      'observed',
      'intended',
      'directnessMatch',
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
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'variableRole':
        fields.add(variableRole);
      case 'roleSubtype':
        if (roleSubtype != null) {
          fields.add(roleSubtype!);
        }
      case 'comparatorCategory':
        if (comparatorCategory != null) {
          fields.add(comparatorCategory!);
        }
      case 'observed':
        if (observed != null) {
          fields.add(observed!);
        }
      case 'intended':
        if (intended != null) {
          fields.add(intended!);
        }
      case 'directnessMatch':
        if (directnessMatch != null) {
          fields.add(directnessMatch!);
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
  EvidenceVariableDefinition clone() => copyWith();

  /// Copy function for [EvidenceVariableDefinition]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $EvidenceVariableDefinitionCopyWith<EvidenceVariableDefinition>
      get copyWith =>
          _$EvidenceVariableDefinitionCopyWithImpl<EvidenceVariableDefinition>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EvidenceVariableDefinition) {
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
      description,
      o.description,
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
      variableRole,
      o.variableRole,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      roleSubtype,
      o.roleSubtype,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      comparatorCategory,
      o.comparatorCategory,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      observed,
      o.observed,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      intended,
      o.intended,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      directnessMatch,
      o.directnessMatch,
    )) {
      return false;
    }
    return true;
  }
}

/// [EvidenceStatistic]
/// Values and parameters for a single statistic.
class EvidenceStatistic extends BackboneElement {
  /// Primary constructor for
  /// [EvidenceStatistic]

  const EvidenceStatistic({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.note,
    this.statisticType,
    this.category,
    this.quantity,
    this.numberOfEvents,
    this.numberAffected,
    this.sampleSize,
    this.attributeEstimate,
    this.modelCharacteristic,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceStatistic.fromJson(
    Map<String, dynamic> json,
  ) {
    return EvidenceStatistic(
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
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      statisticType: JsonParser.parseObject<CodeableConcept>(
        json,
        'statisticType',
        CodeableConcept.fromJson,
      ),
      category: JsonParser.parseObject<CodeableConcept>(
        json,
        'category',
        CodeableConcept.fromJson,
      ),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
      ),
      numberOfEvents: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'numberOfEvents',
        FhirUnsignedInt.fromJson,
      ),
      numberAffected: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'numberAffected',
        FhirUnsignedInt.fromJson,
      ),
      sampleSize: JsonParser.parseObject<EvidenceSampleSize>(
        json,
        'sampleSize',
        EvidenceSampleSize.fromJson,
      ),
      attributeEstimate: (json['attributeEstimate'] as List<dynamic>?)
          ?.map<EvidenceAttributeEstimate>(
            (v) => EvidenceAttributeEstimate.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modelCharacteristic: (json['modelCharacteristic'] as List<dynamic>?)
          ?.map<EvidenceModelCharacteristic>(
            (v) => EvidenceModelCharacteristic.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [EvidenceStatistic]
  /// from a [String] or [YamlMap] object
  factory EvidenceStatistic.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceStatistic.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceStatistic.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceStatistic '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceStatistic]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceStatistic.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceStatistic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EvidenceStatistic';

  /// [description]
  /// A natural language summary of the statistic.
  final FhirMarkdown? description;

  /// [note]
  /// Footnotes and/or explanatory notes.
  final List<Annotation>? note;

  /// [statisticType]
  /// Type of statistic, e.g., relative risk. The statistic type is a
  /// classification that formally defines the relationship between the
  /// variables (noted in Evidence.variableDefinition) and the value
  /// specification (noted in Evidence.statistic.quantity).
  final CodeableConcept? statisticType;

  /// [category]
  /// When the measured variable (outcome) is handled categorically, the
  /// category element is used to define which category the statistic is
  /// reporting.
  final CodeableConcept? category;

  /// [quantity]
  /// Statistic value.
  final Quantity? quantity;

  /// [numberOfEvents]
  /// The number of events associated with the statistic, where the unit of
  /// analysis is different from numberAffected, sampleSize.knownDataCount
  /// and sampleSize.numberOfParticipants.
  final FhirUnsignedInt? numberOfEvents;

  /// [numberAffected]
  /// The number of participants affected where the unit of analysis is the
  /// same as sampleSize.knownDataCount and sampleSize.numberOfParticipants.
  final FhirUnsignedInt? numberAffected;

  /// [sampleSize]
  /// Count of participants in the study sample.
  final EvidenceSampleSize? sampleSize;

  /// [attributeEstimate]
  /// A statistical attribute of the statistic such as a measure of
  /// heterogeneity.
  final List<EvidenceAttributeEstimate>? attributeEstimate;

  /// [modelCharacteristic]
  /// A component of the method to generate the statistic.
  final List<EvidenceModelCharacteristic>? modelCharacteristic;
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
      'description',
      description,
    );
    addField(
      'note',
      note,
    );
    addField(
      'statisticType',
      statisticType,
    );
    addField(
      'category',
      category,
    );
    addField(
      'quantity',
      quantity,
    );
    addField(
      'numberOfEvents',
      numberOfEvents,
    );
    addField(
      'numberAffected',
      numberAffected,
    );
    addField(
      'sampleSize',
      sampleSize,
    );
    addField(
      'attributeEstimate',
      attributeEstimate,
    );
    addField(
      'modelCharacteristic',
      modelCharacteristic,
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
      'description',
      'note',
      'statisticType',
      'category',
      'quantity',
      'numberOfEvents',
      'numberAffected',
      'sampleSize',
      'attributeEstimate',
      'modelCharacteristic',
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
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'statisticType':
        if (statisticType != null) {
          fields.add(statisticType!);
        }
      case 'category':
        if (category != null) {
          fields.add(category!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'numberOfEvents':
        if (numberOfEvents != null) {
          fields.add(numberOfEvents!);
        }
      case 'numberAffected':
        if (numberAffected != null) {
          fields.add(numberAffected!);
        }
      case 'sampleSize':
        if (sampleSize != null) {
          fields.add(sampleSize!);
        }
      case 'attributeEstimate':
        if (attributeEstimate != null) {
          fields.addAll(attributeEstimate!);
        }
      case 'modelCharacteristic':
        if (modelCharacteristic != null) {
          fields.addAll(modelCharacteristic!);
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
  EvidenceStatistic clone() => copyWith();

  /// Copy function for [EvidenceStatistic]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $EvidenceStatisticCopyWith<EvidenceStatistic> get copyWith =>
      _$EvidenceStatisticCopyWithImpl<EvidenceStatistic>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EvidenceStatistic) {
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
      description,
      o.description,
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
      statisticType,
      o.statisticType,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      category,
      o.category,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      numberOfEvents,
      o.numberOfEvents,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      numberAffected,
      o.numberAffected,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      sampleSize,
      o.sampleSize,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<EvidenceAttributeEstimate>(
      attributeEstimate,
      o.attributeEstimate,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<EvidenceModelCharacteristic>(
      modelCharacteristic,
      o.modelCharacteristic,
    )) {
      return false;
    }
    return true;
  }
}

/// [EvidenceSampleSize]
/// Count of participants in the study sample.
class EvidenceSampleSize extends BackboneElement {
  /// Primary constructor for
  /// [EvidenceSampleSize]

  const EvidenceSampleSize({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.note,
    this.numberOfStudies,
    this.numberOfParticipants,
    this.knownDataCount,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceSampleSize.fromJson(
    Map<String, dynamic> json,
  ) {
    return EvidenceSampleSize(
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
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      numberOfStudies: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'numberOfStudies',
        FhirUnsignedInt.fromJson,
      ),
      numberOfParticipants: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'numberOfParticipants',
        FhirUnsignedInt.fromJson,
      ),
      knownDataCount: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'knownDataCount',
        FhirUnsignedInt.fromJson,
      ),
    );
  }

  /// Deserialize [EvidenceSampleSize]
  /// from a [String] or [YamlMap] object
  factory EvidenceSampleSize.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceSampleSize.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceSampleSize.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceSampleSize '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceSampleSize]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceSampleSize.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceSampleSize.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EvidenceSampleSize';

  /// [description]
  /// Human-readable summary of study sample size. A human-readable string to
  /// clarify or explain concepts about the sample size.
  final FhirMarkdown? description;

  /// [note]
  /// Footnote or explanatory note about the sample size.
  final List<Annotation>? note;

  /// [numberOfStudies]
  /// Count of studies or samples combined to become the total sample for the
  /// statistic.
  final FhirUnsignedInt? numberOfStudies;

  /// [numberOfParticipants]
  /// Count of members in the total sample for the statistic.
  final FhirUnsignedInt? numberOfParticipants;

  /// [knownDataCount]
  /// Number of participants with known results for measured variables.
  final FhirUnsignedInt? knownDataCount;
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
      'description',
      description,
    );
    addField(
      'note',
      note,
    );
    addField(
      'numberOfStudies',
      numberOfStudies,
    );
    addField(
      'numberOfParticipants',
      numberOfParticipants,
    );
    addField(
      'knownDataCount',
      knownDataCount,
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
      'description',
      'note',
      'numberOfStudies',
      'numberOfParticipants',
      'knownDataCount',
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
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'numberOfStudies':
        if (numberOfStudies != null) {
          fields.add(numberOfStudies!);
        }
      case 'numberOfParticipants':
        if (numberOfParticipants != null) {
          fields.add(numberOfParticipants!);
        }
      case 'knownDataCount':
        if (knownDataCount != null) {
          fields.add(knownDataCount!);
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
  EvidenceSampleSize clone() => copyWith();

  /// Copy function for [EvidenceSampleSize]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $EvidenceSampleSizeCopyWith<EvidenceSampleSize> get copyWith =>
      _$EvidenceSampleSizeCopyWithImpl<EvidenceSampleSize>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EvidenceSampleSize) {
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
      description,
      o.description,
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
      numberOfStudies,
      o.numberOfStudies,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      numberOfParticipants,
      o.numberOfParticipants,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      knownDataCount,
      o.knownDataCount,
    )) {
      return false;
    }
    return true;
  }
}

/// [EvidenceAttributeEstimate]
/// A statistical attribute of the statistic such as a measure of
/// heterogeneity.
class EvidenceAttributeEstimate extends BackboneElement {
  /// Primary constructor for
  /// [EvidenceAttributeEstimate]

  const EvidenceAttributeEstimate({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.note,
    this.type,
    this.quantity,
    this.level,
    this.range,
    this.attributeEstimate,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceAttributeEstimate.fromJson(
    Map<String, dynamic> json,
  ) {
    return EvidenceAttributeEstimate(
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
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
      ),
      level: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'level',
        FhirDecimal.fromJson,
      ),
      range: JsonParser.parseObject<Range>(
        json,
        'range',
        Range.fromJson,
      ),
      attributeEstimate: (json['attributeEstimate'] as List<dynamic>?)
          ?.map<EvidenceAttributeEstimate>(
            (v) => EvidenceAttributeEstimate.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [EvidenceAttributeEstimate]
  /// from a [String] or [YamlMap] object
  factory EvidenceAttributeEstimate.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceAttributeEstimate.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceAttributeEstimate.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceAttributeEstimate '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceAttributeEstimate]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceAttributeEstimate.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceAttributeEstimate.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EvidenceAttributeEstimate';

  /// [description]
  /// Human-readable summary of the estimate.
  final FhirMarkdown? description;

  /// [note]
  /// Footnote or explanatory note about the estimate.
  final List<Annotation>? note;

  /// [type]
  /// The type of attribute estimate, e.g., confidence interval or p value.
  final CodeableConcept? type;

  /// [quantity]
  /// The singular quantity of the attribute estimate, for attribute
  /// estimates represented as single values, which may include a unit of
  /// measure.
  final Quantity? quantity;

  /// [level]
  /// Use 0.95 for a 95% confidence interval.
  final FhirDecimal? level;

  /// [range]
  /// Lower and upper bound values of the attribute estimate.
  final Range? range;

  /// [attributeEstimate]
  /// A nested attribute estimate; which is the attribute estimate of an
  /// attribute estimate.
  final List<EvidenceAttributeEstimate>? attributeEstimate;
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
      'description',
      description,
    );
    addField(
      'note',
      note,
    );
    addField(
      'type',
      type,
    );
    addField(
      'quantity',
      quantity,
    );
    addField(
      'level',
      level,
    );
    addField(
      'range',
      range,
    );
    addField(
      'attributeEstimate',
      attributeEstimate,
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
      'description',
      'note',
      'type',
      'quantity',
      'level',
      'range',
      'attributeEstimate',
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
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'level':
        if (level != null) {
          fields.add(level!);
        }
      case 'range':
        if (range != null) {
          fields.add(range!);
        }
      case 'attributeEstimate':
        if (attributeEstimate != null) {
          fields.addAll(attributeEstimate!);
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
  EvidenceAttributeEstimate clone() => copyWith();

  /// Copy function for [EvidenceAttributeEstimate]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $EvidenceAttributeEstimateCopyWith<EvidenceAttributeEstimate> get copyWith =>
      _$EvidenceAttributeEstimateCopyWithImpl<EvidenceAttributeEstimate>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EvidenceAttributeEstimate) {
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
      description,
      o.description,
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
      type,
      o.type,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      level,
      o.level,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      range,
      o.range,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<EvidenceAttributeEstimate>(
      attributeEstimate,
      o.attributeEstimate,
    )) {
      return false;
    }
    return true;
  }
}

/// [EvidenceModelCharacteristic]
/// A component of the method to generate the statistic.
class EvidenceModelCharacteristic extends BackboneElement {
  /// Primary constructor for
  /// [EvidenceModelCharacteristic]

  const EvidenceModelCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    ValueXEvidenceModelCharacteristic? valueX,
    Quantity? valueQuantity,
    Range? valueRange,
    CodeableConcept? valueCodeableConcept,
    this.intended,
    this.applied,
    this.variable,
    this.attribute,
    super.disallowExtensions,
  })  : valueX = valueX ?? valueQuantity ?? valueRange ?? valueCodeableConcept,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceModelCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) {
    return EvidenceModelCharacteristic(
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
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      )!,
      valueX: JsonParser.parsePolymorphic<ValueXEvidenceModelCharacteristic>(
        json,
        {
          'valueQuantity': Quantity.fromJson,
          'valueRange': Range.fromJson,
          'valueCodeableConcept': CodeableConcept.fromJson,
        },
      ),
      intended: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'intended',
        FhirBoolean.fromJson,
      ),
      applied: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'applied',
        FhirBoolean.fromJson,
      ),
      variable: (json['variable'] as List<dynamic>?)
          ?.map<EvidenceModelCharacteristicVariable>(
            (v) => EvidenceModelCharacteristicVariable.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      attribute: (json['attribute'] as List<dynamic>?)
          ?.map<EvidenceAttributeEstimate>(
            (v) => EvidenceAttributeEstimate.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [EvidenceModelCharacteristic]
  /// from a [String] or [YamlMap] object
  factory EvidenceModelCharacteristic.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceModelCharacteristic.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceModelCharacteristic.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceModelCharacteristic '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceModelCharacteristic]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceModelCharacteristic.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceModelCharacteristic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EvidenceModelCharacteristic';

  /// [code]
  /// Description of a component of the method to generate the statistic.
  final CodeableConcept code;

  /// [valueX]
  /// Further specification of the value of the component of the method to
  /// generate the statistic.
  final ValueXEvidenceModelCharacteristic? valueX;

  /// Getter for [valueQuantity] as a Quantity
  Quantity? get valueQuantity => valueX?.isAs<Quantity>();

  /// Getter for [valueRange] as a Range
  Range? get valueRange => valueX?.isAs<Range>();

  /// Getter for [valueCodeableConcept] as a CodeableConcept
  CodeableConcept? get valueCodeableConcept => valueX?.isAs<CodeableConcept>();

  /// [intended]
  /// The plan for analysis.
  final FhirBoolean? intended;

  /// [applied]
  /// This model characteristic is part of the analysis that was applied,
  /// whether or not the analysis followed the plan.
  final FhirBoolean? applied;

  /// [variable]
  /// A variable adjusted for in the adjusted analysis.
  final List<EvidenceModelCharacteristicVariable>? variable;

  /// [attribute]
  /// An attribute of the model characteristic.
  final List<EvidenceAttributeEstimate>? attribute;
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
      'code',
      code,
    );
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField(
        'value${fhirType.capitalize()}',
        valueX,
      );
    }

    addField(
      'intended',
      intended,
    );
    addField(
      'applied',
      applied,
    );
    addField(
      'variable',
      variable,
    );
    addField(
      'attribute',
      attribute,
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
      'code',
      'valueX',
      'intended',
      'applied',
      'variable',
      'attribute',
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
      case 'code':
        fields.add(code);
      case 'value':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueX':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is Quantity) {
          fields.add(valueX!);
        }
      case 'valueRange':
        if (valueX is Range) {
          fields.add(valueX!);
        }
      case 'valueCodeableConcept':
        if (valueX is CodeableConcept) {
          fields.add(valueX!);
        }
      case 'intended':
        if (intended != null) {
          fields.add(intended!);
        }
      case 'applied':
        if (applied != null) {
          fields.add(applied!);
        }
      case 'variable':
        if (variable != null) {
          fields.addAll(variable!);
        }
      case 'attribute':
        if (attribute != null) {
          fields.addAll(attribute!);
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
  EvidenceModelCharacteristic clone() => copyWith();

  /// Copy function for [EvidenceModelCharacteristic]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $EvidenceModelCharacteristicCopyWith<EvidenceModelCharacteristic>
      get copyWith => _$EvidenceModelCharacteristicCopyWithImpl<
              EvidenceModelCharacteristic>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EvidenceModelCharacteristic) {
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
      code,
      o.code,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      valueX,
      o.valueX,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      intended,
      o.intended,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      applied,
      o.applied,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<EvidenceModelCharacteristicVariable>(
      variable,
      o.variable,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<EvidenceAttributeEstimate>(
      attribute,
      o.attribute,
    )) {
      return false;
    }
    return true;
  }
}

/// [EvidenceModelCharacteristicVariable]
/// A variable adjusted for in the adjusted analysis.
class EvidenceModelCharacteristicVariable extends BackboneElement {
  /// Primary constructor for
  /// [EvidenceModelCharacteristicVariable]

  const EvidenceModelCharacteristicVariable({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.variableDefinition,
    this.handling,
    this.valueCategory,
    this.valueQuantity,
    this.valueRange,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceModelCharacteristicVariable.fromJson(
    Map<String, dynamic> json,
  ) {
    return EvidenceModelCharacteristicVariable(
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
      variableDefinition: JsonParser.parseObject<Reference>(
        json,
        'variableDefinition',
        Reference.fromJson,
      )!,
      handling: JsonParser.parsePrimitive<EvidenceVariableHandling>(
        json,
        'handling',
        EvidenceVariableHandling.fromJson,
      ),
      valueCategory: (json['valueCategory'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      valueQuantity: (json['valueQuantity'] as List<dynamic>?)
          ?.map<Quantity>(
            (v) => Quantity.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      valueRange: (json['valueRange'] as List<dynamic>?)
          ?.map<Range>(
            (v) => Range.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [EvidenceModelCharacteristicVariable]
  /// from a [String] or [YamlMap] object
  factory EvidenceModelCharacteristicVariable.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceModelCharacteristicVariable.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceModelCharacteristicVariable.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceModelCharacteristicVariable '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceModelCharacteristicVariable]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceModelCharacteristicVariable.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceModelCharacteristicVariable.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EvidenceModelCharacteristicVariable';

  /// [variableDefinition]
  /// Description and definition of the variable.
  final Reference variableDefinition;

  /// [handling]
  /// How the variable is classified for use in adjusted analysis.
  final EvidenceVariableHandling? handling;

  /// [valueCategory]
  /// Qualitative label used for grouping values of a dichotomous, ordinal,
  /// or polychotomous variable.
  final List<CodeableConcept>? valueCategory;

  /// [valueQuantity]
  /// Quantitative label used for grouping values of a dichotomous, ordinal,
  /// or polychotomous variable.
  final List<Quantity>? valueQuantity;

  /// [valueRange]
  /// Range of quantitative labels used for grouping values of a dichotomous,
  /// ordinal, or polychotomous variable.
  final List<Range>? valueRange;
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
      'variableDefinition',
      variableDefinition,
    );
    addField(
      'handling',
      handling,
    );
    addField(
      'valueCategory',
      valueCategory,
    );
    addField(
      'valueQuantity',
      valueQuantity,
    );
    addField(
      'valueRange',
      valueRange,
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
      'variableDefinition',
      'handling',
      'valueCategory',
      'valueQuantity',
      'valueRange',
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
      case 'variableDefinition':
        fields.add(variableDefinition);
      case 'handling':
        if (handling != null) {
          fields.add(handling!);
        }
      case 'valueCategory':
        if (valueCategory != null) {
          fields.addAll(valueCategory!);
        }
      case 'valueQuantity':
        if (valueQuantity != null) {
          fields.addAll(valueQuantity!);
        }
      case 'valueRange':
        if (valueRange != null) {
          fields.addAll(valueRange!);
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
  EvidenceModelCharacteristicVariable clone() => copyWith();

  /// Copy function for [EvidenceModelCharacteristicVariable]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $EvidenceModelCharacteristicVariableCopyWith<
          EvidenceModelCharacteristicVariable>
      get copyWith => _$EvidenceModelCharacteristicVariableCopyWithImpl<
              EvidenceModelCharacteristicVariable>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EvidenceModelCharacteristicVariable) {
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
      variableDefinition,
      o.variableDefinition,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      handling,
      o.handling,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      valueCategory,
      o.valueCategory,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Quantity>(
      valueQuantity,
      o.valueQuantity,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Range>(
      valueRange,
      o.valueRange,
    )) {
      return false;
    }
    return true;
  }
}

/// [EvidenceCertainty]
/// Assessment of certainty, confidence in the estimates, or quality of the
/// evidence.
class EvidenceCertainty extends BackboneElement {
  /// Primary constructor for
  /// [EvidenceCertainty]

  const EvidenceCertainty({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.note,
    this.type,
    this.rating,
    this.rater,
    this.subcomponent,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceCertainty.fromJson(
    Map<String, dynamic> json,
  ) {
    return EvidenceCertainty(
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
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      rating: JsonParser.parseObject<CodeableConcept>(
        json,
        'rating',
        CodeableConcept.fromJson,
      ),
      rater: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'rater',
        FhirString.fromJson,
      ),
      subcomponent: (json['subcomponent'] as List<dynamic>?)
          ?.map<EvidenceCertainty>(
            (v) => EvidenceCertainty.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [EvidenceCertainty]
  /// from a [String] or [YamlMap] object
  factory EvidenceCertainty.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceCertainty.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceCertainty.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceCertainty '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceCertainty]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceCertainty.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceCertainty.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EvidenceCertainty';

  /// [description]
  /// Textual description of certainty.
  final FhirMarkdown? description;

  /// [note]
  /// Footnotes and/or explanatory notes.
  final List<Annotation>? note;

  /// [type]
  /// Aspect of certainty being rated.
  final CodeableConcept? type;

  /// [rating]
  /// Assessment or judgement of the aspect.
  final CodeableConcept? rating;

  /// [rater]
  /// Individual or group who did the rating.
  final List<FhirString>? rater;

  /// [subcomponent]
  /// A domain or subdomain of certainty.
  final List<EvidenceCertainty>? subcomponent;
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
      'description',
      description,
    );
    addField(
      'note',
      note,
    );
    addField(
      'type',
      type,
    );
    addField(
      'rating',
      rating,
    );
    addField(
      'rater',
      rater,
    );
    addField(
      'subcomponent',
      subcomponent,
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
      'description',
      'note',
      'type',
      'rating',
      'rater',
      'subcomponent',
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
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'rating':
        if (rating != null) {
          fields.add(rating!);
        }
      case 'rater':
        if (rater != null) {
          fields.addAll(rater!);
        }
      case 'subcomponent':
        if (subcomponent != null) {
          fields.addAll(subcomponent!);
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
  EvidenceCertainty clone() => copyWith();

  /// Copy function for [EvidenceCertainty]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $EvidenceCertaintyCopyWith<EvidenceCertainty> get copyWith =>
      _$EvidenceCertaintyCopyWithImpl<EvidenceCertainty>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EvidenceCertainty) {
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
      description,
      o.description,
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
      type,
      o.type,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      rating,
      o.rating,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirString>(
      rater,
      o.rater,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<EvidenceCertainty>(
      subcomponent,
      o.subcomponent,
    )) {
      return false;
    }
    return true;
  }
}
