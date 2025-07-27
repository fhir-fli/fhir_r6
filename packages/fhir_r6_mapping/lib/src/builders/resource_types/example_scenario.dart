import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        ExampleScenario,
        ExampleScenarioActor,
        ExampleScenarioAlternative,
        ExampleScenarioContainedInstance,
        ExampleScenarioInstance,
        ExampleScenarioOperation,
        ExampleScenarioProcess,
        ExampleScenarioStep,
        ExampleScenarioVersion,
        R5ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [ExampleScenarioBuilder]
/// Example of workflow instance.
class ExampleScenarioBuilder extends CanonicalResourceBuilder {
  /// Primary constructor for
  /// [ExampleScenarioBuilder]

  ExampleScenarioBuilder({
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
    VersionAlgorithmXExampleScenarioBuilder? versionAlgorithmX,
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
    this.actor,
    this.instance,
    this.process,
  })  : versionAlgorithmX = versionAlgorithmX ??
            versionAlgorithmString ??
            versionAlgorithmCoding,
        super(
          objectPath: 'ExampleScenario',
          resourceType: R5ResourceType.ExampleScenario,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExampleScenarioBuilder.empty() => ExampleScenarioBuilder(
        status: PublicationStatusBuilder.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExampleScenarioBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExampleScenario';
    return ExampleScenarioBuilder(
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
          JsonParser.parsePolymorphic<VersionAlgorithmXExampleScenarioBuilder>(
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
      actor: (json['actor'] as List<dynamic>?)
          ?.map<ExampleScenarioActorBuilder>(
            (v) => ExampleScenarioActorBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.actor',
              },
            ),
          )
          .toList(),
      instance: (json['instance'] as List<dynamic>?)
          ?.map<ExampleScenarioInstanceBuilder>(
            (v) => ExampleScenarioInstanceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.instance',
              },
            ),
          )
          .toList(),
      process: (json['process'] as List<dynamic>?)
          ?.map<ExampleScenarioProcessBuilder>(
            (v) => ExampleScenarioProcessBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.process',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ExampleScenarioBuilder]
  /// from a [String] or [YamlMap] object
  factory ExampleScenarioBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExampleScenarioBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExampleScenarioBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExampleScenarioBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExampleScenarioBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExampleScenarioBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExampleScenarioBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExampleScenario';

  /// [identifier]
  /// A formal identifier that is used to identify this example scenario when
  /// it is represented in other formats, or referenced in a specification,
  /// model, design or an instance.
  List<IdentifierBuilder>? identifier;

  /// [versionAlgorithmX]
  /// Indicates the mechanism used to compare versions to determine which is
  /// more current.
  VersionAlgorithmXExampleScenarioBuilder? versionAlgorithmX;

  /// Getter for [versionAlgorithmString] as a FhirStringBuilder
  FhirStringBuilder? get versionAlgorithmString =>
      versionAlgorithmX?.isAs<FhirStringBuilder>();

  /// Getter for [versionAlgorithmCoding] as a CodingBuilder
  CodingBuilder? get versionAlgorithmCoding =>
      versionAlgorithmX?.isAs<CodingBuilder>();

  /// [name]
  /// Temporarily retained for tooling purposes.
  FhirStringBuilder? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the ExampleScenario.
  FhirStringBuilder? title;

  /// [purpose]
  /// What the example scenario resource is created for. This should not be
  /// used to show the business purpose of the scenario itself, but the
  /// purpose of documenting a scenario.
  FhirMarkdownBuilder? purpose;

  /// [copyright]
  /// A copyright statement relating to the example scenario and/or its
  /// contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the example scenario.
  FhirMarkdownBuilder? copyright;

  /// [copyrightLabel]
  /// A short string (<50 characters), suitable for inclusion in a page
  /// footer that identifies the copyright holder, effective period, and
  /// optionally whether rights are resctricted. (e.g. 'All rights reserved',
  /// 'Some rights reserved').
  FhirStringBuilder? copyrightLabel;

  /// [actor]
  /// A system or person who shares or receives an instance within the
  /// scenario.
  List<ExampleScenarioActorBuilder>? actor;

  /// [instance]
  /// A single data collection that is shared as part of the scenario.
  List<ExampleScenarioInstanceBuilder>? instance;

  /// [process]
  /// A group of operations that represents a significant step within a
  /// scenario.
  List<ExampleScenarioProcessBuilder>? process;

  /// Converts a [ExampleScenarioBuilder]
  /// to [ExampleScenario]
  @override
  ExampleScenario build() => ExampleScenario.fromJson(toJson());

  /// Converts a [ExampleScenarioBuilder]
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
    addField('actor', actor);
    addField('instance', instance);
    addField('process', process);
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
      'actor',
      'instance',
      'process',
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
      case 'actor':
        if (actor != null) {
          fields.addAll(actor!);
        }
      case 'instance':
        if (instance != null) {
          fields.addAll(instance!);
        }
      case 'process':
        if (process != null) {
          fields.addAll(process!);
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
          if (child is VersionAlgorithmXExampleScenarioBuilder) {
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
      case 'actor':
        {
          if (child is List<ExampleScenarioActorBuilder>) {
            // Replace or create new list
            actor = child;
            return;
          } else if (child is ExampleScenarioActorBuilder) {
            // Add single element to existing list or create new list
            actor = [
              ...(actor ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'instance':
        {
          if (child is List<ExampleScenarioInstanceBuilder>) {
            // Replace or create new list
            instance = child;
            return;
          } else if (child is ExampleScenarioInstanceBuilder) {
            // Add single element to existing list or create new list
            instance = [
              ...(instance ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'process':
        {
          if (child is List<ExampleScenarioProcessBuilder>) {
            // Replace or create new list
            process = child;
            return;
          } else if (child is ExampleScenarioProcessBuilder) {
            // Add single element to existing list or create new list
            process = [
              ...(process ?? []),
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
      case 'actor':
        return ['ExampleScenarioActorBuilder'];
      case 'instance':
        return ['ExampleScenarioInstanceBuilder'];
      case 'process':
        return ['ExampleScenarioProcessBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExampleScenarioBuilder]
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
      case 'actor':
        {
          actor = <ExampleScenarioActorBuilder>[];
          return;
        }
      case 'instance':
        {
          instance = <ExampleScenarioInstanceBuilder>[];
          return;
        }
      case 'process':
        {
          process = <ExampleScenarioProcessBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ExampleScenarioBuilder clone() => throw UnimplementedError();
  @override
  ExampleScenarioBuilder copyWith({
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
    VersionAlgorithmXExampleScenarioBuilder? versionAlgorithmX,
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
    List<ExampleScenarioActorBuilder>? actor,
    List<ExampleScenarioInstanceBuilder>? instance,
    List<ExampleScenarioProcessBuilder>? process,
    FhirStringBuilder? versionAlgorithmString,
    CodingBuilder? versionAlgorithmCoding,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = ExampleScenarioBuilder(
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
      actor: actor ?? this.actor,
      instance: instance ?? this.instance,
      process: process ?? this.process,
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
    if (o is! ExampleScenarioBuilder) {
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
    if (!listEquals<ExampleScenarioActorBuilder>(
      actor,
      o.actor,
    )) {
      return false;
    }
    if (!listEquals<ExampleScenarioInstanceBuilder>(
      instance,
      o.instance,
    )) {
      return false;
    }
    if (!listEquals<ExampleScenarioProcessBuilder>(
      process,
      o.process,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExampleScenarioActorBuilder]
/// A system or person who shares or receives an instance within the
/// scenario.
class ExampleScenarioActorBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExampleScenarioActorBuilder]

  ExampleScenarioActorBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.key,
    this.type,
    this.title,
    this.description,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ExampleScenario.actor',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExampleScenarioActorBuilder.empty() => ExampleScenarioActorBuilder(
        key: FhirStringBuilder.empty(),
        type: ExampleScenarioActorTypeBuilder.values.first,
        title: FhirStringBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExampleScenarioActorBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExampleScenario.actor';
    return ExampleScenarioActorBuilder(
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
      key: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'key',
        FhirStringBuilder.fromJson,
        '$objectPath.key',
      ),
      type: JsonParser.parsePrimitive<ExampleScenarioActorTypeBuilder>(
        json,
        'type',
        ExampleScenarioActorTypeBuilder.fromJson,
        '$objectPath.type',
      ),
      title: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'title',
        FhirStringBuilder.fromJson,
        '$objectPath.title',
      ),
      description: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'description',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.description',
      ),
    );
  }

  /// Deserialize [ExampleScenarioActorBuilder]
  /// from a [String] or [YamlMap] object
  factory ExampleScenarioActorBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExampleScenarioActorBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExampleScenarioActorBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExampleScenarioActorBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExampleScenarioActorBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExampleScenarioActorBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExampleScenarioActorBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExampleScenarioActor';

  /// [key]
  /// A unique string within the scenario that is used to reference the
  /// actor.
  FhirStringBuilder? key;

  /// [type]
  /// The category of actor - person or system.
  ExampleScenarioActorTypeBuilder? type;

  /// [title]
  /// The human-readable name for the actor used when rendering the scenario.
  FhirStringBuilder? title;

  /// [description]
  /// An explanation of who/what the actor is and its role in the scenario.
  FhirMarkdownBuilder? description;

  /// Converts a [ExampleScenarioActorBuilder]
  /// to [ExampleScenarioActor]
  @override
  ExampleScenarioActor build() => ExampleScenarioActor.fromJson(toJson());

  /// Converts a [ExampleScenarioActorBuilder]
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
    addField('type', type);
    addField('title', title);
    addField('description', description);
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
      'type',
      'title',
      'description',
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
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
          if (child is FhirStringBuilder) {
            key = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
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
      case 'type':
        {
          if (child is ExampleScenarioActorTypeBuilder) {
            type = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ExampleScenarioActorTypeBuilder(stringValue);
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
        return ['FhirStringBuilder'];
      case 'type':
        return ['FhirCodeEnumBuilder'];
      case 'title':
        return ['FhirStringBuilder'];
      case 'description':
        return ['FhirMarkdownBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExampleScenarioActorBuilder]
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
          key = FhirStringBuilder.empty();
          return;
        }
      case 'type':
        {
          type = ExampleScenarioActorTypeBuilder.empty();
          return;
        }
      case 'title':
        {
          title = FhirStringBuilder.empty();
          return;
        }
      case 'description':
        {
          description = FhirMarkdownBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ExampleScenarioActorBuilder clone() => throw UnimplementedError();
  @override
  ExampleScenarioActorBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? key,
    ExampleScenarioActorTypeBuilder? type,
    FhirStringBuilder? title,
    FhirMarkdownBuilder? description,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExampleScenarioActorBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      key: key ?? this.key,
      type: type ?? this.type,
      title: title ?? this.title,
      description: description ?? this.description,
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
    if (o is! ExampleScenarioActorBuilder) {
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
      type,
      o.type,
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
      description,
      o.description,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExampleScenarioInstanceBuilder]
/// A single data collection that is shared as part of the scenario.
class ExampleScenarioInstanceBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExampleScenarioInstanceBuilder]

  ExampleScenarioInstanceBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.key,
    this.structureType,
    this.structureVersion,
    StructureProfileXExampleScenarioInstanceBuilder? structureProfileX,
    FhirCanonicalBuilder? structureProfileCanonical,
    FhirUriBuilder? structureProfileUri,
    this.title,
    this.description,
    this.content,
    this.version,
    this.containedInstance,
    super.disallowExtensions,
  })  : structureProfileX = structureProfileX ??
            structureProfileCanonical ??
            structureProfileUri,
        super(
          objectPath: 'ExampleScenario.instance',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExampleScenarioInstanceBuilder.empty() =>
      ExampleScenarioInstanceBuilder(
        key: FhirStringBuilder.empty(),
        structureType: CodingBuilder.empty(),
        title: FhirStringBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExampleScenarioInstanceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExampleScenario.instance';
    return ExampleScenarioInstanceBuilder(
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
      key: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'key',
        FhirStringBuilder.fromJson,
        '$objectPath.key',
      ),
      structureType: JsonParser.parseObject<CodingBuilder>(
        json,
        'structureType',
        CodingBuilder.fromJson,
        '$objectPath.structureType',
      ),
      structureVersion: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'structureVersion',
        FhirStringBuilder.fromJson,
        '$objectPath.structureVersion',
      ),
      structureProfileX: JsonParser.parsePolymorphic<
          StructureProfileXExampleScenarioInstanceBuilder>(
        json,
        {
          'structureProfileCanonical': FhirCanonicalBuilder.fromJson,
          'structureProfileUri': FhirUriBuilder.fromJson,
        },
        objectPath,
      ),
      title: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'title',
        FhirStringBuilder.fromJson,
        '$objectPath.title',
      ),
      description: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'description',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.description',
      ),
      content: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'content',
        ReferenceBuilder.fromJson,
        '$objectPath.content',
      ),
      version: (json['version'] as List<dynamic>?)
          ?.map<ExampleScenarioVersionBuilder>(
            (v) => ExampleScenarioVersionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.version',
              },
            ),
          )
          .toList(),
      containedInstance: (json['containedInstance'] as List<dynamic>?)
          ?.map<ExampleScenarioContainedInstanceBuilder>(
            (v) => ExampleScenarioContainedInstanceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.containedInstance',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ExampleScenarioInstanceBuilder]
  /// from a [String] or [YamlMap] object
  factory ExampleScenarioInstanceBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExampleScenarioInstanceBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExampleScenarioInstanceBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExampleScenarioInstanceBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExampleScenarioInstanceBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExampleScenarioInstanceBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExampleScenarioInstanceBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExampleScenarioInstance';

  /// [key]
  /// A unique string within the scenario that is used to reference the
  /// instance.
  FhirStringBuilder? key;

  /// [structureType]
  /// A code indicating the kind of data structure (FHIR resource or some
  /// other standard) this is an instance of.
  CodingBuilder? structureType;

  /// [structureVersion]
  /// Conveys the version of the data structure instantiated. I.e. what
  /// release of FHIR, X12, OpenEHR, etc. is instance compliant with.
  FhirStringBuilder? structureVersion;

  /// [structureProfileX]
  /// Refers to a profile, template or other ruleset the instance adheres to.
  StructureProfileXExampleScenarioInstanceBuilder? structureProfileX;

  /// Getter for [structureProfileCanonical] as a FhirCanonicalBuilder
  FhirCanonicalBuilder? get structureProfileCanonical =>
      structureProfileX?.isAs<FhirCanonicalBuilder>();

  /// Getter for [structureProfileUri] as a FhirUriBuilder
  FhirUriBuilder? get structureProfileUri =>
      structureProfileX?.isAs<FhirUriBuilder>();

  /// [title]
  /// A short descriptive label the instance to be used in tables or
  /// diagrams.
  FhirStringBuilder? title;

  /// [description]
  /// An explanation of what the instance contains and what it's for.
  FhirMarkdownBuilder? description;

  /// [content]
  /// Points to an instance (typically an example) that shows the data that
  /// would corespond to this instance.
  ReferenceBuilder? content;

  /// [version]
  /// Represents the instance as it was at a specific time-point.
  List<ExampleScenarioVersionBuilder>? version;

  /// [containedInstance]
  /// References to other instances that can be found within this instance
  /// (e.g. the observations contained in a bundle).
  List<ExampleScenarioContainedInstanceBuilder>? containedInstance;

  /// Converts a [ExampleScenarioInstanceBuilder]
  /// to [ExampleScenarioInstance]
  @override
  ExampleScenarioInstance build() => ExampleScenarioInstance.fromJson(toJson());

  /// Converts a [ExampleScenarioInstanceBuilder]
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
    addField('structureType', structureType);
    addField('structureVersion', structureVersion);
    if (structureProfileX != null) {
      final fhirType = structureProfileX!.fhirType;
      addField(
        'structureProfile${fhirType.capitalizeFirstLetter()}',
        structureProfileX,
      );
    }

    addField('title', title);
    addField('description', description);
    addField('content', content);
    addField('version', version);
    addField('containedInstance', containedInstance);
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
      'structureType',
      'structureVersion',
      'structureProfileX',
      'title',
      'description',
      'content',
      'version',
      'containedInstance',
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
      case 'structureType':
        if (structureType != null) {
          fields.add(structureType!);
        }
      case 'structureVersion':
        if (structureVersion != null) {
          fields.add(structureVersion!);
        }
      case 'structureProfile':
        if (structureProfileX != null) {
          fields.add(structureProfileX!);
        }
      case 'structureProfileX':
        if (structureProfileX != null) {
          fields.add(structureProfileX!);
        }
      case 'structureProfileCanonical':
        if (structureProfileX is FhirCanonicalBuilder) {
          fields.add(structureProfileX!);
        }
      case 'structureProfileUri':
        if (structureProfileX is FhirUriBuilder) {
          fields.add(structureProfileX!);
        }
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'content':
        if (content != null) {
          fields.add(content!);
        }
      case 'version':
        if (version != null) {
          fields.addAll(version!);
        }
      case 'containedInstance':
        if (containedInstance != null) {
          fields.addAll(containedInstance!);
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
          if (child is FhirStringBuilder) {
            key = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
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
      case 'structureType':
        {
          if (child is CodingBuilder) {
            structureType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'structureVersion':
        {
          if (child is FhirStringBuilder) {
            structureVersion = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                structureVersion = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'structureProfile':
      case 'structureProfileX':
        {
          if (child is StructureProfileXExampleScenarioInstanceBuilder) {
            structureProfileX = child;
            return;
          } else {
            if (child is FhirCanonicalBuilder) {
              structureProfileX = child;
              return;
            }
            if (child is FhirUriBuilder) {
              structureProfileX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'structureProfileCanonical':
        {
          if (child is FhirCanonicalBuilder) {
            structureProfileX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'structureProfileUri':
        {
          if (child is FhirUriBuilder) {
            structureProfileX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
      case 'content':
        {
          if (child is ReferenceBuilder) {
            content = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'version':
        {
          if (child is List<ExampleScenarioVersionBuilder>) {
            // Replace or create new list
            version = child;
            return;
          } else if (child is ExampleScenarioVersionBuilder) {
            // Add single element to existing list or create new list
            version = [
              ...(version ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'containedInstance':
        {
          if (child is List<ExampleScenarioContainedInstanceBuilder>) {
            // Replace or create new list
            containedInstance = child;
            return;
          } else if (child is ExampleScenarioContainedInstanceBuilder) {
            // Add single element to existing list or create new list
            containedInstance = [
              ...(containedInstance ?? []),
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
        return ['FhirStringBuilder'];
      case 'structureType':
        return ['CodingBuilder'];
      case 'structureVersion':
        return ['FhirStringBuilder'];
      case 'structureProfile':
      case 'structureProfileX':
        return [
          'FhirCanonicalBuilder',
          'FhirUriBuilder',
        ];
      case 'structureProfileCanonical':
        return ['FhirCanonicalBuilder'];
      case 'structureProfileUri':
        return ['FhirUriBuilder'];
      case 'title':
        return ['FhirStringBuilder'];
      case 'description':
        return ['FhirMarkdownBuilder'];
      case 'content':
        return ['ReferenceBuilder'];
      case 'version':
        return ['ExampleScenarioVersionBuilder'];
      case 'containedInstance':
        return ['ExampleScenarioContainedInstanceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExampleScenarioInstanceBuilder]
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
          key = FhirStringBuilder.empty();
          return;
        }
      case 'structureType':
        {
          structureType = CodingBuilder.empty();
          return;
        }
      case 'structureVersion':
        {
          structureVersion = FhirStringBuilder.empty();
          return;
        }
      case 'structureProfile':
      case 'structureProfileX':
      case 'structureProfileCanonical':
        {
          structureProfileX = FhirCanonicalBuilder.empty();
          return;
        }
      case 'structureProfileUri':
        {
          structureProfileX = FhirUriBuilder.empty();
          return;
        }
      case 'title':
        {
          title = FhirStringBuilder.empty();
          return;
        }
      case 'description':
        {
          description = FhirMarkdownBuilder.empty();
          return;
        }
      case 'content':
        {
          content = ReferenceBuilder.empty();
          return;
        }
      case 'version':
        {
          version = <ExampleScenarioVersionBuilder>[];
          return;
        }
      case 'containedInstance':
        {
          containedInstance = <ExampleScenarioContainedInstanceBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ExampleScenarioInstanceBuilder clone() => throw UnimplementedError();
  @override
  ExampleScenarioInstanceBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? key,
    CodingBuilder? structureType,
    FhirStringBuilder? structureVersion,
    StructureProfileXExampleScenarioInstanceBuilder? structureProfileX,
    FhirStringBuilder? title,
    FhirMarkdownBuilder? description,
    ReferenceBuilder? content,
    List<ExampleScenarioVersionBuilder>? version,
    List<ExampleScenarioContainedInstanceBuilder>? containedInstance,
    FhirCanonicalBuilder? structureProfileCanonical,
    FhirUriBuilder? structureProfileUri,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExampleScenarioInstanceBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      key: key ?? this.key,
      structureType: structureType ?? this.structureType,
      structureVersion: structureVersion ?? this.structureVersion,
      structureProfileX: structureProfileX ??
          structureProfileCanonical ??
          structureProfileUri ??
          this.structureProfileX,
      title: title ?? this.title,
      description: description ?? this.description,
      content: content ?? this.content,
      version: version ?? this.version,
      containedInstance: containedInstance ?? this.containedInstance,
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
    if (o is! ExampleScenarioInstanceBuilder) {
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
      structureType,
      o.structureType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      structureVersion,
      o.structureVersion,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      structureProfileX,
      o.structureProfileX,
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
      description,
      o.description,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      content,
      o.content,
    )) {
      return false;
    }
    if (!listEquals<ExampleScenarioVersionBuilder>(
      version,
      o.version,
    )) {
      return false;
    }
    if (!listEquals<ExampleScenarioContainedInstanceBuilder>(
      containedInstance,
      o.containedInstance,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExampleScenarioVersionBuilder]
/// Represents the instance as it was at a specific time-point.
class ExampleScenarioVersionBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExampleScenarioVersionBuilder]

  ExampleScenarioVersionBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.key,
    this.title,
    this.description,
    this.content,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ExampleScenario.instance.version',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExampleScenarioVersionBuilder.empty() =>
      ExampleScenarioVersionBuilder(
        key: FhirStringBuilder.empty(),
        title: FhirStringBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExampleScenarioVersionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExampleScenario.instance.version';
    return ExampleScenarioVersionBuilder(
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
      key: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'key',
        FhirStringBuilder.fromJson,
        '$objectPath.key',
      ),
      title: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'title',
        FhirStringBuilder.fromJson,
        '$objectPath.title',
      ),
      description: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'description',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.description',
      ),
      content: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'content',
        ReferenceBuilder.fromJson,
        '$objectPath.content',
      ),
    );
  }

  /// Deserialize [ExampleScenarioVersionBuilder]
  /// from a [String] or [YamlMap] object
  factory ExampleScenarioVersionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExampleScenarioVersionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExampleScenarioVersionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExampleScenarioVersionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExampleScenarioVersionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExampleScenarioVersionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExampleScenarioVersionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExampleScenarioVersion';

  /// [key]
  /// A unique string within the instance that is used to reference the
  /// version of the instance.
  FhirStringBuilder? key;

  /// [title]
  /// A short descriptive label the version to be used in tables or diagrams.
  FhirStringBuilder? title;

  /// [description]
  /// An explanation of what this specific version of the instance contains
  /// and represents.
  FhirMarkdownBuilder? description;

  /// [content]
  /// Points to an instance (typically an example) that shows the data that
  /// would flow at this point in the scenario.
  ReferenceBuilder? content;

  /// Converts a [ExampleScenarioVersionBuilder]
  /// to [ExampleScenarioVersion]
  @override
  ExampleScenarioVersion build() => ExampleScenarioVersion.fromJson(toJson());

  /// Converts a [ExampleScenarioVersionBuilder]
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
    addField('title', title);
    addField('description', description);
    addField('content', content);
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
      'title',
      'description',
      'content',
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
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'content':
        if (content != null) {
          fields.add(content!);
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
          if (child is FhirStringBuilder) {
            key = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
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
      case 'content':
        {
          if (child is ReferenceBuilder) {
            content = child;
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
        return ['FhirStringBuilder'];
      case 'title':
        return ['FhirStringBuilder'];
      case 'description':
        return ['FhirMarkdownBuilder'];
      case 'content':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExampleScenarioVersionBuilder]
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
          key = FhirStringBuilder.empty();
          return;
        }
      case 'title':
        {
          title = FhirStringBuilder.empty();
          return;
        }
      case 'description':
        {
          description = FhirMarkdownBuilder.empty();
          return;
        }
      case 'content':
        {
          content = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ExampleScenarioVersionBuilder clone() => throw UnimplementedError();
  @override
  ExampleScenarioVersionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? key,
    FhirStringBuilder? title,
    FhirMarkdownBuilder? description,
    ReferenceBuilder? content,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExampleScenarioVersionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      key: key ?? this.key,
      title: title ?? this.title,
      description: description ?? this.description,
      content: content ?? this.content,
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
    if (o is! ExampleScenarioVersionBuilder) {
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
      title,
      o.title,
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
      content,
      o.content,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExampleScenarioContainedInstanceBuilder]
/// References to other instances that can be found within this instance
/// (e.g. the observations contained in a bundle).
class ExampleScenarioContainedInstanceBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExampleScenarioContainedInstanceBuilder]

  ExampleScenarioContainedInstanceBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.instanceReference,
    this.versionReference,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ExampleScenario.instance.containedInstance',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExampleScenarioContainedInstanceBuilder.empty() =>
      ExampleScenarioContainedInstanceBuilder(
        instanceReference: FhirStringBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExampleScenarioContainedInstanceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExampleScenario.instance.containedInstance';
    return ExampleScenarioContainedInstanceBuilder(
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
      instanceReference: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'instanceReference',
        FhirStringBuilder.fromJson,
        '$objectPath.instanceReference',
      ),
      versionReference: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'versionReference',
        FhirStringBuilder.fromJson,
        '$objectPath.versionReference',
      ),
    );
  }

  /// Deserialize [ExampleScenarioContainedInstanceBuilder]
  /// from a [String] or [YamlMap] object
  factory ExampleScenarioContainedInstanceBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExampleScenarioContainedInstanceBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExampleScenarioContainedInstanceBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExampleScenarioContainedInstanceBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExampleScenarioContainedInstanceBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExampleScenarioContainedInstanceBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExampleScenarioContainedInstanceBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExampleScenarioContainedInstance';

  /// [instanceReference]
  /// A reference to the key of an instance found within this one.
  FhirStringBuilder? instanceReference;

  /// [versionReference]
  /// A reference to the key of a specific version of an instance in this
  /// instance.
  FhirStringBuilder? versionReference;

  /// Converts a [ExampleScenarioContainedInstanceBuilder]
  /// to [ExampleScenarioContainedInstance]
  @override
  ExampleScenarioContainedInstance build() =>
      ExampleScenarioContainedInstance.fromJson(toJson());

  /// Converts a [ExampleScenarioContainedInstanceBuilder]
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
    addField('instanceReference', instanceReference);
    addField('versionReference', versionReference);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'instanceReference',
      'versionReference',
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
      case 'instanceReference':
        if (instanceReference != null) {
          fields.add(instanceReference!);
        }
      case 'versionReference':
        if (versionReference != null) {
          fields.add(versionReference!);
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
      case 'instanceReference':
        {
          if (child is FhirStringBuilder) {
            instanceReference = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                instanceReference = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'versionReference':
        {
          if (child is FhirStringBuilder) {
            versionReference = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                versionReference = converted;
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
      case 'instanceReference':
        return ['FhirStringBuilder'];
      case 'versionReference':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExampleScenarioContainedInstanceBuilder]
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
      case 'instanceReference':
        {
          instanceReference = FhirStringBuilder.empty();
          return;
        }
      case 'versionReference':
        {
          versionReference = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ExampleScenarioContainedInstanceBuilder clone() => throw UnimplementedError();
  @override
  ExampleScenarioContainedInstanceBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? instanceReference,
    FhirStringBuilder? versionReference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExampleScenarioContainedInstanceBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      instanceReference: instanceReference ?? this.instanceReference,
      versionReference: versionReference ?? this.versionReference,
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
    if (o is! ExampleScenarioContainedInstanceBuilder) {
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
      instanceReference,
      o.instanceReference,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      versionReference,
      o.versionReference,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExampleScenarioProcessBuilder]
/// A group of operations that represents a significant step within a
/// scenario.
class ExampleScenarioProcessBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExampleScenarioProcessBuilder]

  ExampleScenarioProcessBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.title,
    this.description,
    this.preConditions,
    this.postConditions,
    this.step,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ExampleScenario.process',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExampleScenarioProcessBuilder.empty() =>
      ExampleScenarioProcessBuilder(
        title: FhirStringBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExampleScenarioProcessBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExampleScenario.process';
    return ExampleScenarioProcessBuilder(
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
      title: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'title',
        FhirStringBuilder.fromJson,
        '$objectPath.title',
      ),
      description: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'description',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.description',
      ),
      preConditions: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'preConditions',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.preConditions',
      ),
      postConditions: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'postConditions',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.postConditions',
      ),
      step: (json['step'] as List<dynamic>?)
          ?.map<ExampleScenarioStepBuilder>(
            (v) => ExampleScenarioStepBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.step',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ExampleScenarioProcessBuilder]
  /// from a [String] or [YamlMap] object
  factory ExampleScenarioProcessBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExampleScenarioProcessBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExampleScenarioProcessBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExampleScenarioProcessBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExampleScenarioProcessBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExampleScenarioProcessBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExampleScenarioProcessBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExampleScenarioProcess';

  /// [title]
  /// A short descriptive label the process to be used in tables or diagrams.
  FhirStringBuilder? title;

  /// [description]
  /// An explanation of what the process represents and what it does.
  FhirMarkdownBuilder? description;

  /// [preConditions]
  /// Description of the initial state of the actors, environment and data
  /// before the process starts.
  FhirMarkdownBuilder? preConditions;

  /// [postConditions]
  /// Description of the final state of the actors, environment and data
  /// after the process has been successfully completed.
  FhirMarkdownBuilder? postConditions;

  /// [step]
  /// A significant action that occurs as part of the process.
  List<ExampleScenarioStepBuilder>? step;

  /// Converts a [ExampleScenarioProcessBuilder]
  /// to [ExampleScenarioProcess]
  @override
  ExampleScenarioProcess build() => ExampleScenarioProcess.fromJson(toJson());

  /// Converts a [ExampleScenarioProcessBuilder]
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
    addField('title', title);
    addField('description', description);
    addField('preConditions', preConditions);
    addField('postConditions', postConditions);
    addField('step', step);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'title',
      'description',
      'preConditions',
      'postConditions',
      'step',
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
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'preConditions':
        if (preConditions != null) {
          fields.add(preConditions!);
        }
      case 'postConditions':
        if (postConditions != null) {
          fields.add(postConditions!);
        }
      case 'step':
        if (step != null) {
          fields.addAll(step!);
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
      case 'preConditions':
        {
          if (child is FhirMarkdownBuilder) {
            preConditions = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                preConditions = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'postConditions':
        {
          if (child is FhirMarkdownBuilder) {
            postConditions = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                postConditions = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'step':
        {
          if (child is List<ExampleScenarioStepBuilder>) {
            // Replace or create new list
            step = child;
            return;
          } else if (child is ExampleScenarioStepBuilder) {
            // Add single element to existing list or create new list
            step = [
              ...(step ?? []),
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
      case 'title':
        return ['FhirStringBuilder'];
      case 'description':
        return ['FhirMarkdownBuilder'];
      case 'preConditions':
        return ['FhirMarkdownBuilder'];
      case 'postConditions':
        return ['FhirMarkdownBuilder'];
      case 'step':
        return ['ExampleScenarioStepBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExampleScenarioProcessBuilder]
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
      case 'title':
        {
          title = FhirStringBuilder.empty();
          return;
        }
      case 'description':
        {
          description = FhirMarkdownBuilder.empty();
          return;
        }
      case 'preConditions':
        {
          preConditions = FhirMarkdownBuilder.empty();
          return;
        }
      case 'postConditions':
        {
          postConditions = FhirMarkdownBuilder.empty();
          return;
        }
      case 'step':
        {
          step = <ExampleScenarioStepBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ExampleScenarioProcessBuilder clone() => throw UnimplementedError();
  @override
  ExampleScenarioProcessBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? title,
    FhirMarkdownBuilder? description,
    FhirMarkdownBuilder? preConditions,
    FhirMarkdownBuilder? postConditions,
    List<ExampleScenarioStepBuilder>? step,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExampleScenarioProcessBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      title: title ?? this.title,
      description: description ?? this.description,
      preConditions: preConditions ?? this.preConditions,
      postConditions: postConditions ?? this.postConditions,
      step: step ?? this.step,
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
    if (o is! ExampleScenarioProcessBuilder) {
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
      title,
      o.title,
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
      preConditions,
      o.preConditions,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      postConditions,
      o.postConditions,
    )) {
      return false;
    }
    if (!listEquals<ExampleScenarioStepBuilder>(
      step,
      o.step,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExampleScenarioStepBuilder]
/// A significant action that occurs as part of the process.
class ExampleScenarioStepBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExampleScenarioStepBuilder]

  ExampleScenarioStepBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.number,
    this.process,
    this.workflow,
    this.operation,
    this.alternative,
    this.pause,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ExampleScenario.process.step',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExampleScenarioStepBuilder.empty() => ExampleScenarioStepBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExampleScenarioStepBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExampleScenario.process.step';
    return ExampleScenarioStepBuilder(
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
      number: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'number',
        FhirStringBuilder.fromJson,
        '$objectPath.number',
      ),
      process: JsonParser.parseObject<ExampleScenarioProcessBuilder>(
        json,
        'process',
        ExampleScenarioProcessBuilder.fromJson,
        '$objectPath.process',
      ),
      workflow: JsonParser.parsePrimitive<FhirCanonicalBuilder>(
        json,
        'workflow',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.workflow',
      ),
      operation: JsonParser.parseObject<ExampleScenarioOperationBuilder>(
        json,
        'operation',
        ExampleScenarioOperationBuilder.fromJson,
        '$objectPath.operation',
      ),
      alternative: (json['alternative'] as List<dynamic>?)
          ?.map<ExampleScenarioAlternativeBuilder>(
            (v) => ExampleScenarioAlternativeBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.alternative',
              },
            ),
          )
          .toList(),
      pause: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'pause',
        FhirBooleanBuilder.fromJson,
        '$objectPath.pause',
      ),
    );
  }

  /// Deserialize [ExampleScenarioStepBuilder]
  /// from a [String] or [YamlMap] object
  factory ExampleScenarioStepBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExampleScenarioStepBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExampleScenarioStepBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExampleScenarioStepBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExampleScenarioStepBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExampleScenarioStepBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExampleScenarioStepBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExampleScenarioStep';

  /// [number]
  /// The sequential number of the step, e.g. 1.2.5.
  FhirStringBuilder? number;

  /// [process]
  /// Indicates that the step is a complex sub-process with its own steps.
  ExampleScenarioProcessBuilder? process;

  /// [workflow]
  /// Indicates that the step is defined by a seaparate scenario instance.
  FhirCanonicalBuilder? workflow;

  /// [operation]
  /// The step represents a single operation invoked on receiver by sender.
  ExampleScenarioOperationBuilder? operation;

  /// [alternative]
  /// Indicates an alternative step that can be taken instead of the
  /// sub-process, scenario or operation. E.g. to represent
  /// non-happy-path/exceptional/atypical circumstances.
  List<ExampleScenarioAlternativeBuilder>? alternative;

  /// [pause]
  /// If true, indicates that, following this step, there is a pause in the
  /// flow and the subsequent step will occur at some later time (triggered
  /// by some event).
  FhirBooleanBuilder? pause;

  /// Converts a [ExampleScenarioStepBuilder]
  /// to [ExampleScenarioStep]
  @override
  ExampleScenarioStep build() => ExampleScenarioStep.fromJson(toJson());

  /// Converts a [ExampleScenarioStepBuilder]
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
    addField('number', number);
    addField('process', process);
    addField('workflow', workflow);
    addField('operation', operation);
    addField('alternative', alternative);
    addField('pause', pause);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'number',
      'process',
      'workflow',
      'operation',
      'alternative',
      'pause',
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
      case 'number':
        if (number != null) {
          fields.add(number!);
        }
      case 'process':
        if (process != null) {
          fields.add(process!);
        }
      case 'workflow':
        if (workflow != null) {
          fields.add(workflow!);
        }
      case 'operation':
        if (operation != null) {
          fields.add(operation!);
        }
      case 'alternative':
        if (alternative != null) {
          fields.addAll(alternative!);
        }
      case 'pause':
        if (pause != null) {
          fields.add(pause!);
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
      case 'number':
        {
          if (child is FhirStringBuilder) {
            number = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                number = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'process':
        {
          if (child is ExampleScenarioProcessBuilder) {
            process = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'workflow':
        {
          if (child is FhirCanonicalBuilder) {
            workflow = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                workflow = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'operation':
        {
          if (child is ExampleScenarioOperationBuilder) {
            operation = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'alternative':
        {
          if (child is List<ExampleScenarioAlternativeBuilder>) {
            // Replace or create new list
            alternative = child;
            return;
          } else if (child is ExampleScenarioAlternativeBuilder) {
            // Add single element to existing list or create new list
            alternative = [
              ...(alternative ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'pause':
        {
          if (child is FhirBooleanBuilder) {
            pause = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                pause = converted;
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
      case 'number':
        return ['FhirStringBuilder'];
      case 'process':
        return ['ExampleScenarioProcessBuilder'];
      case 'workflow':
        return ['FhirCanonicalBuilder'];
      case 'operation':
        return ['ExampleScenarioOperationBuilder'];
      case 'alternative':
        return ['ExampleScenarioAlternativeBuilder'];
      case 'pause':
        return ['FhirBooleanBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExampleScenarioStepBuilder]
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
      case 'number':
        {
          number = FhirStringBuilder.empty();
          return;
        }
      case 'process':
        {
          process = ExampleScenarioProcessBuilder.empty();
          return;
        }
      case 'workflow':
        {
          workflow = FhirCanonicalBuilder.empty();
          return;
        }
      case 'operation':
        {
          operation = ExampleScenarioOperationBuilder.empty();
          return;
        }
      case 'alternative':
        {
          alternative = <ExampleScenarioAlternativeBuilder>[];
          return;
        }
      case 'pause':
        {
          pause = FhirBooleanBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ExampleScenarioStepBuilder clone() => throw UnimplementedError();
  @override
  ExampleScenarioStepBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? number,
    ExampleScenarioProcessBuilder? process,
    FhirCanonicalBuilder? workflow,
    ExampleScenarioOperationBuilder? operation,
    List<ExampleScenarioAlternativeBuilder>? alternative,
    FhirBooleanBuilder? pause,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExampleScenarioStepBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      number: number ?? this.number,
      process: process ?? this.process,
      workflow: workflow ?? this.workflow,
      operation: operation ?? this.operation,
      alternative: alternative ?? this.alternative,
      pause: pause ?? this.pause,
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
    if (o is! ExampleScenarioStepBuilder) {
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
      number,
      o.number,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      process,
      o.process,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      workflow,
      o.workflow,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      operation,
      o.operation,
    )) {
      return false;
    }
    if (!listEquals<ExampleScenarioAlternativeBuilder>(
      alternative,
      o.alternative,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      pause,
      o.pause,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExampleScenarioOperationBuilder]
/// The step represents a single operation invoked on receiver by sender.
class ExampleScenarioOperationBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExampleScenarioOperationBuilder]

  ExampleScenarioOperationBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.title,
    this.initiator,
    this.receiver,
    this.description,
    this.initiatorActive,
    this.receiverActive,
    this.request,
    this.response,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ExampleScenario.process.step.operation',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExampleScenarioOperationBuilder.empty() =>
      ExampleScenarioOperationBuilder(
        title: FhirStringBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExampleScenarioOperationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExampleScenario.process.step.operation';
    return ExampleScenarioOperationBuilder(
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
      type: JsonParser.parseObject<CodingBuilder>(
        json,
        'type',
        CodingBuilder.fromJson,
        '$objectPath.type',
      ),
      title: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'title',
        FhirStringBuilder.fromJson,
        '$objectPath.title',
      ),
      initiator: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'initiator',
        FhirStringBuilder.fromJson,
        '$objectPath.initiator',
      ),
      receiver: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'receiver',
        FhirStringBuilder.fromJson,
        '$objectPath.receiver',
      ),
      description: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'description',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.description',
      ),
      initiatorActive: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'initiatorActive',
        FhirBooleanBuilder.fromJson,
        '$objectPath.initiatorActive',
      ),
      receiverActive: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'receiverActive',
        FhirBooleanBuilder.fromJson,
        '$objectPath.receiverActive',
      ),
      request: JsonParser.parseObject<ExampleScenarioContainedInstanceBuilder>(
        json,
        'request',
        ExampleScenarioContainedInstanceBuilder.fromJson,
        '$objectPath.request',
      ),
      response: JsonParser.parseObject<ExampleScenarioContainedInstanceBuilder>(
        json,
        'response',
        ExampleScenarioContainedInstanceBuilder.fromJson,
        '$objectPath.response',
      ),
    );
  }

  /// Deserialize [ExampleScenarioOperationBuilder]
  /// from a [String] or [YamlMap] object
  factory ExampleScenarioOperationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExampleScenarioOperationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExampleScenarioOperationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExampleScenarioOperationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExampleScenarioOperationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExampleScenarioOperationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExampleScenarioOperationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExampleScenarioOperation';

  /// [type]
  /// The standardized type of action (FHIR or otherwise).
  CodingBuilder? type;

  /// [title]
  /// A short descriptive label the step to be used in tables or diagrams.
  FhirStringBuilder? title;

  /// [initiator]
  /// The system that invokes the action/transmits the data.
  FhirStringBuilder? initiator;

  /// [receiver]
  /// The system on which the action is invoked/receives the data.
  FhirStringBuilder? receiver;

  /// [description]
  /// An explanation of what the operation represents and what it does.
  FhirMarkdownBuilder? description;

  /// [initiatorActive]
  /// If false, the initiator is deactivated right after the operation.
  FhirBooleanBuilder? initiatorActive;

  /// [receiverActive]
  /// If false, the receiver is deactivated right after the operation.
  FhirBooleanBuilder? receiverActive;

  /// [request]
  /// A reference to the instance that is transmitted from requester to
  /// receiver as part of the invocation of the operation.
  ExampleScenarioContainedInstanceBuilder? request;

  /// [response]
  /// A reference to the instance that is transmitted from receiver to
  /// requester as part of the operation's synchronous response (if any).
  ExampleScenarioContainedInstanceBuilder? response;

  /// Converts a [ExampleScenarioOperationBuilder]
  /// to [ExampleScenarioOperation]
  @override
  ExampleScenarioOperation build() =>
      ExampleScenarioOperation.fromJson(toJson());

  /// Converts a [ExampleScenarioOperationBuilder]
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
    addField('title', title);
    addField('initiator', initiator);
    addField('receiver', receiver);
    addField('description', description);
    addField('initiatorActive', initiatorActive);
    addField('receiverActive', receiverActive);
    addField('request', request);
    addField('response', response);
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
      'title',
      'initiator',
      'receiver',
      'description',
      'initiatorActive',
      'receiverActive',
      'request',
      'response',
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
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'initiator':
        if (initiator != null) {
          fields.add(initiator!);
        }
      case 'receiver':
        if (receiver != null) {
          fields.add(receiver!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'initiatorActive':
        if (initiatorActive != null) {
          fields.add(initiatorActive!);
        }
      case 'receiverActive':
        if (receiverActive != null) {
          fields.add(receiverActive!);
        }
      case 'request':
        if (request != null) {
          fields.add(request!);
        }
      case 'response':
        if (response != null) {
          fields.add(response!);
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
          if (child is CodingBuilder) {
            type = child;
            return;
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
      case 'initiator':
        {
          if (child is FhirStringBuilder) {
            initiator = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                initiator = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'receiver':
        {
          if (child is FhirStringBuilder) {
            receiver = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                receiver = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
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
      case 'initiatorActive':
        {
          if (child is FhirBooleanBuilder) {
            initiatorActive = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                initiatorActive = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'receiverActive':
        {
          if (child is FhirBooleanBuilder) {
            receiverActive = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                receiverActive = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'request':
        {
          if (child is ExampleScenarioContainedInstanceBuilder) {
            request = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'response':
        {
          if (child is ExampleScenarioContainedInstanceBuilder) {
            response = child;
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
      case 'type':
        return ['CodingBuilder'];
      case 'title':
        return ['FhirStringBuilder'];
      case 'initiator':
        return ['FhirStringBuilder'];
      case 'receiver':
        return ['FhirStringBuilder'];
      case 'description':
        return ['FhirMarkdownBuilder'];
      case 'initiatorActive':
        return ['FhirBooleanBuilder'];
      case 'receiverActive':
        return ['FhirBooleanBuilder'];
      case 'request':
        return ['ExampleScenarioContainedInstanceBuilder'];
      case 'response':
        return ['ExampleScenarioContainedInstanceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExampleScenarioOperationBuilder]
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
          type = CodingBuilder.empty();
          return;
        }
      case 'title':
        {
          title = FhirStringBuilder.empty();
          return;
        }
      case 'initiator':
        {
          initiator = FhirStringBuilder.empty();
          return;
        }
      case 'receiver':
        {
          receiver = FhirStringBuilder.empty();
          return;
        }
      case 'description':
        {
          description = FhirMarkdownBuilder.empty();
          return;
        }
      case 'initiatorActive':
        {
          initiatorActive = FhirBooleanBuilder.empty();
          return;
        }
      case 'receiverActive':
        {
          receiverActive = FhirBooleanBuilder.empty();
          return;
        }
      case 'request':
        {
          request = ExampleScenarioContainedInstanceBuilder.empty();
          return;
        }
      case 'response':
        {
          response = ExampleScenarioContainedInstanceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ExampleScenarioOperationBuilder clone() => throw UnimplementedError();
  @override
  ExampleScenarioOperationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodingBuilder? type,
    FhirStringBuilder? title,
    FhirStringBuilder? initiator,
    FhirStringBuilder? receiver,
    FhirMarkdownBuilder? description,
    FhirBooleanBuilder? initiatorActive,
    FhirBooleanBuilder? receiverActive,
    ExampleScenarioContainedInstanceBuilder? request,
    ExampleScenarioContainedInstanceBuilder? response,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExampleScenarioOperationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      title: title ?? this.title,
      initiator: initiator ?? this.initiator,
      receiver: receiver ?? this.receiver,
      description: description ?? this.description,
      initiatorActive: initiatorActive ?? this.initiatorActive,
      receiverActive: receiverActive ?? this.receiverActive,
      request: request ?? this.request,
      response: response ?? this.response,
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
    if (o is! ExampleScenarioOperationBuilder) {
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
      title,
      o.title,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      initiator,
      o.initiator,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      receiver,
      o.receiver,
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
      initiatorActive,
      o.initiatorActive,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      receiverActive,
      o.receiverActive,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      request,
      o.request,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      response,
      o.response,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExampleScenarioAlternativeBuilder]
/// Indicates an alternative step that can be taken instead of the
/// sub-process, scenario or operation. E.g. to represent
/// non-happy-path/exceptional/atypical circumstances.
class ExampleScenarioAlternativeBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExampleScenarioAlternativeBuilder]

  ExampleScenarioAlternativeBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.title,
    this.description,
    this.step,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ExampleScenario.process.step.alternative',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExampleScenarioAlternativeBuilder.empty() =>
      ExampleScenarioAlternativeBuilder(
        title: FhirStringBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExampleScenarioAlternativeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExampleScenario.process.step.alternative';
    return ExampleScenarioAlternativeBuilder(
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
      title: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'title',
        FhirStringBuilder.fromJson,
        '$objectPath.title',
      ),
      description: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'description',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.description',
      ),
      step: (json['step'] as List<dynamic>?)
          ?.map<ExampleScenarioStepBuilder>(
            (v) => ExampleScenarioStepBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.step',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ExampleScenarioAlternativeBuilder]
  /// from a [String] or [YamlMap] object
  factory ExampleScenarioAlternativeBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExampleScenarioAlternativeBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExampleScenarioAlternativeBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExampleScenarioAlternativeBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExampleScenarioAlternativeBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExampleScenarioAlternativeBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExampleScenarioAlternativeBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExampleScenarioAlternative';

  /// [title]
  /// The label to display for the alternative that gives a sense of the
  /// circumstance in which the alternative should be invoked.
  FhirStringBuilder? title;

  /// [description]
  /// A human-readable description of the alternative explaining when the
  /// alternative should occur rather than the base step.
  FhirMarkdownBuilder? description;

  /// [step]
  /// Indicates the operation, sub-process or scenario that happens if the
  /// alternative option is selected.
  List<ExampleScenarioStepBuilder>? step;

  /// Converts a [ExampleScenarioAlternativeBuilder]
  /// to [ExampleScenarioAlternative]
  @override
  ExampleScenarioAlternative build() =>
      ExampleScenarioAlternative.fromJson(toJson());

  /// Converts a [ExampleScenarioAlternativeBuilder]
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
    addField('title', title);
    addField('description', description);
    addField('step', step);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'title',
      'description',
      'step',
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
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'step':
        if (step != null) {
          fields.addAll(step!);
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
      case 'step':
        {
          if (child is List<ExampleScenarioStepBuilder>) {
            // Replace or create new list
            step = child;
            return;
          } else if (child is ExampleScenarioStepBuilder) {
            // Add single element to existing list or create new list
            step = [
              ...(step ?? []),
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
      case 'title':
        return ['FhirStringBuilder'];
      case 'description':
        return ['FhirMarkdownBuilder'];
      case 'step':
        return ['ExampleScenarioStepBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExampleScenarioAlternativeBuilder]
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
      case 'title':
        {
          title = FhirStringBuilder.empty();
          return;
        }
      case 'description':
        {
          description = FhirMarkdownBuilder.empty();
          return;
        }
      case 'step':
        {
          step = <ExampleScenarioStepBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ExampleScenarioAlternativeBuilder clone() => throw UnimplementedError();
  @override
  ExampleScenarioAlternativeBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? title,
    FhirMarkdownBuilder? description,
    List<ExampleScenarioStepBuilder>? step,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExampleScenarioAlternativeBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      title: title ?? this.title,
      description: description ?? this.description,
      step: step ?? this.step,
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
    if (o is! ExampleScenarioAlternativeBuilder) {
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
      title,
      o.title,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!listEquals<ExampleScenarioStepBuilder>(
      step,
      o.step,
    )) {
      return false;
    }
    return true;
  }
}
