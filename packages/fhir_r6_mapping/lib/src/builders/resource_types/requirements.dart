import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        R5ResourceType,
        Requirements,
        RequirementsStatement,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [RequirementsBuilder]
/// A set of requirements - a list of features or behaviors of designed
/// systems that are necessary to achieve organizational or regulatory
/// goals.
class RequirementsBuilder extends CanonicalResourceBuilder {
  /// Primary constructor for
  /// [RequirementsBuilder]

  RequirementsBuilder({
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
    VersionAlgorithmXRequirementsBuilder? versionAlgorithmX,
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
    this.derivedFrom,
    this.reference,
    this.actor,
    this.statement,
  })  : versionAlgorithmX = versionAlgorithmX ??
            versionAlgorithmString ??
            versionAlgorithmCoding,
        super(
          objectPath: 'Requirements',
          resourceType: R5ResourceType.Requirements,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory RequirementsBuilder.empty() => RequirementsBuilder(
        status: PublicationStatusBuilder.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RequirementsBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Requirements';
    return RequirementsBuilder(
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
          JsonParser.parsePolymorphic<VersionAlgorithmXRequirementsBuilder>(
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
      derivedFrom: JsonParser.parsePrimitiveList<FhirCanonicalBuilder>(
        json,
        'derivedFrom',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.derivedFrom',
      ),
      reference: JsonParser.parsePrimitiveList<FhirUrlBuilder>(
        json,
        'reference',
        FhirUrlBuilder.fromJson,
        '$objectPath.reference',
      ),
      actor: JsonParser.parsePrimitiveList<FhirCanonicalBuilder>(
        json,
        'actor',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.actor',
      ),
      statement: (json['statement'] as List<dynamic>?)
          ?.map<RequirementsStatementBuilder>(
            (v) => RequirementsStatementBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.statement',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [RequirementsBuilder]
  /// from a [String] or [YamlMap] object
  factory RequirementsBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RequirementsBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RequirementsBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RequirementsBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RequirementsBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RequirementsBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return RequirementsBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Requirements';

  /// [identifier]
  /// A formal identifier that is used to identify this Requirements when it
  /// is represented in other formats, or referenced in a specification,
  /// model, design or an instance.
  List<IdentifierBuilder>? identifier;

  /// [versionAlgorithmX]
  /// Indicates the mechanism used to compare versions to determine which is
  /// more current.
  VersionAlgorithmXRequirementsBuilder? versionAlgorithmX;

  /// Getter for [versionAlgorithmString] as a FhirStringBuilder
  FhirStringBuilder? get versionAlgorithmString =>
      versionAlgorithmX?.isAs<FhirStringBuilder>();

  /// Getter for [versionAlgorithmCoding] as a CodingBuilder
  CodingBuilder? get versionAlgorithmCoding =>
      versionAlgorithmX?.isAs<CodingBuilder>();

  /// [name]
  /// A natural language name identifying the Requirements. This name should
  /// be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  FhirStringBuilder? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the Requirements.
  FhirStringBuilder? title;

  /// [purpose]
  /// Explanation of why this Requirements is needed and why it has been
  /// designed as it has.
  FhirMarkdownBuilder? purpose;

  /// [copyright]
  /// A copyright statement relating to the Requirements and/or its contents.
  /// Copyright statements are generally legal restrictions on the use and
  /// publishing of the Requirements.
  FhirMarkdownBuilder? copyright;

  /// [copyrightLabel]
  /// A short string (<50 characters), suitable for inclusion in a page
  /// footer that identifies the copyright holder, effective period, and
  /// optionally whether rights are resctricted. (e.g. 'All rights reserved',
  /// 'Some rights reserved').
  FhirStringBuilder? copyrightLabel;

  /// [derivedFrom]
  /// Another set of Requirements that this set of Requirements builds on and
  /// updates.
  List<FhirCanonicalBuilder>? derivedFrom;

  /// [reference]
  /// A reference to another artifact that created this set of requirements.
  /// This could be a Profile, etc., or external regulation, or business
  /// requirements expressed elsewhere.
  List<FhirUrlBuilder>? reference;

  /// [actor]
  /// An actor these requirements are in regard to.
  List<FhirCanonicalBuilder>? actor;

  /// [statement]
  /// The actual statement of requirement, in markdown format.
  List<RequirementsStatementBuilder>? statement;

  /// Converts a [RequirementsBuilder]
  /// to [Requirements]
  @override
  Requirements build() => Requirements.fromJson(toJson());

  /// Converts a [RequirementsBuilder]
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
    addField('derivedFrom', derivedFrom);
    addField('reference', reference);
    addField('actor', actor);
    addField('statement', statement);
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
      'derivedFrom',
      'reference',
      'actor',
      'statement',
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
      case 'derivedFrom':
        if (derivedFrom != null) {
          fields.addAll(derivedFrom!);
        }
      case 'reference':
        if (reference != null) {
          fields.addAll(reference!);
        }
      case 'actor':
        if (actor != null) {
          fields.addAll(actor!);
        }
      case 'statement':
        if (statement != null) {
          fields.addAll(statement!);
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
          if (child is VersionAlgorithmXRequirementsBuilder) {
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
      case 'derivedFrom':
        {
          if (child is List<FhirCanonicalBuilder>) {
            // Replace or create new list
            derivedFrom = child;
            return;
          } else if (child is FhirCanonicalBuilder) {
            // Add single element to existing list or create new list
            derivedFrom = [
              ...(derivedFrom ?? []),
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
              derivedFrom = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                derivedFrom = [
                  ...(derivedFrom ?? []),
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
      case 'reference':
        {
          if (child is List<FhirUrlBuilder>) {
            // Replace or create new list
            reference = child;
            return;
          } else if (child is FhirUrlBuilder) {
            // Add single element to existing list or create new list
            reference = [
              ...(reference ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirUrlBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirUrlBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              reference = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirUrlBuilder.tryParse(stringValue);
              if (converted != null) {
                reference = [
                  ...(reference ?? []),
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
      case 'actor':
        {
          if (child is List<FhirCanonicalBuilder>) {
            // Replace or create new list
            actor = child;
            return;
          } else if (child is FhirCanonicalBuilder) {
            // Add single element to existing list or create new list
            actor = [
              ...(actor ?? []),
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
              actor = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                actor = [
                  ...(actor ?? []),
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
      case 'statement':
        {
          if (child is List<RequirementsStatementBuilder>) {
            // Replace or create new list
            statement = child;
            return;
          } else if (child is RequirementsStatementBuilder) {
            // Add single element to existing list or create new list
            statement = [
              ...(statement ?? []),
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
      case 'derivedFrom':
        return ['FhirCanonicalBuilder'];
      case 'reference':
        return ['FhirUrlBuilder'];
      case 'actor':
        return ['FhirCanonicalBuilder'];
      case 'statement':
        return ['RequirementsStatementBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [RequirementsBuilder]
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
      case 'derivedFrom':
        {
          derivedFrom = <FhirCanonicalBuilder>[];
          return;
        }
      case 'reference':
        {
          reference = <FhirUrlBuilder>[];
          return;
        }
      case 'actor':
        {
          actor = <FhirCanonicalBuilder>[];
          return;
        }
      case 'statement':
        {
          statement = <RequirementsStatementBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  RequirementsBuilder clone() => throw UnimplementedError();
  @override
  RequirementsBuilder copyWith({
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
    VersionAlgorithmXRequirementsBuilder? versionAlgorithmX,
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
    List<FhirCanonicalBuilder>? derivedFrom,
    List<FhirUrlBuilder>? reference,
    List<FhirCanonicalBuilder>? actor,
    List<RequirementsStatementBuilder>? statement,
    FhirStringBuilder? versionAlgorithmString,
    CodingBuilder? versionAlgorithmCoding,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = RequirementsBuilder(
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
      derivedFrom: derivedFrom ?? this.derivedFrom,
      reference: reference ?? this.reference,
      actor: actor ?? this.actor,
      statement: statement ?? this.statement,
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
    if (o is! RequirementsBuilder) {
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
    if (!listEquals<FhirCanonicalBuilder>(
      derivedFrom,
      o.derivedFrom,
    )) {
      return false;
    }
    if (!listEquals<FhirUrlBuilder>(
      reference,
      o.reference,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonicalBuilder>(
      actor,
      o.actor,
    )) {
      return false;
    }
    if (!listEquals<RequirementsStatementBuilder>(
      statement,
      o.statement,
    )) {
      return false;
    }
    return true;
  }
}

/// [RequirementsStatementBuilder]
/// The actual statement of requirement, in markdown format.
class RequirementsStatementBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [RequirementsStatementBuilder]

  RequirementsStatementBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.key,
    this.label,
    this.conformance,
    this.conditionality,
    this.requirement,
    this.derivedFrom,
    this.parent,
    this.satisfiedBy,
    this.reference,
    this.source,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Requirements.statement',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory RequirementsStatementBuilder.empty() => RequirementsStatementBuilder(
        key: FhirIdBuilder.empty(),
        requirement: FhirMarkdownBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RequirementsStatementBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Requirements.statement';
    return RequirementsStatementBuilder(
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
      key: JsonParser.parsePrimitive<FhirIdBuilder>(
        json,
        'key',
        FhirIdBuilder.fromJson,
        '$objectPath.key',
      ),
      label: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'label',
        FhirStringBuilder.fromJson,
        '$objectPath.label',
      ),
      conformance: JsonParser.parsePrimitiveList<ConformanceExpectationBuilder>(
        json,
        'conformance',
        ConformanceExpectationBuilder.fromJson,
        '$objectPath.conformance',
      ),
      conditionality: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'conditionality',
        FhirBooleanBuilder.fromJson,
        '$objectPath.conditionality',
      ),
      requirement: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'requirement',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.requirement',
      ),
      derivedFrom: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'derivedFrom',
        FhirStringBuilder.fromJson,
        '$objectPath.derivedFrom',
      ),
      parent: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'parent',
        FhirStringBuilder.fromJson,
        '$objectPath.parent',
      ),
      satisfiedBy: JsonParser.parsePrimitiveList<FhirUrlBuilder>(
        json,
        'satisfiedBy',
        FhirUrlBuilder.fromJson,
        '$objectPath.satisfiedBy',
      ),
      reference: JsonParser.parsePrimitiveList<FhirUrlBuilder>(
        json,
        'reference',
        FhirUrlBuilder.fromJson,
        '$objectPath.reference',
      ),
      source: (json['source'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.source',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [RequirementsStatementBuilder]
  /// from a [String] or [YamlMap] object
  factory RequirementsStatementBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RequirementsStatementBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RequirementsStatementBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RequirementsStatementBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RequirementsStatementBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RequirementsStatementBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return RequirementsStatementBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'RequirementsStatement';

  /// [key]
  /// Key that identifies this statement (unique within this resource).
  FhirIdBuilder? key;

  /// [label]
  /// A short human usable label for this statement.
  FhirStringBuilder? label;

  /// [conformance]
  /// A short human usable label for this statement.
  List<ConformanceExpectationBuilder>? conformance;

  /// [conditionality]
  /// This boolean flag is set to true of the text of the requirement is
  /// conditional on something e.g. it includes lanauage like 'if x then y'.
  /// This conditionality flag is introduced for purposes of filtering and
  /// colour highlighting etc.
  FhirBooleanBuilder? conditionality;

  /// [requirement]
  /// The actual requirement for human consumption.
  FhirMarkdownBuilder? requirement;

  /// [derivedFrom]
  /// Another statement on one of the requirements that this requirement
  /// clarifies or restricts.
  FhirStringBuilder? derivedFrom;

  /// [parent]
  /// A larger requirement that this requirement helps to refine and enable.
  FhirStringBuilder? parent;

  /// [satisfiedBy]
  /// A reference to another artifact that satisfies this requirement. This
  /// could be a Profile, extension, or an element in one of those, or a
  /// CapabilityStatement, OperationDefinition, SearchParameter,
  /// CodeSystem(/code), ValueSet, Libary etc.
  List<FhirUrlBuilder>? satisfiedBy;

  /// [reference]
  /// A reference to another artifact that created this requirement. This
  /// could be a Profile, etc., or external regulation, or business
  /// requirements expressed elsewhere.
  List<FhirUrlBuilder>? reference;

  /// [source]
  /// Who asked for this statement to be a requirement. By default, it's
  /// assumed that the publisher knows who it is if it matters.
  List<ReferenceBuilder>? source;

  /// Converts a [RequirementsStatementBuilder]
  /// to [RequirementsStatement]
  @override
  RequirementsStatement build() => RequirementsStatement.fromJson(toJson());

  /// Converts a [RequirementsStatementBuilder]
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
    addField('key', key);
    addField('label', label);
    addField('conformance', conformance);
    addField('conditionality', conditionality);
    addField('requirement', requirement);
    addField('derivedFrom', derivedFrom);
    addField('parent', parent);
    addField('satisfiedBy', satisfiedBy);
    addField('reference', reference);
    addField('source', source);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'key',
      'label',
      'conformance',
      'conditionality',
      'requirement',
      'derivedFrom',
      'parent',
      'satisfiedBy',
      'reference',
      'source',
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
      case 'key':
        if (key != null) {
          fields.add(key!);
        }
      case 'label':
        if (label != null) {
          fields.add(label!);
        }
      case 'conformance':
        if (conformance != null) {
          fields.addAll(conformance!);
        }
      case 'conditionality':
        if (conditionality != null) {
          fields.add(conditionality!);
        }
      case 'requirement':
        if (requirement != null) {
          fields.add(requirement!);
        }
      case 'derivedFrom':
        if (derivedFrom != null) {
          fields.add(derivedFrom!);
        }
      case 'parent':
        if (parent != null) {
          fields.add(parent!);
        }
      case 'satisfiedBy':
        if (satisfiedBy != null) {
          fields.addAll(satisfiedBy!);
        }
      case 'reference':
        if (reference != null) {
          fields.addAll(reference!);
        }
      case 'source':
        if (source != null) {
          fields.addAll(source!);
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
      case 'key':
        {
          if (child is FhirIdBuilder) {
            key = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirIdBuilder.tryParse(stringValue);
              if (converted != null) {
                key = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'label':
        {
          if (child is FhirStringBuilder) {
            label = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                label = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'conformance':
        {
          if (child is List<ConformanceExpectationBuilder>) {
            // Replace or create new list
            conformance = child;
            return;
          } else if (child is ConformanceExpectationBuilder) {
            // Add single element to existing list or create new list
            conformance = [
              ...(conformance ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <ConformanceExpectationBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                // For enums, try to create directly from the string value
                try {
                  final converted = ConformanceExpectationBuilder(stringValue);
                  convertedList.add(converted);
                } catch (e) {
                  // Continue if enum creation fails
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              conformance = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ConformanceExpectationBuilder(stringValue);
                conformance = [
                  ...(conformance ?? []),
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
      case 'conditionality':
        {
          if (child is FhirBooleanBuilder) {
            conditionality = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                conditionality = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
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
      case 'derivedFrom':
        {
          if (child is FhirStringBuilder) {
            derivedFrom = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                derivedFrom = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'parent':
        {
          if (child is FhirStringBuilder) {
            parent = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                parent = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'satisfiedBy':
        {
          if (child is List<FhirUrlBuilder>) {
            // Replace or create new list
            satisfiedBy = child;
            return;
          } else if (child is FhirUrlBuilder) {
            // Add single element to existing list or create new list
            satisfiedBy = [
              ...(satisfiedBy ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirUrlBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirUrlBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              satisfiedBy = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirUrlBuilder.tryParse(stringValue);
              if (converted != null) {
                satisfiedBy = [
                  ...(satisfiedBy ?? []),
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
      case 'reference':
        {
          if (child is List<FhirUrlBuilder>) {
            // Replace or create new list
            reference = child;
            return;
          } else if (child is FhirUrlBuilder) {
            // Add single element to existing list or create new list
            reference = [
              ...(reference ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirUrlBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirUrlBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              reference = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirUrlBuilder.tryParse(stringValue);
              if (converted != null) {
                reference = [
                  ...(reference ?? []),
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
      case 'source':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            source = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            source = [
              ...(source ?? []),
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
      case 'key':
        return ['FhirIdBuilder'];
      case 'label':
        return ['FhirStringBuilder'];
      case 'conformance':
        return ['FhirCodeEnumBuilder'];
      case 'conditionality':
        return ['FhirBooleanBuilder'];
      case 'requirement':
        return ['FhirMarkdownBuilder'];
      case 'derivedFrom':
        return ['FhirStringBuilder'];
      case 'parent':
        return ['FhirStringBuilder'];
      case 'satisfiedBy':
        return ['FhirUrlBuilder'];
      case 'reference':
        return ['FhirUrlBuilder'];
      case 'source':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [RequirementsStatementBuilder]
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
      case 'key':
        {
          key = FhirIdBuilder.empty();
          return;
        }
      case 'label':
        {
          label = FhirStringBuilder.empty();
          return;
        }
      case 'conformance':
        {
          conformance = <ConformanceExpectationBuilder>[];
          return;
        }
      case 'conditionality':
        {
          conditionality = FhirBooleanBuilder.empty();
          return;
        }
      case 'requirement':
        {
          requirement = FhirMarkdownBuilder.empty();
          return;
        }
      case 'derivedFrom':
        {
          derivedFrom = FhirStringBuilder.empty();
          return;
        }
      case 'parent':
        {
          parent = FhirStringBuilder.empty();
          return;
        }
      case 'satisfiedBy':
        {
          satisfiedBy = <FhirUrlBuilder>[];
          return;
        }
      case 'reference':
        {
          reference = <FhirUrlBuilder>[];
          return;
        }
      case 'source':
        {
          source = <ReferenceBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  RequirementsStatementBuilder clone() => throw UnimplementedError();
  @override
  RequirementsStatementBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirIdBuilder? key,
    FhirStringBuilder? label,
    List<ConformanceExpectationBuilder>? conformance,
    FhirBooleanBuilder? conditionality,
    FhirMarkdownBuilder? requirement,
    FhirStringBuilder? derivedFrom,
    FhirStringBuilder? parent,
    List<FhirUrlBuilder>? satisfiedBy,
    List<FhirUrlBuilder>? reference,
    List<ReferenceBuilder>? source,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = RequirementsStatementBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      key: key ?? this.key,
      label: label ?? this.label,
      conformance: conformance ?? this.conformance,
      conditionality: conditionality ?? this.conditionality,
      requirement: requirement ?? this.requirement,
      derivedFrom: derivedFrom ?? this.derivedFrom,
      parent: parent ?? this.parent,
      satisfiedBy: satisfiedBy ?? this.satisfiedBy,
      reference: reference ?? this.reference,
      source: source ?? this.source,
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
    if (o is! RequirementsStatementBuilder) {
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
      key,
      o.key,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      label,
      o.label,
    )) {
      return false;
    }
    if (!listEquals<ConformanceExpectationBuilder>(
      conformance,
      o.conformance,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      conditionality,
      o.conditionality,
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
      derivedFrom,
      o.derivedFrom,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      parent,
      o.parent,
    )) {
      return false;
    }
    if (!listEquals<FhirUrlBuilder>(
      satisfiedBy,
      o.satisfiedBy,
    )) {
      return false;
    }
    if (!listEquals<FhirUrlBuilder>(
      reference,
      o.reference,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      source,
      o.source,
    )) {
      return false;
    }
    return true;
  }
}
