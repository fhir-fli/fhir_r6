import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        R5ResourceType,
        ValueSet,
        ValueSetCompose,
        ValueSetConcept,
        ValueSetContains,
        ValueSetDesignation,
        ValueSetExpansion,
        ValueSetFilter,
        ValueSetInclude,
        ValueSetParameter,
        ValueSetProperty,
        ValueSetProperty1,
        ValueSetScope,
        ValueSetSubProperty,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [ValueSetBuilder]
/// A ValueSet resource instance specifies a set of codes drawn from one or
/// more code systems, intended for use in a particular context. Value sets
/// link between [CodeSystem](codesystem.html) definitions and their use in
/// [coded elements](terminologies.html).
class ValueSetBuilder extends MetadataResourceBuilder {
  /// Primary constructor for
  /// [ValueSetBuilder]

  ValueSetBuilder({
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
    VersionAlgorithmXValueSetBuilder? versionAlgorithmX,
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
    this.immutable,
    this.purpose,
    this.copyright,
    this.copyrightLabel,
    super.approvalDate,
    super.lastReviewDate,
    super.effectivePeriod,
    super.topic,
    super.author,
    super.editor,
    super.reviewer,
    super.endorser,
    super.relatedArtifact,
    this.compose,
    this.expansion,
    this.scope,
  })  : versionAlgorithmX = versionAlgorithmX ??
            versionAlgorithmString ??
            versionAlgorithmCoding,
        super(
          objectPath: 'ValueSet',
          resourceType: R5ResourceType.ValueSet,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ValueSetBuilder.empty() => ValueSetBuilder(
        status: PublicationStatusBuilder.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ValueSetBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ValueSet';
    return ValueSetBuilder(
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
          JsonParser.parsePolymorphic<VersionAlgorithmXValueSetBuilder>(
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
      immutable: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'immutable',
        FhirBooleanBuilder.fromJson,
        '$objectPath.immutable',
      ),
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
      topic: (json['topic'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.topic',
              },
            ),
          )
          .toList(),
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
      relatedArtifact: (json['relatedArtifact'] as List<dynamic>?)
          ?.map<RelatedArtifactBuilder>(
            (v) => RelatedArtifactBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.relatedArtifact',
              },
            ),
          )
          .toList(),
      compose: JsonParser.parseObject<ValueSetComposeBuilder>(
        json,
        'compose',
        ValueSetComposeBuilder.fromJson,
        '$objectPath.compose',
      ),
      expansion: JsonParser.parseObject<ValueSetExpansionBuilder>(
        json,
        'expansion',
        ValueSetExpansionBuilder.fromJson,
        '$objectPath.expansion',
      ),
      scope: JsonParser.parseObject<ValueSetScopeBuilder>(
        json,
        'scope',
        ValueSetScopeBuilder.fromJson,
        '$objectPath.scope',
      ),
    );
  }

  /// Deserialize [ValueSetBuilder]
  /// from a [String] or [YamlMap] object
  factory ValueSetBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ValueSetBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ValueSetBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ValueSetBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ValueSetBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ValueSetBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ValueSetBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ValueSet';

  /// [identifier]
  /// A formal identifier that is used to identify this value set when it is
  /// represented in other formats, or referenced in a specification, model,
  /// design or an instance.
  List<IdentifierBuilder>? identifier;

  /// [versionAlgorithmX]
  /// Indicates the mechanism used to compare versions to determine which
  /// ValueSet is more current.
  VersionAlgorithmXValueSetBuilder? versionAlgorithmX;

  /// Getter for [versionAlgorithmString] as a FhirStringBuilder
  FhirStringBuilder? get versionAlgorithmString =>
      versionAlgorithmX?.isAs<FhirStringBuilder>();

  /// Getter for [versionAlgorithmCoding] as a CodingBuilder
  CodingBuilder? get versionAlgorithmCoding =>
      versionAlgorithmX?.isAs<CodingBuilder>();

  /// [name]
  /// A natural language name identifying the value set. This name should be
  /// usable as an identifier for the module by machine processing
  /// applications such as code generation.
  FhirStringBuilder? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the value set.
  FhirStringBuilder? title;

  /// [immutable]
  /// If this is set to 'true', then no new versions of the content logical
  /// definition can be created. Note: Other metadata might still change.
  FhirBooleanBuilder? immutable;

  /// [purpose]
  /// Explanation of why this value set is needed and why it has been
  /// designed as it has.
  FhirMarkdownBuilder? purpose;

  /// [copyright]
  /// A copyright statement relating to the value set and/or its contents.
  /// Copyright statements are generally legal restrictions on the use and
  /// publishing of the value set.
  FhirMarkdownBuilder? copyright;

  /// [copyrightLabel]
  /// A short string (<50 characters), suitable for inclusion in a page
  /// footer that identifies the copyright holder, effective period, and
  /// optionally whether rights are resctricted. (e.g. 'All rights reserved',
  /// 'Some rights reserved').
  FhirStringBuilder? copyrightLabel;

  /// [compose]
  /// A set of criteria that define the contents of the value set by
  /// including or excluding codes selected from the specified code system(s)
  /// that the value set draws from. This is also known as the Content
  /// Logical Definition (CLD).
  ValueSetComposeBuilder? compose;

  /// [expansion]
  /// A value set can also be "expanded", where the value set is turned into
  /// a simple collection of enumerated codes. This element holds the
  /// expansion, if it has been performed.
  ValueSetExpansionBuilder? expansion;

  /// [scope]
  /// Description of the semantic space the Value Set Expansion is intended
  /// to cover and should further clarify the text in ValueSet.description.
  ValueSetScopeBuilder? scope;

  /// Converts a [ValueSetBuilder]
  /// to [ValueSet]
  @override
  ValueSet build() => ValueSet.fromJson(toJson());

  /// Converts a [ValueSetBuilder]
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
    addField('immutable', immutable);
    addField('purpose', purpose);
    addField('copyright', copyright);
    addField('copyrightLabel', copyrightLabel);
    addField('approvalDate', approvalDate);
    addField('lastReviewDate', lastReviewDate);
    addField('effectivePeriod', effectivePeriod);
    addField('topic', topic);
    addField('author', author);
    addField('editor', editor);
    addField('reviewer', reviewer);
    addField('endorser', endorser);
    addField('relatedArtifact', relatedArtifact);
    addField('compose', compose);
    addField('expansion', expansion);
    addField('scope', scope);
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
      'immutable',
      'purpose',
      'copyright',
      'copyrightLabel',
      'approvalDate',
      'lastReviewDate',
      'effectivePeriod',
      'topic',
      'author',
      'editor',
      'reviewer',
      'endorser',
      'relatedArtifact',
      'compose',
      'expansion',
      'scope',
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
      case 'immutable':
        if (immutable != null) {
          fields.add(immutable!);
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
      case 'topic':
        if (topic != null) {
          fields.addAll(topic!);
        }
      case 'author':
        if (author != null) {
          fields.addAll(author!);
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
      case 'relatedArtifact':
        if (relatedArtifact != null) {
          fields.addAll(relatedArtifact!);
        }
      case 'compose':
        if (compose != null) {
          fields.add(compose!);
        }
      case 'expansion':
        if (expansion != null) {
          fields.add(expansion!);
        }
      case 'scope':
        if (scope != null) {
          fields.add(scope!);
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
          if (child is VersionAlgorithmXValueSetBuilder) {
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
      case 'immutable':
        {
          if (child is FhirBooleanBuilder) {
            immutable = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                immutable = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
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
      case 'topic':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            topic = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            topic = [
              ...(topic ?? []),
              child,
            ];
            return;
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
      case 'relatedArtifact':
        {
          if (child is List<RelatedArtifactBuilder>) {
            // Replace or create new list
            relatedArtifact = child;
            return;
          } else if (child is RelatedArtifactBuilder) {
            // Add single element to existing list or create new list
            relatedArtifact = [
              ...(relatedArtifact ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'compose':
        {
          if (child is ValueSetComposeBuilder) {
            compose = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'expansion':
        {
          if (child is ValueSetExpansionBuilder) {
            expansion = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'scope':
        {
          if (child is ValueSetScopeBuilder) {
            scope = child;
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
      case 'immutable':
        return ['FhirBooleanBuilder'];
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
      case 'topic':
        return ['CodeableConceptBuilder'];
      case 'author':
        return ['ContactDetailBuilder'];
      case 'editor':
        return ['ContactDetailBuilder'];
      case 'reviewer':
        return ['ContactDetailBuilder'];
      case 'endorser':
        return ['ContactDetailBuilder'];
      case 'relatedArtifact':
        return ['RelatedArtifactBuilder'];
      case 'compose':
        return ['ValueSetComposeBuilder'];
      case 'expansion':
        return ['ValueSetExpansionBuilder'];
      case 'scope':
        return ['ValueSetScopeBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ValueSetBuilder]
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
      case 'immutable':
        {
          immutable = FhirBooleanBuilder.empty();
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
      case 'topic':
        {
          topic = <CodeableConceptBuilder>[];
          return;
        }
      case 'author':
        {
          author = <ContactDetailBuilder>[];
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
      case 'relatedArtifact':
        {
          relatedArtifact = <RelatedArtifactBuilder>[];
          return;
        }
      case 'compose':
        {
          compose = ValueSetComposeBuilder.empty();
          return;
        }
      case 'expansion':
        {
          expansion = ValueSetExpansionBuilder.empty();
          return;
        }
      case 'scope':
        {
          scope = ValueSetScopeBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ValueSetBuilder clone() => throw UnimplementedError();
  @override
  ValueSetBuilder copyWith({
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
    VersionAlgorithmXValueSetBuilder? versionAlgorithmX,
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
    FhirBooleanBuilder? immutable,
    FhirMarkdownBuilder? purpose,
    FhirMarkdownBuilder? copyright,
    FhirStringBuilder? copyrightLabel,
    FhirDateBuilder? approvalDate,
    FhirDateBuilder? lastReviewDate,
    PeriodBuilder? effectivePeriod,
    List<CodeableConceptBuilder>? topic,
    List<ContactDetailBuilder>? author,
    List<ContactDetailBuilder>? editor,
    List<ContactDetailBuilder>? reviewer,
    List<ContactDetailBuilder>? endorser,
    List<RelatedArtifactBuilder>? relatedArtifact,
    ValueSetComposeBuilder? compose,
    ValueSetExpansionBuilder? expansion,
    ValueSetScopeBuilder? scope,
    FhirStringBuilder? versionAlgorithmString,
    CodingBuilder? versionAlgorithmCoding,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = ValueSetBuilder(
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
      immutable: immutable ?? this.immutable,
      purpose: purpose ?? this.purpose,
      copyright: copyright ?? this.copyright,
      copyrightLabel: copyrightLabel ?? this.copyrightLabel,
      approvalDate: approvalDate ?? this.approvalDate,
      lastReviewDate: lastReviewDate ?? this.lastReviewDate,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
      topic: topic ?? this.topic,
      author: author ?? this.author,
      editor: editor ?? this.editor,
      reviewer: reviewer ?? this.reviewer,
      endorser: endorser ?? this.endorser,
      relatedArtifact: relatedArtifact ?? this.relatedArtifact,
      compose: compose ?? this.compose,
      expansion: expansion ?? this.expansion,
      scope: scope ?? this.scope,
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
    if (o is! ValueSetBuilder) {
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
      immutable,
      o.immutable,
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
    if (!listEquals<CodeableConceptBuilder>(
      topic,
      o.topic,
    )) {
      return false;
    }
    if (!listEquals<ContactDetailBuilder>(
      author,
      o.author,
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
    if (!listEquals<RelatedArtifactBuilder>(
      relatedArtifact,
      o.relatedArtifact,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      compose,
      o.compose,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      expansion,
      o.expansion,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      scope,
      o.scope,
    )) {
      return false;
    }
    return true;
  }
}

/// [ValueSetComposeBuilder]
/// A set of criteria that define the contents of the value set by
/// including or excluding codes selected from the specified code system(s)
/// that the value set draws from. This is also known as the Content
/// Logical Definition (CLD).
class ValueSetComposeBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ValueSetComposeBuilder]

  ValueSetComposeBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.lockedDate,
    this.inactive,
    this.include,
    this.exclude,
    this.property,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ValueSet.compose',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ValueSetComposeBuilder.empty() => ValueSetComposeBuilder(
        include: <ValueSetIncludeBuilder>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ValueSetComposeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ValueSet.compose';
    return ValueSetComposeBuilder(
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
      lockedDate: JsonParser.parsePrimitive<FhirDateBuilder>(
        json,
        'lockedDate',
        FhirDateBuilder.fromJson,
        '$objectPath.lockedDate',
      ),
      inactive: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'inactive',
        FhirBooleanBuilder.fromJson,
        '$objectPath.inactive',
      ),
      include: (json['include'] as List<dynamic>?)
          ?.map<ValueSetIncludeBuilder>(
            (v) => ValueSetIncludeBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.include',
              },
            ),
          )
          .toList(),
      exclude: (json['exclude'] as List<dynamic>?)
          ?.map<ValueSetIncludeBuilder>(
            (v) => ValueSetIncludeBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.exclude',
              },
            ),
          )
          .toList(),
      property: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'property',
        FhirStringBuilder.fromJson,
        '$objectPath.property',
      ),
    );
  }

  /// Deserialize [ValueSetComposeBuilder]
  /// from a [String] or [YamlMap] object
  factory ValueSetComposeBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ValueSetComposeBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ValueSetComposeBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ValueSetComposeBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ValueSetComposeBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ValueSetComposeBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ValueSetComposeBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ValueSetCompose';

  /// [lockedDate]
  /// The Locked Date is the effective date that is used to determine the
  /// version of all referenced Code Systems and Value Set Definitions
  /// included in the compose that are not already tied to a specific
  /// version.
  FhirDateBuilder? lockedDate;

  /// [inactive]
  /// Whether inactive codes - codes that are not approved for current use -
  /// are in the value set. If inactive = true, inactive codes are to be
  /// included in the expansion, if inactive = false, the inactive codes will
  /// not be included in the expansion. If absent, the behavior is determined
  /// by the implementation, or by the applicable $expand parameters (but
  /// generally, inactive codes would be expected to be included).
  FhirBooleanBuilder? inactive;

  /// [include]
  /// Include one or more codes from a code system or other value set(s).
  List<ValueSetIncludeBuilder>? include;

  /// [exclude]
  /// Exclude one or more codes from the value set based on code system
  /// filters and/or other value sets.
  List<ValueSetIncludeBuilder>? exclude;

  /// [property]
  /// A property to return in the expansion, if the client doesn't ask for
  /// any particular properties. May be either a code from the code system
  /// definition (convenient) or a the formal URI that refers to the
  /// property. The special value '*' means all properties known to the
  /// server.
  List<FhirStringBuilder>? property;

  /// Converts a [ValueSetComposeBuilder]
  /// to [ValueSetCompose]
  @override
  ValueSetCompose build() => ValueSetCompose.fromJson(toJson());

  /// Converts a [ValueSetComposeBuilder]
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
    addField('lockedDate', lockedDate);
    addField('inactive', inactive);
    addField('include', include);
    addField('exclude', exclude);
    addField('property', property);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'lockedDate',
      'inactive',
      'include',
      'exclude',
      'property',
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
      case 'lockedDate':
        if (lockedDate != null) {
          fields.add(lockedDate!);
        }
      case 'inactive':
        if (inactive != null) {
          fields.add(inactive!);
        }
      case 'include':
        if (include != null) {
          fields.addAll(include!);
        }
      case 'exclude':
        if (exclude != null) {
          fields.addAll(exclude!);
        }
      case 'property':
        if (property != null) {
          fields.addAll(property!);
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
      case 'lockedDate':
        {
          if (child is FhirDateBuilder) {
            lockedDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateBuilder.tryParse(stringValue);
              if (converted != null) {
                lockedDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'inactive':
        {
          if (child is FhirBooleanBuilder) {
            inactive = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                inactive = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'include':
        {
          if (child is List<ValueSetIncludeBuilder>) {
            // Replace or create new list
            include = child;
            return;
          } else if (child is ValueSetIncludeBuilder) {
            // Add single element to existing list or create new list
            include = [
              ...(include ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'exclude':
        {
          if (child is List<ValueSetIncludeBuilder>) {
            // Replace or create new list
            exclude = child;
            return;
          } else if (child is ValueSetIncludeBuilder) {
            // Add single element to existing list or create new list
            exclude = [
              ...(exclude ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'property':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            property = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            property = [
              ...(property ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirStringBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirStringBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              property = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                property = [
                  ...(property ?? []),
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
      case 'lockedDate':
        return ['FhirDateBuilder'];
      case 'inactive':
        return ['FhirBooleanBuilder'];
      case 'include':
        return ['ValueSetIncludeBuilder'];
      case 'exclude':
        return ['ValueSetIncludeBuilder'];
      case 'property':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ValueSetComposeBuilder]
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
      case 'lockedDate':
        {
          lockedDate = FhirDateBuilder.empty();
          return;
        }
      case 'inactive':
        {
          inactive = FhirBooleanBuilder.empty();
          return;
        }
      case 'include':
        {
          include = <ValueSetIncludeBuilder>[];
          return;
        }
      case 'exclude':
        {
          exclude = <ValueSetIncludeBuilder>[];
          return;
        }
      case 'property':
        {
          property = <FhirStringBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ValueSetComposeBuilder clone() => throw UnimplementedError();
  @override
  ValueSetComposeBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirDateBuilder? lockedDate,
    FhirBooleanBuilder? inactive,
    List<ValueSetIncludeBuilder>? include,
    List<ValueSetIncludeBuilder>? exclude,
    List<FhirStringBuilder>? property,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ValueSetComposeBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      lockedDate: lockedDate ?? this.lockedDate,
      inactive: inactive ?? this.inactive,
      include: include ?? this.include,
      exclude: exclude ?? this.exclude,
      property: property ?? this.property,
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
    if (o is! ValueSetComposeBuilder) {
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
      lockedDate,
      o.lockedDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      inactive,
      o.inactive,
    )) {
      return false;
    }
    if (!listEquals<ValueSetIncludeBuilder>(
      include,
      o.include,
    )) {
      return false;
    }
    if (!listEquals<ValueSetIncludeBuilder>(
      exclude,
      o.exclude,
    )) {
      return false;
    }
    if (!listEquals<FhirStringBuilder>(
      property,
      o.property,
    )) {
      return false;
    }
    return true;
  }
}

/// [ValueSetIncludeBuilder]
/// Include one or more codes from a code system or other value set(s).
class ValueSetIncludeBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ValueSetIncludeBuilder]

  ValueSetIncludeBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.system,
    this.version,
    this.concept,
    this.filter,
    this.valueSet,
    this.copyright,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ValueSet.compose.include',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ValueSetIncludeBuilder.empty() => ValueSetIncludeBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ValueSetIncludeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ValueSet.compose.include';
    return ValueSetIncludeBuilder(
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
      system: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'system',
        FhirUriBuilder.fromJson,
        '$objectPath.system',
      ),
      version: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'version',
        FhirStringBuilder.fromJson,
        '$objectPath.version',
      ),
      concept: (json['concept'] as List<dynamic>?)
          ?.map<ValueSetConceptBuilder>(
            (v) => ValueSetConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.concept',
              },
            ),
          )
          .toList(),
      filter: (json['filter'] as List<dynamic>?)
          ?.map<ValueSetFilterBuilder>(
            (v) => ValueSetFilterBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.filter',
              },
            ),
          )
          .toList(),
      valueSet: JsonParser.parsePrimitiveList<FhirCanonicalBuilder>(
        json,
        'valueSet',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.valueSet',
      ),
      copyright: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'copyright',
        FhirStringBuilder.fromJson,
        '$objectPath.copyright',
      ),
    );
  }

  /// Deserialize [ValueSetIncludeBuilder]
  /// from a [String] or [YamlMap] object
  factory ValueSetIncludeBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ValueSetIncludeBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ValueSetIncludeBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ValueSetIncludeBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ValueSetIncludeBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ValueSetIncludeBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ValueSetIncludeBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ValueSetInclude';

  /// [system]
  /// An absolute URI which is the code system from which the selected codes
  /// come from.
  FhirUriBuilder? system;

  /// [version]
  /// The version of the code system that the codes are selected from, or the
  /// special version '*' for all versions.
  FhirStringBuilder? version;

  /// [concept]
  /// Specifies a concept to be included or excluded.
  List<ValueSetConceptBuilder>? concept;

  /// [filter]
  /// Select concepts by specifying a matching criterion based on the
  /// properties (including relationships) defined by the system, or on
  /// filters defined by the system. If multiple filters are specified within
  /// the include, they SHALL all be true.
  List<ValueSetFilterBuilder>? filter;

  /// [valueSet]
  /// Selects the concepts found in this value set (based on its value set
  /// definition). This is an absolute URI that is a reference to
  /// ValueSet.url. If multiple value sets are specified this includes the
  /// intersection of the contents of all of the referenced value sets.
  List<FhirCanonicalBuilder>? valueSet;

  /// [copyright]
  /// A copyright statement for the specific code system asserted by the
  /// containing ValueSet.compose.include element's system value (if the
  /// associated ValueSet.compose.include.version element is not present); or
  /// the code system and version combination (if the associated
  /// ValueSet.compose.include.version element is present).
  FhirStringBuilder? copyright;

  /// Converts a [ValueSetIncludeBuilder]
  /// to [ValueSetInclude]
  @override
  ValueSetInclude build() => ValueSetInclude.fromJson(toJson());

  /// Converts a [ValueSetIncludeBuilder]
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
    addField('system', system);
    addField('version', version);
    addField('concept', concept);
    addField('filter', filter);
    addField('valueSet', valueSet);
    addField('copyright', copyright);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'system',
      'version',
      'concept',
      'filter',
      'valueSet',
      'copyright',
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
      case 'system':
        if (system != null) {
          fields.add(system!);
        }
      case 'version':
        if (version != null) {
          fields.add(version!);
        }
      case 'concept':
        if (concept != null) {
          fields.addAll(concept!);
        }
      case 'filter':
        if (filter != null) {
          fields.addAll(filter!);
        }
      case 'valueSet':
        if (valueSet != null) {
          fields.addAll(valueSet!);
        }
      case 'copyright':
        if (copyright != null) {
          fields.add(copyright!);
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
      case 'system':
        {
          if (child is FhirUriBuilder) {
            system = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                system = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
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
      case 'concept':
        {
          if (child is List<ValueSetConceptBuilder>) {
            // Replace or create new list
            concept = child;
            return;
          } else if (child is ValueSetConceptBuilder) {
            // Add single element to existing list or create new list
            concept = [
              ...(concept ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'filter':
        {
          if (child is List<ValueSetFilterBuilder>) {
            // Replace or create new list
            filter = child;
            return;
          } else if (child is ValueSetFilterBuilder) {
            // Add single element to existing list or create new list
            filter = [
              ...(filter ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueSet':
        {
          if (child is List<FhirCanonicalBuilder>) {
            // Replace or create new list
            valueSet = child;
            return;
          } else if (child is FhirCanonicalBuilder) {
            // Add single element to existing list or create new list
            valueSet = [
              ...(valueSet ?? []),
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
              valueSet = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                valueSet = [
                  ...(valueSet ?? []),
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
      case 'copyright':
        {
          if (child is FhirStringBuilder) {
            copyright = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
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
      case 'system':
        return ['FhirUriBuilder'];
      case 'version':
        return ['FhirStringBuilder'];
      case 'concept':
        return ['ValueSetConceptBuilder'];
      case 'filter':
        return ['ValueSetFilterBuilder'];
      case 'valueSet':
        return ['FhirCanonicalBuilder'];
      case 'copyright':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ValueSetIncludeBuilder]
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
      case 'system':
        {
          system = FhirUriBuilder.empty();
          return;
        }
      case 'version':
        {
          version = FhirStringBuilder.empty();
          return;
        }
      case 'concept':
        {
          concept = <ValueSetConceptBuilder>[];
          return;
        }
      case 'filter':
        {
          filter = <ValueSetFilterBuilder>[];
          return;
        }
      case 'valueSet':
        {
          valueSet = <FhirCanonicalBuilder>[];
          return;
        }
      case 'copyright':
        {
          copyright = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ValueSetIncludeBuilder clone() => throw UnimplementedError();
  @override
  ValueSetIncludeBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    List<ValueSetConceptBuilder>? concept,
    List<ValueSetFilterBuilder>? filter,
    List<FhirCanonicalBuilder>? valueSet,
    FhirStringBuilder? copyright,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ValueSetIncludeBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      system: system ?? this.system,
      version: version ?? this.version,
      concept: concept ?? this.concept,
      filter: filter ?? this.filter,
      valueSet: valueSet ?? this.valueSet,
      copyright: copyright ?? this.copyright,
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
    if (o is! ValueSetIncludeBuilder) {
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
      system,
      o.system,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      version,
      o.version,
    )) {
      return false;
    }
    if (!listEquals<ValueSetConceptBuilder>(
      concept,
      o.concept,
    )) {
      return false;
    }
    if (!listEquals<ValueSetFilterBuilder>(
      filter,
      o.filter,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonicalBuilder>(
      valueSet,
      o.valueSet,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      copyright,
      o.copyright,
    )) {
      return false;
    }
    return true;
  }
}

/// [ValueSetConceptBuilder]
/// Specifies a concept to be included or excluded.
class ValueSetConceptBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ValueSetConceptBuilder]

  ValueSetConceptBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.display,
    this.designation,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ValueSet.compose.include.concept',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ValueSetConceptBuilder.empty() => ValueSetConceptBuilder(
        code: FhirCodeBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ValueSetConceptBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ValueSet.compose.include.concept';
    return ValueSetConceptBuilder(
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
      code: JsonParser.parsePrimitive<FhirCodeBuilder>(
        json,
        'code',
        FhirCodeBuilder.fromJson,
        '$objectPath.code',
      ),
      display: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'display',
        FhirStringBuilder.fromJson,
        '$objectPath.display',
      ),
      designation: (json['designation'] as List<dynamic>?)
          ?.map<ValueSetDesignationBuilder>(
            (v) => ValueSetDesignationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.designation',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ValueSetConceptBuilder]
  /// from a [String] or [YamlMap] object
  factory ValueSetConceptBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ValueSetConceptBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ValueSetConceptBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ValueSetConceptBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ValueSetConceptBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ValueSetConceptBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ValueSetConceptBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ValueSetConcept';

  /// [code]
  /// Specifies a code for the concept to be included or excluded.
  FhirCodeBuilder? code;

  /// [display]
  /// The text to display to the user for this concept in the context of this
  /// valueset. If no display is provided, then applications using the value
  /// set use the display specified for the code by the system.
  FhirStringBuilder? display;

  /// [designation]
  /// Additional representations for this concept when used in this value set
  /// - other languages, aliases, specialized purposes, used for particular
  /// purposes, etc.
  List<ValueSetDesignationBuilder>? designation;

  /// Converts a [ValueSetConceptBuilder]
  /// to [ValueSetConcept]
  @override
  ValueSetConcept build() => ValueSetConcept.fromJson(toJson());

  /// Converts a [ValueSetConceptBuilder]
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
    addField('display', display);
    addField('designation', designation);
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
      'display',
      'designation',
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
      case 'display':
        if (display != null) {
          fields.add(display!);
        }
      case 'designation':
        if (designation != null) {
          fields.addAll(designation!);
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
          if (child is FhirCodeBuilder) {
            code = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCodeBuilder.tryParse(stringValue);
              if (converted != null) {
                code = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'display':
        {
          if (child is FhirStringBuilder) {
            display = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                display = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'designation':
        {
          if (child is List<ValueSetDesignationBuilder>) {
            // Replace or create new list
            designation = child;
            return;
          } else if (child is ValueSetDesignationBuilder) {
            // Add single element to existing list or create new list
            designation = [
              ...(designation ?? []),
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
        return ['FhirCodeBuilder'];
      case 'display':
        return ['FhirStringBuilder'];
      case 'designation':
        return ['ValueSetDesignationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ValueSetConceptBuilder]
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
          code = FhirCodeBuilder.empty();
          return;
        }
      case 'display':
        {
          display = FhirStringBuilder.empty();
          return;
        }
      case 'designation':
        {
          designation = <ValueSetDesignationBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ValueSetConceptBuilder clone() => throw UnimplementedError();
  @override
  ValueSetConceptBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirCodeBuilder? code,
    FhirStringBuilder? display,
    List<ValueSetDesignationBuilder>? designation,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ValueSetConceptBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      display: display ?? this.display,
      designation: designation ?? this.designation,
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
    if (o is! ValueSetConceptBuilder) {
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
      display,
      o.display,
    )) {
      return false;
    }
    if (!listEquals<ValueSetDesignationBuilder>(
      designation,
      o.designation,
    )) {
      return false;
    }
    return true;
  }
}

/// [ValueSetDesignationBuilder]
/// Additional representations for this concept when used in this value set
/// - other languages, aliases, specialized purposes, used for particular
/// purposes, etc.
class ValueSetDesignationBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ValueSetDesignationBuilder]

  ValueSetDesignationBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.language,
    this.use,
    this.additionalUse,
    this.value,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ValueSet.compose.include.concept.designation',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ValueSetDesignationBuilder.empty() => ValueSetDesignationBuilder(
        value: FhirStringBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ValueSetDesignationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ValueSet.compose.include.concept.designation';
    return ValueSetDesignationBuilder(
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
      language: JsonParser.parsePrimitive<AllLanguagesBuilder>(
        json,
        'language',
        AllLanguagesBuilder.fromJson,
        '$objectPath.language',
      ),
      use: JsonParser.parseObject<CodingBuilder>(
        json,
        'use',
        CodingBuilder.fromJson,
        '$objectPath.use',
      ),
      additionalUse: (json['additionalUse'] as List<dynamic>?)
          ?.map<CodingBuilder>(
            (v) => CodingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.additionalUse',
              },
            ),
          )
          .toList(),
      value: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'value',
        FhirStringBuilder.fromJson,
        '$objectPath.value',
      ),
    );
  }

  /// Deserialize [ValueSetDesignationBuilder]
  /// from a [String] or [YamlMap] object
  factory ValueSetDesignationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ValueSetDesignationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ValueSetDesignationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ValueSetDesignationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ValueSetDesignationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ValueSetDesignationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ValueSetDesignationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ValueSetDesignation';

  /// [language]
  /// The language this designation is defined for.
  AllLanguagesBuilder? language;

  /// [use]
  /// A code that represents types of uses of designations.
  CodingBuilder? use;

  /// [additionalUse]
  /// Additional codes that detail how this designation would be used, if
  /// there is more than one use.
  List<CodingBuilder>? additionalUse;

  /// [value]
  /// The text value for this designation.
  FhirStringBuilder? value;

  /// Converts a [ValueSetDesignationBuilder]
  /// to [ValueSetDesignation]
  @override
  ValueSetDesignation build() => ValueSetDesignation.fromJson(toJson());

  /// Converts a [ValueSetDesignationBuilder]
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
    addField('language', language);
    addField('use', use);
    addField('additionalUse', additionalUse);
    addField('value', value);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'language',
      'use',
      'additionalUse',
      'value',
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
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'use':
        if (use != null) {
          fields.add(use!);
        }
      case 'additionalUse':
        if (additionalUse != null) {
          fields.addAll(additionalUse!);
        }
      case 'value':
        if (value != null) {
          fields.add(value!);
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
      case 'use':
        {
          if (child is CodingBuilder) {
            use = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'additionalUse':
        {
          if (child is List<CodingBuilder>) {
            // Replace or create new list
            additionalUse = child;
            return;
          } else if (child is CodingBuilder) {
            // Add single element to existing list or create new list
            additionalUse = [
              ...(additionalUse ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'value':
        {
          if (child is FhirStringBuilder) {
            value = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                value = converted;
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
      case 'language':
        return ['FhirCodeEnumBuilder'];
      case 'use':
        return ['CodingBuilder'];
      case 'additionalUse':
        return ['CodingBuilder'];
      case 'value':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ValueSetDesignationBuilder]
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
      case 'language':
        {
          language = AllLanguagesBuilder.empty();
          return;
        }
      case 'use':
        {
          use = CodingBuilder.empty();
          return;
        }
      case 'additionalUse':
        {
          additionalUse = <CodingBuilder>[];
          return;
        }
      case 'value':
        {
          value = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ValueSetDesignationBuilder clone() => throw UnimplementedError();
  @override
  ValueSetDesignationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    AllLanguagesBuilder? language,
    CodingBuilder? use,
    List<CodingBuilder>? additionalUse,
    FhirStringBuilder? value,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ValueSetDesignationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      language: language ?? this.language,
      use: use ?? this.use,
      additionalUse: additionalUse ?? this.additionalUse,
      value: value ?? this.value,
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
    if (o is! ValueSetDesignationBuilder) {
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
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      use,
      o.use,
    )) {
      return false;
    }
    if (!listEquals<CodingBuilder>(
      additionalUse,
      o.additionalUse,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      value,
      o.value,
    )) {
      return false;
    }
    return true;
  }
}

/// [ValueSetFilterBuilder]
/// Select concepts by specifying a matching criterion based on the
/// properties (including relationships) defined by the system, or on
/// filters defined by the system. If multiple filters are specified within
/// the include, they SHALL all be true.
class ValueSetFilterBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ValueSetFilterBuilder]

  ValueSetFilterBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.property,
    this.op,
    this.value,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ValueSet.compose.include.filter',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ValueSetFilterBuilder.empty() => ValueSetFilterBuilder(
        property: FhirCodeBuilder.empty(),
        op: FilterOperatorBuilder.values.first,
        value: FhirStringBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ValueSetFilterBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ValueSet.compose.include.filter';
    return ValueSetFilterBuilder(
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
      property: JsonParser.parsePrimitive<FhirCodeBuilder>(
        json,
        'property',
        FhirCodeBuilder.fromJson,
        '$objectPath.property',
      ),
      op: JsonParser.parsePrimitive<FilterOperatorBuilder>(
        json,
        'op',
        FilterOperatorBuilder.fromJson,
        '$objectPath.op',
      ),
      value: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'value',
        FhirStringBuilder.fromJson,
        '$objectPath.value',
      ),
    );
  }

  /// Deserialize [ValueSetFilterBuilder]
  /// from a [String] or [YamlMap] object
  factory ValueSetFilterBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ValueSetFilterBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ValueSetFilterBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ValueSetFilterBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ValueSetFilterBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ValueSetFilterBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ValueSetFilterBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ValueSetFilter';

  /// [property]
  /// A code that identifies a property or a filter defined in the code
  /// system.
  FhirCodeBuilder? property;

  /// [op]
  /// The kind of operation to perform as a part of the filter criteria.
  FilterOperatorBuilder? op;

  /// [value]
  /// The match value may be either a code defined by the system, or a string
  /// value, which is a regex match on the literal string of the property
  /// value (if the filter represents a property defined in CodeSystem) or of
  /// the system filter value (if the filter represents a filter defined in
  /// CodeSystem) when the operation is 'regex', or one of the values (true
  /// and false), when the operation is 'exists'.
  FhirStringBuilder? value;

  /// Converts a [ValueSetFilterBuilder]
  /// to [ValueSetFilter]
  @override
  ValueSetFilter build() => ValueSetFilter.fromJson(toJson());

  /// Converts a [ValueSetFilterBuilder]
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
    addField('property', property);
    addField('op', op);
    addField('value', value);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'property',
      'op',
      'value',
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
      case 'property':
        if (property != null) {
          fields.add(property!);
        }
      case 'op':
        if (op != null) {
          fields.add(op!);
        }
      case 'value':
        if (value != null) {
          fields.add(value!);
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
      case 'property':
        {
          if (child is FhirCodeBuilder) {
            property = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCodeBuilder.tryParse(stringValue);
              if (converted != null) {
                property = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'op':
        {
          if (child is FilterOperatorBuilder) {
            op = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = FilterOperatorBuilder(stringValue);
                op = converted;
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
      case 'value':
        {
          if (child is FhirStringBuilder) {
            value = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                value = converted;
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
      case 'property':
        return ['FhirCodeBuilder'];
      case 'op':
        return ['FhirCodeEnumBuilder'];
      case 'value':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ValueSetFilterBuilder]
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
      case 'property':
        {
          property = FhirCodeBuilder.empty();
          return;
        }
      case 'op':
        {
          op = FilterOperatorBuilder.empty();
          return;
        }
      case 'value':
        {
          value = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ValueSetFilterBuilder clone() => throw UnimplementedError();
  @override
  ValueSetFilterBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirCodeBuilder? property,
    FilterOperatorBuilder? op,
    FhirStringBuilder? value,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ValueSetFilterBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      property: property ?? this.property,
      op: op ?? this.op,
      value: value ?? this.value,
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
    if (o is! ValueSetFilterBuilder) {
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
      property,
      o.property,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      op,
      o.op,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      value,
      o.value,
    )) {
      return false;
    }
    return true;
  }
}

/// [ValueSetExpansionBuilder]
/// A value set can also be "expanded", where the value set is turned into
/// a simple collection of enumerated codes. This element holds the
/// expansion, if it has been performed.
class ValueSetExpansionBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ValueSetExpansionBuilder]

  ValueSetExpansionBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.next,
    this.timestamp,
    this.total,
    this.offset,
    this.parameter,
    this.property,
    this.contains,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ValueSet.expansion',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ValueSetExpansionBuilder.empty() => ValueSetExpansionBuilder(
        timestamp: FhirDateTimeBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ValueSetExpansionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ValueSet.expansion';
    return ValueSetExpansionBuilder(
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
      identifier: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'identifier',
        FhirUriBuilder.fromJson,
        '$objectPath.identifier',
      ),
      next: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'next',
        FhirUriBuilder.fromJson,
        '$objectPath.next',
      ),
      timestamp: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'timestamp',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.timestamp',
      ),
      total: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'total',
        FhirIntegerBuilder.fromJson,
        '$objectPath.total',
      ),
      offset: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'offset',
        FhirIntegerBuilder.fromJson,
        '$objectPath.offset',
      ),
      parameter: (json['parameter'] as List<dynamic>?)
          ?.map<ValueSetParameterBuilder>(
            (v) => ValueSetParameterBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.parameter',
              },
            ),
          )
          .toList(),
      property: (json['property'] as List<dynamic>?)
          ?.map<ValueSetPropertyBuilder>(
            (v) => ValueSetPropertyBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.property',
              },
            ),
          )
          .toList(),
      contains: (json['contains'] as List<dynamic>?)
          ?.map<ValueSetContainsBuilder>(
            (v) => ValueSetContainsBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contains',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ValueSetExpansionBuilder]
  /// from a [String] or [YamlMap] object
  factory ValueSetExpansionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ValueSetExpansionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ValueSetExpansionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ValueSetExpansionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ValueSetExpansionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ValueSetExpansionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ValueSetExpansionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ValueSetExpansion';

  /// [identifier]
  /// An identifier that uniquely identifies this expansion of the valueset,
  /// based on a unique combination of the provided parameters, the system
  /// default parameters, and the underlying system code system versions etc.
  /// Systems may re-use the same identifier as long as those factors remain
  /// the same, and the expansion is the same, but are not required to do so.
  /// This is a business identifier.
  FhirUriBuilder? identifier;

  /// [next]
  /// As per paging Search results, the next URLs are opaque to the client,
  /// have no dictated structure, and only the server understands them.
  FhirUriBuilder? next;

  /// [timestamp]
  /// The time at which the expansion was produced by the expanding system.
  FhirDateTimeBuilder? timestamp;

  /// [total]
  /// The total number of concepts in the expansion. If the number of concept
  /// nodes in this resource is less than the stated number, then the server
  /// can return more using the offset parameter.
  FhirIntegerBuilder? total;

  /// [offset]
  /// If paging is being used, the offset at which this resource starts. I.e.
  /// this resource is a partial view into the expansion. If paging is not
  /// being used, this element SHALL NOT be present.
  FhirIntegerBuilder? offset;

  /// [parameter]
  /// A parameter that controlled the expansion process. These parameters may
  /// be used by users of expanded value sets to check whether the expansion
  /// is suitable for a particular purpose, or to pick the correct expansion.
  List<ValueSetParameterBuilder>? parameter;

  /// [property]
  /// A property defines an additional slot through which additional
  /// information can be provided about a concept.
  List<ValueSetPropertyBuilder>? property;

  /// [contains]
  /// The codes that are contained in the value set expansion.
  List<ValueSetContainsBuilder>? contains;

  /// Converts a [ValueSetExpansionBuilder]
  /// to [ValueSetExpansion]
  @override
  ValueSetExpansion build() => ValueSetExpansion.fromJson(toJson());

  /// Converts a [ValueSetExpansionBuilder]
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
    addField('identifier', identifier);
    addField('next', next);
    addField('timestamp', timestamp);
    addField('total', total);
    addField('offset', offset);
    addField('parameter', parameter);
    addField('property', property);
    addField('contains', contains);
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
      'next',
      'timestamp',
      'total',
      'offset',
      'parameter',
      'property',
      'contains',
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
      case 'identifier':
        if (identifier != null) {
          fields.add(identifier!);
        }
      case 'next':
        if (next != null) {
          fields.add(next!);
        }
      case 'timestamp':
        if (timestamp != null) {
          fields.add(timestamp!);
        }
      case 'total':
        if (total != null) {
          fields.add(total!);
        }
      case 'offset':
        if (offset != null) {
          fields.add(offset!);
        }
      case 'parameter':
        if (parameter != null) {
          fields.addAll(parameter!);
        }
      case 'property':
        if (property != null) {
          fields.addAll(property!);
        }
      case 'contains':
        if (contains != null) {
          fields.addAll(contains!);
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
      case 'identifier':
        {
          if (child is FhirUriBuilder) {
            identifier = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                identifier = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'next':
        {
          if (child is FhirUriBuilder) {
            next = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                next = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'timestamp':
        {
          if (child is FhirDateTimeBuilder) {
            timestamp = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                timestamp = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'total':
        {
          if (child is FhirIntegerBuilder) {
            total = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirIntegerBuilder.tryParse(numValue);
                if (converted != null) {
                  total = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'offset':
        {
          if (child is FhirIntegerBuilder) {
            offset = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types,
              // first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirIntegerBuilder.tryParse(numValue);
                if (converted != null) {
                  offset = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'parameter':
        {
          if (child is List<ValueSetParameterBuilder>) {
            // Replace or create new list
            parameter = child;
            return;
          } else if (child is ValueSetParameterBuilder) {
            // Add single element to existing list or create new list
            parameter = [
              ...(parameter ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'property':
        {
          if (child is List<ValueSetPropertyBuilder>) {
            // Replace or create new list
            property = child;
            return;
          } else if (child is ValueSetPropertyBuilder) {
            // Add single element to existing list or create new list
            property = [
              ...(property ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contains':
        {
          if (child is List<ValueSetContainsBuilder>) {
            // Replace or create new list
            contains = child;
            return;
          } else if (child is ValueSetContainsBuilder) {
            // Add single element to existing list or create new list
            contains = [
              ...(contains ?? []),
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
      case 'identifier':
        return ['FhirUriBuilder'];
      case 'next':
        return ['FhirUriBuilder'];
      case 'timestamp':
        return ['FhirDateTimeBuilder'];
      case 'total':
        return ['FhirIntegerBuilder'];
      case 'offset':
        return ['FhirIntegerBuilder'];
      case 'parameter':
        return ['ValueSetParameterBuilder'];
      case 'property':
        return ['ValueSetPropertyBuilder'];
      case 'contains':
        return ['ValueSetContainsBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ValueSetExpansionBuilder]
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
      case 'identifier':
        {
          identifier = FhirUriBuilder.empty();
          return;
        }
      case 'next':
        {
          next = FhirUriBuilder.empty();
          return;
        }
      case 'timestamp':
        {
          timestamp = FhirDateTimeBuilder.empty();
          return;
        }
      case 'total':
        {
          total = FhirIntegerBuilder.empty();
          return;
        }
      case 'offset':
        {
          offset = FhirIntegerBuilder.empty();
          return;
        }
      case 'parameter':
        {
          parameter = <ValueSetParameterBuilder>[];
          return;
        }
      case 'property':
        {
          property = <ValueSetPropertyBuilder>[];
          return;
        }
      case 'contains':
        {
          contains = <ValueSetContainsBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ValueSetExpansionBuilder clone() => throw UnimplementedError();
  @override
  ValueSetExpansionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirUriBuilder? identifier,
    FhirUriBuilder? next,
    FhirDateTimeBuilder? timestamp,
    FhirIntegerBuilder? total,
    FhirIntegerBuilder? offset,
    List<ValueSetParameterBuilder>? parameter,
    List<ValueSetPropertyBuilder>? property,
    List<ValueSetContainsBuilder>? contains,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ValueSetExpansionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      next: next ?? this.next,
      timestamp: timestamp ?? this.timestamp,
      total: total ?? this.total,
      offset: offset ?? this.offset,
      parameter: parameter ?? this.parameter,
      property: property ?? this.property,
      contains: contains ?? this.contains,
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
    if (o is! ValueSetExpansionBuilder) {
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
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      next,
      o.next,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      timestamp,
      o.timestamp,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      total,
      o.total,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      offset,
      o.offset,
    )) {
      return false;
    }
    if (!listEquals<ValueSetParameterBuilder>(
      parameter,
      o.parameter,
    )) {
      return false;
    }
    if (!listEquals<ValueSetPropertyBuilder>(
      property,
      o.property,
    )) {
      return false;
    }
    if (!listEquals<ValueSetContainsBuilder>(
      contains,
      o.contains,
    )) {
      return false;
    }
    return true;
  }
}

/// [ValueSetParameterBuilder]
/// A parameter that controlled the expansion process. These parameters may
/// be used by users of expanded value sets to check whether the expansion
/// is suitable for a particular purpose, or to pick the correct expansion.
class ValueSetParameterBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ValueSetParameterBuilder]

  ValueSetParameterBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    ValueXValueSetParameterBuilder? valueX,
    FhirStringBuilder? valueString,
    FhirBooleanBuilder? valueBoolean,
    FhirIntegerBuilder? valueInteger,
    FhirDecimalBuilder? valueDecimal,
    FhirUriBuilder? valueUri,
    FhirCodeBuilder? valueCode,
    FhirDateTimeBuilder? valueDateTime,
    super.disallowExtensions,
  })  : valueX = valueX ??
            valueString ??
            valueBoolean ??
            valueInteger ??
            valueDecimal ??
            valueUri ??
            valueCode ??
            valueDateTime,
        super(
          objectPath: 'ValueSet.expansion.parameter',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ValueSetParameterBuilder.empty() => ValueSetParameterBuilder(
        name: FhirStringBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ValueSetParameterBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ValueSet.expansion.parameter';
    return ValueSetParameterBuilder(
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
      valueX: JsonParser.parsePolymorphic<ValueXValueSetParameterBuilder>(
        json,
        {
          'valueString': FhirStringBuilder.fromJson,
          'valueBoolean': FhirBooleanBuilder.fromJson,
          'valueInteger': FhirIntegerBuilder.fromJson,
          'valueDecimal': FhirDecimalBuilder.fromJson,
          'valueUri': FhirUriBuilder.fromJson,
          'valueCode': FhirCodeBuilder.fromJson,
          'valueDateTime': FhirDateTimeBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [ValueSetParameterBuilder]
  /// from a [String] or [YamlMap] object
  factory ValueSetParameterBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ValueSetParameterBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ValueSetParameterBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ValueSetParameterBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ValueSetParameterBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ValueSetParameterBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ValueSetParameterBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ValueSetParameter';

  /// [name]
  /// Name of the input parameter to the $expand operation; may be a
  /// server-assigned name for additional default or other server-supplied
  /// parameters used to control the expansion process.
  FhirStringBuilder? name;

  /// [valueX]
  /// The value of the parameter.
  ValueXValueSetParameterBuilder? valueX;

  /// Getter for [valueString] as a FhirStringBuilder
  FhirStringBuilder? get valueString => valueX?.isAs<FhirStringBuilder>();

  /// Getter for [valueBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get valueBoolean => valueX?.isAs<FhirBooleanBuilder>();

  /// Getter for [valueInteger] as a FhirIntegerBuilder
  FhirIntegerBuilder? get valueInteger => valueX?.isAs<FhirIntegerBuilder>();

  /// Getter for [valueDecimal] as a FhirDecimalBuilder
  FhirDecimalBuilder? get valueDecimal => valueX?.isAs<FhirDecimalBuilder>();

  /// Getter for [valueUri] as a FhirUriBuilder
  FhirUriBuilder? get valueUri => valueX?.isAs<FhirUriBuilder>();

  /// Getter for [valueCode] as a FhirCodeBuilder
  FhirCodeBuilder? get valueCode => valueX?.isAs<FhirCodeBuilder>();

  /// Getter for [valueDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get valueDateTime => valueX?.isAs<FhirDateTimeBuilder>();

  /// Converts a [ValueSetParameterBuilder]
  /// to [ValueSetParameter]
  @override
  ValueSetParameter build() => ValueSetParameter.fromJson(toJson());

  /// Converts a [ValueSetParameterBuilder]
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
      case 'valueString':
        if (valueX is FhirStringBuilder) {
          fields.add(valueX!);
        }
      case 'valueBoolean':
        if (valueX is FhirBooleanBuilder) {
          fields.add(valueX!);
        }
      case 'valueInteger':
        if (valueX is FhirIntegerBuilder) {
          fields.add(valueX!);
        }
      case 'valueDecimal':
        if (valueX is FhirDecimalBuilder) {
          fields.add(valueX!);
        }
      case 'valueUri':
        if (valueX is FhirUriBuilder) {
          fields.add(valueX!);
        }
      case 'valueCode':
        if (valueX is FhirCodeBuilder) {
          fields.add(valueX!);
        }
      case 'valueDateTime':
        if (valueX is FhirDateTimeBuilder) {
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
          if (child is ValueXValueSetParameterBuilder) {
            valueX = child;
            return;
          } else {
            if (child is FhirStringBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirBooleanBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirIntegerBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDecimalBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirUriBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirCodeBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDateTimeBuilder) {
              valueX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueString':
        {
          if (child is FhirStringBuilder) {
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
      case 'valueInteger':
        {
          if (child is FhirIntegerBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDecimal':
        {
          if (child is FhirDecimalBuilder) {
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
      case 'valueCode':
        {
          if (child is FhirCodeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDateTime':
        {
          if (child is FhirDateTimeBuilder) {
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
          'FhirStringBuilder',
          'FhirBooleanBuilder',
          'FhirIntegerBuilder',
          'FhirDecimalBuilder',
          'FhirUriBuilder',
          'FhirCodeBuilder',
          'FhirDateTimeBuilder',
        ];
      case 'valueString':
        return ['FhirStringBuilder'];
      case 'valueBoolean':
        return ['FhirBooleanBuilder'];
      case 'valueInteger':
        return ['FhirIntegerBuilder'];
      case 'valueDecimal':
        return ['FhirDecimalBuilder'];
      case 'valueUri':
        return ['FhirUriBuilder'];
      case 'valueCode':
        return ['FhirCodeBuilder'];
      case 'valueDateTime':
        return ['FhirDateTimeBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ValueSetParameterBuilder]
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
      case 'valueString':
        {
          valueX = FhirStringBuilder.empty();
          return;
        }
      case 'valueBoolean':
        {
          valueX = FhirBooleanBuilder.empty();
          return;
        }
      case 'valueInteger':
        {
          valueX = FhirIntegerBuilder.empty();
          return;
        }
      case 'valueDecimal':
        {
          valueX = FhirDecimalBuilder.empty();
          return;
        }
      case 'valueUri':
        {
          valueX = FhirUriBuilder.empty();
          return;
        }
      case 'valueCode':
        {
          valueX = FhirCodeBuilder.empty();
          return;
        }
      case 'valueDateTime':
        {
          valueX = FhirDateTimeBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ValueSetParameterBuilder clone() => throw UnimplementedError();
  @override
  ValueSetParameterBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? name,
    ValueXValueSetParameterBuilder? valueX,
    FhirStringBuilder? valueString,
    FhirBooleanBuilder? valueBoolean,
    FhirIntegerBuilder? valueInteger,
    FhirDecimalBuilder? valueDecimal,
    FhirUriBuilder? valueUri,
    FhirCodeBuilder? valueCode,
    FhirDateTimeBuilder? valueDateTime,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ValueSetParameterBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      valueX: valueX ??
          valueString ??
          valueBoolean ??
          valueInteger ??
          valueDecimal ??
          valueUri ??
          valueCode ??
          valueDateTime ??
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
    if (o is! ValueSetParameterBuilder) {
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

/// [ValueSetPropertyBuilder]
/// A property defines an additional slot through which additional
/// information can be provided about a concept.
class ValueSetPropertyBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ValueSetPropertyBuilder]

  ValueSetPropertyBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.uri,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ValueSet.expansion.property',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ValueSetPropertyBuilder.empty() => ValueSetPropertyBuilder(
        code: FhirCodeBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ValueSetPropertyBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ValueSet.expansion.property';
    return ValueSetPropertyBuilder(
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
      code: JsonParser.parsePrimitive<FhirCodeBuilder>(
        json,
        'code',
        FhirCodeBuilder.fromJson,
        '$objectPath.code',
      ),
      uri: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'uri',
        FhirUriBuilder.fromJson,
        '$objectPath.uri',
      ),
    );
  }

  /// Deserialize [ValueSetPropertyBuilder]
  /// from a [String] or [YamlMap] object
  factory ValueSetPropertyBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ValueSetPropertyBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ValueSetPropertyBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ValueSetPropertyBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ValueSetPropertyBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ValueSetPropertyBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ValueSetPropertyBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ValueSetProperty';

  /// [code]
  /// A code that is used to identify the property. The code is used in
  /// ValueSet.expansion.contains.property.code.
  FhirCodeBuilder? code;

  /// [uri]
  /// Reference to the formal meaning of the property. One possible source of
  /// meaning is the [Concept Properties](codesystem-concept-properties.html)
  /// code system.
  FhirUriBuilder? uri;

  /// Converts a [ValueSetPropertyBuilder]
  /// to [ValueSetProperty]
  @override
  ValueSetProperty build() => ValueSetProperty.fromJson(toJson());

  /// Converts a [ValueSetPropertyBuilder]
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
    addField('uri', uri);
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
      'uri',
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
      case 'uri':
        if (uri != null) {
          fields.add(uri!);
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
          if (child is FhirCodeBuilder) {
            code = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCodeBuilder.tryParse(stringValue);
              if (converted != null) {
                code = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'uri':
        {
          if (child is FhirUriBuilder) {
            uri = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                uri = converted;
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
      case 'code':
        return ['FhirCodeBuilder'];
      case 'uri':
        return ['FhirUriBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ValueSetPropertyBuilder]
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
          code = FhirCodeBuilder.empty();
          return;
        }
      case 'uri':
        {
          uri = FhirUriBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ValueSetPropertyBuilder clone() => throw UnimplementedError();
  @override
  ValueSetPropertyBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirCodeBuilder? code,
    FhirUriBuilder? uri,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ValueSetPropertyBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      uri: uri ?? this.uri,
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
    if (o is! ValueSetPropertyBuilder) {
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
      uri,
      o.uri,
    )) {
      return false;
    }
    return true;
  }
}

/// [ValueSetContainsBuilder]
/// The codes that are contained in the value set expansion.
class ValueSetContainsBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ValueSetContainsBuilder]

  ValueSetContainsBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.system,
    this.abstract_,
    this.inactive,
    this.version,
    this.code,
    this.display,
    this.designation,
    this.property,
    this.contains,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ValueSet.expansion.contains',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ValueSetContainsBuilder.empty() => ValueSetContainsBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ValueSetContainsBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ValueSet.expansion.contains';
    return ValueSetContainsBuilder(
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
      system: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'system',
        FhirUriBuilder.fromJson,
        '$objectPath.system',
      ),
      abstract_: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'abstract',
        FhirBooleanBuilder.fromJson,
        '$objectPath.abstract',
      ),
      inactive: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'inactive',
        FhirBooleanBuilder.fromJson,
        '$objectPath.inactive',
      ),
      version: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'version',
        FhirStringBuilder.fromJson,
        '$objectPath.version',
      ),
      code: JsonParser.parsePrimitive<FhirCodeBuilder>(
        json,
        'code',
        FhirCodeBuilder.fromJson,
        '$objectPath.code',
      ),
      display: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'display',
        FhirStringBuilder.fromJson,
        '$objectPath.display',
      ),
      designation: (json['designation'] as List<dynamic>?)
          ?.map<ValueSetDesignationBuilder>(
            (v) => ValueSetDesignationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.designation',
              },
            ),
          )
          .toList(),
      property: (json['property'] as List<dynamic>?)
          ?.map<ValueSetPropertyBuilder>(
            (v) => ValueSetPropertyBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.property',
              },
            ),
          )
          .toList(),
      contains: (json['contains'] as List<dynamic>?)
          ?.map<ValueSetContainsBuilder>(
            (v) => ValueSetContainsBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contains',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ValueSetContainsBuilder]
  /// from a [String] or [YamlMap] object
  factory ValueSetContainsBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ValueSetContainsBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ValueSetContainsBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ValueSetContainsBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ValueSetContainsBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ValueSetContainsBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ValueSetContainsBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ValueSetContains';

  /// [system]
  /// An absolute URI which is the code system in which the code for this
  /// item in the expansion is defined.
  FhirUriBuilder? system;

  /// [abstract_]
  /// If true, this entry is included in the expansion for navigational
  /// purposes, and the user cannot select the code directly as a proper
  /// value.
  FhirBooleanBuilder? abstract_;

  /// [inactive]
  /// If the concept is inactive in the code system that defines it. Inactive
  /// codes are those that are no longer to be used, but are maintained by
  /// the code system for understanding legacy data. It might not be known or
  /// specified whether a concept is inactive (and it may depend on the
  /// context of use).
  FhirBooleanBuilder? inactive;

  /// [version]
  /// The version of the code system from this code was taken. Note that a
  /// well-maintained code system does not need the version reported, because
  /// the meaning of codes is consistent across versions. However this cannot
  /// consistently be assured, and when the meaning is not guaranteed to be
  /// consistent, the version SHOULD be exchanged.
  FhirStringBuilder? version;

  /// [code]
  /// The code for this item in the expansion hierarchy. If this code is
  /// missing the entry in the hierarchy is a place holder (abstract) and
  /// does not represent a valid code in the value set.
  FhirCodeBuilder? code;

  /// [display]
  /// The recommended display for this item in the expansion.
  FhirStringBuilder? display;

  /// [designation]
  /// Additional representations for this item - other languages, aliases,
  /// specialized purposes, used for particular purposes, etc. These are
  /// relevant when the conditions of the expansion do not fix to a single
  /// correct representation.
  List<ValueSetDesignationBuilder>? designation;

  /// [property]
  /// A property value for this concept.
  List<ValueSetPropertyBuilder>? property;

  /// [contains]
  /// Other codes and entries contained under this entry in the hierarchy.
  List<ValueSetContainsBuilder>? contains;

  /// Converts a [ValueSetContainsBuilder]
  /// to [ValueSetContains]
  @override
  ValueSetContains build() => ValueSetContains.fromJson(toJson());

  /// Converts a [ValueSetContainsBuilder]
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
    addField('system', system);
    addField('abstract', abstract_);
    addField('inactive', inactive);
    addField('version', version);
    addField('code', code);
    addField('display', display);
    addField('designation', designation);
    addField('property', property);
    addField('contains', contains);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'system',
      'abstract',
      'inactive',
      'version',
      'code',
      'display',
      'designation',
      'property',
      'contains',
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
      case 'system':
        if (system != null) {
          fields.add(system!);
        }
      case 'abstract':
        if (abstract_ != null) {
          fields.add(abstract_!);
        }
      case 'inactive':
        if (inactive != null) {
          fields.add(inactive!);
        }
      case 'version':
        if (version != null) {
          fields.add(version!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'display':
        if (display != null) {
          fields.add(display!);
        }
      case 'designation':
        if (designation != null) {
          fields.addAll(designation!);
        }
      case 'property':
        if (property != null) {
          fields.addAll(property!);
        }
      case 'contains':
        if (contains != null) {
          fields.addAll(contains!);
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
      case 'system':
        {
          if (child is FhirUriBuilder) {
            system = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                system = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'abstract':
        {
          if (child is FhirBooleanBuilder) {
            abstract_ = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                abstract_ = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'inactive':
        {
          if (child is FhirBooleanBuilder) {
            inactive = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                inactive = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
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
      case 'code':
        {
          if (child is FhirCodeBuilder) {
            code = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCodeBuilder.tryParse(stringValue);
              if (converted != null) {
                code = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'display':
        {
          if (child is FhirStringBuilder) {
            display = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                display = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'designation':
        {
          if (child is List<ValueSetDesignationBuilder>) {
            // Replace or create new list
            designation = child;
            return;
          } else if (child is ValueSetDesignationBuilder) {
            // Add single element to existing list or create new list
            designation = [
              ...(designation ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'property':
        {
          if (child is List<ValueSetPropertyBuilder>) {
            // Replace or create new list
            property = child;
            return;
          } else if (child is ValueSetPropertyBuilder) {
            // Add single element to existing list or create new list
            property = [
              ...(property ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contains':
        {
          if (child is List<ValueSetContainsBuilder>) {
            // Replace or create new list
            contains = child;
            return;
          } else if (child is ValueSetContainsBuilder) {
            // Add single element to existing list or create new list
            contains = [
              ...(contains ?? []),
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
      case 'system':
        return ['FhirUriBuilder'];
      case 'abstract':
        return ['FhirBooleanBuilder'];
      case 'inactive':
        return ['FhirBooleanBuilder'];
      case 'version':
        return ['FhirStringBuilder'];
      case 'code':
        return ['FhirCodeBuilder'];
      case 'display':
        return ['FhirStringBuilder'];
      case 'designation':
        return ['ValueSetDesignationBuilder'];
      case 'property':
        return ['ValueSetPropertyBuilder'];
      case 'contains':
        return ['ValueSetContainsBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ValueSetContainsBuilder]
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
      case 'system':
        {
          system = FhirUriBuilder.empty();
          return;
        }
      case 'abstract':
        {
          abstract_ = FhirBooleanBuilder.empty();
          return;
        }
      case 'inactive':
        {
          inactive = FhirBooleanBuilder.empty();
          return;
        }
      case 'version':
        {
          version = FhirStringBuilder.empty();
          return;
        }
      case 'code':
        {
          code = FhirCodeBuilder.empty();
          return;
        }
      case 'display':
        {
          display = FhirStringBuilder.empty();
          return;
        }
      case 'designation':
        {
          designation = <ValueSetDesignationBuilder>[];
          return;
        }
      case 'property':
        {
          property = <ValueSetPropertyBuilder>[];
          return;
        }
      case 'contains':
        {
          contains = <ValueSetContainsBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ValueSetContainsBuilder clone() => throw UnimplementedError();
  @override
  ValueSetContainsBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirUriBuilder? system,
    FhirBooleanBuilder? abstract_,
    FhirBooleanBuilder? inactive,
    FhirStringBuilder? version,
    FhirCodeBuilder? code,
    FhirStringBuilder? display,
    List<ValueSetDesignationBuilder>? designation,
    List<ValueSetPropertyBuilder>? property,
    List<ValueSetContainsBuilder>? contains,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ValueSetContainsBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      system: system ?? this.system,
      abstract_: abstract_ ?? this.abstract_,
      inactive: inactive ?? this.inactive,
      version: version ?? this.version,
      code: code ?? this.code,
      display: display ?? this.display,
      designation: designation ?? this.designation,
      property: property ?? this.property,
      contains: contains ?? this.contains,
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
    if (o is! ValueSetContainsBuilder) {
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
      system,
      o.system,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      abstract_,
      o.abstract_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      inactive,
      o.inactive,
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
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      display,
      o.display,
    )) {
      return false;
    }
    if (!listEquals<ValueSetDesignationBuilder>(
      designation,
      o.designation,
    )) {
      return false;
    }
    if (!listEquals<ValueSetPropertyBuilder>(
      property,
      o.property,
    )) {
      return false;
    }
    if (!listEquals<ValueSetContainsBuilder>(
      contains,
      o.contains,
    )) {
      return false;
    }
    return true;
  }
}

/// [ValueSetProperty1Builder]
/// A property value for this concept.
class ValueSetProperty1Builder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ValueSetProperty1Builder]

  ValueSetProperty1Builder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    ValueXValueSetPropertyBuilder? valueX,
    FhirCodeBuilder? valueCode,
    CodingBuilder? valueCoding,
    FhirStringBuilder? valueString,
    FhirIntegerBuilder? valueInteger,
    FhirBooleanBuilder? valueBoolean,
    FhirDateTimeBuilder? valueDateTime,
    FhirDecimalBuilder? valueDecimal,
    this.subProperty,
    super.disallowExtensions,
  })  : valueX = valueX ??
            valueCode ??
            valueCoding ??
            valueString ??
            valueInteger ??
            valueBoolean ??
            valueDateTime ??
            valueDecimal,
        super(
          objectPath: 'ValueSet.expansion.contains.property',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ValueSetProperty1Builder.empty() => ValueSetProperty1Builder(
        code: FhirCodeBuilder.empty(),
        valueX: FhirCodeBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ValueSetProperty1Builder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ValueSet.expansion.contains.property';
    return ValueSetProperty1Builder(
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
      code: JsonParser.parsePrimitive<FhirCodeBuilder>(
        json,
        'code',
        FhirCodeBuilder.fromJson,
        '$objectPath.code',
      ),
      valueX: JsonParser.parsePolymorphic<ValueXValueSetPropertyBuilder>(
        json,
        {
          'valueCode': FhirCodeBuilder.fromJson,
          'valueCoding': CodingBuilder.fromJson,
          'valueString': FhirStringBuilder.fromJson,
          'valueInteger': FhirIntegerBuilder.fromJson,
          'valueBoolean': FhirBooleanBuilder.fromJson,
          'valueDateTime': FhirDateTimeBuilder.fromJson,
          'valueDecimal': FhirDecimalBuilder.fromJson,
        },
        objectPath,
      ),
      subProperty: (json['subProperty'] as List<dynamic>?)
          ?.map<ValueSetSubPropertyBuilder>(
            (v) => ValueSetSubPropertyBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subProperty',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ValueSetProperty1Builder]
  /// from a [String] or [YamlMap] object
  factory ValueSetProperty1Builder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ValueSetProperty1Builder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ValueSetProperty1Builder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ValueSetProperty1Builder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ValueSetProperty1Builder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ValueSetProperty1Builder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ValueSetProperty1Builder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ValueSetProperty1';

  /// [code]
  /// A code that is a reference to ValueSet.expansion.property.code.
  FhirCodeBuilder? code;

  /// [valueX]
  /// The value of this property.
  ValueXValueSetPropertyBuilder? valueX;

  /// Getter for [valueCode] as a FhirCodeBuilder
  FhirCodeBuilder? get valueCode => valueX?.isAs<FhirCodeBuilder>();

  /// Getter for [valueCoding] as a CodingBuilder
  CodingBuilder? get valueCoding => valueX?.isAs<CodingBuilder>();

  /// Getter for [valueString] as a FhirStringBuilder
  FhirStringBuilder? get valueString => valueX?.isAs<FhirStringBuilder>();

  /// Getter for [valueInteger] as a FhirIntegerBuilder
  FhirIntegerBuilder? get valueInteger => valueX?.isAs<FhirIntegerBuilder>();

  /// Getter for [valueBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get valueBoolean => valueX?.isAs<FhirBooleanBuilder>();

  /// Getter for [valueDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get valueDateTime => valueX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [valueDecimal] as a FhirDecimalBuilder
  FhirDecimalBuilder? get valueDecimal => valueX?.isAs<FhirDecimalBuilder>();

  /// [subProperty]
  /// A subproperty value for this concept.
  List<ValueSetSubPropertyBuilder>? subProperty;

  /// Converts a [ValueSetProperty1Builder]
  /// to [ValueSetProperty1]
  @override
  ValueSetProperty1 build() => ValueSetProperty1.fromJson(toJson());

  /// Converts a [ValueSetProperty1Builder]
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

    addField('subProperty', subProperty);
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
      'subProperty',
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
      case 'valueCode':
        if (valueX is FhirCodeBuilder) {
          fields.add(valueX!);
        }
      case 'valueCoding':
        if (valueX is CodingBuilder) {
          fields.add(valueX!);
        }
      case 'valueString':
        if (valueX is FhirStringBuilder) {
          fields.add(valueX!);
        }
      case 'valueInteger':
        if (valueX is FhirIntegerBuilder) {
          fields.add(valueX!);
        }
      case 'valueBoolean':
        if (valueX is FhirBooleanBuilder) {
          fields.add(valueX!);
        }
      case 'valueDateTime':
        if (valueX is FhirDateTimeBuilder) {
          fields.add(valueX!);
        }
      case 'valueDecimal':
        if (valueX is FhirDecimalBuilder) {
          fields.add(valueX!);
        }
      case 'subProperty':
        if (subProperty != null) {
          fields.addAll(subProperty!);
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
          if (child is FhirCodeBuilder) {
            code = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCodeBuilder.tryParse(stringValue);
              if (converted != null) {
                code = converted;
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
          if (child is ValueXValueSetPropertyBuilder) {
            valueX = child;
            return;
          } else {
            if (child is FhirCodeBuilder) {
              valueX = child;
              return;
            }
            if (child is CodingBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirIntegerBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirBooleanBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDateTimeBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDecimalBuilder) {
              valueX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueCode':
        {
          if (child is FhirCodeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCoding':
        {
          if (child is CodingBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueString':
        {
          if (child is FhirStringBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueInteger':
        {
          if (child is FhirIntegerBuilder) {
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
      case 'valueDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDecimal':
        {
          if (child is FhirDecimalBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subProperty':
        {
          if (child is List<ValueSetSubPropertyBuilder>) {
            // Replace or create new list
            subProperty = child;
            return;
          } else if (child is ValueSetSubPropertyBuilder) {
            // Add single element to existing list or create new list
            subProperty = [
              ...(subProperty ?? []),
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
        return ['FhirCodeBuilder'];
      case 'value':
      case 'valueX':
        return [
          'FhirCodeBuilder',
          'CodingBuilder',
          'FhirStringBuilder',
          'FhirIntegerBuilder',
          'FhirBooleanBuilder',
          'FhirDateTimeBuilder',
          'FhirDecimalBuilder',
        ];
      case 'valueCode':
        return ['FhirCodeBuilder'];
      case 'valueCoding':
        return ['CodingBuilder'];
      case 'valueString':
        return ['FhirStringBuilder'];
      case 'valueInteger':
        return ['FhirIntegerBuilder'];
      case 'valueBoolean':
        return ['FhirBooleanBuilder'];
      case 'valueDateTime':
        return ['FhirDateTimeBuilder'];
      case 'valueDecimal':
        return ['FhirDecimalBuilder'];
      case 'subProperty':
        return ['ValueSetSubPropertyBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ValueSetProperty1Builder]
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
          code = FhirCodeBuilder.empty();
          return;
        }
      case 'value':
      case 'valueX':
      case 'valueCode':
        {
          valueX = FhirCodeBuilder.empty();
          return;
        }
      case 'valueCoding':
        {
          valueX = CodingBuilder.empty();
          return;
        }
      case 'valueString':
        {
          valueX = FhirStringBuilder.empty();
          return;
        }
      case 'valueInteger':
        {
          valueX = FhirIntegerBuilder.empty();
          return;
        }
      case 'valueBoolean':
        {
          valueX = FhirBooleanBuilder.empty();
          return;
        }
      case 'valueDateTime':
        {
          valueX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'valueDecimal':
        {
          valueX = FhirDecimalBuilder.empty();
          return;
        }
      case 'subProperty':
        {
          subProperty = <ValueSetSubPropertyBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ValueSetProperty1Builder clone() => throw UnimplementedError();
  @override
  ValueSetProperty1Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirCodeBuilder? code,
    ValueXValueSetPropertyBuilder? valueX,
    List<ValueSetSubPropertyBuilder>? subProperty,
    FhirCodeBuilder? valueCode,
    CodingBuilder? valueCoding,
    FhirStringBuilder? valueString,
    FhirIntegerBuilder? valueInteger,
    FhirBooleanBuilder? valueBoolean,
    FhirDateTimeBuilder? valueDateTime,
    FhirDecimalBuilder? valueDecimal,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ValueSetProperty1Builder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      valueX: valueX ??
          valueCode ??
          valueCoding ??
          valueString ??
          valueInteger ??
          valueBoolean ??
          valueDateTime ??
          valueDecimal ??
          this.valueX,
      subProperty: subProperty ?? this.subProperty,
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
    if (o is! ValueSetProperty1Builder) {
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
    if (!listEquals<ValueSetSubPropertyBuilder>(
      subProperty,
      o.subProperty,
    )) {
      return false;
    }
    return true;
  }
}

/// [ValueSetSubPropertyBuilder]
/// A subproperty value for this concept.
class ValueSetSubPropertyBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ValueSetSubPropertyBuilder]

  ValueSetSubPropertyBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    ValueXValueSetSubPropertyBuilder? valueX,
    FhirCodeBuilder? valueCode,
    CodingBuilder? valueCoding,
    FhirStringBuilder? valueString,
    FhirIntegerBuilder? valueInteger,
    FhirBooleanBuilder? valueBoolean,
    FhirDateTimeBuilder? valueDateTime,
    FhirDecimalBuilder? valueDecimal,
    super.disallowExtensions,
  })  : valueX = valueX ??
            valueCode ??
            valueCoding ??
            valueString ??
            valueInteger ??
            valueBoolean ??
            valueDateTime ??
            valueDecimal,
        super(
          objectPath: 'ValueSet.expansion.contains.property.subProperty',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ValueSetSubPropertyBuilder.empty() => ValueSetSubPropertyBuilder(
        code: FhirCodeBuilder.empty(),
        valueX: FhirCodeBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ValueSetSubPropertyBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ValueSet.expansion.contains.property.subProperty';
    return ValueSetSubPropertyBuilder(
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
      code: JsonParser.parsePrimitive<FhirCodeBuilder>(
        json,
        'code',
        FhirCodeBuilder.fromJson,
        '$objectPath.code',
      ),
      valueX: JsonParser.parsePolymorphic<ValueXValueSetSubPropertyBuilder>(
        json,
        {
          'valueCode': FhirCodeBuilder.fromJson,
          'valueCoding': CodingBuilder.fromJson,
          'valueString': FhirStringBuilder.fromJson,
          'valueInteger': FhirIntegerBuilder.fromJson,
          'valueBoolean': FhirBooleanBuilder.fromJson,
          'valueDateTime': FhirDateTimeBuilder.fromJson,
          'valueDecimal': FhirDecimalBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [ValueSetSubPropertyBuilder]
  /// from a [String] or [YamlMap] object
  factory ValueSetSubPropertyBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ValueSetSubPropertyBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ValueSetSubPropertyBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ValueSetSubPropertyBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ValueSetSubPropertyBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ValueSetSubPropertyBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ValueSetSubPropertyBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ValueSetSubProperty';

  /// [code]
  /// A code that is a reference to ValueSet.expansion.property.code.
  FhirCodeBuilder? code;

  /// [valueX]
  /// The value of this subproperty.
  ValueXValueSetSubPropertyBuilder? valueX;

  /// Getter for [valueCode] as a FhirCodeBuilder
  FhirCodeBuilder? get valueCode => valueX?.isAs<FhirCodeBuilder>();

  /// Getter for [valueCoding] as a CodingBuilder
  CodingBuilder? get valueCoding => valueX?.isAs<CodingBuilder>();

  /// Getter for [valueString] as a FhirStringBuilder
  FhirStringBuilder? get valueString => valueX?.isAs<FhirStringBuilder>();

  /// Getter for [valueInteger] as a FhirIntegerBuilder
  FhirIntegerBuilder? get valueInteger => valueX?.isAs<FhirIntegerBuilder>();

  /// Getter for [valueBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get valueBoolean => valueX?.isAs<FhirBooleanBuilder>();

  /// Getter for [valueDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get valueDateTime => valueX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [valueDecimal] as a FhirDecimalBuilder
  FhirDecimalBuilder? get valueDecimal => valueX?.isAs<FhirDecimalBuilder>();

  /// Converts a [ValueSetSubPropertyBuilder]
  /// to [ValueSetSubProperty]
  @override
  ValueSetSubProperty build() => ValueSetSubProperty.fromJson(toJson());

  /// Converts a [ValueSetSubPropertyBuilder]
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
      case 'valueCode':
        if (valueX is FhirCodeBuilder) {
          fields.add(valueX!);
        }
      case 'valueCoding':
        if (valueX is CodingBuilder) {
          fields.add(valueX!);
        }
      case 'valueString':
        if (valueX is FhirStringBuilder) {
          fields.add(valueX!);
        }
      case 'valueInteger':
        if (valueX is FhirIntegerBuilder) {
          fields.add(valueX!);
        }
      case 'valueBoolean':
        if (valueX is FhirBooleanBuilder) {
          fields.add(valueX!);
        }
      case 'valueDateTime':
        if (valueX is FhirDateTimeBuilder) {
          fields.add(valueX!);
        }
      case 'valueDecimal':
        if (valueX is FhirDecimalBuilder) {
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
          if (child is FhirCodeBuilder) {
            code = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCodeBuilder.tryParse(stringValue);
              if (converted != null) {
                code = converted;
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
          if (child is ValueXValueSetSubPropertyBuilder) {
            valueX = child;
            return;
          } else {
            if (child is FhirCodeBuilder) {
              valueX = child;
              return;
            }
            if (child is CodingBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirIntegerBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirBooleanBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDateTimeBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDecimalBuilder) {
              valueX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueCode':
        {
          if (child is FhirCodeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCoding':
        {
          if (child is CodingBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueString':
        {
          if (child is FhirStringBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueInteger':
        {
          if (child is FhirIntegerBuilder) {
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
      case 'valueDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDecimal':
        {
          if (child is FhirDecimalBuilder) {
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
        return ['FhirCodeBuilder'];
      case 'value':
      case 'valueX':
        return [
          'FhirCodeBuilder',
          'CodingBuilder',
          'FhirStringBuilder',
          'FhirIntegerBuilder',
          'FhirBooleanBuilder',
          'FhirDateTimeBuilder',
          'FhirDecimalBuilder',
        ];
      case 'valueCode':
        return ['FhirCodeBuilder'];
      case 'valueCoding':
        return ['CodingBuilder'];
      case 'valueString':
        return ['FhirStringBuilder'];
      case 'valueInteger':
        return ['FhirIntegerBuilder'];
      case 'valueBoolean':
        return ['FhirBooleanBuilder'];
      case 'valueDateTime':
        return ['FhirDateTimeBuilder'];
      case 'valueDecimal':
        return ['FhirDecimalBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ValueSetSubPropertyBuilder]
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
          code = FhirCodeBuilder.empty();
          return;
        }
      case 'value':
      case 'valueX':
      case 'valueCode':
        {
          valueX = FhirCodeBuilder.empty();
          return;
        }
      case 'valueCoding':
        {
          valueX = CodingBuilder.empty();
          return;
        }
      case 'valueString':
        {
          valueX = FhirStringBuilder.empty();
          return;
        }
      case 'valueInteger':
        {
          valueX = FhirIntegerBuilder.empty();
          return;
        }
      case 'valueBoolean':
        {
          valueX = FhirBooleanBuilder.empty();
          return;
        }
      case 'valueDateTime':
        {
          valueX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'valueDecimal':
        {
          valueX = FhirDecimalBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ValueSetSubPropertyBuilder clone() => throw UnimplementedError();
  @override
  ValueSetSubPropertyBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirCodeBuilder? code,
    ValueXValueSetSubPropertyBuilder? valueX,
    FhirCodeBuilder? valueCode,
    CodingBuilder? valueCoding,
    FhirStringBuilder? valueString,
    FhirIntegerBuilder? valueInteger,
    FhirBooleanBuilder? valueBoolean,
    FhirDateTimeBuilder? valueDateTime,
    FhirDecimalBuilder? valueDecimal,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ValueSetSubPropertyBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      valueX: valueX ??
          valueCode ??
          valueCoding ??
          valueString ??
          valueInteger ??
          valueBoolean ??
          valueDateTime ??
          valueDecimal ??
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
    if (o is! ValueSetSubPropertyBuilder) {
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

/// [ValueSetScopeBuilder]
/// Description of the semantic space the Value Set Expansion is intended
/// to cover and should further clarify the text in ValueSet.description.
class ValueSetScopeBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ValueSetScopeBuilder]

  ValueSetScopeBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.inclusionCriteria,
    this.exclusionCriteria,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ValueSet.scope',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ValueSetScopeBuilder.empty() => ValueSetScopeBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ValueSetScopeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ValueSet.scope';
    return ValueSetScopeBuilder(
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
      inclusionCriteria: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'inclusionCriteria',
        FhirStringBuilder.fromJson,
        '$objectPath.inclusionCriteria',
      ),
      exclusionCriteria: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'exclusionCriteria',
        FhirStringBuilder.fromJson,
        '$objectPath.exclusionCriteria',
      ),
    );
  }

  /// Deserialize [ValueSetScopeBuilder]
  /// from a [String] or [YamlMap] object
  factory ValueSetScopeBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ValueSetScopeBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ValueSetScopeBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ValueSetScopeBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ValueSetScopeBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ValueSetScopeBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ValueSetScopeBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ValueSetScope';

  /// [inclusionCriteria]
  /// Criteria describing which concepts or codes should be included and why.
  FhirStringBuilder? inclusionCriteria;

  /// [exclusionCriteria]
  /// Criteria describing which concepts or codes should be excluded and why.
  FhirStringBuilder? exclusionCriteria;

  /// Converts a [ValueSetScopeBuilder]
  /// to [ValueSetScope]
  @override
  ValueSetScope build() => ValueSetScope.fromJson(toJson());

  /// Converts a [ValueSetScopeBuilder]
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
    addField('inclusionCriteria', inclusionCriteria);
    addField('exclusionCriteria', exclusionCriteria);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'inclusionCriteria',
      'exclusionCriteria',
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
      case 'inclusionCriteria':
        if (inclusionCriteria != null) {
          fields.add(inclusionCriteria!);
        }
      case 'exclusionCriteria':
        if (exclusionCriteria != null) {
          fields.add(exclusionCriteria!);
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
      case 'inclusionCriteria':
        {
          if (child is FhirStringBuilder) {
            inclusionCriteria = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                inclusionCriteria = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'exclusionCriteria':
        {
          if (child is FhirStringBuilder) {
            exclusionCriteria = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                exclusionCriteria = converted;
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
      case 'inclusionCriteria':
        return ['FhirStringBuilder'];
      case 'exclusionCriteria':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ValueSetScopeBuilder]
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
      case 'inclusionCriteria':
        {
          inclusionCriteria = FhirStringBuilder.empty();
          return;
        }
      case 'exclusionCriteria':
        {
          exclusionCriteria = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ValueSetScopeBuilder clone() => throw UnimplementedError();
  @override
  ValueSetScopeBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? inclusionCriteria,
    FhirStringBuilder? exclusionCriteria,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ValueSetScopeBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      inclusionCriteria: inclusionCriteria ?? this.inclusionCriteria,
      exclusionCriteria: exclusionCriteria ?? this.exclusionCriteria,
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
    if (o is! ValueSetScopeBuilder) {
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
      inclusionCriteria,
      o.inclusionCriteria,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      exclusionCriteria,
      o.exclusionCriteria,
    )) {
      return false;
    }
    return true;
  }
}
