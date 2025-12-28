import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'evidence_variable.g.dart';

/// [EvidenceVariable]
/// The EvidenceVariable resource describes an element that knowledge
/// (Evidence) is about.
class EvidenceVariable extends MetadataResource {
  /// Primary constructor for
  /// [EvidenceVariable]

  const EvidenceVariable({
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
    VersionAlgorithmXEvidenceVariable? versionAlgorithmX,
    FhirString? versionAlgorithmString,
    Coding? versionAlgorithmCoding,
    this.name,
    this.title,
    this.shortTitle,
    this.citeAs,
    required super.status,
    super.experimental,
    super.date,
    super.author,
    super.publisher,
    super.contact,
    this.recorder,
    super.editor,
    super.reviewer,
    super.endorser,
    super.description,
    this.note,
    super.useContext,
    this.purpose,
    this.copyright,
    this.copyrightLabel,
    super.approvalDate,
    super.lastReviewDate,
    super.effectivePeriod,
    this.relatesTo,
    this.actual,
    this.definition,
    this.definitionModifier,
    this.handling,
    this.category,
    this.conditional,
    this.classifier,
    this.dataStorage,
    this.timing,
    this.period,
    this.constraint,
    this.missingDataMeaning,
    this.unacceptableDataHandling,
  })  : versionAlgorithmX = versionAlgorithmX ??
            versionAlgorithmString ??
            versionAlgorithmCoding,
        super(
          resourceType: R6ResourceType.EvidenceVariable,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceVariable.fromJson(
    Map<String, dynamic> json,
  ) {
    return EvidenceVariable(
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
      versionAlgorithmX:
          JsonParser.parsePolymorphic<VersionAlgorithmXEvidenceVariable>(
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
      shortTitle: JsonParser.parsePrimitive<FhirString>(
        json,
        'shortTitle',
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
      effectivePeriod: JsonParser.parseObject<Period>(
        json,
        'effectivePeriod',
        Period.fromJson,
      ),
      relatesTo: (json['relatesTo'] as List<dynamic>?)
          ?.map<EvidenceVariableRelatesTo>(
            (v) => EvidenceVariableRelatesTo.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      actual: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'actual',
        FhirBoolean.fromJson,
      ),
      definition: JsonParser.parseObject<CodeableReference>(
        json,
        'definition',
        CodeableReference.fromJson,
      ),
      definitionModifier: (json['definitionModifier'] as List<dynamic>?)
          ?.map<EvidenceVariableDefinitionModifier>(
            (v) => EvidenceVariableDefinitionModifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      handling: JsonParser.parsePrimitive<EvidenceVariableHandling>(
        json,
        'handling',
        EvidenceVariableHandling.fromJson,
      ),
      category: (json['category'] as List<dynamic>?)
          ?.map<EvidenceVariableCategory>(
            (v) => EvidenceVariableCategory.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      conditional: JsonParser.parseObject<FhirExpression>(
        json,
        'conditional',
        FhirExpression.fromJson,
      ),
      classifier: (json['classifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      dataStorage: (json['dataStorage'] as List<dynamic>?)
          ?.map<EvidenceVariableDataStorage>(
            (v) => EvidenceVariableDataStorage.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      timing: JsonParser.parseObject<RelativeTime>(
        json,
        'timing',
        RelativeTime.fromJson,
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
      ),
      constraint: (json['constraint'] as List<dynamic>?)
          ?.map<EvidenceVariableConstraint>(
            (v) => EvidenceVariableConstraint.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      missingDataMeaning: (json['missingDataMeaning'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      unacceptableDataHandling:
          (json['unacceptableDataHandling'] as List<dynamic>?)
              ?.map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  {...v as Map<String, dynamic>},
                ),
              )
              .toList(),
    );
  }

  /// Deserialize [EvidenceVariable]
  /// from a [String] or [YamlMap] object
  factory EvidenceVariable.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceVariable.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceVariable.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceVariable '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceVariable]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceVariable.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceVariable.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EvidenceVariable';

  /// [identifier]
  /// A formal identifier that is used to identify this evidence variable
  /// when it is represented in other formats, or referenced in a
  /// specification, model, design or an instance.
  final List<Identifier>? identifier;

  /// [versionAlgorithmX]
  /// Indicates the mechanism used to compare versions to determine which is
  /// more current.
  final VersionAlgorithmXEvidenceVariable? versionAlgorithmX;

  /// Getter for [versionAlgorithmString] as a FhirString
  FhirString? get versionAlgorithmString =>
      versionAlgorithmX?.isAs<FhirString>();

  /// Getter for [versionAlgorithmCoding] as a Coding
  Coding? get versionAlgorithmCoding => versionAlgorithmX?.isAs<Coding>();

  /// [name]
  /// A natural language name identifying the evidence variable. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the evidence variable.
  final FhirString? title;

  /// [shortTitle]
  /// The short title provides an alternate title for use in informal
  /// descriptive contexts where the full, formal title is not necessary.
  final FhirString? shortTitle;

  /// [citeAs]
  /// Display of the suggested method of how to cite this EvidenceVariable.
  final FhirMarkdown? citeAs;

  /// [recorder]
  /// The person or entity that entered the data into the EvidenceVariable
  /// Resource instance, if different than the author or creator of the
  /// intellectual property contained within the EvidenceVariable Resource
  /// instance.
  final List<ContactDetail>? recorder;

  /// [note]
  /// A human-readable string to clarify or explain concepts about the
  /// resource.
  final List<Annotation>? note;

  /// [purpose]
  /// Explanation of why this EvidenceVariable is needed and why it has been
  /// designed as it has.
  final FhirMarkdown? purpose;

  /// [copyright]
  /// A copyright statement relating to the EvidenceVariable and/or its
  /// contents. Copyright statements are legal notices of intellectual
  /// property ownership and may include restrictions on the use and
  /// publishing of the EvidenceVariable.
  final FhirMarkdown? copyright;

  /// [copyrightLabel]
  /// A short string (<50 characters), suitable for inclusion in a page
  /// footer that identifies the copyright holder, effective period, and
  /// optionally whether rights are restricted . (e.g. 'All rights reserved',
  /// 'Some rights reserved').
  final FhirString? copyrightLabel;

  /// [relatesTo]
  /// Relationships that this EvidenceVariable has with other FHIR or
  /// non-FHIR resources that already exist.
  final List<EvidenceVariableRelatesTo>? relatesTo;

  /// [actual]
  /// True if the actual variable measured, false if a conceptual
  /// representation of the intended variable.
  final FhirBoolean? actual;

  /// [definition]
  /// The meaning of the evidence variable.
  final CodeableReference? definition;

  /// [definitionModifier]
  /// Further specification of the definition.
  final List<EvidenceVariableDefinitionModifier>? definitionModifier;

  /// [handling]
  /// The method of handling in statistical analysis.
  final EvidenceVariableHandling? handling;

  /// [category]
  /// A grouping for dichotomous, ordinal, or polychotomouos variables.
  final List<EvidenceVariableCategory>? category;

  /// [conditional]
  /// The context, situation, or parameters that determine whether the data
  /// is obtained to determine the value of the variable.
  final FhirExpression? conditional;

  /// [classifier]
  /// Classification of the variable.
  final List<CodeableConcept>? classifier;

  /// [dataStorage]
  /// How the data element is organized and where the data element
  /// (expressing the value of the variable) is found in the dataset.
  final List<EvidenceVariableDataStorage>? dataStorage;

  /// [timing]
  /// When the variable is observed in relation to a reference point in time
  /// defined by context or event.
  final RelativeTime? timing;

  /// [period]
  /// When the variable is observed in relation to calendar dates and times.
  final Period? period;

  /// [constraint]
  /// Limit on acceptability of data used to express values of the variable.
  final List<EvidenceVariableConstraint>? constraint;

  /// [missingDataMeaning]
  /// A method or transformation applied for missing data.
  final List<CodeableConcept>? missingDataMeaning;

  /// [unacceptableDataHandling]
  /// A method or transformation applied for data that does not match
  /// required patterns.
  final List<CodeableConcept>? unacceptableDataHandling;
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
      'shortTitle',
      shortTitle,
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
      'description',
      description,
    );
    addField(
      'note',
      note,
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
      'approvalDate',
      approvalDate,
    );
    addField(
      'lastReviewDate',
      lastReviewDate,
    );
    addField(
      'effectivePeriod',
      effectivePeriod,
    );
    addField(
      'relatesTo',
      relatesTo,
    );
    addField(
      'actual',
      actual,
    );
    addField(
      'definition',
      definition,
    );
    addField(
      'definitionModifier',
      definitionModifier,
    );
    addField(
      'handling',
      handling,
    );
    addField(
      'category',
      category,
    );
    addField(
      'conditional',
      conditional,
    );
    addField(
      'classifier',
      classifier,
    );
    addField(
      'dataStorage',
      dataStorage,
    );
    addField(
      'timing',
      timing,
    );
    addField(
      'period',
      period,
    );
    addField(
      'constraint',
      constraint,
    );
    addField(
      'missingDataMeaning',
      missingDataMeaning,
    );
    addField(
      'unacceptableDataHandling',
      unacceptableDataHandling,
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
      'shortTitle',
      'citeAs',
      'status',
      'experimental',
      'date',
      'author',
      'publisher',
      'contact',
      'recorder',
      'editor',
      'reviewer',
      'endorser',
      'description',
      'note',
      'useContext',
      'purpose',
      'copyright',
      'copyrightLabel',
      'approvalDate',
      'lastReviewDate',
      'effectivePeriod',
      'relatesTo',
      'actual',
      'definition',
      'definitionModifier',
      'handling',
      'category',
      'conditional',
      'classifier',
      'dataStorage',
      'timing',
      'period',
      'constraint',
      'missingDataMeaning',
      'unacceptableDataHandling',
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
        fields.add(versionAlgorithmX!);
      case 'versionAlgorithmX':
        fields.add(versionAlgorithmX!);
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
      case 'shortTitle':
        if (shortTitle != null) {
          fields.add(shortTitle!);
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
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
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
      case 'approvalDate':
        if (approvalDate != null) {
          fields.add(approvalDate!);
        }
      case 'lastReviewDate':
        if (lastReviewDate != null) {
          fields.add(lastReviewDate!);
        }
      case 'effectivePeriod':
        if (effectivePeriod != null) {
          fields.add(effectivePeriod!);
        }
      case 'relatesTo':
        if (relatesTo != null) {
          fields.addAll(relatesTo!);
        }
      case 'actual':
        if (actual != null) {
          fields.add(actual!);
        }
      case 'definition':
        if (definition != null) {
          fields.add(definition!);
        }
      case 'definitionModifier':
        if (definitionModifier != null) {
          fields.addAll(definitionModifier!);
        }
      case 'handling':
        if (handling != null) {
          fields.add(handling!);
        }
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'conditional':
        if (conditional != null) {
          fields.add(conditional!);
        }
      case 'classifier':
        if (classifier != null) {
          fields.addAll(classifier!);
        }
      case 'dataStorage':
        if (dataStorage != null) {
          fields.addAll(dataStorage!);
        }
      case 'timing':
        if (timing != null) {
          fields.add(timing!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      case 'constraint':
        if (constraint != null) {
          fields.addAll(constraint!);
        }
      case 'missingDataMeaning':
        if (missingDataMeaning != null) {
          fields.addAll(missingDataMeaning!);
        }
      case 'unacceptableDataHandling':
        if (unacceptableDataHandling != null) {
          fields.addAll(unacceptableDataHandling!);
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
  EvidenceVariable clone() => copyWith();

  /// Copy function for [EvidenceVariable]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $EvidenceVariableCopyWith<EvidenceVariable> get copyWith =>
      _$EvidenceVariableCopyWithImpl<EvidenceVariable>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EvidenceVariable) {
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
      url,
      o.url,
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
      version,
      o.version,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      versionAlgorithmX,
      o.versionAlgorithmX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      title,
      o.title,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      shortTitle,
      o.shortTitle,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      citeAs,
      o.citeAs,
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
      experimental,
      o.experimental,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      date,
      o.date,
    )) {
      return false;
    }
    if (!listEquals<ContactDetail>(
      author,
      o.author,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      publisher,
      o.publisher,
    )) {
      return false;
    }
    if (!listEquals<ContactDetail>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!listEquals<ContactDetail>(
      recorder,
      o.recorder,
    )) {
      return false;
    }
    if (!listEquals<ContactDetail>(
      editor,
      o.editor,
    )) {
      return false;
    }
    if (!listEquals<ContactDetail>(
      reviewer,
      o.reviewer,
    )) {
      return false;
    }
    if (!listEquals<ContactDetail>(
      endorser,
      o.endorser,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<UsageContext>(
      useContext,
      o.useContext,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      purpose,
      o.purpose,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      copyright,
      o.copyright,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      copyrightLabel,
      o.copyrightLabel,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      approvalDate,
      o.approvalDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      lastReviewDate,
      o.lastReviewDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      effectivePeriod,
      o.effectivePeriod,
    )) {
      return false;
    }
    if (!listEquals<EvidenceVariableRelatesTo>(
      relatesTo,
      o.relatesTo,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      actual,
      o.actual,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      definition,
      o.definition,
    )) {
      return false;
    }
    if (!listEquals<EvidenceVariableDefinitionModifier>(
      definitionModifier,
      o.definitionModifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      handling,
      o.handling,
    )) {
      return false;
    }
    if (!listEquals<EvidenceVariableCategory>(
      category,
      o.category,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      conditional,
      o.conditional,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      classifier,
      o.classifier,
    )) {
      return false;
    }
    if (!listEquals<EvidenceVariableDataStorage>(
      dataStorage,
      o.dataStorage,
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
      period,
      o.period,
    )) {
      return false;
    }
    if (!listEquals<EvidenceVariableConstraint>(
      constraint,
      o.constraint,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      missingDataMeaning,
      o.missingDataMeaning,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      unacceptableDataHandling,
      o.unacceptableDataHandling,
    )) {
      return false;
    }
    return true;
  }
}

/// [EvidenceVariableRelatesTo]
/// Relationships that this EvidenceVariable has with other FHIR or
/// non-FHIR resources that already exist.
class EvidenceVariableRelatesTo extends BackboneElement {
  /// Primary constructor for
  /// [EvidenceVariableRelatesTo]

  const EvidenceVariableRelatesTo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.targetX,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceVariableRelatesTo.fromJson(
    Map<String, dynamic> json,
  ) {
    return EvidenceVariableRelatesTo(
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
      targetX: JsonParser.parsePolymorphic<TargetXEvidenceVariableRelatesTo>(
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

  /// Deserialize [EvidenceVariableRelatesTo]
  /// from a [String] or [YamlMap] object
  factory EvidenceVariableRelatesTo.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceVariableRelatesTo.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceVariableRelatesTo.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceVariableRelatesTo '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceVariableRelatesTo]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceVariableRelatesTo.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceVariableRelatesTo.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EvidenceVariableRelatesTo';

  /// [type]
  /// The type of relationship to the related artifact.
  final ArtifactRelationshipType type;

  /// [targetX]
  /// The artifact that is related to this EvidenceVariable Resource.
  final TargetXEvidenceVariableRelatesTo targetX;

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
  EvidenceVariableRelatesTo clone() => copyWith();

  /// Copy function for [EvidenceVariableRelatesTo]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $EvidenceVariableRelatesToCopyWith<EvidenceVariableRelatesTo> get copyWith =>
      _$EvidenceVariableRelatesToCopyWithImpl<EvidenceVariableRelatesTo>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EvidenceVariableRelatesTo) {
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
      targetX,
      o.targetX,
    )) {
      return false;
    }
    return true;
  }
}

/// [EvidenceVariableDefinitionModifier]
/// Further specification of the definition.
class EvidenceVariableDefinitionModifier extends BackboneElement {
  /// Primary constructor for
  /// [EvidenceVariableDefinitionModifier]

  const EvidenceVariableDefinitionModifier({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    required this.valueX,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceVariableDefinitionModifier.fromJson(
    Map<String, dynamic> json,
  ) {
    return EvidenceVariableDefinitionModifier(
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
      valueX:
          JsonParser.parsePolymorphic<ValueXEvidenceVariableDefinitionModifier>(
        json,
        {
          'valueCodeableConcept': CodeableConcept.fromJson,
          'valueBoolean': FhirBoolean.fromJson,
          'valueQuantity': Quantity.fromJson,
          'valueRange': Range.fromJson,
          'valuePeriod': Period.fromJson,
          'valueRelativeTime': RelativeTime.fromJson,
          'valueReference': Reference.fromJson,
          'valueExpression': FhirExpression.fromJson,
          'valueUri': FhirUri.fromJson,
        },
      )!,
    );
  }

  /// Deserialize [EvidenceVariableDefinitionModifier]
  /// from a [String] or [YamlMap] object
  factory EvidenceVariableDefinitionModifier.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceVariableDefinitionModifier.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceVariableDefinitionModifier.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceVariableDefinitionModifier '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceVariableDefinitionModifier]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceVariableDefinitionModifier.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceVariableDefinitionModifier.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EvidenceVariableDefinitionModifier';

  /// [code]
  /// Attribute of the definition.
  final CodeableConcept code;

  /// [valueX]
  /// Specification of the definition attribute.
  final ValueXEvidenceVariableDefinitionModifier valueX;

  /// Getter for [valueCodeableConcept] as a CodeableConcept
  CodeableConcept? get valueCodeableConcept => valueX.isAs<CodeableConcept>();

  /// Getter for [valueBoolean] as a FhirBoolean
  FhirBoolean? get valueBoolean => valueX.isAs<FhirBoolean>();

  /// Getter for [valueQuantity] as a Quantity
  Quantity? get valueQuantity => valueX.isAs<Quantity>();

  /// Getter for [valueRange] as a Range
  Range? get valueRange => valueX.isAs<Range>();

  /// Getter for [valuePeriod] as a Period
  Period? get valuePeriod => valueX.isAs<Period>();

  /// Getter for [valueRelativeTime] as a RelativeTime
  RelativeTime? get valueRelativeTime => valueX.isAs<RelativeTime>();

  /// Getter for [valueReference] as a Reference
  Reference? get valueReference => valueX.isAs<Reference>();

  /// Getter for [valueExpression] as a FhirExpression
  FhirExpression? get valueExpression => valueX.isAs<FhirExpression>();

  /// Getter for [valueUri] as a FhirUri
  FhirUri? get valueUri => valueX.isAs<FhirUri>();
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
    final valueXFhirType = valueX.fhirType;
    addField(
      'value${valueXFhirType.capitalize()}',
      valueX,
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
        fields.add(valueX);
      case 'valueX':
        fields.add(valueX);
      case 'valueCodeableConcept':
        if (valueX is CodeableConcept) {
          fields.add(valueX);
        }
      case 'valueBoolean':
        if (valueX is FhirBoolean) {
          fields.add(valueX);
        }
      case 'valueQuantity':
        if (valueX is Quantity) {
          fields.add(valueX);
        }
      case 'valueRange':
        if (valueX is Range) {
          fields.add(valueX);
        }
      case 'valuePeriod':
        if (valueX is Period) {
          fields.add(valueX);
        }
      case 'valueRelativeTime':
        if (valueX is RelativeTime) {
          fields.add(valueX);
        }
      case 'valueReference':
        if (valueX is Reference) {
          fields.add(valueX);
        }
      case 'valueExpression':
        if (valueX is FhirExpression) {
          fields.add(valueX);
        }
      case 'valueUri':
        if (valueX is FhirUri) {
          fields.add(valueX);
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
  EvidenceVariableDefinitionModifier clone() => copyWith();

  /// Copy function for [EvidenceVariableDefinitionModifier]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $EvidenceVariableDefinitionModifierCopyWith<
          EvidenceVariableDefinitionModifier>
      get copyWith => _$EvidenceVariableDefinitionModifierCopyWithImpl<
              EvidenceVariableDefinitionModifier>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EvidenceVariableDefinitionModifier) {
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
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      valueX,
      o.valueX,
    )) {
      return false;
    }
    return true;
  }
}

/// [EvidenceVariableCategory]
/// A grouping for dichotomous, ordinal, or polychotomouos variables.
class EvidenceVariableCategory extends BackboneElement {
  /// Primary constructor for
  /// [EvidenceVariableCategory]

  const EvidenceVariableCategory({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    ValueXEvidenceVariableCategory? valueX,
    CodeableConcept? valueCodeableConcept,
    Quantity? valueQuantity,
    Range? valueRange,
    Reference? valueReference,
    super.disallowExtensions,
  })  : valueX = valueX ??
            valueCodeableConcept ??
            valueQuantity ??
            valueRange ??
            valueReference,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceVariableCategory.fromJson(
    Map<String, dynamic> json,
  ) {
    return EvidenceVariableCategory(
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
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      ),
      valueX: JsonParser.parsePolymorphic<ValueXEvidenceVariableCategory>(
        json,
        {
          'valueCodeableConcept': CodeableConcept.fromJson,
          'valueQuantity': Quantity.fromJson,
          'valueRange': Range.fromJson,
          'valueReference': Reference.fromJson,
        },
      ),
    );
  }

  /// Deserialize [EvidenceVariableCategory]
  /// from a [String] or [YamlMap] object
  factory EvidenceVariableCategory.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceVariableCategory.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceVariableCategory.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceVariableCategory '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceVariableCategory]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceVariableCategory.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceVariableCategory.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EvidenceVariableCategory';

  /// [name]
  /// Description of the grouping.
  final FhirString? name;

  /// [valueX]
  /// Definition of the grouping.
  final ValueXEvidenceVariableCategory? valueX;

  /// Getter for [valueCodeableConcept] as a CodeableConcept
  CodeableConcept? get valueCodeableConcept => valueX?.isAs<CodeableConcept>();

  /// Getter for [valueQuantity] as a Quantity
  Quantity? get valueQuantity => valueX?.isAs<Quantity>();

  /// Getter for [valueRange] as a Range
  Range? get valueRange => valueX?.isAs<Range>();

  /// Getter for [valueReference] as a Reference
  Reference? get valueReference => valueX?.isAs<Reference>();
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
      'name',
      name,
    );
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField(
        'value${fhirType.capitalize()}',
        valueX,
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
      'name',
      'valueX',
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
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'value':
        fields.add(valueX!);
      case 'valueX':
        fields.add(valueX!);
      case 'valueCodeableConcept':
        if (valueX is CodeableConcept) {
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
      case 'valueReference':
        if (valueX is Reference) {
          fields.add(valueX!);
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
  EvidenceVariableCategory clone() => copyWith();

  /// Copy function for [EvidenceVariableCategory]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $EvidenceVariableCategoryCopyWith<EvidenceVariableCategory> get copyWith =>
      _$EvidenceVariableCategoryCopyWithImpl<EvidenceVariableCategory>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EvidenceVariableCategory) {
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
      name,
      o.name,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      valueX,
      o.valueX,
    )) {
      return false;
    }
    return true;
  }
}

/// [EvidenceVariableDataStorage]
/// How the data element is organized and where the data element
/// (expressing the value of the variable) is found in the dataset.
class EvidenceVariableDataStorage extends BackboneElement {
  /// Primary constructor for
  /// [EvidenceVariableDataStorage]

  const EvidenceVariableDataStorage({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.datatype,
    this.path,
    this.delimiter,
    this.component,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceVariableDataStorage.fromJson(
    Map<String, dynamic> json,
  ) {
    return EvidenceVariableDataStorage(
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
      datatype: JsonParser.parseObject<CodeableConcept>(
        json,
        'datatype',
        CodeableConcept.fromJson,
      ),
      path: JsonParser.parsePrimitive<FhirString>(
        json,
        'path',
        FhirString.fromJson,
      ),
      delimiter: JsonParser.parsePrimitive<FhirString>(
        json,
        'delimiter',
        FhirString.fromJson,
      ),
      component: (json['component'] as List<dynamic>?)
          ?.map<EvidenceVariableDataStorage>(
            (v) => EvidenceVariableDataStorage.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [EvidenceVariableDataStorage]
  /// from a [String] or [YamlMap] object
  factory EvidenceVariableDataStorage.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceVariableDataStorage.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceVariableDataStorage.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceVariableDataStorage '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceVariableDataStorage]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceVariableDataStorage.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceVariableDataStorage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EvidenceVariableDataStorage';

  /// [datatype]
  /// The type of data used to express values of the variable.
  final CodeableConcept? datatype;

  /// [path]
  /// The mapping (order of elements) to reach the element containing the
  /// data element in the dataset.
  final FhirString? path;

  /// [delimiter]
  /// A character or series of characters that is used within a string to
  /// signal the separation of discrete values.
  final FhirString? delimiter;

  /// [component]
  /// A part of the value for a variable that is stored in 2 or more parts.
  final List<EvidenceVariableDataStorage>? component;
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
      'datatype',
      datatype,
    );
    addField(
      'path',
      path,
    );
    addField(
      'delimiter',
      delimiter,
    );
    addField(
      'component',
      component,
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
      'datatype',
      'path',
      'delimiter',
      'component',
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
      case 'datatype':
        if (datatype != null) {
          fields.add(datatype!);
        }
      case 'path':
        if (path != null) {
          fields.add(path!);
        }
      case 'delimiter':
        if (delimiter != null) {
          fields.add(delimiter!);
        }
      case 'component':
        if (component != null) {
          fields.addAll(component!);
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
  EvidenceVariableDataStorage clone() => copyWith();

  /// Copy function for [EvidenceVariableDataStorage]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $EvidenceVariableDataStorageCopyWith<EvidenceVariableDataStorage>
      get copyWith => _$EvidenceVariableDataStorageCopyWithImpl<
              EvidenceVariableDataStorage>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EvidenceVariableDataStorage) {
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
      datatype,
      o.datatype,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      path,
      o.path,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      delimiter,
      o.delimiter,
    )) {
      return false;
    }
    if (!listEquals<EvidenceVariableDataStorage>(
      component,
      o.component,
    )) {
      return false;
    }
    return true;
  }
}

/// [EvidenceVariableConstraint]
/// Limit on acceptability of data used to express values of the variable.
class EvidenceVariableConstraint extends BackboneElement {
  /// Primary constructor for
  /// [EvidenceVariableConstraint]

  const EvidenceVariableConstraint({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.conditional,
    this.minimumQuantity,
    this.maximumQuantity,
    this.earliestDateTime,
    this.latestDateTime,
    this.minimumStringLength,
    this.maximumStringLength,
    this.code,
    this.expression,
    this.expectedValueSet,
    this.expectedUnitsValueSet,
    this.anyValueAllowed,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceVariableConstraint.fromJson(
    Map<String, dynamic> json,
  ) {
    return EvidenceVariableConstraint(
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
      conditional: JsonParser.parseObject<CodeableConcept>(
        json,
        'conditional',
        CodeableConcept.fromJson,
      ),
      minimumQuantity: JsonParser.parseObject<Quantity>(
        json,
        'minimumQuantity',
        Quantity.fromJson,
      ),
      maximumQuantity: JsonParser.parseObject<Quantity>(
        json,
        'maximumQuantity',
        Quantity.fromJson,
      ),
      earliestDateTime: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'earliestDateTime',
        FhirDateTime.fromJson,
      ),
      latestDateTime: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'latestDateTime',
        FhirDateTime.fromJson,
      ),
      minimumStringLength: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'minimumStringLength',
        FhirUnsignedInt.fromJson,
      ),
      maximumStringLength: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'maximumStringLength',
        FhirPositiveInt.fromJson,
      ),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      ),
      expression: JsonParser.parseObject<FhirExpression>(
        json,
        'expression',
        FhirExpression.fromJson,
      ),
      expectedValueSet: JsonParser.parseObject<Reference>(
        json,
        'expectedValueSet',
        Reference.fromJson,
      ),
      expectedUnitsValueSet: JsonParser.parseObject<Reference>(
        json,
        'expectedUnitsValueSet',
        Reference.fromJson,
      ),
      anyValueAllowed: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'anyValueAllowed',
        FhirBoolean.fromJson,
      ),
    );
  }

  /// Deserialize [EvidenceVariableConstraint]
  /// from a [String] or [YamlMap] object
  factory EvidenceVariableConstraint.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceVariableConstraint.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceVariableConstraint.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceVariableConstraint '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceVariableConstraint]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceVariableConstraint.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceVariableConstraint.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EvidenceVariableConstraint';

  /// [conditional]
  /// The context, situation, or parameters that determine whether this
  /// constraint applies.
  final CodeableConcept? conditional;

  /// [minimumQuantity]
  /// The lowest permissible value of the variable, used with variables that
  /// have a number-based datatype (with or without units).
  final Quantity? minimumQuantity;

  /// [maximumQuantity]
  /// The highest permissible value of the variable, used with variables that
  /// have a number-based datatype (with or without units).
  final Quantity? maximumQuantity;

  /// [earliestDateTime]
  /// The earliest permissible value of the variable, used with variables
  /// that have a date-based or dateTime-based datatype.
  final FhirDateTime? earliestDateTime;

  /// [latestDateTime]
  /// The latest permissible value of the variable, used with variables that
  /// have a date-based or dateTime-based datatype.
  final FhirDateTime? latestDateTime;

  /// [minimumStringLength]
  /// The lowest number of characters allowed for a value of the variable,
  /// used with variables that have a string-based datatype.
  final FhirUnsignedInt? minimumStringLength;

  /// [maximumStringLength]
  /// The highest number of characters allowed for a value of the variable,
  /// used with variables that have a string-based datatype.
  final FhirPositiveInt? maximumStringLength;

  /// [code]
  /// A rule, such as a format or other expectation, for the data values.
  final CodeableConcept? code;

  /// [expression]
  /// A rule, such as a format or other expectation, for the data values,
  /// expressed as an Expression.
  final FhirExpression? expression;

  /// [expectedValueSet]
  /// List of anticipated values used to express value of the variable, used
  /// with variables that have a codeable concept-based datatype.
  final Reference? expectedValueSet;

  /// [expectedUnitsValueSet]
  /// List of anticipated values used to express units for the value of the
  /// variable, used with variables that have a Quantity-based datatype.
  final Reference? expectedUnitsValueSet;

  /// [anyValueAllowed]
  /// Whether the value expressed for a variable is allowed to not be
  /// restricted to the expected value set.
  final FhirBoolean? anyValueAllowed;
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
      'conditional',
      conditional,
    );
    addField(
      'minimumQuantity',
      minimumQuantity,
    );
    addField(
      'maximumQuantity',
      maximumQuantity,
    );
    addField(
      'earliestDateTime',
      earliestDateTime,
    );
    addField(
      'latestDateTime',
      latestDateTime,
    );
    addField(
      'minimumStringLength',
      minimumStringLength,
    );
    addField(
      'maximumStringLength',
      maximumStringLength,
    );
    addField(
      'code',
      code,
    );
    addField(
      'expression',
      expression,
    );
    addField(
      'expectedValueSet',
      expectedValueSet,
    );
    addField(
      'expectedUnitsValueSet',
      expectedUnitsValueSet,
    );
    addField(
      'anyValueAllowed',
      anyValueAllowed,
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
      'conditional',
      'minimumQuantity',
      'maximumQuantity',
      'earliestDateTime',
      'latestDateTime',
      'minimumStringLength',
      'maximumStringLength',
      'code',
      'expression',
      'expectedValueSet',
      'expectedUnitsValueSet',
      'anyValueAllowed',
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
      case 'conditional':
        if (conditional != null) {
          fields.add(conditional!);
        }
      case 'minimumQuantity':
        if (minimumQuantity != null) {
          fields.add(minimumQuantity!);
        }
      case 'maximumQuantity':
        if (maximumQuantity != null) {
          fields.add(maximumQuantity!);
        }
      case 'earliestDateTime':
        if (earliestDateTime != null) {
          fields.add(earliestDateTime!);
        }
      case 'latestDateTime':
        if (latestDateTime != null) {
          fields.add(latestDateTime!);
        }
      case 'minimumStringLength':
        if (minimumStringLength != null) {
          fields.add(minimumStringLength!);
        }
      case 'maximumStringLength':
        if (maximumStringLength != null) {
          fields.add(maximumStringLength!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'expression':
        if (expression != null) {
          fields.add(expression!);
        }
      case 'expectedValueSet':
        if (expectedValueSet != null) {
          fields.add(expectedValueSet!);
        }
      case 'expectedUnitsValueSet':
        if (expectedUnitsValueSet != null) {
          fields.add(expectedUnitsValueSet!);
        }
      case 'anyValueAllowed':
        if (anyValueAllowed != null) {
          fields.add(anyValueAllowed!);
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
  EvidenceVariableConstraint clone() => copyWith();

  /// Copy function for [EvidenceVariableConstraint]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $EvidenceVariableConstraintCopyWith<EvidenceVariableConstraint>
      get copyWith =>
          _$EvidenceVariableConstraintCopyWithImpl<EvidenceVariableConstraint>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EvidenceVariableConstraint) {
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
      conditional,
      o.conditional,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      minimumQuantity,
      o.minimumQuantity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      maximumQuantity,
      o.maximumQuantity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      earliestDateTime,
      o.earliestDateTime,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      latestDateTime,
      o.latestDateTime,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      minimumStringLength,
      o.minimumStringLength,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      maximumStringLength,
      o.maximumStringLength,
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
      expression,
      o.expression,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      expectedValueSet,
      o.expectedValueSet,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      expectedUnitsValueSet,
      o.expectedUnitsValueSet,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      anyValueAllowed,
      o.anyValueAllowed,
    )) {
      return false;
    }
    return true;
  }
}
