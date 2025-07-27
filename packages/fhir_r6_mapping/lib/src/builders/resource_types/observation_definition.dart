import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        ObservationDefinition,
        ObservationDefinitionComponent,
        ObservationDefinitionQualifiedValue,
        R5ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [ObservationDefinitionBuilder]
/// Set of definitional characteristics for a kind of observation or
/// measurement produced or consumed by an orderable health care service.
class ObservationDefinitionBuilder extends MetadataResourceBuilder {
  /// Primary constructor for
  /// [ObservationDefinitionBuilder]

  ObservationDefinitionBuilder({
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
    VersionAlgorithmXObservationDefinitionBuilder? versionAlgorithmX,
    FhirStringBuilder? versionAlgorithmString,
    CodingBuilder? versionAlgorithmCoding,
    this.name,
    this.title,
    super.status,
    super.experimental,
    super.date,
    super.publisher,
    super.contact,
    super.description,
    super.useContext,
    super.jurisdiction,
    this.purpose,
    this.copyright,
    this.copyrightLabel,
    super.approvalDate,
    super.lastReviewDate,
    super.effectivePeriod,
    this.derivedFromCanonical,
    this.derivedFromUri,
    this.subject,
    this.performerType,
    this.category,
    this.code,
    this.permittedDataType,
    this.multipleResultsAllowed,
    this.bodySite,
    this.method,
    this.specimen,
    this.device,
    this.preferredReportName,
    this.permittedUnit,
    this.qualifiedValue,
    this.hasMember,
    this.component,
  })  : versionAlgorithmX = versionAlgorithmX ??
            versionAlgorithmString ??
            versionAlgorithmCoding,
        super(
          objectPath: 'ObservationDefinition',
          resourceType: R5ResourceType.ObservationDefinition,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ObservationDefinitionBuilder.empty() => ObservationDefinitionBuilder(
        status: PublicationStatusBuilder.values.first,
        code: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ObservationDefinitionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ObservationDefinition';
    return ObservationDefinitionBuilder(
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
      identifier: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'identifier',
        IdentifierBuilder.fromJson,
        '$objectPath.identifier',
      ),
      version: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'version',
        FhirStringBuilder.fromJson,
        '$objectPath.version',
      ),
      versionAlgorithmX: JsonParser.parsePolymorphic<
          VersionAlgorithmXObservationDefinitionBuilder>(
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
      description: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'description',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.description',
      ),
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
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.jurisdiction',
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
      derivedFromCanonical: JsonParser.parsePrimitiveList<FhirCanonicalBuilder>(
        json,
        'derivedFromCanonical',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.derivedFromCanonical',
      ),
      derivedFromUri: JsonParser.parsePrimitiveList<FhirUriBuilder>(
        json,
        'derivedFromUri',
        FhirUriBuilder.fromJson,
        '$objectPath.derivedFromUri',
      ),
      subject: (json['subject'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subject',
              },
            ),
          )
          .toList(),
      performerType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'performerType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.performerType',
      ),
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.category',
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
      permittedDataType:
          JsonParser.parsePrimitiveList<ObservationDataTypeBuilder>(
        json,
        'permittedDataType',
        ObservationDataTypeBuilder.fromJson,
        '$objectPath.permittedDataType',
      ),
      multipleResultsAllowed: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'multipleResultsAllowed',
        FhirBooleanBuilder.fromJson,
        '$objectPath.multipleResultsAllowed',
      ),
      bodySite: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'bodySite',
        CodeableConceptBuilder.fromJson,
        '$objectPath.bodySite',
      ),
      method: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'method',
        CodeableConceptBuilder.fromJson,
        '$objectPath.method',
      ),
      specimen: (json['specimen'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.specimen',
              },
            ),
          )
          .toList(),
      device: (json['device'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.device',
              },
            ),
          )
          .toList(),
      preferredReportName: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'preferredReportName',
        FhirStringBuilder.fromJson,
        '$objectPath.preferredReportName',
      ),
      permittedUnit: (json['permittedUnit'] as List<dynamic>?)
          ?.map<CodingBuilder>(
            (v) => CodingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.permittedUnit',
              },
            ),
          )
          .toList(),
      qualifiedValue: (json['qualifiedValue'] as List<dynamic>?)
          ?.map<ObservationDefinitionQualifiedValueBuilder>(
            (v) => ObservationDefinitionQualifiedValueBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.qualifiedValue',
              },
            ),
          )
          .toList(),
      hasMember: (json['hasMember'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.hasMember',
              },
            ),
          )
          .toList(),
      component: (json['component'] as List<dynamic>?)
          ?.map<ObservationDefinitionComponentBuilder>(
            (v) => ObservationDefinitionComponentBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.component',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ObservationDefinitionBuilder]
  /// from a [String] or [YamlMap] object
  factory ObservationDefinitionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ObservationDefinitionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ObservationDefinitionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ObservationDefinitionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ObservationDefinitionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ObservationDefinitionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ObservationDefinitionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ObservationDefinition';

  /// [identifier]
  /// Business identifiers assigned to this ObservationDefinition. by the
  /// performer and/or other systems. These identifiers remain constant as
  /// the resource is updated and propagates from server to server.
  IdentifierBuilder? identifier;

  /// [versionAlgorithmX]
  /// Indicates the mechanism used to compare versions to determine which is
  /// more current.
  VersionAlgorithmXObservationDefinitionBuilder? versionAlgorithmX;

  /// Getter for [versionAlgorithmString] as a FhirStringBuilder
  FhirStringBuilder? get versionAlgorithmString =>
      versionAlgorithmX?.isAs<FhirStringBuilder>();

  /// Getter for [versionAlgorithmCoding] as a CodingBuilder
  CodingBuilder? get versionAlgorithmCoding =>
      versionAlgorithmX?.isAs<CodingBuilder>();

  /// [name]
  /// A natural language name identifying the ObservationDefinition. This
  /// name should be usable as an identifier for the module by machine
  /// processing applications such as code generation.
  FhirStringBuilder? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the
  /// ObservationDefinition.
  FhirStringBuilder? title;

  /// [purpose]
  /// Explains why this ObservationDefinition is needed and why it has been
  /// designed as it has.
  FhirMarkdownBuilder? purpose;

  /// [copyright]
  /// Copyright statement relating to the ObservationDefinition and/or its
  /// contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the ObservationDefinition.
  FhirMarkdownBuilder? copyright;

  /// [copyrightLabel]
  /// A short string (<50 characters), suitable for inclusion in a page
  /// footer that identifies the copyright holder, effective period, and
  /// optionally whether rights are resctricted. (e.g. 'All rights reserved',
  /// 'Some rights reserved').
  FhirStringBuilder? copyrightLabel;

  /// [derivedFromCanonical]
  /// The canonical URL pointing to another FHIR-defined
  /// ObservationDefinition that is adhered to in whole or in part by this
  /// definition.
  List<FhirCanonicalBuilder>? derivedFromCanonical;

  /// [derivedFromUri]
  /// The URL pointing to an externally-defined observation definition,
  /// guideline or other definition that is adhered to in whole or in part by
  /// this definition.
  List<FhirUriBuilder>? derivedFromUri;

  /// [subject]
  /// A code that describes the intended kind of subject of Observation
  /// instances conforming to this ObservationDefinition.
  List<CodeableConceptBuilder>? subject;

  /// [performerType]
  /// The type of individual/organization/device that is expected to act upon
  /// instances of this definition.
  CodeableConceptBuilder? performerType;

  /// [category]
  /// A code that classifies the general type of observation.
  List<CodeableConceptBuilder>? category;

  /// [code]
  /// Describes what will be observed. Sometimes this is called the
  /// observation "name".
  CodeableConceptBuilder? code;

  /// [permittedDataType]
  /// The data types allowed for the value element of the instance
  /// observations conforming to this ObservationDefinition.
  List<ObservationDataTypeBuilder>? permittedDataType;

  /// [multipleResultsAllowed]
  /// Multiple results allowed for observations conforming to this
  /// ObservationDefinition.
  FhirBooleanBuilder? multipleResultsAllowed;

  /// [bodySite]
  /// The site on the subject's body where the observation is to be made.
  CodeableConceptBuilder? bodySite;

  /// [method]
  /// The method or technique used to perform the observation.
  CodeableConceptBuilder? method;

  /// [specimen]
  /// The kind of specimen that this type of observation is produced on.
  List<ReferenceBuilder>? specimen;

  /// [device]
  /// The measurement model of device or actual device used to produce
  /// observations of this type.
  List<ReferenceBuilder>? device;

  /// [preferredReportName]
  /// The preferred name to be used when reporting the results of
  /// observations conforming to this ObservationDefinition.
  FhirStringBuilder? preferredReportName;

  /// [permittedUnit]
  /// Units allowed for the valueQuantity element in the instance
  /// observations conforming to this ObservationDefinition.
  List<CodingBuilder>? permittedUnit;

  /// [qualifiedValue]
  /// A set of qualified values associated with a context and a set of
  /// conditions - provides a range for quantitative and ordinal observations
  /// and a collection of value sets for qualitative observations.
  List<ObservationDefinitionQualifiedValueBuilder>? qualifiedValue;

  /// [hasMember]
  /// This ObservationDefinition defines a group observation (e.g. a battery,
  /// a panel of tests, a set of vital sign measurements) that includes the
  /// target as a member of the group.
  List<ReferenceBuilder>? hasMember;

  /// [component]
  /// Some observations have multiple component observations, expressed as
  /// separate code value pairs.
  List<ObservationDefinitionComponentBuilder>? component;

  /// Converts a [ObservationDefinitionBuilder]
  /// to [ObservationDefinition]
  @override
  ObservationDefinition build() => ObservationDefinition.fromJson(toJson());

  /// Converts a [ObservationDefinitionBuilder]
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
    addField('status', status);
    addField('experimental', experimental);
    addField('date', date);
    addField('publisher', publisher);
    addField('contact', contact);
    addField('description', description);
    addField('useContext', useContext);
    addField('jurisdiction', jurisdiction);
    addField('purpose', purpose);
    addField('copyright', copyright);
    addField('copyrightLabel', copyrightLabel);
    addField('approvalDate', approvalDate);
    addField('lastReviewDate', lastReviewDate);
    addField('effectivePeriod', effectivePeriod);
    addField('derivedFromCanonical', derivedFromCanonical);
    addField('derivedFromUri', derivedFromUri);
    addField('subject', subject);
    addField('performerType', performerType);
    addField('category', category);
    addField('code', code);
    addField('permittedDataType', permittedDataType);
    addField('multipleResultsAllowed', multipleResultsAllowed);
    addField('bodySite', bodySite);
    addField('method', method);
    addField('specimen', specimen);
    addField('device', device);
    addField('preferredReportName', preferredReportName);
    addField('permittedUnit', permittedUnit);
    addField('qualifiedValue', qualifiedValue);
    addField('hasMember', hasMember);
    addField('component', component);
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
      'status',
      'experimental',
      'date',
      'publisher',
      'contact',
      'description',
      'useContext',
      'jurisdiction',
      'purpose',
      'copyright',
      'copyrightLabel',
      'approvalDate',
      'lastReviewDate',
      'effectivePeriod',
      'derivedFromCanonical',
      'derivedFromUri',
      'subject',
      'performerType',
      'category',
      'code',
      'permittedDataType',
      'multipleResultsAllowed',
      'bodySite',
      'method',
      'specimen',
      'device',
      'preferredReportName',
      'permittedUnit',
      'qualifiedValue',
      'hasMember',
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
          fields.add(identifier!);
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
      case 'publisher':
        if (publisher != null) {
          fields.add(publisher!);
        }
      case 'contact':
        if (contact != null) {
          fields.addAll(contact!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'useContext':
        if (useContext != null) {
          fields.addAll(useContext!);
        }
      case 'jurisdiction':
        if (jurisdiction != null) {
          fields.addAll(jurisdiction!);
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
      case 'derivedFromCanonical':
        if (derivedFromCanonical != null) {
          fields.addAll(derivedFromCanonical!);
        }
      case 'derivedFromUri':
        if (derivedFromUri != null) {
          fields.addAll(derivedFromUri!);
        }
      case 'subject':
        if (subject != null) {
          fields.addAll(subject!);
        }
      case 'performerType':
        if (performerType != null) {
          fields.add(performerType!);
        }
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'permittedDataType':
        if (permittedDataType != null) {
          fields.addAll(permittedDataType!);
        }
      case 'multipleResultsAllowed':
        if (multipleResultsAllowed != null) {
          fields.add(multipleResultsAllowed!);
        }
      case 'bodySite':
        if (bodySite != null) {
          fields.add(bodySite!);
        }
      case 'method':
        if (method != null) {
          fields.add(method!);
        }
      case 'specimen':
        if (specimen != null) {
          fields.addAll(specimen!);
        }
      case 'device':
        if (device != null) {
          fields.addAll(device!);
        }
      case 'preferredReportName':
        if (preferredReportName != null) {
          fields.add(preferredReportName!);
        }
      case 'permittedUnit':
        if (permittedUnit != null) {
          fields.addAll(permittedUnit!);
        }
      case 'qualifiedValue':
        if (qualifiedValue != null) {
          fields.addAll(qualifiedValue!);
        }
      case 'hasMember':
        if (hasMember != null) {
          fields.addAll(hasMember!);
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
          if (child is IdentifierBuilder) {
            identifier = child;
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
          if (child is VersionAlgorithmXObservationDefinitionBuilder) {
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
      case 'jurisdiction':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            jurisdiction = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            jurisdiction = [
              ...(jurisdiction ?? []),
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
      case 'derivedFromCanonical':
        {
          if (child is List<FhirCanonicalBuilder>) {
            // Replace or create new list
            derivedFromCanonical = child;
            return;
          } else if (child is FhirCanonicalBuilder) {
            // Add single element to existing list or create new list
            derivedFromCanonical = [
              ...(derivedFromCanonical ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirCanonicalBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirCanonicalBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              derivedFromCanonical = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                derivedFromCanonical = [
                  ...(derivedFromCanonical ?? []),
                  converted,
                ];
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'derivedFromUri':
        {
          if (child is List<FhirUriBuilder>) {
            // Replace or create new list
            derivedFromUri = child;
            return;
          } else if (child is FhirUriBuilder) {
            // Add single element to existing list or create new list
            derivedFromUri = [
              ...(derivedFromUri ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirUriBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirUriBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              derivedFromUri = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                derivedFromUri = [
                  ...(derivedFromUri ?? []),
                  converted,
                ];
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subject':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            subject = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            subject = [
              ...(subject ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'performerType':
        {
          if (child is CodeableConceptBuilder) {
            performerType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'category':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            category = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            category = [
              ...(category ?? []),
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
      case 'permittedDataType':
        {
          if (child is List<ObservationDataTypeBuilder>) {
            // Replace or create new list
            permittedDataType = child;
            return;
          } else if (child is ObservationDataTypeBuilder) {
            // Add single element to existing list or create new list
            permittedDataType = [
              ...(permittedDataType ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <ObservationDataTypeBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                // For enums, try to create directly from the string value
                try {
                  final converted = ObservationDataTypeBuilder(stringValue);
                  convertedList.add(converted);
                } catch (e) {
                  // Continue if enum creation fails
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              permittedDataType = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ObservationDataTypeBuilder(stringValue);
                permittedDataType = [
                  ...(permittedDataType ?? []),
                  converted,
                ];
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
      case 'multipleResultsAllowed':
        {
          if (child is FhirBooleanBuilder) {
            multipleResultsAllowed = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                multipleResultsAllowed = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'bodySite':
        {
          if (child is CodeableConceptBuilder) {
            bodySite = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'method':
        {
          if (child is CodeableConceptBuilder) {
            method = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'specimen':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            specimen = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            specimen = [
              ...(specimen ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'device':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            device = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            device = [
              ...(device ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'preferredReportName':
        {
          if (child is FhirStringBuilder) {
            preferredReportName = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                preferredReportName = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'permittedUnit':
        {
          if (child is List<CodingBuilder>) {
            // Replace or create new list
            permittedUnit = child;
            return;
          } else if (child is CodingBuilder) {
            // Add single element to existing list or create new list
            permittedUnit = [
              ...(permittedUnit ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'qualifiedValue':
        {
          if (child is List<ObservationDefinitionQualifiedValueBuilder>) {
            // Replace or create new list
            qualifiedValue = child;
            return;
          } else if (child is ObservationDefinitionQualifiedValueBuilder) {
            // Add single element to existing list or create new list
            qualifiedValue = [
              ...(qualifiedValue ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'hasMember':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            hasMember = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            hasMember = [
              ...(hasMember ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'component':
        {
          if (child is List<ObservationDefinitionComponentBuilder>) {
            // Replace or create new list
            component = child;
            return;
          } else if (child is ObservationDefinitionComponentBuilder) {
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
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'experimental':
        return ['FhirBooleanBuilder'];
      case 'date':
        return ['FhirDateTimeBuilder'];
      case 'publisher':
        return ['FhirStringBuilder'];
      case 'contact':
        return ['ContactDetailBuilder'];
      case 'description':
        return ['FhirMarkdownBuilder'];
      case 'useContext':
        return ['UsageContextBuilder'];
      case 'jurisdiction':
        return ['CodeableConceptBuilder'];
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
      case 'derivedFromCanonical':
        return ['FhirCanonicalBuilder'];
      case 'derivedFromUri':
        return ['FhirUriBuilder'];
      case 'subject':
        return ['CodeableConceptBuilder'];
      case 'performerType':
        return ['CodeableConceptBuilder'];
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'permittedDataType':
        return ['FhirCodeEnumBuilder'];
      case 'multipleResultsAllowed':
        return ['FhirBooleanBuilder'];
      case 'bodySite':
        return ['CodeableConceptBuilder'];
      case 'method':
        return ['CodeableConceptBuilder'];
      case 'specimen':
        return ['ReferenceBuilder'];
      case 'device':
        return ['ReferenceBuilder'];
      case 'preferredReportName':
        return ['FhirStringBuilder'];
      case 'permittedUnit':
        return ['CodingBuilder'];
      case 'qualifiedValue':
        return ['ObservationDefinitionQualifiedValueBuilder'];
      case 'hasMember':
        return ['ReferenceBuilder'];
      case 'component':
        return ['ObservationDefinitionComponentBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ObservationDefinitionBuilder]
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
          identifier = IdentifierBuilder.empty();
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
      case 'description':
        {
          description = FhirMarkdownBuilder.empty();
          return;
        }
      case 'useContext':
        {
          useContext = <UsageContextBuilder>[];
          return;
        }
      case 'jurisdiction':
        {
          jurisdiction = <CodeableConceptBuilder>[];
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
      case 'derivedFromCanonical':
        {
          derivedFromCanonical = <FhirCanonicalBuilder>[];
          return;
        }
      case 'derivedFromUri':
        {
          derivedFromUri = <FhirUriBuilder>[];
          return;
        }
      case 'subject':
        {
          subject = <CodeableConceptBuilder>[];
          return;
        }
      case 'performerType':
        {
          performerType = CodeableConceptBuilder.empty();
          return;
        }
      case 'category':
        {
          category = <CodeableConceptBuilder>[];
          return;
        }
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
          return;
        }
      case 'permittedDataType':
        {
          permittedDataType = <ObservationDataTypeBuilder>[];
          return;
        }
      case 'multipleResultsAllowed':
        {
          multipleResultsAllowed = FhirBooleanBuilder.empty();
          return;
        }
      case 'bodySite':
        {
          bodySite = CodeableConceptBuilder.empty();
          return;
        }
      case 'method':
        {
          method = CodeableConceptBuilder.empty();
          return;
        }
      case 'specimen':
        {
          specimen = <ReferenceBuilder>[];
          return;
        }
      case 'device':
        {
          device = <ReferenceBuilder>[];
          return;
        }
      case 'preferredReportName':
        {
          preferredReportName = FhirStringBuilder.empty();
          return;
        }
      case 'permittedUnit':
        {
          permittedUnit = <CodingBuilder>[];
          return;
        }
      case 'qualifiedValue':
        {
          qualifiedValue = <ObservationDefinitionQualifiedValueBuilder>[];
          return;
        }
      case 'hasMember':
        {
          hasMember = <ReferenceBuilder>[];
          return;
        }
      case 'component':
        {
          component = <ObservationDefinitionComponentBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ObservationDefinitionBuilder clone() => throw UnimplementedError();
  @override
  ObservationDefinitionBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirUriBuilder? url,
    IdentifierBuilder? identifier,
    FhirStringBuilder? version,
    VersionAlgorithmXObservationDefinitionBuilder? versionAlgorithmX,
    FhirStringBuilder? name,
    FhirStringBuilder? title,
    PublicationStatusBuilder? status,
    FhirBooleanBuilder? experimental,
    FhirDateTimeBuilder? date,
    FhirStringBuilder? publisher,
    List<ContactDetailBuilder>? contact,
    FhirMarkdownBuilder? description,
    List<UsageContextBuilder>? useContext,
    List<CodeableConceptBuilder>? jurisdiction,
    FhirMarkdownBuilder? purpose,
    FhirMarkdownBuilder? copyright,
    FhirStringBuilder? copyrightLabel,
    FhirDateBuilder? approvalDate,
    FhirDateBuilder? lastReviewDate,
    PeriodBuilder? effectivePeriod,
    List<FhirCanonicalBuilder>? derivedFromCanonical,
    List<FhirUriBuilder>? derivedFromUri,
    List<CodeableConceptBuilder>? subject,
    CodeableConceptBuilder? performerType,
    List<CodeableConceptBuilder>? category,
    CodeableConceptBuilder? code,
    List<ObservationDataTypeBuilder>? permittedDataType,
    FhirBooleanBuilder? multipleResultsAllowed,
    CodeableConceptBuilder? bodySite,
    CodeableConceptBuilder? method,
    List<ReferenceBuilder>? specimen,
    List<ReferenceBuilder>? device,
    FhirStringBuilder? preferredReportName,
    List<CodingBuilder>? permittedUnit,
    List<ObservationDefinitionQualifiedValueBuilder>? qualifiedValue,
    List<ReferenceBuilder>? hasMember,
    List<ObservationDefinitionComponentBuilder>? component,
    FhirStringBuilder? versionAlgorithmString,
    CodingBuilder? versionAlgorithmCoding,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = ObservationDefinitionBuilder(
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
      status: status ?? this.status,
      experimental: experimental ?? this.experimental,
      date: date ?? this.date,
      publisher: publisher ?? this.publisher,
      contact: contact ?? this.contact,
      description: description ?? this.description,
      useContext: useContext ?? this.useContext,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      purpose: purpose ?? this.purpose,
      copyright: copyright ?? this.copyright,
      copyrightLabel: copyrightLabel ?? this.copyrightLabel,
      approvalDate: approvalDate ?? this.approvalDate,
      lastReviewDate: lastReviewDate ?? this.lastReviewDate,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
      derivedFromCanonical: derivedFromCanonical ?? this.derivedFromCanonical,
      derivedFromUri: derivedFromUri ?? this.derivedFromUri,
      subject: subject ?? this.subject,
      performerType: performerType ?? this.performerType,
      category: category ?? this.category,
      code: code ?? this.code,
      permittedDataType: permittedDataType ?? this.permittedDataType,
      multipleResultsAllowed:
          multipleResultsAllowed ?? this.multipleResultsAllowed,
      bodySite: bodySite ?? this.bodySite,
      method: method ?? this.method,
      specimen: specimen ?? this.specimen,
      device: device ?? this.device,
      preferredReportName: preferredReportName ?? this.preferredReportName,
      permittedUnit: permittedUnit ?? this.permittedUnit,
      qualifiedValue: qualifiedValue ?? this.qualifiedValue,
      hasMember: hasMember ?? this.hasMember,
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
    if (o is! ObservationDefinitionBuilder) {
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
    if (!equalsDeepWithNull(
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
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!listEquals<UsageContextBuilder>(
      useContext,
      o.useContext,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      jurisdiction,
      o.jurisdiction,
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
    if (!listEquals<FhirCanonicalBuilder>(
      derivedFromCanonical,
      o.derivedFromCanonical,
    )) {
      return false;
    }
    if (!listEquals<FhirUriBuilder>(
      derivedFromUri,
      o.derivedFromUri,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      subject,
      o.subject,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      performerType,
      o.performerType,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
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
    if (!listEquals<ObservationDataTypeBuilder>(
      permittedDataType,
      o.permittedDataType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      multipleResultsAllowed,
      o.multipleResultsAllowed,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      bodySite,
      o.bodySite,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      method,
      o.method,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      specimen,
      o.specimen,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      device,
      o.device,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      preferredReportName,
      o.preferredReportName,
    )) {
      return false;
    }
    if (!listEquals<CodingBuilder>(
      permittedUnit,
      o.permittedUnit,
    )) {
      return false;
    }
    if (!listEquals<ObservationDefinitionQualifiedValueBuilder>(
      qualifiedValue,
      o.qualifiedValue,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      hasMember,
      o.hasMember,
    )) {
      return false;
    }
    if (!listEquals<ObservationDefinitionComponentBuilder>(
      component,
      o.component,
    )) {
      return false;
    }
    return true;
  }
}

/// [ObservationDefinitionQualifiedValueBuilder]
/// A set of qualified values associated with a context and a set of
/// conditions - provides a range for quantitative and ordinal observations
/// and a collection of value sets for qualitative observations.
class ObservationDefinitionQualifiedValueBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ObservationDefinitionQualifiedValueBuilder]

  ObservationDefinitionQualifiedValueBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.context,
    this.appliesTo,
    this.gender,
    this.age,
    this.gestationalAge,
    this.condition,
    this.rangeCategory,
    this.range,
    this.validCodedValueSet,
    this.normalCodedValueSet,
    this.abnormalCodedValueSet,
    this.criticalCodedValueSet,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ObservationDefinition.qualifiedValue',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ObservationDefinitionQualifiedValueBuilder.empty() =>
      ObservationDefinitionQualifiedValueBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ObservationDefinitionQualifiedValueBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ObservationDefinition.qualifiedValue';
    return ObservationDefinitionQualifiedValueBuilder(
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
      context: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'context',
        CodeableConceptBuilder.fromJson,
        '$objectPath.context',
      ),
      appliesTo: (json['appliesTo'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.appliesTo',
              },
            ),
          )
          .toList(),
      gender: JsonParser.parsePrimitive<AdministrativeGenderBuilder>(
        json,
        'gender',
        AdministrativeGenderBuilder.fromJson,
        '$objectPath.gender',
      ),
      age: JsonParser.parseObject<RangeBuilder>(
        json,
        'age',
        RangeBuilder.fromJson,
        '$objectPath.age',
      ),
      gestationalAge: JsonParser.parseObject<RangeBuilder>(
        json,
        'gestationalAge',
        RangeBuilder.fromJson,
        '$objectPath.gestationalAge',
      ),
      condition: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'condition',
        FhirStringBuilder.fromJson,
        '$objectPath.condition',
      ),
      rangeCategory: JsonParser.parsePrimitive<ObservationRangeCategoryBuilder>(
        json,
        'rangeCategory',
        ObservationRangeCategoryBuilder.fromJson,
        '$objectPath.rangeCategory',
      ),
      range: JsonParser.parseObject<RangeBuilder>(
        json,
        'range',
        RangeBuilder.fromJson,
        '$objectPath.range',
      ),
      validCodedValueSet: JsonParser.parsePrimitive<FhirCanonicalBuilder>(
        json,
        'validCodedValueSet',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.validCodedValueSet',
      ),
      normalCodedValueSet: JsonParser.parsePrimitive<FhirCanonicalBuilder>(
        json,
        'normalCodedValueSet',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.normalCodedValueSet',
      ),
      abnormalCodedValueSet: JsonParser.parsePrimitive<FhirCanonicalBuilder>(
        json,
        'abnormalCodedValueSet',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.abnormalCodedValueSet',
      ),
      criticalCodedValueSet: JsonParser.parsePrimitive<FhirCanonicalBuilder>(
        json,
        'criticalCodedValueSet',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.criticalCodedValueSet',
      ),
    );
  }

  /// Deserialize [ObservationDefinitionQualifiedValueBuilder]
  /// from a [String] or [YamlMap] object
  factory ObservationDefinitionQualifiedValueBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ObservationDefinitionQualifiedValueBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ObservationDefinitionQualifiedValueBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ObservationDefinitionQualifiedValueBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ObservationDefinitionQualifiedValueBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ObservationDefinitionQualifiedValueBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ObservationDefinitionQualifiedValueBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ObservationDefinitionQualifiedValue';

  /// [context]
  /// A concept defining the context for this set of qualified values.
  CodeableConceptBuilder? context;

  /// [appliesTo]
  /// The target population this set of qualified values applies to.
  List<CodeableConceptBuilder>? appliesTo;

  /// [gender]
  /// The gender this set of qualified values applies to.
  AdministrativeGenderBuilder? gender;

  /// [age]
  /// The age range this set of qualified values applies to.
  RangeBuilder? age;

  /// [gestationalAge]
  /// The gestational age this set of qualified values applies to.
  RangeBuilder? gestationalAge;

  /// [condition]
  /// Text based condition for which the the set of qualified values is
  /// valid.
  FhirStringBuilder? condition;

  /// [rangeCategory]
  /// The category of range of values for continuous or ordinal observations
  /// that match the criteria of this set of qualified values.
  ObservationRangeCategoryBuilder? rangeCategory;

  /// [range]
  /// The range of values defined for continuous or ordinal observations that
  /// match the criteria of this set of qualified values.
  RangeBuilder? range;

  /// [validCodedValueSet]
  /// The set of valid coded results for qualitative observations that match
  /// the criteria of this set of qualified values.
  FhirCanonicalBuilder? validCodedValueSet;

  /// [normalCodedValueSet]
  /// The set of normal coded results for qualitative observations that match
  /// the criteria of this set of qualified values.
  FhirCanonicalBuilder? normalCodedValueSet;

  /// [abnormalCodedValueSet]
  /// The set of abnormal coded results for qualitative observations that
  /// match the criteria of this set of qualified values.
  FhirCanonicalBuilder? abnormalCodedValueSet;

  /// [criticalCodedValueSet]
  /// The set of critical coded results for qualitative observations that
  /// match the criteria of this set of qualified values.
  FhirCanonicalBuilder? criticalCodedValueSet;

  /// Converts a [ObservationDefinitionQualifiedValueBuilder]
  /// to [ObservationDefinitionQualifiedValue]
  @override
  ObservationDefinitionQualifiedValue build() =>
      ObservationDefinitionQualifiedValue.fromJson(toJson());

  /// Converts a [ObservationDefinitionQualifiedValueBuilder]
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
    addField('context', context);
    addField('appliesTo', appliesTo);
    addField('gender', gender);
    addField('age', age);
    addField('gestationalAge', gestationalAge);
    addField('condition', condition);
    addField('rangeCategory', rangeCategory);
    addField('range', range);
    addField('validCodedValueSet', validCodedValueSet);
    addField('normalCodedValueSet', normalCodedValueSet);
    addField('abnormalCodedValueSet', abnormalCodedValueSet);
    addField('criticalCodedValueSet', criticalCodedValueSet);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'context',
      'appliesTo',
      'gender',
      'age',
      'gestationalAge',
      'condition',
      'rangeCategory',
      'range',
      'validCodedValueSet',
      'normalCodedValueSet',
      'abnormalCodedValueSet',
      'criticalCodedValueSet',
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
      case 'context':
        if (context != null) {
          fields.add(context!);
        }
      case 'appliesTo':
        if (appliesTo != null) {
          fields.addAll(appliesTo!);
        }
      case 'gender':
        if (gender != null) {
          fields.add(gender!);
        }
      case 'age':
        if (age != null) {
          fields.add(age!);
        }
      case 'gestationalAge':
        if (gestationalAge != null) {
          fields.add(gestationalAge!);
        }
      case 'condition':
        if (condition != null) {
          fields.add(condition!);
        }
      case 'rangeCategory':
        if (rangeCategory != null) {
          fields.add(rangeCategory!);
        }
      case 'range':
        if (range != null) {
          fields.add(range!);
        }
      case 'validCodedValueSet':
        if (validCodedValueSet != null) {
          fields.add(validCodedValueSet!);
        }
      case 'normalCodedValueSet':
        if (normalCodedValueSet != null) {
          fields.add(normalCodedValueSet!);
        }
      case 'abnormalCodedValueSet':
        if (abnormalCodedValueSet != null) {
          fields.add(abnormalCodedValueSet!);
        }
      case 'criticalCodedValueSet':
        if (criticalCodedValueSet != null) {
          fields.add(criticalCodedValueSet!);
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
      case 'context':
        {
          if (child is CodeableConceptBuilder) {
            context = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'appliesTo':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            appliesTo = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            appliesTo = [
              ...(appliesTo ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'gender':
        {
          if (child is AdministrativeGenderBuilder) {
            gender = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = AdministrativeGenderBuilder(stringValue);
                gender = converted;
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
      case 'age':
        {
          if (child is RangeBuilder) {
            age = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'gestationalAge':
        {
          if (child is RangeBuilder) {
            gestationalAge = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'condition':
        {
          if (child is FhirStringBuilder) {
            condition = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                condition = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'rangeCategory':
        {
          if (child is ObservationRangeCategoryBuilder) {
            rangeCategory = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ObservationRangeCategoryBuilder(stringValue);
                rangeCategory = converted;
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
      case 'range':
        {
          if (child is RangeBuilder) {
            range = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'validCodedValueSet':
        {
          if (child is FhirCanonicalBuilder) {
            validCodedValueSet = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                validCodedValueSet = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'normalCodedValueSet':
        {
          if (child is FhirCanonicalBuilder) {
            normalCodedValueSet = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                normalCodedValueSet = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'abnormalCodedValueSet':
        {
          if (child is FhirCanonicalBuilder) {
            abnormalCodedValueSet = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                abnormalCodedValueSet = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'criticalCodedValueSet':
        {
          if (child is FhirCanonicalBuilder) {
            criticalCodedValueSet = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                criticalCodedValueSet = converted;
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
      case 'context':
        return ['CodeableConceptBuilder'];
      case 'appliesTo':
        return ['CodeableConceptBuilder'];
      case 'gender':
        return ['FhirCodeEnumBuilder'];
      case 'age':
        return ['RangeBuilder'];
      case 'gestationalAge':
        return ['RangeBuilder'];
      case 'condition':
        return ['FhirStringBuilder'];
      case 'rangeCategory':
        return ['FhirCodeEnumBuilder'];
      case 'range':
        return ['RangeBuilder'];
      case 'validCodedValueSet':
        return ['FhirCanonicalBuilder'];
      case 'normalCodedValueSet':
        return ['FhirCanonicalBuilder'];
      case 'abnormalCodedValueSet':
        return ['FhirCanonicalBuilder'];
      case 'criticalCodedValueSet':
        return ['FhirCanonicalBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ObservationDefinitionQualifiedValueBuilder]
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
      case 'context':
        {
          context = CodeableConceptBuilder.empty();
          return;
        }
      case 'appliesTo':
        {
          appliesTo = <CodeableConceptBuilder>[];
          return;
        }
      case 'gender':
        {
          gender = AdministrativeGenderBuilder.empty();
          return;
        }
      case 'age':
        {
          age = RangeBuilder.empty();
          return;
        }
      case 'gestationalAge':
        {
          gestationalAge = RangeBuilder.empty();
          return;
        }
      case 'condition':
        {
          condition = FhirStringBuilder.empty();
          return;
        }
      case 'rangeCategory':
        {
          rangeCategory = ObservationRangeCategoryBuilder.empty();
          return;
        }
      case 'range':
        {
          range = RangeBuilder.empty();
          return;
        }
      case 'validCodedValueSet':
        {
          validCodedValueSet = FhirCanonicalBuilder.empty();
          return;
        }
      case 'normalCodedValueSet':
        {
          normalCodedValueSet = FhirCanonicalBuilder.empty();
          return;
        }
      case 'abnormalCodedValueSet':
        {
          abnormalCodedValueSet = FhirCanonicalBuilder.empty();
          return;
        }
      case 'criticalCodedValueSet':
        {
          criticalCodedValueSet = FhirCanonicalBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ObservationDefinitionQualifiedValueBuilder clone() =>
      throw UnimplementedError();
  @override
  ObservationDefinitionQualifiedValueBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? context,
    List<CodeableConceptBuilder>? appliesTo,
    AdministrativeGenderBuilder? gender,
    RangeBuilder? age,
    RangeBuilder? gestationalAge,
    FhirStringBuilder? condition,
    ObservationRangeCategoryBuilder? rangeCategory,
    RangeBuilder? range,
    FhirCanonicalBuilder? validCodedValueSet,
    FhirCanonicalBuilder? normalCodedValueSet,
    FhirCanonicalBuilder? abnormalCodedValueSet,
    FhirCanonicalBuilder? criticalCodedValueSet,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ObservationDefinitionQualifiedValueBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      context: context ?? this.context,
      appliesTo: appliesTo ?? this.appliesTo,
      gender: gender ?? this.gender,
      age: age ?? this.age,
      gestationalAge: gestationalAge ?? this.gestationalAge,
      condition: condition ?? this.condition,
      rangeCategory: rangeCategory ?? this.rangeCategory,
      range: range ?? this.range,
      validCodedValueSet: validCodedValueSet ?? this.validCodedValueSet,
      normalCodedValueSet: normalCodedValueSet ?? this.normalCodedValueSet,
      abnormalCodedValueSet:
          abnormalCodedValueSet ?? this.abnormalCodedValueSet,
      criticalCodedValueSet:
          criticalCodedValueSet ?? this.criticalCodedValueSet,
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
    if (o is! ObservationDefinitionQualifiedValueBuilder) {
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
      context,
      o.context,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      appliesTo,
      o.appliesTo,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      gender,
      o.gender,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      age,
      o.age,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      gestationalAge,
      o.gestationalAge,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      condition,
      o.condition,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      rangeCategory,
      o.rangeCategory,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      range,
      o.range,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      validCodedValueSet,
      o.validCodedValueSet,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      normalCodedValueSet,
      o.normalCodedValueSet,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      abnormalCodedValueSet,
      o.abnormalCodedValueSet,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      criticalCodedValueSet,
      o.criticalCodedValueSet,
    )) {
      return false;
    }
    return true;
  }
}

/// [ObservationDefinitionComponentBuilder]
/// Some observations have multiple component observations, expressed as
/// separate code value pairs.
class ObservationDefinitionComponentBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ObservationDefinitionComponentBuilder]

  ObservationDefinitionComponentBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.permittedDataType,
    this.permittedUnit,
    this.qualifiedValue,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ObservationDefinition.component',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ObservationDefinitionComponentBuilder.empty() =>
      ObservationDefinitionComponentBuilder(
        code: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ObservationDefinitionComponentBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ObservationDefinition.component';
    return ObservationDefinitionComponentBuilder(
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
      permittedDataType:
          JsonParser.parsePrimitiveList<ObservationDataTypeBuilder>(
        json,
        'permittedDataType',
        ObservationDataTypeBuilder.fromJson,
        '$objectPath.permittedDataType',
      ),
      permittedUnit: (json['permittedUnit'] as List<dynamic>?)
          ?.map<CodingBuilder>(
            (v) => CodingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.permittedUnit',
              },
            ),
          )
          .toList(),
      qualifiedValue: (json['qualifiedValue'] as List<dynamic>?)
          ?.map<ObservationDefinitionQualifiedValueBuilder>(
            (v) => ObservationDefinitionQualifiedValueBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.qualifiedValue',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ObservationDefinitionComponentBuilder]
  /// from a [String] or [YamlMap] object
  factory ObservationDefinitionComponentBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ObservationDefinitionComponentBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ObservationDefinitionComponentBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ObservationDefinitionComponentBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ObservationDefinitionComponentBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ObservationDefinitionComponentBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ObservationDefinitionComponentBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ObservationDefinitionComponent';

  /// [code]
  /// Describes what will be observed.
  CodeableConceptBuilder? code;

  /// [permittedDataType]
  /// The data types allowed for the value element of the instance of this
  /// component observations.
  List<ObservationDataTypeBuilder>? permittedDataType;

  /// [permittedUnit]
  /// Units allowed for the valueQuantity element in the instance
  /// observations conforming to this ObservationDefinition.
  List<CodingBuilder>? permittedUnit;

  /// [qualifiedValue]
  /// A set of qualified values associated with a context and a set of
  /// conditions - provides a range for quantitative and ordinal observations
  /// and a collection of value sets for qualitative observations.
  List<ObservationDefinitionQualifiedValueBuilder>? qualifiedValue;

  /// Converts a [ObservationDefinitionComponentBuilder]
  /// to [ObservationDefinitionComponent]
  @override
  ObservationDefinitionComponent build() =>
      ObservationDefinitionComponent.fromJson(toJson());

  /// Converts a [ObservationDefinitionComponentBuilder]
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
    addField('permittedDataType', permittedDataType);
    addField('permittedUnit', permittedUnit);
    addField('qualifiedValue', qualifiedValue);
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
      'permittedDataType',
      'permittedUnit',
      'qualifiedValue',
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
      case 'permittedDataType':
        if (permittedDataType != null) {
          fields.addAll(permittedDataType!);
        }
      case 'permittedUnit':
        if (permittedUnit != null) {
          fields.addAll(permittedUnit!);
        }
      case 'qualifiedValue':
        if (qualifiedValue != null) {
          fields.addAll(qualifiedValue!);
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
      case 'permittedDataType':
        {
          if (child is List<ObservationDataTypeBuilder>) {
            // Replace or create new list
            permittedDataType = child;
            return;
          } else if (child is ObservationDataTypeBuilder) {
            // Add single element to existing list or create new list
            permittedDataType = [
              ...(permittedDataType ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <ObservationDataTypeBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                // For enums, try to create directly from the string value
                try {
                  final converted = ObservationDataTypeBuilder(stringValue);
                  convertedList.add(converted);
                } catch (e) {
                  // Continue if enum creation fails
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              permittedDataType = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ObservationDataTypeBuilder(stringValue);
                permittedDataType = [
                  ...(permittedDataType ?? []),
                  converted,
                ];
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
      case 'permittedUnit':
        {
          if (child is List<CodingBuilder>) {
            // Replace or create new list
            permittedUnit = child;
            return;
          } else if (child is CodingBuilder) {
            // Add single element to existing list or create new list
            permittedUnit = [
              ...(permittedUnit ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'qualifiedValue':
        {
          if (child is List<ObservationDefinitionQualifiedValueBuilder>) {
            // Replace or create new list
            qualifiedValue = child;
            return;
          } else if (child is ObservationDefinitionQualifiedValueBuilder) {
            // Add single element to existing list or create new list
            qualifiedValue = [
              ...(qualifiedValue ?? []),
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
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'permittedDataType':
        return ['FhirCodeEnumBuilder'];
      case 'permittedUnit':
        return ['CodingBuilder'];
      case 'qualifiedValue':
        return ['ObservationDefinitionQualifiedValueBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ObservationDefinitionComponentBuilder]
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
      case 'permittedDataType':
        {
          permittedDataType = <ObservationDataTypeBuilder>[];
          return;
        }
      case 'permittedUnit':
        {
          permittedUnit = <CodingBuilder>[];
          return;
        }
      case 'qualifiedValue':
        {
          qualifiedValue = <ObservationDefinitionQualifiedValueBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ObservationDefinitionComponentBuilder clone() => throw UnimplementedError();
  @override
  ObservationDefinitionComponentBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? code,
    List<ObservationDataTypeBuilder>? permittedDataType,
    List<CodingBuilder>? permittedUnit,
    List<ObservationDefinitionQualifiedValueBuilder>? qualifiedValue,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ObservationDefinitionComponentBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      permittedDataType: permittedDataType ?? this.permittedDataType,
      permittedUnit: permittedUnit ?? this.permittedUnit,
      qualifiedValue: qualifiedValue ?? this.qualifiedValue,
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
    if (o is! ObservationDefinitionComponentBuilder) {
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
    if (!listEquals<ObservationDataTypeBuilder>(
      permittedDataType,
      o.permittedDataType,
    )) {
      return false;
    }
    if (!listEquals<CodingBuilder>(
      permittedUnit,
      o.permittedUnit,
    )) {
      return false;
    }
    if (!listEquals<ObservationDefinitionQualifiedValueBuilder>(
      qualifiedValue,
      o.qualifiedValue,
    )) {
      return false;
    }
    return true;
  }
}
