import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart'
    show
        EvidenceVariable,
        EvidenceVariableCategory,
        EvidenceVariableConstraint,
        EvidenceVariableDataStorage,
        EvidenceVariableDefinitionModifier,
        EvidenceVariableRelatesTo,
        R6ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r6_mapping/fhir_r6_mapping.dart';
import 'package:yaml/yaml.dart';

/// [EvidenceVariableBuilder]
/// The EvidenceVariable resource describes an element that knowledge
/// (Evidence) is about.
class EvidenceVariableBuilder extends MetadataResourceBuilder {
  /// Primary constructor for
  /// [EvidenceVariableBuilder]

  EvidenceVariableBuilder({
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
    VersionAlgorithmXEvidenceVariableBuilder? versionAlgorithmX,
    FhirStringBuilder? versionAlgorithmString,
    CodingBuilder? versionAlgorithmCoding,
    this.name,
    this.title,
    this.shortTitle,
    this.citeAs,
    super.status,
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
          objectPath: 'EvidenceVariable',
          resourceType: R6ResourceType.EvidenceVariable,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory EvidenceVariableBuilder.empty() => EvidenceVariableBuilder(
        status: PublicationStatusBuilder.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceVariableBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'EvidenceVariable';
    return EvidenceVariableBuilder(
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
      url: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'url',
        FhirUriBuilder.fromJson,
        '$objectPath.url',
      ),
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
      version: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'version',
        FhirStringBuilder.fromJson,
        '$objectPath.version',
      ),
      versionAlgorithmX:
          JsonParser.parsePolymorphic<VersionAlgorithmXEvidenceVariableBuilder>(
        json,
        {
          'versionAlgorithmString': FhirStringBuilder.fromJson,
          'versionAlgorithmCoding': CodingBuilder.fromJson,
        },
        objectPath,
      ),
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      title: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'title',
        FhirStringBuilder.fromJson,
        '$objectPath.title',
      ),
      shortTitle: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'shortTitle',
        FhirStringBuilder.fromJson,
        '$objectPath.shortTitle',
      ),
      citeAs: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'citeAs',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.citeAs',
      ),
      status: JsonParser.parsePrimitive<PublicationStatusBuilder>(
        json,
        'status',
        PublicationStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      experimental: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'experimental',
        FhirBooleanBuilder.fromJson,
        '$objectPath.experimental',
      ),
      date: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'date',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.date',
      ),
      author: (json['author'] as List<dynamic>?)
          ?.map<ContactDetailBuilder>(
            (v) => ContactDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.author',
              },
            ),
          )
          .toList(),
      publisher: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'publisher',
        FhirStringBuilder.fromJson,
        '$objectPath.publisher',
      ),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ContactDetailBuilder>(
            (v) => ContactDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contact',
              },
            ),
          )
          .toList(),
      recorder: (json['recorder'] as List<dynamic>?)
          ?.map<ContactDetailBuilder>(
            (v) => ContactDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.recorder',
              },
            ),
          )
          .toList(),
      editor: (json['editor'] as List<dynamic>?)
          ?.map<ContactDetailBuilder>(
            (v) => ContactDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.editor',
              },
            ),
          )
          .toList(),
      reviewer: (json['reviewer'] as List<dynamic>?)
          ?.map<ContactDetailBuilder>(
            (v) => ContactDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reviewer',
              },
            ),
          )
          .toList(),
      endorser: (json['endorser'] as List<dynamic>?)
          ?.map<ContactDetailBuilder>(
            (v) => ContactDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.endorser',
              },
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'description',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.description',
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<AnnotationBuilder>(
            (v) => AnnotationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map<UsageContextBuilder>(
            (v) => UsageContextBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.useContext',
              },
            ),
          )
          .toList(),
      purpose: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'purpose',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.purpose',
      ),
      copyright: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'copyright',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.copyright',
      ),
      copyrightLabel: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'copyrightLabel',
        FhirStringBuilder.fromJson,
        '$objectPath.copyrightLabel',
      ),
      approvalDate: JsonParser.parsePrimitive<FhirDateBuilder>(
        json,
        'approvalDate',
        FhirDateBuilder.fromJson,
        '$objectPath.approvalDate',
      ),
      lastReviewDate: JsonParser.parsePrimitive<FhirDateBuilder>(
        json,
        'lastReviewDate',
        FhirDateBuilder.fromJson,
        '$objectPath.lastReviewDate',
      ),
      effectivePeriod: JsonParser.parseObject<PeriodBuilder>(
        json,
        'effectivePeriod',
        PeriodBuilder.fromJson,
        '$objectPath.effectivePeriod',
      ),
      relatesTo: (json['relatesTo'] as List<dynamic>?)
          ?.map<EvidenceVariableRelatesToBuilder>(
            (v) => EvidenceVariableRelatesToBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.relatesTo',
              },
            ),
          )
          .toList(),
      actual: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'actual',
        FhirBooleanBuilder.fromJson,
        '$objectPath.actual',
      ),
      definition: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'definition',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.definition',
      ),
      definitionModifier: (json['definitionModifier'] as List<dynamic>?)
          ?.map<EvidenceVariableDefinitionModifierBuilder>(
            (v) => EvidenceVariableDefinitionModifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.definitionModifier',
              },
            ),
          )
          .toList(),
      handling: JsonParser.parsePrimitive<EvidenceVariableHandlingBuilder>(
        json,
        'handling',
        EvidenceVariableHandlingBuilder.fromJson,
        '$objectPath.handling',
      ),
      category: (json['category'] as List<dynamic>?)
          ?.map<EvidenceVariableCategoryBuilder>(
            (v) => EvidenceVariableCategoryBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.category',
              },
            ),
          )
          .toList(),
      conditional: JsonParser.parseObject<FhirExpressionBuilder>(
        json,
        'conditional',
        FhirExpressionBuilder.fromJson,
        '$objectPath.conditional',
      ),
      classifier: (json['classifier'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.classifier',
              },
            ),
          )
          .toList(),
      dataStorage: (json['dataStorage'] as List<dynamic>?)
          ?.map<EvidenceVariableDataStorageBuilder>(
            (v) => EvidenceVariableDataStorageBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.dataStorage',
              },
            ),
          )
          .toList(),
      timing: JsonParser.parseObject<RelativeTimeBuilder>(
        json,
        'timing',
        RelativeTimeBuilder.fromJson,
        '$objectPath.timing',
      ),
      period: JsonParser.parseObject<PeriodBuilder>(
        json,
        'period',
        PeriodBuilder.fromJson,
        '$objectPath.period',
      ),
      constraint: (json['constraint'] as List<dynamic>?)
          ?.map<EvidenceVariableConstraintBuilder>(
            (v) => EvidenceVariableConstraintBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.constraint',
              },
            ),
          )
          .toList(),
      missingDataMeaning: (json['missingDataMeaning'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.missingDataMeaning',
              },
            ),
          )
          .toList(),
      unacceptableDataHandling:
          (json['unacceptableDataHandling'] as List<dynamic>?)
              ?.map<CodeableConceptBuilder>(
                (v) => CodeableConceptBuilder.fromJson(
                  {
                    ...v as Map<String, dynamic>,
                    'objectPath': '$objectPath.unacceptableDataHandling',
                  },
                ),
              )
              .toList(),
    );
  }

  /// Deserialize [EvidenceVariableBuilder]
  /// from a [String] or [YamlMap] object
  factory EvidenceVariableBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceVariableBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceVariableBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceVariableBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceVariableBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceVariableBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceVariableBuilder.fromJson(json);
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
  List<IdentifierBuilder>? identifier;

  /// [versionAlgorithmX]
  /// Indicates the mechanism used to compare versions to determine which is
  /// more current.
  VersionAlgorithmXEvidenceVariableBuilder? versionAlgorithmX;

  /// Getter for [versionAlgorithmString] as a FhirStringBuilder
  FhirStringBuilder? get versionAlgorithmString =>
      versionAlgorithmX?.isAs<FhirStringBuilder>();

  /// Getter for [versionAlgorithmCoding] as a CodingBuilder
  CodingBuilder? get versionAlgorithmCoding =>
      versionAlgorithmX?.isAs<CodingBuilder>();

  /// [name]
  /// A natural language name identifying the evidence variable. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  FhirStringBuilder? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the evidence variable.
  FhirStringBuilder? title;

  /// [shortTitle]
  /// The short title provides an alternate title for use in informal
  /// descriptive contexts where the full, formal title is not necessary.
  FhirStringBuilder? shortTitle;

  /// [citeAs]
  /// Display of the suggested method of how to cite this EvidenceVariable.
  FhirMarkdownBuilder? citeAs;

  /// [recorder]
  /// The person or entity that entered the data into the EvidenceVariable
  /// Resource instance, if different than the author or creator of the
  /// intellectual property contained within the EvidenceVariable Resource
  /// instance.
  List<ContactDetailBuilder>? recorder;

  /// [note]
  /// A human-readable string to clarify or explain concepts about the
  /// resource.
  List<AnnotationBuilder>? note;

  /// [purpose]
  /// Explanation of why this EvidenceVariable is needed and why it has been
  /// designed as it has.
  FhirMarkdownBuilder? purpose;

  /// [copyright]
  /// A copyright statement relating to the EvidenceVariable and/or its
  /// contents. Copyright statements are legal notices of intellectual
  /// property ownership and may include restrictions on the use and
  /// publishing of the EvidenceVariable.
  FhirMarkdownBuilder? copyright;

  /// [copyrightLabel]
  /// A short string (<50 characters), suitable for inclusion in a page
  /// footer that identifies the copyright holder, effective period, and
  /// optionally whether rights are restricted . (e.g. 'All rights reserved',
  /// 'Some rights reserved').
  FhirStringBuilder? copyrightLabel;

  /// [relatesTo]
  /// Relationships that this EvidenceVariable has with other FHIR or
  /// non-FHIR resources that already exist.
  List<EvidenceVariableRelatesToBuilder>? relatesTo;

  /// [actual]
  /// True if the actual variable measured, false if a conceptual
  /// representation of the intended variable.
  FhirBooleanBuilder? actual;

  /// [definition]
  /// The meaning of the evidence variable.
  CodeableReferenceBuilder? definition;

  /// [definitionModifier]
  /// Further specification of the definition.
  List<EvidenceVariableDefinitionModifierBuilder>? definitionModifier;

  /// [handling]
  /// The method of handling in statistical analysis.
  EvidenceVariableHandlingBuilder? handling;

  /// [category]
  /// A grouping for dichotomous, ordinal, or polychotomouos variables.
  List<EvidenceVariableCategoryBuilder>? category;

  /// [conditional]
  /// The context, situation, or parameters that determine whether the data
  /// is obtained to determine the value of the variable.
  FhirExpressionBuilder? conditional;

  /// [classifier]
  /// Classification of the variable.
  List<CodeableConceptBuilder>? classifier;

  /// [dataStorage]
  /// How the data element is organized and where the data element
  /// (expressing the value of the variable) is found in the dataset.
  List<EvidenceVariableDataStorageBuilder>? dataStorage;

  /// [timing]
  /// When the variable is observed in relation to a reference point in time
  /// defined by context or event.
  RelativeTimeBuilder? timing;

  /// [period]
  /// When the variable is observed in relation to calendar dates and times.
  PeriodBuilder? period;

  /// [constraint]
  /// Limit on acceptability of data used to express values of the variable.
  List<EvidenceVariableConstraintBuilder>? constraint;

  /// [missingDataMeaning]
  /// A method or transformation applied for missing data.
  List<CodeableConceptBuilder>? missingDataMeaning;

  /// [unacceptableDataHandling]
  /// A method or transformation applied for data that does not match
  /// required patterns.
  List<CodeableConceptBuilder>? unacceptableDataHandling;

  /// Converts a [EvidenceVariableBuilder]
  /// to [EvidenceVariable]
  @override
  EvidenceVariable build() => EvidenceVariable.fromJson(toJson());

  /// Converts a [EvidenceVariableBuilder]
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
    addField('url', url);
    addField('identifier', identifier);
    addField('version', version);
    if (versionAlgorithmX != null) {
      final fhirType = versionAlgorithmX!.fhirType;
      addField(
        'versionAlgorithm${fhirType.capitalizeFirstLetter()}',
        versionAlgorithmX,
      );
    }

    addField('name', name);
    addField('title', title);
    addField('shortTitle', shortTitle);
    addField('citeAs', citeAs);
    addField('status', status);
    addField('experimental', experimental);
    addField('date', date);
    addField('author', author);
    addField('publisher', publisher);
    addField('contact', contact);
    addField('recorder', recorder);
    addField('editor', editor);
    addField('reviewer', reviewer);
    addField('endorser', endorser);
    addField('description', description);
    addField('note', note);
    addField('useContext', useContext);
    addField('purpose', purpose);
    addField('copyright', copyright);
    addField('copyrightLabel', copyrightLabel);
    addField('approvalDate', approvalDate);
    addField('lastReviewDate', lastReviewDate);
    addField('effectivePeriod', effectivePeriod);
    addField('relatesTo', relatesTo);
    addField('actual', actual);
    addField('definition', definition);
    addField('definitionModifier', definitionModifier);
    addField('handling', handling);
    addField('category', category);
    addField('conditional', conditional);
    addField('classifier', classifier);
    addField('dataStorage', dataStorage);
    addField('timing', timing);
    addField('period', period);
    addField('constraint', constraint);
    addField('missingDataMeaning', missingDataMeaning);
    addField('unacceptableDataHandling', unacceptableDataHandling);
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
        if (versionAlgorithmX is FhirStringBuilder) {
          fields.add(versionAlgorithmX!);
        }
      case 'versionAlgorithmCoding':
        if (versionAlgorithmX is CodingBuilder) {
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
      case 'url':
        {
          if (child is FhirUriBuilder) {
            url = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                url = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
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
      case 'version':
        {
          if (child is FhirStringBuilder) {
            version = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                version = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'versionAlgorithm':
      case 'versionAlgorithmX':
        {
          if (child is VersionAlgorithmXEvidenceVariableBuilder) {
            versionAlgorithmX = child;
            return;
          } else {
            if (child is FhirStringBuilder) {
              versionAlgorithmX = child;
              return;
            }
            if (child is CodingBuilder) {
              versionAlgorithmX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'versionAlgorithmString':
        {
          if (child is FhirStringBuilder) {
            versionAlgorithmX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'versionAlgorithmCoding':
        {
          if (child is CodingBuilder) {
            versionAlgorithmX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'name':
        {
          if (child is FhirStringBuilder) {
            name = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                name = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'title':
        {
          if (child is FhirStringBuilder) {
            title = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                title = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'shortTitle':
        {
          if (child is FhirStringBuilder) {
            shortTitle = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                shortTitle = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'citeAs':
        {
          if (child is FhirMarkdownBuilder) {
            citeAs = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                citeAs = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is PublicationStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = PublicationStatusBuilder(stringValue);
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
      case 'experimental':
        {
          if (child is FhirBooleanBuilder) {
            experimental = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                experimental = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'date':
        {
          if (child is FhirDateTimeBuilder) {
            date = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                date = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'author':
        {
          if (child is List<ContactDetailBuilder>) {
            // Replace or create new list
            author = child;
            return;
          } else if (child is ContactDetailBuilder) {
            // Add single element to existing list or create new list
            author = [
              ...(author ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'publisher':
        {
          if (child is FhirStringBuilder) {
            publisher = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                publisher = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contact':
        {
          if (child is List<ContactDetailBuilder>) {
            // Replace or create new list
            contact = child;
            return;
          } else if (child is ContactDetailBuilder) {
            // Add single element to existing list or create new list
            contact = [
              ...(contact ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'recorder':
        {
          if (child is List<ContactDetailBuilder>) {
            // Replace or create new list
            recorder = child;
            return;
          } else if (child is ContactDetailBuilder) {
            // Add single element to existing list or create new list
            recorder = [
              ...(recorder ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'editor':
        {
          if (child is List<ContactDetailBuilder>) {
            // Replace or create new list
            editor = child;
            return;
          } else if (child is ContactDetailBuilder) {
            // Add single element to existing list or create new list
            editor = [
              ...(editor ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reviewer':
        {
          if (child is List<ContactDetailBuilder>) {
            // Replace or create new list
            reviewer = child;
            return;
          } else if (child is ContactDetailBuilder) {
            // Add single element to existing list or create new list
            reviewer = [
              ...(reviewer ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'endorser':
        {
          if (child is List<ContactDetailBuilder>) {
            // Replace or create new list
            endorser = child;
            return;
          } else if (child is ContactDetailBuilder) {
            // Add single element to existing list or create new list
            endorser = [
              ...(endorser ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is FhirMarkdownBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
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
      case 'note':
        {
          if (child is List<AnnotationBuilder>) {
            // Replace or create new list
            note = child;
            return;
          } else if (child is AnnotationBuilder) {
            // Add single element to existing list or create new list
            note = [
              ...(note ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'useContext':
        {
          if (child is List<UsageContextBuilder>) {
            // Replace or create new list
            useContext = child;
            return;
          } else if (child is UsageContextBuilder) {
            // Add single element to existing list or create new list
            useContext = [
              ...(useContext ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'purpose':
        {
          if (child is FhirMarkdownBuilder) {
            purpose = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                purpose = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'copyright':
        {
          if (child is FhirMarkdownBuilder) {
            copyright = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                copyright = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'copyrightLabel':
        {
          if (child is FhirStringBuilder) {
            copyrightLabel = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                copyrightLabel = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'approvalDate':
        {
          if (child is FhirDateBuilder) {
            approvalDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateBuilder.tryParse(stringValue);
              if (converted != null) {
                approvalDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'lastReviewDate':
        {
          if (child is FhirDateBuilder) {
            lastReviewDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateBuilder.tryParse(stringValue);
              if (converted != null) {
                lastReviewDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'effectivePeriod':
        {
          if (child is PeriodBuilder) {
            effectivePeriod = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'relatesTo':
        {
          if (child is List<EvidenceVariableRelatesToBuilder>) {
            // Replace or create new list
            relatesTo = child;
            return;
          } else if (child is EvidenceVariableRelatesToBuilder) {
            // Add single element to existing list or create new list
            relatesTo = [
              ...(relatesTo ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'actual':
        {
          if (child is FhirBooleanBuilder) {
            actual = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                actual = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'definition':
        {
          if (child is CodeableReferenceBuilder) {
            definition = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'definitionModifier':
        {
          if (child is List<EvidenceVariableDefinitionModifierBuilder>) {
            // Replace or create new list
            definitionModifier = child;
            return;
          } else if (child is EvidenceVariableDefinitionModifierBuilder) {
            // Add single element to existing list or create new list
            definitionModifier = [
              ...(definitionModifier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'handling':
        {
          if (child is EvidenceVariableHandlingBuilder) {
            handling = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = EvidenceVariableHandlingBuilder(stringValue);
                handling = converted;
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
      case 'category':
        {
          if (child is List<EvidenceVariableCategoryBuilder>) {
            // Replace or create new list
            category = child;
            return;
          } else if (child is EvidenceVariableCategoryBuilder) {
            // Add single element to existing list or create new list
            category = [
              ...(category ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'conditional':
        {
          if (child is FhirExpressionBuilder) {
            conditional = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'classifier':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            classifier = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            classifier = [
              ...(classifier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'dataStorage':
        {
          if (child is List<EvidenceVariableDataStorageBuilder>) {
            // Replace or create new list
            dataStorage = child;
            return;
          } else if (child is EvidenceVariableDataStorageBuilder) {
            // Add single element to existing list or create new list
            dataStorage = [
              ...(dataStorage ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'timing':
        {
          if (child is RelativeTimeBuilder) {
            timing = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'period':
        {
          if (child is PeriodBuilder) {
            period = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'constraint':
        {
          if (child is List<EvidenceVariableConstraintBuilder>) {
            // Replace or create new list
            constraint = child;
            return;
          } else if (child is EvidenceVariableConstraintBuilder) {
            // Add single element to existing list or create new list
            constraint = [
              ...(constraint ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'missingDataMeaning':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            missingDataMeaning = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            missingDataMeaning = [
              ...(missingDataMeaning ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'unacceptableDataHandling':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            unacceptableDataHandling = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            unacceptableDataHandling = [
              ...(unacceptableDataHandling ?? []),
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
      case 'url':
        return ['FhirUriBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'version':
        return ['FhirStringBuilder'];
      case 'versionAlgorithm':
      case 'versionAlgorithmX':
        return [
          'FhirStringBuilder',
          'CodingBuilder',
        ];
      case 'versionAlgorithmString':
        return ['FhirStringBuilder'];
      case 'versionAlgorithmCoding':
        return ['CodingBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      case 'title':
        return ['FhirStringBuilder'];
      case 'shortTitle':
        return ['FhirStringBuilder'];
      case 'citeAs':
        return ['FhirMarkdownBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'experimental':
        return ['FhirBooleanBuilder'];
      case 'date':
        return ['FhirDateTimeBuilder'];
      case 'author':
        return ['ContactDetailBuilder'];
      case 'publisher':
        return ['FhirStringBuilder'];
      case 'contact':
        return ['ContactDetailBuilder'];
      case 'recorder':
        return ['ContactDetailBuilder'];
      case 'editor':
        return ['ContactDetailBuilder'];
      case 'reviewer':
        return ['ContactDetailBuilder'];
      case 'endorser':
        return ['ContactDetailBuilder'];
      case 'description':
        return ['FhirMarkdownBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      case 'useContext':
        return ['UsageContextBuilder'];
      case 'purpose':
        return ['FhirMarkdownBuilder'];
      case 'copyright':
        return ['FhirMarkdownBuilder'];
      case 'copyrightLabel':
        return ['FhirStringBuilder'];
      case 'approvalDate':
        return ['FhirDateBuilder'];
      case 'lastReviewDate':
        return ['FhirDateBuilder'];
      case 'effectivePeriod':
        return ['PeriodBuilder'];
      case 'relatesTo':
        return ['EvidenceVariableRelatesToBuilder'];
      case 'actual':
        return ['FhirBooleanBuilder'];
      case 'definition':
        return ['CodeableReferenceBuilder'];
      case 'definitionModifier':
        return ['EvidenceVariableDefinitionModifierBuilder'];
      case 'handling':
        return ['FhirCodeEnumBuilder'];
      case 'category':
        return ['EvidenceVariableCategoryBuilder'];
      case 'conditional':
        return ['FhirExpressionBuilder'];
      case 'classifier':
        return ['CodeableConceptBuilder'];
      case 'dataStorage':
        return ['EvidenceVariableDataStorageBuilder'];
      case 'timing':
        return ['RelativeTimeBuilder'];
      case 'period':
        return ['PeriodBuilder'];
      case 'constraint':
        return ['EvidenceVariableConstraintBuilder'];
      case 'missingDataMeaning':
        return ['CodeableConceptBuilder'];
      case 'unacceptableDataHandling':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EvidenceVariableBuilder]
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
      case 'url':
        {
          url = FhirUriBuilder.empty();
          return;
        }
      case 'identifier':
        {
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'version':
        {
          version = FhirStringBuilder.empty();
          return;
        }
      case 'versionAlgorithm':
      case 'versionAlgorithmX':
      case 'versionAlgorithmString':
        {
          versionAlgorithmX = FhirStringBuilder.empty();
          return;
        }
      case 'versionAlgorithmCoding':
        {
          versionAlgorithmX = CodingBuilder.empty();
          return;
        }
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'title':
        {
          title = FhirStringBuilder.empty();
          return;
        }
      case 'shortTitle':
        {
          shortTitle = FhirStringBuilder.empty();
          return;
        }
      case 'citeAs':
        {
          citeAs = FhirMarkdownBuilder.empty();
          return;
        }
      case 'status':
        {
          status = PublicationStatusBuilder.empty();
          return;
        }
      case 'experimental':
        {
          experimental = FhirBooleanBuilder.empty();
          return;
        }
      case 'date':
        {
          date = FhirDateTimeBuilder.empty();
          return;
        }
      case 'author':
        {
          author = <ContactDetailBuilder>[];
          return;
        }
      case 'publisher':
        {
          publisher = FhirStringBuilder.empty();
          return;
        }
      case 'contact':
        {
          contact = <ContactDetailBuilder>[];
          return;
        }
      case 'recorder':
        {
          recorder = <ContactDetailBuilder>[];
          return;
        }
      case 'editor':
        {
          editor = <ContactDetailBuilder>[];
          return;
        }
      case 'reviewer':
        {
          reviewer = <ContactDetailBuilder>[];
          return;
        }
      case 'endorser':
        {
          endorser = <ContactDetailBuilder>[];
          return;
        }
      case 'description':
        {
          description = FhirMarkdownBuilder.empty();
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      case 'useContext':
        {
          useContext = <UsageContextBuilder>[];
          return;
        }
      case 'purpose':
        {
          purpose = FhirMarkdownBuilder.empty();
          return;
        }
      case 'copyright':
        {
          copyright = FhirMarkdownBuilder.empty();
          return;
        }
      case 'copyrightLabel':
        {
          copyrightLabel = FhirStringBuilder.empty();
          return;
        }
      case 'approvalDate':
        {
          approvalDate = FhirDateBuilder.empty();
          return;
        }
      case 'lastReviewDate':
        {
          lastReviewDate = FhirDateBuilder.empty();
          return;
        }
      case 'effectivePeriod':
        {
          effectivePeriod = PeriodBuilder.empty();
          return;
        }
      case 'relatesTo':
        {
          relatesTo = <EvidenceVariableRelatesToBuilder>[];
          return;
        }
      case 'actual':
        {
          actual = FhirBooleanBuilder.empty();
          return;
        }
      case 'definition':
        {
          definition = CodeableReferenceBuilder.empty();
          return;
        }
      case 'definitionModifier':
        {
          definitionModifier = <EvidenceVariableDefinitionModifierBuilder>[];
          return;
        }
      case 'handling':
        {
          handling = EvidenceVariableHandlingBuilder.empty();
          return;
        }
      case 'category':
        {
          category = <EvidenceVariableCategoryBuilder>[];
          return;
        }
      case 'conditional':
        {
          conditional = FhirExpressionBuilder.empty();
          return;
        }
      case 'classifier':
        {
          classifier = <CodeableConceptBuilder>[];
          return;
        }
      case 'dataStorage':
        {
          dataStorage = <EvidenceVariableDataStorageBuilder>[];
          return;
        }
      case 'timing':
        {
          timing = RelativeTimeBuilder.empty();
          return;
        }
      case 'period':
        {
          period = PeriodBuilder.empty();
          return;
        }
      case 'constraint':
        {
          constraint = <EvidenceVariableConstraintBuilder>[];
          return;
        }
      case 'missingDataMeaning':
        {
          missingDataMeaning = <CodeableConceptBuilder>[];
          return;
        }
      case 'unacceptableDataHandling':
        {
          unacceptableDataHandling = <CodeableConceptBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  EvidenceVariableBuilder clone() => throw UnimplementedError();
  @override
  EvidenceVariableBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirUriBuilder? url,
    List<IdentifierBuilder>? identifier,
    FhirStringBuilder? version,
    VersionAlgorithmXEvidenceVariableBuilder? versionAlgorithmX,
    FhirStringBuilder? name,
    FhirStringBuilder? title,
    FhirStringBuilder? shortTitle,
    FhirMarkdownBuilder? citeAs,
    PublicationStatusBuilder? status,
    FhirBooleanBuilder? experimental,
    FhirDateTimeBuilder? date,
    List<ContactDetailBuilder>? author,
    FhirStringBuilder? publisher,
    List<ContactDetailBuilder>? contact,
    List<ContactDetailBuilder>? recorder,
    List<ContactDetailBuilder>? editor,
    List<ContactDetailBuilder>? reviewer,
    List<ContactDetailBuilder>? endorser,
    FhirMarkdownBuilder? description,
    List<AnnotationBuilder>? note,
    List<UsageContextBuilder>? useContext,
    FhirMarkdownBuilder? purpose,
    FhirMarkdownBuilder? copyright,
    FhirStringBuilder? copyrightLabel,
    FhirDateBuilder? approvalDate,
    FhirDateBuilder? lastReviewDate,
    PeriodBuilder? effectivePeriod,
    List<EvidenceVariableRelatesToBuilder>? relatesTo,
    FhirBooleanBuilder? actual,
    CodeableReferenceBuilder? definition,
    List<EvidenceVariableDefinitionModifierBuilder>? definitionModifier,
    EvidenceVariableHandlingBuilder? handling,
    List<EvidenceVariableCategoryBuilder>? category,
    FhirExpressionBuilder? conditional,
    List<CodeableConceptBuilder>? classifier,
    List<EvidenceVariableDataStorageBuilder>? dataStorage,
    RelativeTimeBuilder? timing,
    PeriodBuilder? period,
    List<EvidenceVariableConstraintBuilder>? constraint,
    List<CodeableConceptBuilder>? missingDataMeaning,
    List<CodeableConceptBuilder>? unacceptableDataHandling,
    FhirStringBuilder? versionAlgorithmString,
    CodingBuilder? versionAlgorithmCoding,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<CodeableConceptBuilder>? jurisdiction,
  }) {
    final newObjectPath = objectPath;
    final newResult = EvidenceVariableBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      url: url ?? this.url,
      identifier: identifier ?? this.identifier,
      version: version ?? this.version,
      versionAlgorithmX: versionAlgorithmX ??
          versionAlgorithmString ??
          versionAlgorithmCoding ??
          this.versionAlgorithmX,
      name: name ?? this.name,
      title: title ?? this.title,
      shortTitle: shortTitle ?? this.shortTitle,
      citeAs: citeAs ?? this.citeAs,
      status: status ?? this.status,
      experimental: experimental ?? this.experimental,
      date: date ?? this.date,
      author: author ?? this.author,
      publisher: publisher ?? this.publisher,
      contact: contact ?? this.contact,
      recorder: recorder ?? this.recorder,
      editor: editor ?? this.editor,
      reviewer: reviewer ?? this.reviewer,
      endorser: endorser ?? this.endorser,
      description: description ?? this.description,
      note: note ?? this.note,
      useContext: useContext ?? this.useContext,
      purpose: purpose ?? this.purpose,
      copyright: copyright ?? this.copyright,
      copyrightLabel: copyrightLabel ?? this.copyrightLabel,
      approvalDate: approvalDate ?? this.approvalDate,
      lastReviewDate: lastReviewDate ?? this.lastReviewDate,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
      relatesTo: relatesTo ?? this.relatesTo,
      actual: actual ?? this.actual,
      definition: definition ?? this.definition,
      definitionModifier: definitionModifier ?? this.definitionModifier,
      handling: handling ?? this.handling,
      category: category ?? this.category,
      conditional: conditional ?? this.conditional,
      classifier: classifier ?? this.classifier,
      dataStorage: dataStorage ?? this.dataStorage,
      timing: timing ?? this.timing,
      period: period ?? this.period,
      constraint: constraint ?? this.constraint,
      missingDataMeaning: missingDataMeaning ?? this.missingDataMeaning,
      unacceptableDataHandling:
          unacceptableDataHandling ?? this.unacceptableDataHandling,
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
    if (o is! EvidenceVariableBuilder) {
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
    if (!equalsDeepWithNull(
      url,
      o.url,
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
    if (!listEquals<ContactDetailBuilder>(
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
    if (!listEquals<ContactDetailBuilder>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!listEquals<ContactDetailBuilder>(
      recorder,
      o.recorder,
    )) {
      return false;
    }
    if (!listEquals<ContactDetailBuilder>(
      editor,
      o.editor,
    )) {
      return false;
    }
    if (!listEquals<ContactDetailBuilder>(
      reviewer,
      o.reviewer,
    )) {
      return false;
    }
    if (!listEquals<ContactDetailBuilder>(
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
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<UsageContextBuilder>(
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
    if (!listEquals<EvidenceVariableRelatesToBuilder>(
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
    if (!listEquals<EvidenceVariableDefinitionModifierBuilder>(
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
    if (!listEquals<EvidenceVariableCategoryBuilder>(
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
    if (!listEquals<CodeableConceptBuilder>(
      classifier,
      o.classifier,
    )) {
      return false;
    }
    if (!listEquals<EvidenceVariableDataStorageBuilder>(
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
    if (!listEquals<EvidenceVariableConstraintBuilder>(
      constraint,
      o.constraint,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      missingDataMeaning,
      o.missingDataMeaning,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      unacceptableDataHandling,
      o.unacceptableDataHandling,
    )) {
      return false;
    }
    return true;
  }
}

/// [EvidenceVariableRelatesToBuilder]
/// Relationships that this EvidenceVariable has with other FHIR or
/// non-FHIR resources that already exist.
class EvidenceVariableRelatesToBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [EvidenceVariableRelatesToBuilder]

  EvidenceVariableRelatesToBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    TargetXEvidenceVariableRelatesToBuilder? targetX,
    FhirUriBuilder? targetUri,
    AttachmentBuilder? targetAttachment,
    FhirCanonicalBuilder? targetCanonical,
    ReferenceBuilder? targetReference,
    FhirMarkdownBuilder? targetMarkdown,
    super.disallowExtensions,
  })  : targetX = targetX ??
            targetUri ??
            targetAttachment ??
            targetCanonical ??
            targetReference ??
            targetMarkdown,
        super(
          objectPath: 'EvidenceVariable.relatesTo',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory EvidenceVariableRelatesToBuilder.empty() =>
      EvidenceVariableRelatesToBuilder(
        type: ArtifactRelationshipTypeBuilder.values.first,
        targetX: FhirUriBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceVariableRelatesToBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'EvidenceVariable.relatesTo';
    return EvidenceVariableRelatesToBuilder(
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
      type: JsonParser.parsePrimitive<ArtifactRelationshipTypeBuilder>(
        json,
        'type',
        ArtifactRelationshipTypeBuilder.fromJson,
        '$objectPath.type',
      ),
      targetX:
          JsonParser.parsePolymorphic<TargetXEvidenceVariableRelatesToBuilder>(
        json,
        {
          'targetUri': FhirUriBuilder.fromJson,
          'targetAttachment': AttachmentBuilder.fromJson,
          'targetCanonical': FhirCanonicalBuilder.fromJson,
          'targetReference': ReferenceBuilder.fromJson,
          'targetMarkdown': FhirMarkdownBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [EvidenceVariableRelatesToBuilder]
  /// from a [String] or [YamlMap] object
  factory EvidenceVariableRelatesToBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceVariableRelatesToBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceVariableRelatesToBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceVariableRelatesToBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceVariableRelatesToBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceVariableRelatesToBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceVariableRelatesToBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EvidenceVariableRelatesTo';

  /// [type]
  /// The type of relationship to the related artifact.
  ArtifactRelationshipTypeBuilder? type;

  /// [targetX]
  /// The artifact that is related to this EvidenceVariable Resource.
  TargetXEvidenceVariableRelatesToBuilder? targetX;

  /// Getter for [targetUri] as a FhirUriBuilder
  FhirUriBuilder? get targetUri => targetX?.isAs<FhirUriBuilder>();

  /// Getter for [targetAttachment] as a AttachmentBuilder
  AttachmentBuilder? get targetAttachment => targetX?.isAs<AttachmentBuilder>();

  /// Getter for [targetCanonical] as a FhirCanonicalBuilder
  FhirCanonicalBuilder? get targetCanonical =>
      targetX?.isAs<FhirCanonicalBuilder>();

  /// Getter for [targetReference] as a ReferenceBuilder
  ReferenceBuilder? get targetReference => targetX?.isAs<ReferenceBuilder>();

  /// Getter for [targetMarkdown] as a FhirMarkdownBuilder
  FhirMarkdownBuilder? get targetMarkdown =>
      targetX?.isAs<FhirMarkdownBuilder>();

  /// Converts a [EvidenceVariableRelatesToBuilder]
  /// to [EvidenceVariableRelatesTo]
  @override
  EvidenceVariableRelatesTo build() =>
      EvidenceVariableRelatesTo.fromJson(toJson());

  /// Converts a [EvidenceVariableRelatesToBuilder]
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
    addField('type', type);
    if (targetX != null) {
      final fhirType = targetX!.fhirType;
      addField('target${fhirType.capitalizeFirstLetter()}', targetX);
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
      'type',
      'targetX',
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'target':
        if (targetX != null) {
          fields.add(targetX!);
        }
      case 'targetX':
        if (targetX != null) {
          fields.add(targetX!);
        }
      case 'targetUri':
        if (targetX is FhirUriBuilder) {
          fields.add(targetX!);
        }
      case 'targetAttachment':
        if (targetX is AttachmentBuilder) {
          fields.add(targetX!);
        }
      case 'targetCanonical':
        if (targetX is FhirCanonicalBuilder) {
          fields.add(targetX!);
        }
      case 'targetReference':
        if (targetX is ReferenceBuilder) {
          fields.add(targetX!);
        }
      case 'targetMarkdown':
        if (targetX is FhirMarkdownBuilder) {
          fields.add(targetX!);
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
      case 'type':
        {
          if (child is ArtifactRelationshipTypeBuilder) {
            type = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ArtifactRelationshipTypeBuilder(stringValue);
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
      case 'target':
      case 'targetX':
        {
          if (child is TargetXEvidenceVariableRelatesToBuilder) {
            targetX = child;
            return;
          } else {
            if (child is FhirUriBuilder) {
              targetX = child;
              return;
            }
            if (child is AttachmentBuilder) {
              targetX = child;
              return;
            }
            if (child is FhirCanonicalBuilder) {
              targetX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              targetX = child;
              return;
            }
            if (child is FhirMarkdownBuilder) {
              targetX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'targetUri':
        {
          if (child is FhirUriBuilder) {
            targetX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'targetAttachment':
        {
          if (child is AttachmentBuilder) {
            targetX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'targetCanonical':
        {
          if (child is FhirCanonicalBuilder) {
            targetX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'targetReference':
        {
          if (child is ReferenceBuilder) {
            targetX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'targetMarkdown':
        {
          if (child is FhirMarkdownBuilder) {
            targetX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
      case 'type':
        return ['FhirCodeEnumBuilder'];
      case 'target':
      case 'targetX':
        return [
          'FhirUriBuilder',
          'AttachmentBuilder',
          'FhirCanonicalBuilder',
          'ReferenceBuilder',
          'FhirMarkdownBuilder',
        ];
      case 'targetUri':
        return ['FhirUriBuilder'];
      case 'targetAttachment':
        return ['AttachmentBuilder'];
      case 'targetCanonical':
        return ['FhirCanonicalBuilder'];
      case 'targetReference':
        return ['ReferenceBuilder'];
      case 'targetMarkdown':
        return ['FhirMarkdownBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EvidenceVariableRelatesToBuilder]
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
      case 'type':
        {
          type = ArtifactRelationshipTypeBuilder.empty();
          return;
        }
      case 'target':
      case 'targetX':
      case 'targetUri':
        {
          targetX = FhirUriBuilder.empty();
          return;
        }
      case 'targetAttachment':
        {
          targetX = AttachmentBuilder.empty();
          return;
        }
      case 'targetCanonical':
        {
          targetX = FhirCanonicalBuilder.empty();
          return;
        }
      case 'targetReference':
        {
          targetX = ReferenceBuilder.empty();
          return;
        }
      case 'targetMarkdown':
        {
          targetX = FhirMarkdownBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  EvidenceVariableRelatesToBuilder clone() => throw UnimplementedError();
  @override
  EvidenceVariableRelatesToBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ArtifactRelationshipTypeBuilder? type,
    TargetXEvidenceVariableRelatesToBuilder? targetX,
    FhirUriBuilder? targetUri,
    AttachmentBuilder? targetAttachment,
    FhirCanonicalBuilder? targetCanonical,
    ReferenceBuilder? targetReference,
    FhirMarkdownBuilder? targetMarkdown,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = EvidenceVariableRelatesToBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      targetX: targetX ??
          targetUri ??
          targetAttachment ??
          targetCanonical ??
          targetReference ??
          targetMarkdown ??
          this.targetX,
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
    if (o is! EvidenceVariableRelatesToBuilder) {
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

/// [EvidenceVariableDefinitionModifierBuilder]
/// Further specification of the definition.
class EvidenceVariableDefinitionModifierBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [EvidenceVariableDefinitionModifierBuilder]

  EvidenceVariableDefinitionModifierBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    ValueXEvidenceVariableDefinitionModifierBuilder? valueX,
    CodeableConceptBuilder? valueCodeableConcept,
    FhirBooleanBuilder? valueBoolean,
    QuantityBuilder? valueQuantity,
    RangeBuilder? valueRange,
    PeriodBuilder? valuePeriod,
    RelativeTimeBuilder? valueRelativeTime,
    ReferenceBuilder? valueReference,
    FhirExpressionBuilder? valueExpression,
    FhirUriBuilder? valueUri,
    super.disallowExtensions,
  })  : valueX = valueX ??
            valueCodeableConcept ??
            valueBoolean ??
            valueQuantity ??
            valueRange ??
            valuePeriod ??
            valueRelativeTime ??
            valueReference ??
            valueExpression ??
            valueUri,
        super(
          objectPath: 'EvidenceVariable.definitionModifier',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory EvidenceVariableDefinitionModifierBuilder.empty() =>
      EvidenceVariableDefinitionModifierBuilder(
        code: CodeableConceptBuilder.empty(),
        valueX: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceVariableDefinitionModifierBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'EvidenceVariable.definitionModifier';
    return EvidenceVariableDefinitionModifierBuilder(
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
      valueX: JsonParser.parsePolymorphic<
          ValueXEvidenceVariableDefinitionModifierBuilder>(
        json,
        {
          'valueCodeableConcept': CodeableConceptBuilder.fromJson,
          'valueBoolean': FhirBooleanBuilder.fromJson,
          'valueQuantity': QuantityBuilder.fromJson,
          'valueRange': RangeBuilder.fromJson,
          'valuePeriod': PeriodBuilder.fromJson,
          'valueRelativeTime': RelativeTimeBuilder.fromJson,
          'valueReference': ReferenceBuilder.fromJson,
          'valueExpression': FhirExpressionBuilder.fromJson,
          'valueUri': FhirUriBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [EvidenceVariableDefinitionModifierBuilder]
  /// from a [String] or [YamlMap] object
  factory EvidenceVariableDefinitionModifierBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceVariableDefinitionModifierBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceVariableDefinitionModifierBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceVariableDefinitionModifierBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceVariableDefinitionModifierBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceVariableDefinitionModifierBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceVariableDefinitionModifierBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EvidenceVariableDefinitionModifier';

  /// [code]
  /// Attribute of the definition.
  CodeableConceptBuilder? code;

  /// [valueX]
  /// Specification of the definition attribute.
  ValueXEvidenceVariableDefinitionModifierBuilder? valueX;

  /// Getter for [valueCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get valueCodeableConcept =>
      valueX?.isAs<CodeableConceptBuilder>();

  /// Getter for [valueBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get valueBoolean => valueX?.isAs<FhirBooleanBuilder>();

  /// Getter for [valueQuantity] as a QuantityBuilder
  QuantityBuilder? get valueQuantity => valueX?.isAs<QuantityBuilder>();

  /// Getter for [valueRange] as a RangeBuilder
  RangeBuilder? get valueRange => valueX?.isAs<RangeBuilder>();

  /// Getter for [valuePeriod] as a PeriodBuilder
  PeriodBuilder? get valuePeriod => valueX?.isAs<PeriodBuilder>();

  /// Getter for [valueRelativeTime] as a RelativeTimeBuilder
  RelativeTimeBuilder? get valueRelativeTime =>
      valueX?.isAs<RelativeTimeBuilder>();

  /// Getter for [valueReference] as a ReferenceBuilder
  ReferenceBuilder? get valueReference => valueX?.isAs<ReferenceBuilder>();

  /// Getter for [valueExpression] as a FhirExpressionBuilder
  FhirExpressionBuilder? get valueExpression =>
      valueX?.isAs<FhirExpressionBuilder>();

  /// Getter for [valueUri] as a FhirUriBuilder
  FhirUriBuilder? get valueUri => valueX?.isAs<FhirUriBuilder>();

  /// Converts a [EvidenceVariableDefinitionModifierBuilder]
  /// to [EvidenceVariableDefinitionModifier]
  @override
  EvidenceVariableDefinitionModifier build() =>
      EvidenceVariableDefinitionModifier.fromJson(toJson());

  /// Converts a [EvidenceVariableDefinitionModifierBuilder]
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
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField('value${fhirType.capitalizeFirstLetter()}', valueX);
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
      'code',
      'valueX',
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
      case 'value':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueX':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueCodeableConcept':
        if (valueX is CodeableConceptBuilder) {
          fields.add(valueX!);
        }
      case 'valueBoolean':
        if (valueX is FhirBooleanBuilder) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is QuantityBuilder) {
          fields.add(valueX!);
        }
      case 'valueRange':
        if (valueX is RangeBuilder) {
          fields.add(valueX!);
        }
      case 'valuePeriod':
        if (valueX is PeriodBuilder) {
          fields.add(valueX!);
        }
      case 'valueRelativeTime':
        if (valueX is RelativeTimeBuilder) {
          fields.add(valueX!);
        }
      case 'valueReference':
        if (valueX is ReferenceBuilder) {
          fields.add(valueX!);
        }
      case 'valueExpression':
        if (valueX is FhirExpressionBuilder) {
          fields.add(valueX!);
        }
      case 'valueUri':
        if (valueX is FhirUriBuilder) {
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
      case 'value':
      case 'valueX':
        {
          if (child is ValueXEvidenceVariableDefinitionModifierBuilder) {
            valueX = child;
            return;
          } else {
            if (child is CodeableConceptBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirBooleanBuilder) {
              valueX = child;
              return;
            }
            if (child is QuantityBuilder) {
              valueX = child;
              return;
            }
            if (child is RangeBuilder) {
              valueX = child;
              return;
            }
            if (child is PeriodBuilder) {
              valueX = child;
              return;
            }
            if (child is RelativeTimeBuilder) {
              valueX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirExpressionBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirUriBuilder) {
              valueX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueBoolean':
        {
          if (child is FhirBooleanBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueQuantity':
        {
          if (child is QuantityBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueRange':
        {
          if (child is RangeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valuePeriod':
        {
          if (child is PeriodBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueRelativeTime':
        {
          if (child is RelativeTimeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueReference':
        {
          if (child is ReferenceBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueExpression':
        {
          if (child is FhirExpressionBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueUri':
        {
          if (child is FhirUriBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
      case 'value':
      case 'valueX':
        return [
          'CodeableConceptBuilder',
          'FhirBooleanBuilder',
          'QuantityBuilder',
          'RangeBuilder',
          'PeriodBuilder',
          'RelativeTimeBuilder',
          'ReferenceBuilder',
          'FhirExpressionBuilder',
          'FhirUriBuilder',
        ];
      case 'valueCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'valueBoolean':
        return ['FhirBooleanBuilder'];
      case 'valueQuantity':
        return ['QuantityBuilder'];
      case 'valueRange':
        return ['RangeBuilder'];
      case 'valuePeriod':
        return ['PeriodBuilder'];
      case 'valueRelativeTime':
        return ['RelativeTimeBuilder'];
      case 'valueReference':
        return ['ReferenceBuilder'];
      case 'valueExpression':
        return ['FhirExpressionBuilder'];
      case 'valueUri':
        return ['FhirUriBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EvidenceVariableDefinitionModifierBuilder]
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
      case 'value':
      case 'valueX':
      case 'valueCodeableConcept':
        {
          valueX = CodeableConceptBuilder.empty();
          return;
        }
      case 'valueBoolean':
        {
          valueX = FhirBooleanBuilder.empty();
          return;
        }
      case 'valueQuantity':
        {
          valueX = QuantityBuilder.empty();
          return;
        }
      case 'valueRange':
        {
          valueX = RangeBuilder.empty();
          return;
        }
      case 'valuePeriod':
        {
          valueX = PeriodBuilder.empty();
          return;
        }
      case 'valueRelativeTime':
        {
          valueX = RelativeTimeBuilder.empty();
          return;
        }
      case 'valueReference':
        {
          valueX = ReferenceBuilder.empty();
          return;
        }
      case 'valueExpression':
        {
          valueX = FhirExpressionBuilder.empty();
          return;
        }
      case 'valueUri':
        {
          valueX = FhirUriBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  EvidenceVariableDefinitionModifierBuilder clone() =>
      throw UnimplementedError();
  @override
  EvidenceVariableDefinitionModifierBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? code,
    ValueXEvidenceVariableDefinitionModifierBuilder? valueX,
    CodeableConceptBuilder? valueCodeableConcept,
    FhirBooleanBuilder? valueBoolean,
    QuantityBuilder? valueQuantity,
    RangeBuilder? valueRange,
    PeriodBuilder? valuePeriod,
    RelativeTimeBuilder? valueRelativeTime,
    ReferenceBuilder? valueReference,
    FhirExpressionBuilder? valueExpression,
    FhirUriBuilder? valueUri,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = EvidenceVariableDefinitionModifierBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      valueX: valueX ??
          valueCodeableConcept ??
          valueBoolean ??
          valueQuantity ??
          valueRange ??
          valuePeriod ??
          valueRelativeTime ??
          valueReference ??
          valueExpression ??
          valueUri ??
          this.valueX,
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
    if (o is! EvidenceVariableDefinitionModifierBuilder) {
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
      valueX,
      o.valueX,
    )) {
      return false;
    }
    return true;
  }
}

/// [EvidenceVariableCategoryBuilder]
/// A grouping for dichotomous, ordinal, or polychotomouos variables.
class EvidenceVariableCategoryBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [EvidenceVariableCategoryBuilder]

  EvidenceVariableCategoryBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    ValueXEvidenceVariableCategoryBuilder? valueX,
    CodeableConceptBuilder? valueCodeableConcept,
    QuantityBuilder? valueQuantity,
    RangeBuilder? valueRange,
    ReferenceBuilder? valueReference,
    super.disallowExtensions,
  })  : valueX = valueX ??
            valueCodeableConcept ??
            valueQuantity ??
            valueRange ??
            valueReference,
        super(
          objectPath: 'EvidenceVariable.category',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory EvidenceVariableCategoryBuilder.empty() =>
      EvidenceVariableCategoryBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceVariableCategoryBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'EvidenceVariable.category';
    return EvidenceVariableCategoryBuilder(
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
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      valueX:
          JsonParser.parsePolymorphic<ValueXEvidenceVariableCategoryBuilder>(
        json,
        {
          'valueCodeableConcept': CodeableConceptBuilder.fromJson,
          'valueQuantity': QuantityBuilder.fromJson,
          'valueRange': RangeBuilder.fromJson,
          'valueReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [EvidenceVariableCategoryBuilder]
  /// from a [String] or [YamlMap] object
  factory EvidenceVariableCategoryBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceVariableCategoryBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceVariableCategoryBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceVariableCategoryBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceVariableCategoryBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceVariableCategoryBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceVariableCategoryBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EvidenceVariableCategory';

  /// [name]
  /// Description of the grouping.
  FhirStringBuilder? name;

  /// [valueX]
  /// Definition of the grouping.
  ValueXEvidenceVariableCategoryBuilder? valueX;

  /// Getter for [valueCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get valueCodeableConcept =>
      valueX?.isAs<CodeableConceptBuilder>();

  /// Getter for [valueQuantity] as a QuantityBuilder
  QuantityBuilder? get valueQuantity => valueX?.isAs<QuantityBuilder>();

  /// Getter for [valueRange] as a RangeBuilder
  RangeBuilder? get valueRange => valueX?.isAs<RangeBuilder>();

  /// Getter for [valueReference] as a ReferenceBuilder
  ReferenceBuilder? get valueReference => valueX?.isAs<ReferenceBuilder>();

  /// Converts a [EvidenceVariableCategoryBuilder]
  /// to [EvidenceVariableCategory]
  @override
  EvidenceVariableCategory build() =>
      EvidenceVariableCategory.fromJson(toJson());

  /// Converts a [EvidenceVariableCategoryBuilder]
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
    addField('name', name);
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField('value${fhirType.capitalizeFirstLetter()}', valueX);
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
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'value':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueX':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueCodeableConcept':
        if (valueX is CodeableConceptBuilder) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is QuantityBuilder) {
          fields.add(valueX!);
        }
      case 'valueRange':
        if (valueX is RangeBuilder) {
          fields.add(valueX!);
        }
      case 'valueReference':
        if (valueX is ReferenceBuilder) {
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
      case 'name':
        {
          if (child is FhirStringBuilder) {
            name = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                name = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'value':
      case 'valueX':
        {
          if (child is ValueXEvidenceVariableCategoryBuilder) {
            valueX = child;
            return;
          } else {
            if (child is CodeableConceptBuilder) {
              valueX = child;
              return;
            }
            if (child is QuantityBuilder) {
              valueX = child;
              return;
            }
            if (child is RangeBuilder) {
              valueX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              valueX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueQuantity':
        {
          if (child is QuantityBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueRange':
        {
          if (child is RangeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueReference':
        {
          if (child is ReferenceBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
      case 'name':
        return ['FhirStringBuilder'];
      case 'value':
      case 'valueX':
        return [
          'CodeableConceptBuilder',
          'QuantityBuilder',
          'RangeBuilder',
          'ReferenceBuilder',
        ];
      case 'valueCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'valueQuantity':
        return ['QuantityBuilder'];
      case 'valueRange':
        return ['RangeBuilder'];
      case 'valueReference':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EvidenceVariableCategoryBuilder]
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
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'value':
      case 'valueX':
      case 'valueCodeableConcept':
        {
          valueX = CodeableConceptBuilder.empty();
          return;
        }
      case 'valueQuantity':
        {
          valueX = QuantityBuilder.empty();
          return;
        }
      case 'valueRange':
        {
          valueX = RangeBuilder.empty();
          return;
        }
      case 'valueReference':
        {
          valueX = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  EvidenceVariableCategoryBuilder clone() => throw UnimplementedError();
  @override
  EvidenceVariableCategoryBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? name,
    ValueXEvidenceVariableCategoryBuilder? valueX,
    CodeableConceptBuilder? valueCodeableConcept,
    QuantityBuilder? valueQuantity,
    RangeBuilder? valueRange,
    ReferenceBuilder? valueReference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = EvidenceVariableCategoryBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      valueX: valueX ??
          valueCodeableConcept ??
          valueQuantity ??
          valueRange ??
          valueReference ??
          this.valueX,
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
    if (o is! EvidenceVariableCategoryBuilder) {
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

/// [EvidenceVariableDataStorageBuilder]
/// How the data element is organized and where the data element
/// (expressing the value of the variable) is found in the dataset.
class EvidenceVariableDataStorageBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [EvidenceVariableDataStorageBuilder]

  EvidenceVariableDataStorageBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.datatype,
    this.path,
    this.delimiter,
    this.component,
    super.disallowExtensions,
  }) : super(
          objectPath: 'EvidenceVariable.dataStorage',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory EvidenceVariableDataStorageBuilder.empty() =>
      EvidenceVariableDataStorageBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceVariableDataStorageBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'EvidenceVariable.dataStorage';
    return EvidenceVariableDataStorageBuilder(
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
      datatype: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'datatype',
        CodeableConceptBuilder.fromJson,
        '$objectPath.datatype',
      ),
      path: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'path',
        FhirStringBuilder.fromJson,
        '$objectPath.path',
      ),
      delimiter: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'delimiter',
        FhirStringBuilder.fromJson,
        '$objectPath.delimiter',
      ),
      component: (json['component'] as List<dynamic>?)
          ?.map<EvidenceVariableDataStorageBuilder>(
            (v) => EvidenceVariableDataStorageBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.component',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [EvidenceVariableDataStorageBuilder]
  /// from a [String] or [YamlMap] object
  factory EvidenceVariableDataStorageBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceVariableDataStorageBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceVariableDataStorageBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceVariableDataStorageBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceVariableDataStorageBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceVariableDataStorageBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceVariableDataStorageBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'EvidenceVariableDataStorage';

  /// [datatype]
  /// The type of data used to express values of the variable.
  CodeableConceptBuilder? datatype;

  /// [path]
  /// The mapping (order of elements) to reach the element containing the
  /// data element in the dataset.
  FhirStringBuilder? path;

  /// [delimiter]
  /// A character or series of characters that is used within a string to
  /// signal the separation of discrete values.
  FhirStringBuilder? delimiter;

  /// [component]
  /// A part of the value for a variable that is stored in 2 or more parts.
  List<EvidenceVariableDataStorageBuilder>? component;

  /// Converts a [EvidenceVariableDataStorageBuilder]
  /// to [EvidenceVariableDataStorage]
  @override
  EvidenceVariableDataStorage build() =>
      EvidenceVariableDataStorage.fromJson(toJson());

  /// Converts a [EvidenceVariableDataStorageBuilder]
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
    addField('datatype', datatype);
    addField('path', path);
    addField('delimiter', delimiter);
    addField('component', component);
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
      case 'datatype':
        {
          if (child is CodeableConceptBuilder) {
            datatype = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'path':
        {
          if (child is FhirStringBuilder) {
            path = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                path = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'delimiter':
        {
          if (child is FhirStringBuilder) {
            delimiter = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                delimiter = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'component':
        {
          if (child is List<EvidenceVariableDataStorageBuilder>) {
            // Replace or create new list
            component = child;
            return;
          } else if (child is EvidenceVariableDataStorageBuilder) {
            // Add single element to existing list or create new list
            component = [
              ...(component ?? []),
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
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'datatype':
        return ['CodeableConceptBuilder'];
      case 'path':
        return ['FhirStringBuilder'];
      case 'delimiter':
        return ['FhirStringBuilder'];
      case 'component':
        return ['EvidenceVariableDataStorageBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EvidenceVariableDataStorageBuilder]
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
      case 'datatype':
        {
          datatype = CodeableConceptBuilder.empty();
          return;
        }
      case 'path':
        {
          path = FhirStringBuilder.empty();
          return;
        }
      case 'delimiter':
        {
          delimiter = FhirStringBuilder.empty();
          return;
        }
      case 'component':
        {
          component = <EvidenceVariableDataStorageBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  EvidenceVariableDataStorageBuilder clone() => throw UnimplementedError();
  @override
  EvidenceVariableDataStorageBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? datatype,
    FhirStringBuilder? path,
    FhirStringBuilder? delimiter,
    List<EvidenceVariableDataStorageBuilder>? component,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = EvidenceVariableDataStorageBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      datatype: datatype ?? this.datatype,
      path: path ?? this.path,
      delimiter: delimiter ?? this.delimiter,
      component: component ?? this.component,
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
    if (o is! EvidenceVariableDataStorageBuilder) {
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
    if (!listEquals<EvidenceVariableDataStorageBuilder>(
      component,
      o.component,
    )) {
      return false;
    }
    return true;
  }
}

/// [EvidenceVariableConstraintBuilder]
/// Limit on acceptability of data used to express values of the variable.
class EvidenceVariableConstraintBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [EvidenceVariableConstraintBuilder]

  EvidenceVariableConstraintBuilder({
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
  }) : super(
          objectPath: 'EvidenceVariable.constraint',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory EvidenceVariableConstraintBuilder.empty() =>
      EvidenceVariableConstraintBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EvidenceVariableConstraintBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'EvidenceVariable.constraint';
    return EvidenceVariableConstraintBuilder(
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
      conditional: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'conditional',
        CodeableConceptBuilder.fromJson,
        '$objectPath.conditional',
      ),
      minimumQuantity: JsonParser.parseObject<QuantityBuilder>(
        json,
        'minimumQuantity',
        QuantityBuilder.fromJson,
        '$objectPath.minimumQuantity',
      ),
      maximumQuantity: JsonParser.parseObject<QuantityBuilder>(
        json,
        'maximumQuantity',
        QuantityBuilder.fromJson,
        '$objectPath.maximumQuantity',
      ),
      earliestDateTime: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'earliestDateTime',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.earliestDateTime',
      ),
      latestDateTime: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'latestDateTime',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.latestDateTime',
      ),
      minimumStringLength: JsonParser.parsePrimitive<FhirUnsignedIntBuilder>(
        json,
        'minimumStringLength',
        FhirUnsignedIntBuilder.fromJson,
        '$objectPath.minimumStringLength',
      ),
      maximumStringLength: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'maximumStringLength',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.maximumStringLength',
      ),
      code: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'code',
        CodeableConceptBuilder.fromJson,
        '$objectPath.code',
      ),
      expression: JsonParser.parseObject<FhirExpressionBuilder>(
        json,
        'expression',
        FhirExpressionBuilder.fromJson,
        '$objectPath.expression',
      ),
      expectedValueSet: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'expectedValueSet',
        ReferenceBuilder.fromJson,
        '$objectPath.expectedValueSet',
      ),
      expectedUnitsValueSet: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'expectedUnitsValueSet',
        ReferenceBuilder.fromJson,
        '$objectPath.expectedUnitsValueSet',
      ),
      anyValueAllowed: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'anyValueAllowed',
        FhirBooleanBuilder.fromJson,
        '$objectPath.anyValueAllowed',
      ),
    );
  }

  /// Deserialize [EvidenceVariableConstraintBuilder]
  /// from a [String] or [YamlMap] object
  factory EvidenceVariableConstraintBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EvidenceVariableConstraintBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EvidenceVariableConstraintBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EvidenceVariableConstraintBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EvidenceVariableConstraintBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EvidenceVariableConstraintBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return EvidenceVariableConstraintBuilder.fromJson(json);
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
  CodeableConceptBuilder? conditional;

  /// [minimumQuantity]
  /// The lowest permissible value of the variable, used with variables that
  /// have a number-based datatype (with or without units).
  QuantityBuilder? minimumQuantity;

  /// [maximumQuantity]
  /// The highest permissible value of the variable, used with variables that
  /// have a number-based datatype (with or without units).
  QuantityBuilder? maximumQuantity;

  /// [earliestDateTime]
  /// The earliest permissible value of the variable, used with variables
  /// that have a date-based or dateTime-based datatype.
  FhirDateTimeBuilder? earliestDateTime;

  /// [latestDateTime]
  /// The latest permissible value of the variable, used with variables that
  /// have a date-based or dateTime-based datatype.
  FhirDateTimeBuilder? latestDateTime;

  /// [minimumStringLength]
  /// The lowest number of characters allowed for a value of the variable,
  /// used with variables that have a string-based datatype.
  FhirUnsignedIntBuilder? minimumStringLength;

  /// [maximumStringLength]
  /// The highest number of characters allowed for a value of the variable,
  /// used with variables that have a string-based datatype.
  FhirPositiveIntBuilder? maximumStringLength;

  /// [code]
  /// A rule, such as a format or other expectation, for the data values.
  CodeableConceptBuilder? code;

  /// [expression]
  /// A rule, such as a format or other expectation, for the data values,
  /// expressed as an Expression.
  FhirExpressionBuilder? expression;

  /// [expectedValueSet]
  /// List of anticipated values used to express value of the variable, used
  /// with variables that have a codeable concept-based datatype.
  ReferenceBuilder? expectedValueSet;

  /// [expectedUnitsValueSet]
  /// List of anticipated values used to express units for the value of the
  /// variable, used with variables that have a Quantity-based datatype.
  ReferenceBuilder? expectedUnitsValueSet;

  /// [anyValueAllowed]
  /// Whether the value expressed for a variable is allowed to not be
  /// restricted to the expected value set.
  FhirBooleanBuilder? anyValueAllowed;

  /// Converts a [EvidenceVariableConstraintBuilder]
  /// to [EvidenceVariableConstraint]
  @override
  EvidenceVariableConstraint build() =>
      EvidenceVariableConstraint.fromJson(toJson());

  /// Converts a [EvidenceVariableConstraintBuilder]
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
    addField('conditional', conditional);
    addField('minimumQuantity', minimumQuantity);
    addField('maximumQuantity', maximumQuantity);
    addField('earliestDateTime', earliestDateTime);
    addField('latestDateTime', latestDateTime);
    addField('minimumStringLength', minimumStringLength);
    addField('maximumStringLength', maximumStringLength);
    addField('code', code);
    addField('expression', expression);
    addField('expectedValueSet', expectedValueSet);
    addField('expectedUnitsValueSet', expectedUnitsValueSet);
    addField('anyValueAllowed', anyValueAllowed);
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
      case 'conditional':
        {
          if (child is CodeableConceptBuilder) {
            conditional = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'minimumQuantity':
        {
          if (child is QuantityBuilder) {
            minimumQuantity = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'maximumQuantity':
        {
          if (child is QuantityBuilder) {
            maximumQuantity = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'earliestDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            earliestDateTime = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                earliestDateTime = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'latestDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            latestDateTime = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                latestDateTime = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'minimumStringLength':
        {
          if (child is FhirUnsignedIntBuilder) {
            minimumStringLength = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirUnsignedIntBuilder.tryParse(numValue);
                if (converted != null) {
                  minimumStringLength = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'maximumStringLength':
        {
          if (child is FhirPositiveIntBuilder) {
            maximumStringLength = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirPositiveIntBuilder.tryParse(numValue);
                if (converted != null) {
                  maximumStringLength = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
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
      case 'expression':
        {
          if (child is FhirExpressionBuilder) {
            expression = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'expectedValueSet':
        {
          if (child is ReferenceBuilder) {
            expectedValueSet = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'expectedUnitsValueSet':
        {
          if (child is ReferenceBuilder) {
            expectedUnitsValueSet = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'anyValueAllowed':
        {
          if (child is FhirBooleanBuilder) {
            anyValueAllowed = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                anyValueAllowed = converted;
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
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'conditional':
        return ['CodeableConceptBuilder'];
      case 'minimumQuantity':
        return ['QuantityBuilder'];
      case 'maximumQuantity':
        return ['QuantityBuilder'];
      case 'earliestDateTime':
        return ['FhirDateTimeBuilder'];
      case 'latestDateTime':
        return ['FhirDateTimeBuilder'];
      case 'minimumStringLength':
        return ['FhirUnsignedIntBuilder'];
      case 'maximumStringLength':
        return ['FhirPositiveIntBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'expression':
        return ['FhirExpressionBuilder'];
      case 'expectedValueSet':
        return ['ReferenceBuilder'];
      case 'expectedUnitsValueSet':
        return ['ReferenceBuilder'];
      case 'anyValueAllowed':
        return ['FhirBooleanBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [EvidenceVariableConstraintBuilder]
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
      case 'conditional':
        {
          conditional = CodeableConceptBuilder.empty();
          return;
        }
      case 'minimumQuantity':
        {
          minimumQuantity = QuantityBuilder.empty();
          return;
        }
      case 'maximumQuantity':
        {
          maximumQuantity = QuantityBuilder.empty();
          return;
        }
      case 'earliestDateTime':
        {
          earliestDateTime = FhirDateTimeBuilder.empty();
          return;
        }
      case 'latestDateTime':
        {
          latestDateTime = FhirDateTimeBuilder.empty();
          return;
        }
      case 'minimumStringLength':
        {
          minimumStringLength = FhirUnsignedIntBuilder.empty();
          return;
        }
      case 'maximumStringLength':
        {
          maximumStringLength = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
          return;
        }
      case 'expression':
        {
          expression = FhirExpressionBuilder.empty();
          return;
        }
      case 'expectedValueSet':
        {
          expectedValueSet = ReferenceBuilder.empty();
          return;
        }
      case 'expectedUnitsValueSet':
        {
          expectedUnitsValueSet = ReferenceBuilder.empty();
          return;
        }
      case 'anyValueAllowed':
        {
          anyValueAllowed = FhirBooleanBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  EvidenceVariableConstraintBuilder clone() => throw UnimplementedError();
  @override
  EvidenceVariableConstraintBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? conditional,
    QuantityBuilder? minimumQuantity,
    QuantityBuilder? maximumQuantity,
    FhirDateTimeBuilder? earliestDateTime,
    FhirDateTimeBuilder? latestDateTime,
    FhirUnsignedIntBuilder? minimumStringLength,
    FhirPositiveIntBuilder? maximumStringLength,
    CodeableConceptBuilder? code,
    FhirExpressionBuilder? expression,
    ReferenceBuilder? expectedValueSet,
    ReferenceBuilder? expectedUnitsValueSet,
    FhirBooleanBuilder? anyValueAllowed,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = EvidenceVariableConstraintBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      conditional: conditional ?? this.conditional,
      minimumQuantity: minimumQuantity ?? this.minimumQuantity,
      maximumQuantity: maximumQuantity ?? this.maximumQuantity,
      earliestDateTime: earliestDateTime ?? this.earliestDateTime,
      latestDateTime: latestDateTime ?? this.latestDateTime,
      minimumStringLength: minimumStringLength ?? this.minimumStringLength,
      maximumStringLength: maximumStringLength ?? this.maximumStringLength,
      code: code ?? this.code,
      expression: expression ?? this.expression,
      expectedValueSet: expectedValueSet ?? this.expectedValueSet,
      expectedUnitsValueSet:
          expectedUnitsValueSet ?? this.expectedUnitsValueSet,
      anyValueAllowed: anyValueAllowed ?? this.anyValueAllowed,
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
    if (o is! EvidenceVariableConstraintBuilder) {
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
