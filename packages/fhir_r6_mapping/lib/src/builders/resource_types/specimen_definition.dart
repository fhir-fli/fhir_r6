import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        R5ResourceType,
        SpecimenDefinition,
        SpecimenDefinitionAdditive,
        SpecimenDefinitionContainer,
        SpecimenDefinitionHandling,
        SpecimenDefinitionTypeTested,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [SpecimenDefinitionBuilder]
/// A kind of specimen with associated set of requirements.
class SpecimenDefinitionBuilder extends MetadataResourceBuilder {
  /// Primary constructor for
  /// [SpecimenDefinitionBuilder]

  SpecimenDefinitionBuilder({
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
    VersionAlgorithmXSpecimenDefinitionBuilder? versionAlgorithmX,
    FhirStringBuilder? versionAlgorithmString,
    CodingBuilder? versionAlgorithmCoding,
    this.name,
    this.title,
    this.derivedFromCanonical,
    this.derivedFromUri,
    super.status,
    super.experimental,
    SubjectXSpecimenDefinitionBuilder? subjectX,
    CodeableConceptBuilder? subjectCodeableConcept,
    ReferenceBuilder? subjectReference,
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
    this.typeCollected,
    this.patientPreparation,
    this.timeAspect,
    this.collection,
    this.typeTested,
  })  : versionAlgorithmX = versionAlgorithmX ??
            versionAlgorithmString ??
            versionAlgorithmCoding,
        subjectX = subjectX ?? subjectCodeableConcept ?? subjectReference,
        super(
          objectPath: 'SpecimenDefinition',
          resourceType: R5ResourceType.SpecimenDefinition,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SpecimenDefinitionBuilder.empty() => SpecimenDefinitionBuilder(
        status: PublicationStatusBuilder.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenDefinitionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SpecimenDefinition';
    return SpecimenDefinitionBuilder(
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
          VersionAlgorithmXSpecimenDefinitionBuilder>(
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
      subjectX: JsonParser.parsePolymorphic<SubjectXSpecimenDefinitionBuilder>(
        json,
        {
          'subjectCodeableConcept': CodeableConceptBuilder.fromJson,
          'subjectReference': ReferenceBuilder.fromJson,
        },
        objectPath,
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
      typeCollected: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'typeCollected',
        CodeableConceptBuilder.fromJson,
        '$objectPath.typeCollected',
      ),
      patientPreparation: (json['patientPreparation'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.patientPreparation',
              },
            ),
          )
          .toList(),
      timeAspect: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'timeAspect',
        FhirStringBuilder.fromJson,
        '$objectPath.timeAspect',
      ),
      collection: (json['collection'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.collection',
              },
            ),
          )
          .toList(),
      typeTested: (json['typeTested'] as List<dynamic>?)
          ?.map<SpecimenDefinitionTypeTestedBuilder>(
            (v) => SpecimenDefinitionTypeTestedBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.typeTested',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SpecimenDefinitionBuilder]
  /// from a [String] or [YamlMap] object
  factory SpecimenDefinitionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SpecimenDefinitionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SpecimenDefinitionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SpecimenDefinitionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SpecimenDefinitionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SpecimenDefinitionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SpecimenDefinitionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SpecimenDefinition';

  /// [identifier]
  /// A business identifier assigned to this SpecimenDefinition.
  IdentifierBuilder? identifier;

  /// [versionAlgorithmX]
  /// Indicates the mechanism used to compare versions to determine which is
  /// more current.
  VersionAlgorithmXSpecimenDefinitionBuilder? versionAlgorithmX;

  /// Getter for [versionAlgorithmString] as a FhirStringBuilder
  FhirStringBuilder? get versionAlgorithmString =>
      versionAlgorithmX?.isAs<FhirStringBuilder>();

  /// Getter for [versionAlgorithmCoding] as a CodingBuilder
  CodingBuilder? get versionAlgorithmCoding =>
      versionAlgorithmX?.isAs<CodingBuilder>();

  /// [name]
  /// A natural language name identifying the {{title}}. This name should be
  /// usable as an identifier for the module by machine processing
  /// applications such as code generation.
  FhirStringBuilder? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the SpecimenDefinition.
  FhirStringBuilder? title;

  /// [derivedFromCanonical]
  /// The canonical URL pointing to another FHIR-defined SpecimenDefinition
  /// that is adhered to in whole or in part by this definition.
  List<FhirCanonicalBuilder>? derivedFromCanonical;

  /// [derivedFromUri]
  /// The URL pointing to an externally-defined type of specimen, guideline
  /// or other definition that is adhered to in whole or in part by this
  /// definition.
  List<FhirUriBuilder>? derivedFromUri;

  /// [subjectX]
  /// A code or group definition that describes the intended subject from
  /// which this kind of specimen is to be collected.
  SubjectXSpecimenDefinitionBuilder? subjectX;

  /// Getter for [subjectCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get subjectCodeableConcept =>
      subjectX?.isAs<CodeableConceptBuilder>();

  /// Getter for [subjectReference] as a ReferenceBuilder
  ReferenceBuilder? get subjectReference => subjectX?.isAs<ReferenceBuilder>();

  /// [purpose]
  /// Explains why this SpecimeDefinition is needed and why it has been
  /// designed as it has.
  FhirMarkdownBuilder? purpose;

  /// [copyright]
  /// Copyright statement relating to the SpecimenDefinition and/or its
  /// contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the SpecimenDefinition.
  FhirMarkdownBuilder? copyright;

  /// [copyrightLabel]
  /// A short string (<50 characters), suitable for inclusion in a page
  /// footer that identifies the copyright holder, effective period, and
  /// optionally whether rights are resctricted. (e.g. 'All rights reserved',
  /// 'Some rights reserved').
  FhirStringBuilder? copyrightLabel;

  /// [typeCollected]
  /// The kind of material to be collected.
  CodeableConceptBuilder? typeCollected;

  /// [patientPreparation]
  /// Preparation of the patient for specimen collection.
  List<CodeableConceptBuilder>? patientPreparation;

  /// [timeAspect]
  /// Time aspect of specimen collection (duration or offset).
  FhirStringBuilder? timeAspect;

  /// [collection]
  /// The action to be performed for collecting the specimen.
  List<CodeableConceptBuilder>? collection;

  /// [typeTested]
  /// Specimen conditioned in a container as expected by the testing
  /// laboratory.
  List<SpecimenDefinitionTypeTestedBuilder>? typeTested;

  /// Converts a [SpecimenDefinitionBuilder]
  /// to [SpecimenDefinition]
  @override
  SpecimenDefinition build() => SpecimenDefinition.fromJson(toJson());

  /// Converts a [SpecimenDefinitionBuilder]
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
    addField('derivedFromCanonical', derivedFromCanonical);
    addField('derivedFromUri', derivedFromUri);
    addField('status', status);
    addField('experimental', experimental);
    if (subjectX != null) {
      final fhirType = subjectX!.fhirType;
      addField('subject${fhirType.capitalizeFirstLetter()}', subjectX);
    }

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
    addField('typeCollected', typeCollected);
    addField('patientPreparation', patientPreparation);
    addField('timeAspect', timeAspect);
    addField('collection', collection);
    addField('typeTested', typeTested);
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
      'derivedFromCanonical',
      'derivedFromUri',
      'status',
      'experimental',
      'subjectX',
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
      'typeCollected',
      'patientPreparation',
      'timeAspect',
      'collection',
      'typeTested',
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
      case 'derivedFromCanonical':
        if (derivedFromCanonical != null) {
          fields.addAll(derivedFromCanonical!);
        }
      case 'derivedFromUri':
        if (derivedFromUri != null) {
          fields.addAll(derivedFromUri!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'experimental':
        if (experimental != null) {
          fields.add(experimental!);
        }
      case 'subject':
        if (subjectX != null) {
          fields.add(subjectX!);
        }
      case 'subjectX':
        if (subjectX != null) {
          fields.add(subjectX!);
        }
      case 'subjectCodeableConcept':
        if (subjectX is CodeableConceptBuilder) {
          fields.add(subjectX!);
        }
      case 'subjectReference':
        if (subjectX is ReferenceBuilder) {
          fields.add(subjectX!);
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
      case 'typeCollected':
        if (typeCollected != null) {
          fields.add(typeCollected!);
        }
      case 'patientPreparation':
        if (patientPreparation != null) {
          fields.addAll(patientPreparation!);
        }
      case 'timeAspect':
        if (timeAspect != null) {
          fields.add(timeAspect!);
        }
      case 'collection':
        if (collection != null) {
          fields.addAll(collection!);
        }
      case 'typeTested':
        if (typeTested != null) {
          fields.addAll(typeTested!);
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
          if (child is VersionAlgorithmXSpecimenDefinitionBuilder) {
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
      case 'subject':
      case 'subjectX':
        {
          if (child is SubjectXSpecimenDefinitionBuilder) {
            subjectX = child;
            return;
          } else {
            if (child is CodeableConceptBuilder) {
              subjectX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              subjectX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subjectCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            subjectX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subjectReference':
        {
          if (child is ReferenceBuilder) {
            subjectX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
      case 'typeCollected':
        {
          if (child is CodeableConceptBuilder) {
            typeCollected = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'patientPreparation':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            patientPreparation = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            patientPreparation = [
              ...(patientPreparation ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'timeAspect':
        {
          if (child is FhirStringBuilder) {
            timeAspect = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                timeAspect = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'collection':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            collection = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            collection = [
              ...(collection ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'typeTested':
        {
          if (child is List<SpecimenDefinitionTypeTestedBuilder>) {
            // Replace or create new list
            typeTested = child;
            return;
          } else if (child is SpecimenDefinitionTypeTestedBuilder) {
            // Add single element to existing list or create new list
            typeTested = [
              ...(typeTested ?? []),
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
      case 'derivedFromCanonical':
        return ['FhirCanonicalBuilder'];
      case 'derivedFromUri':
        return ['FhirUriBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'experimental':
        return ['FhirBooleanBuilder'];
      case 'subject':
      case 'subjectX':
        return [
          'CodeableConceptBuilder',
          'ReferenceBuilder',
        ];
      case 'subjectCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'subjectReference':
        return ['ReferenceBuilder'];
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
      case 'typeCollected':
        return ['CodeableConceptBuilder'];
      case 'patientPreparation':
        return ['CodeableConceptBuilder'];
      case 'timeAspect':
        return ['FhirStringBuilder'];
      case 'collection':
        return ['CodeableConceptBuilder'];
      case 'typeTested':
        return ['SpecimenDefinitionTypeTestedBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SpecimenDefinitionBuilder]
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
      case 'subject':
      case 'subjectX':
      case 'subjectCodeableConcept':
        {
          subjectX = CodeableConceptBuilder.empty();
          return;
        }
      case 'subjectReference':
        {
          subjectX = ReferenceBuilder.empty();
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
      case 'typeCollected':
        {
          typeCollected = CodeableConceptBuilder.empty();
          return;
        }
      case 'patientPreparation':
        {
          patientPreparation = <CodeableConceptBuilder>[];
          return;
        }
      case 'timeAspect':
        {
          timeAspect = FhirStringBuilder.empty();
          return;
        }
      case 'collection':
        {
          collection = <CodeableConceptBuilder>[];
          return;
        }
      case 'typeTested':
        {
          typeTested = <SpecimenDefinitionTypeTestedBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SpecimenDefinitionBuilder clone() => throw UnimplementedError();
  @override
  SpecimenDefinitionBuilder copyWith({
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
    VersionAlgorithmXSpecimenDefinitionBuilder? versionAlgorithmX,
    FhirStringBuilder? name,
    FhirStringBuilder? title,
    List<FhirCanonicalBuilder>? derivedFromCanonical,
    List<FhirUriBuilder>? derivedFromUri,
    PublicationStatusBuilder? status,
    FhirBooleanBuilder? experimental,
    SubjectXSpecimenDefinitionBuilder? subjectX,
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
    CodeableConceptBuilder? typeCollected,
    List<CodeableConceptBuilder>? patientPreparation,
    FhirStringBuilder? timeAspect,
    List<CodeableConceptBuilder>? collection,
    List<SpecimenDefinitionTypeTestedBuilder>? typeTested,
    FhirStringBuilder? versionAlgorithmString,
    CodingBuilder? versionAlgorithmCoding,
    CodeableConceptBuilder? subjectCodeableConcept,
    ReferenceBuilder? subjectReference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = SpecimenDefinitionBuilder(
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
      derivedFromCanonical: derivedFromCanonical ?? this.derivedFromCanonical,
      derivedFromUri: derivedFromUri ?? this.derivedFromUri,
      status: status ?? this.status,
      experimental: experimental ?? this.experimental,
      subjectX: subjectX ??
          subjectCodeableConcept ??
          subjectReference ??
          this.subjectX,
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
      typeCollected: typeCollected ?? this.typeCollected,
      patientPreparation: patientPreparation ?? this.patientPreparation,
      timeAspect: timeAspect ?? this.timeAspect,
      collection: collection ?? this.collection,
      typeTested: typeTested ?? this.typeTested,
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
    if (o is! SpecimenDefinitionBuilder) {
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
      subjectX,
      o.subjectX,
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
    if (!equalsDeepWithNull(
      typeCollected,
      o.typeCollected,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      patientPreparation,
      o.patientPreparation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      timeAspect,
      o.timeAspect,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      collection,
      o.collection,
    )) {
      return false;
    }
    if (!listEquals<SpecimenDefinitionTypeTestedBuilder>(
      typeTested,
      o.typeTested,
    )) {
      return false;
    }
    return true;
  }
}

/// [SpecimenDefinitionTypeTestedBuilder]
/// Specimen conditioned in a container as expected by the testing
/// laboratory.
class SpecimenDefinitionTypeTestedBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SpecimenDefinitionTypeTestedBuilder]

  SpecimenDefinitionTypeTestedBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.isDerived,
    this.type,
    this.preference,
    this.container,
    this.requirement,
    this.retentionTime,
    this.singleUse,
    this.rejectionCriterion,
    this.handling,
    this.testingDestination,
    super.disallowExtensions,
  }) : super(
          objectPath: 'SpecimenDefinition.typeTested',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SpecimenDefinitionTypeTestedBuilder.empty() =>
      SpecimenDefinitionTypeTestedBuilder(
        preference: SpecimenContainedPreferenceBuilder.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenDefinitionTypeTestedBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SpecimenDefinition.typeTested';
    return SpecimenDefinitionTypeTestedBuilder(
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
      isDerived: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'isDerived',
        FhirBooleanBuilder.fromJson,
        '$objectPath.isDerived',
      ),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      preference: JsonParser.parsePrimitive<SpecimenContainedPreferenceBuilder>(
        json,
        'preference',
        SpecimenContainedPreferenceBuilder.fromJson,
        '$objectPath.preference',
      ),
      container: JsonParser.parseObject<SpecimenDefinitionContainerBuilder>(
        json,
        'container',
        SpecimenDefinitionContainerBuilder.fromJson,
        '$objectPath.container',
      ),
      requirement: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'requirement',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.requirement',
      ),
      retentionTime: JsonParser.parseObject<FhirDurationBuilder>(
        json,
        'retentionTime',
        FhirDurationBuilder.fromJson,
        '$objectPath.retentionTime',
      ),
      singleUse: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'singleUse',
        FhirBooleanBuilder.fromJson,
        '$objectPath.singleUse',
      ),
      rejectionCriterion: (json['rejectionCriterion'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.rejectionCriterion',
              },
            ),
          )
          .toList(),
      handling: (json['handling'] as List<dynamic>?)
          ?.map<SpecimenDefinitionHandlingBuilder>(
            (v) => SpecimenDefinitionHandlingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.handling',
              },
            ),
          )
          .toList(),
      testingDestination: (json['testingDestination'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.testingDestination',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SpecimenDefinitionTypeTestedBuilder]
  /// from a [String] or [YamlMap] object
  factory SpecimenDefinitionTypeTestedBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SpecimenDefinitionTypeTestedBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SpecimenDefinitionTypeTestedBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SpecimenDefinitionTypeTestedBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SpecimenDefinitionTypeTestedBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SpecimenDefinitionTypeTestedBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SpecimenDefinitionTypeTestedBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SpecimenDefinitionTypeTested';

  /// [isDerived]
  /// Primary of secondary specimen.
  FhirBooleanBuilder? isDerived;

  /// [type]
  /// The kind of specimen conditioned for testing expected by lab.
  CodeableConceptBuilder? type;

  /// [preference]
  /// The preference for this type of conditioned specimen.
  SpecimenContainedPreferenceBuilder? preference;

  /// [container]
  /// The specimen's container.
  SpecimenDefinitionContainerBuilder? container;

  /// [requirement]
  /// Requirements for delivery and special handling of this kind of
  /// conditioned specimen.
  FhirMarkdownBuilder? requirement;

  /// [retentionTime]
  /// The usual time that a specimen of this kind is retained after the
  /// ordered tests are completed, for the purpose of additional testing.
  FhirDurationBuilder? retentionTime;

  /// [singleUse]
  /// Specimen can be used by only one test or panel if the value is "true".
  FhirBooleanBuilder? singleUse;

  /// [rejectionCriterion]
  /// Criterion for rejection of the specimen in its container by the
  /// laboratory.
  List<CodeableConceptBuilder>? rejectionCriterion;

  /// [handling]
  /// Set of instructions for preservation/transport of the specimen at a
  /// defined temperature interval, prior the testing process.
  List<SpecimenDefinitionHandlingBuilder>? handling;

  /// [testingDestination]
  /// Where the specimen will be tested: e.g., lab, sector, device or any
  /// combination of these.
  List<CodeableConceptBuilder>? testingDestination;

  /// Converts a [SpecimenDefinitionTypeTestedBuilder]
  /// to [SpecimenDefinitionTypeTested]
  @override
  SpecimenDefinitionTypeTested build() =>
      SpecimenDefinitionTypeTested.fromJson(toJson());

  /// Converts a [SpecimenDefinitionTypeTestedBuilder]
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
    addField('isDerived', isDerived);
    addField('type', type);
    addField('preference', preference);
    addField('container', container);
    addField('requirement', requirement);
    addField('retentionTime', retentionTime);
    addField('singleUse', singleUse);
    addField('rejectionCriterion', rejectionCriterion);
    addField('handling', handling);
    addField('testingDestination', testingDestination);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'isDerived',
      'type',
      'preference',
      'container',
      'requirement',
      'retentionTime',
      'singleUse',
      'rejectionCriterion',
      'handling',
      'testingDestination',
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
      case 'isDerived':
        if (isDerived != null) {
          fields.add(isDerived!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'preference':
        if (preference != null) {
          fields.add(preference!);
        }
      case 'container':
        if (container != null) {
          fields.add(container!);
        }
      case 'requirement':
        if (requirement != null) {
          fields.add(requirement!);
        }
      case 'retentionTime':
        if (retentionTime != null) {
          fields.add(retentionTime!);
        }
      case 'singleUse':
        if (singleUse != null) {
          fields.add(singleUse!);
        }
      case 'rejectionCriterion':
        if (rejectionCriterion != null) {
          fields.addAll(rejectionCriterion!);
        }
      case 'handling':
        if (handling != null) {
          fields.addAll(handling!);
        }
      case 'testingDestination':
        if (testingDestination != null) {
          fields.addAll(testingDestination!);
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
      case 'isDerived':
        {
          if (child is FhirBooleanBuilder) {
            isDerived = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                isDerived = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'preference':
        {
          if (child is SpecimenContainedPreferenceBuilder) {
            preference = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted =
                    SpecimenContainedPreferenceBuilder(stringValue);
                preference = converted;
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
      case 'container':
        {
          if (child is SpecimenDefinitionContainerBuilder) {
            container = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'requirement':
        {
          if (child is FhirMarkdownBuilder) {
            requirement = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                requirement = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'retentionTime':
        {
          if (child is FhirDurationBuilder) {
            retentionTime = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'singleUse':
        {
          if (child is FhirBooleanBuilder) {
            singleUse = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                singleUse = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'rejectionCriterion':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            rejectionCriterion = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            rejectionCriterion = [
              ...(rejectionCriterion ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'handling':
        {
          if (child is List<SpecimenDefinitionHandlingBuilder>) {
            // Replace or create new list
            handling = child;
            return;
          } else if (child is SpecimenDefinitionHandlingBuilder) {
            // Add single element to existing list or create new list
            handling = [
              ...(handling ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'testingDestination':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            testingDestination = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            testingDestination = [
              ...(testingDestination ?? []),
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
      case 'isDerived':
        return ['FhirBooleanBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'preference':
        return ['FhirCodeEnumBuilder'];
      case 'container':
        return ['SpecimenDefinitionContainerBuilder'];
      case 'requirement':
        return ['FhirMarkdownBuilder'];
      case 'retentionTime':
        return ['FhirDurationBuilder'];
      case 'singleUse':
        return ['FhirBooleanBuilder'];
      case 'rejectionCriterion':
        return ['CodeableConceptBuilder'];
      case 'handling':
        return ['SpecimenDefinitionHandlingBuilder'];
      case 'testingDestination':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SpecimenDefinitionTypeTestedBuilder]
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
      case 'isDerived':
        {
          isDerived = FhirBooleanBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'preference':
        {
          preference = SpecimenContainedPreferenceBuilder.empty();
          return;
        }
      case 'container':
        {
          container = SpecimenDefinitionContainerBuilder.empty();
          return;
        }
      case 'requirement':
        {
          requirement = FhirMarkdownBuilder.empty();
          return;
        }
      case 'retentionTime':
        {
          retentionTime = FhirDurationBuilder.empty();
          return;
        }
      case 'singleUse':
        {
          singleUse = FhirBooleanBuilder.empty();
          return;
        }
      case 'rejectionCriterion':
        {
          rejectionCriterion = <CodeableConceptBuilder>[];
          return;
        }
      case 'handling':
        {
          handling = <SpecimenDefinitionHandlingBuilder>[];
          return;
        }
      case 'testingDestination':
        {
          testingDestination = <CodeableConceptBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SpecimenDefinitionTypeTestedBuilder clone() => throw UnimplementedError();
  @override
  SpecimenDefinitionTypeTestedBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirBooleanBuilder? isDerived,
    CodeableConceptBuilder? type,
    SpecimenContainedPreferenceBuilder? preference,
    SpecimenDefinitionContainerBuilder? container,
    FhirMarkdownBuilder? requirement,
    FhirDurationBuilder? retentionTime,
    FhirBooleanBuilder? singleUse,
    List<CodeableConceptBuilder>? rejectionCriterion,
    List<SpecimenDefinitionHandlingBuilder>? handling,
    List<CodeableConceptBuilder>? testingDestination,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SpecimenDefinitionTypeTestedBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      isDerived: isDerived ?? this.isDerived,
      type: type ?? this.type,
      preference: preference ?? this.preference,
      container: container ?? this.container,
      requirement: requirement ?? this.requirement,
      retentionTime: retentionTime ?? this.retentionTime,
      singleUse: singleUse ?? this.singleUse,
      rejectionCriterion: rejectionCriterion ?? this.rejectionCriterion,
      handling: handling ?? this.handling,
      testingDestination: testingDestination ?? this.testingDestination,
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
    if (o is! SpecimenDefinitionTypeTestedBuilder) {
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
      isDerived,
      o.isDerived,
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
      preference,
      o.preference,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      container,
      o.container,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      requirement,
      o.requirement,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      retentionTime,
      o.retentionTime,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      singleUse,
      o.singleUse,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      rejectionCriterion,
      o.rejectionCriterion,
    )) {
      return false;
    }
    if (!listEquals<SpecimenDefinitionHandlingBuilder>(
      handling,
      o.handling,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      testingDestination,
      o.testingDestination,
    )) {
      return false;
    }
    return true;
  }
}

/// [SpecimenDefinitionContainerBuilder]
/// The specimen's container.
class SpecimenDefinitionContainerBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SpecimenDefinitionContainerBuilder]

  SpecimenDefinitionContainerBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.material,
    this.type,
    this.cap,
    this.description,
    this.capacity,
    MinimumVolumeXSpecimenDefinitionContainerBuilder? minimumVolumeX,
    QuantityBuilder? minimumVolumeQuantity,
    FhirStringBuilder? minimumVolumeString,
    this.additive,
    this.preparation,
    super.disallowExtensions,
  })  : minimumVolumeX =
            minimumVolumeX ?? minimumVolumeQuantity ?? minimumVolumeString,
        super(
          objectPath: 'SpecimenDefinition.typeTested.container',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SpecimenDefinitionContainerBuilder.empty() =>
      SpecimenDefinitionContainerBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenDefinitionContainerBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SpecimenDefinition.typeTested.container';
    return SpecimenDefinitionContainerBuilder(
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
      material: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'material',
        CodeableConceptBuilder.fromJson,
        '$objectPath.material',
      ),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      cap: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'cap',
        CodeableConceptBuilder.fromJson,
        '$objectPath.cap',
      ),
      description: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'description',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.description',
      ),
      capacity: JsonParser.parseObject<QuantityBuilder>(
        json,
        'capacity',
        QuantityBuilder.fromJson,
        '$objectPath.capacity',
      ),
      minimumVolumeX: JsonParser.parsePolymorphic<
          MinimumVolumeXSpecimenDefinitionContainerBuilder>(
        json,
        {
          'minimumVolumeQuantity': QuantityBuilder.fromJson,
          'minimumVolumeString': FhirStringBuilder.fromJson,
        },
        objectPath,
      ),
      additive: (json['additive'] as List<dynamic>?)
          ?.map<SpecimenDefinitionAdditiveBuilder>(
            (v) => SpecimenDefinitionAdditiveBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.additive',
              },
            ),
          )
          .toList(),
      preparation: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'preparation',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.preparation',
      ),
    );
  }

  /// Deserialize [SpecimenDefinitionContainerBuilder]
  /// from a [String] or [YamlMap] object
  factory SpecimenDefinitionContainerBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SpecimenDefinitionContainerBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SpecimenDefinitionContainerBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SpecimenDefinitionContainerBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SpecimenDefinitionContainerBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SpecimenDefinitionContainerBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SpecimenDefinitionContainerBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SpecimenDefinitionContainer';

  /// [material]
  /// The type of material of the container.
  CodeableConceptBuilder? material;

  /// [type]
  /// The type of container used to contain this kind of specimen.
  CodeableConceptBuilder? type;

  /// [cap]
  /// Color of container cap.
  CodeableConceptBuilder? cap;

  /// [description]
  /// The textual description of the kind of container.
  FhirMarkdownBuilder? description;

  /// [capacity]
  /// The capacity (volume or other measure) of this kind of container.
  QuantityBuilder? capacity;

  /// [minimumVolumeX]
  /// The minimum volume to be conditioned in the container.
  MinimumVolumeXSpecimenDefinitionContainerBuilder? minimumVolumeX;

  /// Getter for [minimumVolumeQuantity] as a QuantityBuilder
  QuantityBuilder? get minimumVolumeQuantity =>
      minimumVolumeX?.isAs<QuantityBuilder>();

  /// Getter for [minimumVolumeString] as a FhirStringBuilder
  FhirStringBuilder? get minimumVolumeString =>
      minimumVolumeX?.isAs<FhirStringBuilder>();

  /// [additive]
  /// Substance introduced in the kind of container to preserve, maintain or
  /// enhance the specimen. Examples: Formalin, Citrate, EDTA.
  List<SpecimenDefinitionAdditiveBuilder>? additive;

  /// [preparation]
  /// Special processing that should be applied to the container for this
  /// kind of specimen.
  FhirMarkdownBuilder? preparation;

  /// Converts a [SpecimenDefinitionContainerBuilder]
  /// to [SpecimenDefinitionContainer]
  @override
  SpecimenDefinitionContainer build() =>
      SpecimenDefinitionContainer.fromJson(toJson());

  /// Converts a [SpecimenDefinitionContainerBuilder]
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
    addField('material', material);
    addField('type', type);
    addField('cap', cap);
    addField('description', description);
    addField('capacity', capacity);
    if (minimumVolumeX != null) {
      final fhirType = minimumVolumeX!.fhirType;
      addField(
        'minimumVolume${fhirType.capitalizeFirstLetter()}',
        minimumVolumeX,
      );
    }

    addField('additive', additive);
    addField('preparation', preparation);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'material',
      'type',
      'cap',
      'description',
      'capacity',
      'minimumVolumeX',
      'additive',
      'preparation',
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
      case 'material':
        if (material != null) {
          fields.add(material!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'cap':
        if (cap != null) {
          fields.add(cap!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'capacity':
        if (capacity != null) {
          fields.add(capacity!);
        }
      case 'minimumVolume':
        if (minimumVolumeX != null) {
          fields.add(minimumVolumeX!);
        }
      case 'minimumVolumeX':
        if (minimumVolumeX != null) {
          fields.add(minimumVolumeX!);
        }
      case 'minimumVolumeQuantity':
        if (minimumVolumeX is QuantityBuilder) {
          fields.add(minimumVolumeX!);
        }
      case 'minimumVolumeString':
        if (minimumVolumeX is FhirStringBuilder) {
          fields.add(minimumVolumeX!);
        }
      case 'additive':
        if (additive != null) {
          fields.addAll(additive!);
        }
      case 'preparation':
        if (preparation != null) {
          fields.add(preparation!);
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
      case 'material':
        {
          if (child is CodeableConceptBuilder) {
            material = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'cap':
        {
          if (child is CodeableConceptBuilder) {
            cap = child;
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
      case 'capacity':
        {
          if (child is QuantityBuilder) {
            capacity = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'minimumVolume':
      case 'minimumVolumeX':
        {
          if (child is MinimumVolumeXSpecimenDefinitionContainerBuilder) {
            minimumVolumeX = child;
            return;
          } else {
            if (child is QuantityBuilder) {
              minimumVolumeX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              minimumVolumeX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'minimumVolumeQuantity':
        {
          if (child is QuantityBuilder) {
            minimumVolumeX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'minimumVolumeString':
        {
          if (child is FhirStringBuilder) {
            minimumVolumeX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'additive':
        {
          if (child is List<SpecimenDefinitionAdditiveBuilder>) {
            // Replace or create new list
            additive = child;
            return;
          } else if (child is SpecimenDefinitionAdditiveBuilder) {
            // Add single element to existing list or create new list
            additive = [
              ...(additive ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'preparation':
        {
          if (child is FhirMarkdownBuilder) {
            preparation = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                preparation = converted;
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
      case 'material':
        return ['CodeableConceptBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'cap':
        return ['CodeableConceptBuilder'];
      case 'description':
        return ['FhirMarkdownBuilder'];
      case 'capacity':
        return ['QuantityBuilder'];
      case 'minimumVolume':
      case 'minimumVolumeX':
        return [
          'QuantityBuilder',
          'FhirStringBuilder',
        ];
      case 'minimumVolumeQuantity':
        return ['QuantityBuilder'];
      case 'minimumVolumeString':
        return ['FhirStringBuilder'];
      case 'additive':
        return ['SpecimenDefinitionAdditiveBuilder'];
      case 'preparation':
        return ['FhirMarkdownBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SpecimenDefinitionContainerBuilder]
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
      case 'material':
        {
          material = CodeableConceptBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'cap':
        {
          cap = CodeableConceptBuilder.empty();
          return;
        }
      case 'description':
        {
          description = FhirMarkdownBuilder.empty();
          return;
        }
      case 'capacity':
        {
          capacity = QuantityBuilder.empty();
          return;
        }
      case 'minimumVolume':
      case 'minimumVolumeX':
      case 'minimumVolumeQuantity':
        {
          minimumVolumeX = QuantityBuilder.empty();
          return;
        }
      case 'minimumVolumeString':
        {
          minimumVolumeX = FhirStringBuilder.empty();
          return;
        }
      case 'additive':
        {
          additive = <SpecimenDefinitionAdditiveBuilder>[];
          return;
        }
      case 'preparation':
        {
          preparation = FhirMarkdownBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SpecimenDefinitionContainerBuilder clone() => throw UnimplementedError();
  @override
  SpecimenDefinitionContainerBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? material,
    CodeableConceptBuilder? type,
    CodeableConceptBuilder? cap,
    FhirMarkdownBuilder? description,
    QuantityBuilder? capacity,
    MinimumVolumeXSpecimenDefinitionContainerBuilder? minimumVolumeX,
    List<SpecimenDefinitionAdditiveBuilder>? additive,
    FhirMarkdownBuilder? preparation,
    QuantityBuilder? minimumVolumeQuantity,
    FhirStringBuilder? minimumVolumeString,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SpecimenDefinitionContainerBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      material: material ?? this.material,
      type: type ?? this.type,
      cap: cap ?? this.cap,
      description: description ?? this.description,
      capacity: capacity ?? this.capacity,
      minimumVolumeX: minimumVolumeX ??
          minimumVolumeQuantity ??
          minimumVolumeString ??
          this.minimumVolumeX,
      additive: additive ?? this.additive,
      preparation: preparation ?? this.preparation,
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
    if (o is! SpecimenDefinitionContainerBuilder) {
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
      material,
      o.material,
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
      cap,
      o.cap,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      capacity,
      o.capacity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      minimumVolumeX,
      o.minimumVolumeX,
    )) {
      return false;
    }
    if (!listEquals<SpecimenDefinitionAdditiveBuilder>(
      additive,
      o.additive,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      preparation,
      o.preparation,
    )) {
      return false;
    }
    return true;
  }
}

/// [SpecimenDefinitionAdditiveBuilder]
/// Substance introduced in the kind of container to preserve, maintain or
/// enhance the specimen. Examples: Formalin, Citrate, EDTA.
class SpecimenDefinitionAdditiveBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SpecimenDefinitionAdditiveBuilder]

  SpecimenDefinitionAdditiveBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    AdditiveXSpecimenDefinitionAdditiveBuilder? additiveX,
    CodeableConceptBuilder? additiveCodeableConcept,
    ReferenceBuilder? additiveReference,
    super.disallowExtensions,
  })  : additiveX = additiveX ?? additiveCodeableConcept ?? additiveReference,
        super(
          objectPath: 'SpecimenDefinition.typeTested.container.additive',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SpecimenDefinitionAdditiveBuilder.empty() =>
      SpecimenDefinitionAdditiveBuilder(
        additiveX: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenDefinitionAdditiveBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SpecimenDefinition.typeTested.container.additive';
    return SpecimenDefinitionAdditiveBuilder(
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
      additiveX: JsonParser.parsePolymorphic<
          AdditiveXSpecimenDefinitionAdditiveBuilder>(
        json,
        {
          'additiveCodeableConcept': CodeableConceptBuilder.fromJson,
          'additiveReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [SpecimenDefinitionAdditiveBuilder]
  /// from a [String] or [YamlMap] object
  factory SpecimenDefinitionAdditiveBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SpecimenDefinitionAdditiveBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SpecimenDefinitionAdditiveBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SpecimenDefinitionAdditiveBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SpecimenDefinitionAdditiveBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SpecimenDefinitionAdditiveBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SpecimenDefinitionAdditiveBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SpecimenDefinitionAdditive';

  /// [additiveX]
  /// Substance introduced in the kind of container to preserve, maintain or
  /// enhance the specimen. Examples: Formalin, Citrate, EDTA.
  AdditiveXSpecimenDefinitionAdditiveBuilder? additiveX;

  /// Getter for [additiveCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get additiveCodeableConcept =>
      additiveX?.isAs<CodeableConceptBuilder>();

  /// Getter for [additiveReference] as a ReferenceBuilder
  ReferenceBuilder? get additiveReference =>
      additiveX?.isAs<ReferenceBuilder>();

  /// Converts a [SpecimenDefinitionAdditiveBuilder]
  /// to [SpecimenDefinitionAdditive]
  @override
  SpecimenDefinitionAdditive build() =>
      SpecimenDefinitionAdditive.fromJson(toJson());

  /// Converts a [SpecimenDefinitionAdditiveBuilder]
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
    if (additiveX != null) {
      final fhirType = additiveX!.fhirType;
      addField('additive${fhirType.capitalizeFirstLetter()}', additiveX);
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
      'additiveX',
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
      case 'additive':
        if (additiveX != null) {
          fields.add(additiveX!);
        }
      case 'additiveX':
        if (additiveX != null) {
          fields.add(additiveX!);
        }
      case 'additiveCodeableConcept':
        if (additiveX is CodeableConceptBuilder) {
          fields.add(additiveX!);
        }
      case 'additiveReference':
        if (additiveX is ReferenceBuilder) {
          fields.add(additiveX!);
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
      case 'additive':
      case 'additiveX':
        {
          if (child is AdditiveXSpecimenDefinitionAdditiveBuilder) {
            additiveX = child;
            return;
          } else {
            if (child is CodeableConceptBuilder) {
              additiveX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              additiveX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'additiveCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            additiveX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'additiveReference':
        {
          if (child is ReferenceBuilder) {
            additiveX = child;
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
      case 'additive':
      case 'additiveX':
        return [
          'CodeableConceptBuilder',
          'ReferenceBuilder',
        ];
      case 'additiveCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'additiveReference':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SpecimenDefinitionAdditiveBuilder]
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
      case 'additive':
      case 'additiveX':
      case 'additiveCodeableConcept':
        {
          additiveX = CodeableConceptBuilder.empty();
          return;
        }
      case 'additiveReference':
        {
          additiveX = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SpecimenDefinitionAdditiveBuilder clone() => throw UnimplementedError();
  @override
  SpecimenDefinitionAdditiveBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    AdditiveXSpecimenDefinitionAdditiveBuilder? additiveX,
    CodeableConceptBuilder? additiveCodeableConcept,
    ReferenceBuilder? additiveReference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SpecimenDefinitionAdditiveBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      additiveX: additiveX ??
          additiveCodeableConcept ??
          additiveReference ??
          this.additiveX,
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
    if (o is! SpecimenDefinitionAdditiveBuilder) {
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
      additiveX,
      o.additiveX,
    )) {
      return false;
    }
    return true;
  }
}

/// [SpecimenDefinitionHandlingBuilder]
/// Set of instructions for preservation/transport of the specimen at a
/// defined temperature interval, prior the testing process.
class SpecimenDefinitionHandlingBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SpecimenDefinitionHandlingBuilder]

  SpecimenDefinitionHandlingBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.temperatureQualifier,
    this.temperatureRange,
    this.maxDuration,
    this.instruction,
    super.disallowExtensions,
  }) : super(
          objectPath: 'SpecimenDefinition.typeTested.handling',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SpecimenDefinitionHandlingBuilder.empty() =>
      SpecimenDefinitionHandlingBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenDefinitionHandlingBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SpecimenDefinition.typeTested.handling';
    return SpecimenDefinitionHandlingBuilder(
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
      temperatureQualifier: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'temperatureQualifier',
        CodeableConceptBuilder.fromJson,
        '$objectPath.temperatureQualifier',
      ),
      temperatureRange: JsonParser.parseObject<RangeBuilder>(
        json,
        'temperatureRange',
        RangeBuilder.fromJson,
        '$objectPath.temperatureRange',
      ),
      maxDuration: JsonParser.parseObject<FhirDurationBuilder>(
        json,
        'maxDuration',
        FhirDurationBuilder.fromJson,
        '$objectPath.maxDuration',
      ),
      instruction: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'instruction',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.instruction',
      ),
    );
  }

  /// Deserialize [SpecimenDefinitionHandlingBuilder]
  /// from a [String] or [YamlMap] object
  factory SpecimenDefinitionHandlingBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SpecimenDefinitionHandlingBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SpecimenDefinitionHandlingBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SpecimenDefinitionHandlingBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SpecimenDefinitionHandlingBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SpecimenDefinitionHandlingBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SpecimenDefinitionHandlingBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SpecimenDefinitionHandling';

  /// [temperatureQualifier]
  /// It qualifies the interval of temperature, which characterizes an
  /// occurrence of handling. Conditions that are not related to temperature
  /// may be handled in the instruction element.
  CodeableConceptBuilder? temperatureQualifier;

  /// [temperatureRange]
  /// The temperature interval for this set of handling instructions.
  RangeBuilder? temperatureRange;

  /// [maxDuration]
  /// The maximum time interval of preservation of the specimen with these
  /// conditions.
  FhirDurationBuilder? maxDuration;

  /// [instruction]
  /// Additional textual instructions for the preservation or transport of
  /// the specimen. For instance, 'Protect from light exposure'.
  FhirMarkdownBuilder? instruction;

  /// Converts a [SpecimenDefinitionHandlingBuilder]
  /// to [SpecimenDefinitionHandling]
  @override
  SpecimenDefinitionHandling build() =>
      SpecimenDefinitionHandling.fromJson(toJson());

  /// Converts a [SpecimenDefinitionHandlingBuilder]
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
    addField('temperatureQualifier', temperatureQualifier);
    addField('temperatureRange', temperatureRange);
    addField('maxDuration', maxDuration);
    addField('instruction', instruction);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'temperatureQualifier',
      'temperatureRange',
      'maxDuration',
      'instruction',
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
      case 'temperatureQualifier':
        if (temperatureQualifier != null) {
          fields.add(temperatureQualifier!);
        }
      case 'temperatureRange':
        if (temperatureRange != null) {
          fields.add(temperatureRange!);
        }
      case 'maxDuration':
        if (maxDuration != null) {
          fields.add(maxDuration!);
        }
      case 'instruction':
        if (instruction != null) {
          fields.add(instruction!);
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
      case 'temperatureQualifier':
        {
          if (child is CodeableConceptBuilder) {
            temperatureQualifier = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'temperatureRange':
        {
          if (child is RangeBuilder) {
            temperatureRange = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'maxDuration':
        {
          if (child is FhirDurationBuilder) {
            maxDuration = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'instruction':
        {
          if (child is FhirMarkdownBuilder) {
            instruction = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                instruction = converted;
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
      case 'temperatureQualifier':
        return ['CodeableConceptBuilder'];
      case 'temperatureRange':
        return ['RangeBuilder'];
      case 'maxDuration':
        return ['FhirDurationBuilder'];
      case 'instruction':
        return ['FhirMarkdownBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SpecimenDefinitionHandlingBuilder]
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
      case 'temperatureQualifier':
        {
          temperatureQualifier = CodeableConceptBuilder.empty();
          return;
        }
      case 'temperatureRange':
        {
          temperatureRange = RangeBuilder.empty();
          return;
        }
      case 'maxDuration':
        {
          maxDuration = FhirDurationBuilder.empty();
          return;
        }
      case 'instruction':
        {
          instruction = FhirMarkdownBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SpecimenDefinitionHandlingBuilder clone() => throw UnimplementedError();
  @override
  SpecimenDefinitionHandlingBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? temperatureQualifier,
    RangeBuilder? temperatureRange,
    FhirDurationBuilder? maxDuration,
    FhirMarkdownBuilder? instruction,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SpecimenDefinitionHandlingBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      temperatureQualifier: temperatureQualifier ?? this.temperatureQualifier,
      temperatureRange: temperatureRange ?? this.temperatureRange,
      maxDuration: maxDuration ?? this.maxDuration,
      instruction: instruction ?? this.instruction,
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
    if (o is! SpecimenDefinitionHandlingBuilder) {
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
      temperatureQualifier,
      o.temperatureQualifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      temperatureRange,
      o.temperatureRange,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      maxDuration,
      o.maxDuration,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      instruction,
      o.instruction,
    )) {
      return false;
    }
    return true;
  }
}
