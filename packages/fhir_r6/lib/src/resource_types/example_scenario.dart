import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'example_scenario.g.dart';

/// [ExampleScenario]
/// Example of workflow instance.
class ExampleScenario extends CanonicalResource {
  /// Primary constructor for
  /// [ExampleScenario]

  const ExampleScenario({
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
    VersionAlgorithmXExampleScenario? versionAlgorithmX,
    FhirString? versionAlgorithmString,
    Coding? versionAlgorithmCoding,
    this.name,
    this.title,
    required super.status,
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
          resourceType: R5ResourceType.ExampleScenario,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExampleScenario.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExampleScenario(
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
          JsonParser.parsePolymorphic<VersionAlgorithmXExampleScenario>(
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
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map<UsageContext>(
            (v) => UsageContext.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
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
      actor: (json['actor'] as List<dynamic>?)
          ?.map<ExampleScenarioActor>(
            (v) => ExampleScenarioActor.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      instance: (json['instance'] as List<dynamic>?)
          ?.map<ExampleScenarioInstance>(
            (v) => ExampleScenarioInstance.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      process: (json['process'] as List<dynamic>?)
          ?.map<ExampleScenarioProcess>(
            (v) => ExampleScenarioProcess.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ExampleScenario]
  /// from a [String] or [YamlMap] object
  factory ExampleScenario.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExampleScenario.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExampleScenario.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExampleScenario '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExampleScenario]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExampleScenario.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExampleScenario.fromJson(json);
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
  final List<Identifier>? identifier;

  /// [versionAlgorithmX]
  /// Indicates the mechanism used to compare versions to determine which is
  /// more current.
  final VersionAlgorithmXExampleScenario? versionAlgorithmX;

  /// Getter for [versionAlgorithmString] as a FhirString
  FhirString? get versionAlgorithmString =>
      versionAlgorithmX?.isAs<FhirString>();

  /// Getter for [versionAlgorithmCoding] as a Coding
  Coding? get versionAlgorithmCoding => versionAlgorithmX?.isAs<Coding>();

  /// [name]
  /// Temporarily retained for tooling purposes.
  final FhirString? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the ExampleScenario.
  final FhirString? title;

  /// [purpose]
  /// What the example scenario resource is created for. This should not be
  /// used to show the business purpose of the scenario itself, but the
  /// purpose of documenting a scenario.
  final FhirMarkdown? purpose;

  /// [copyright]
  /// A copyright statement relating to the example scenario and/or its
  /// contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the example scenario.
  final FhirMarkdown? copyright;

  /// [copyrightLabel]
  /// A short string (<50 characters), suitable for inclusion in a page
  /// footer that identifies the copyright holder, effective period, and
  /// optionally whether rights are resctricted. (e.g. 'All rights reserved',
  /// 'Some rights reserved').
  final FhirString? copyrightLabel;

  /// [actor]
  /// A system or person who shares or receives an instance within the
  /// scenario.
  final List<ExampleScenarioActor>? actor;

  /// [instance]
  /// A single data collection that is shared as part of the scenario.
  final List<ExampleScenarioInstance>? instance;

  /// [process]
  /// A group of operations that represents a significant step within a
  /// scenario.
  final List<ExampleScenarioProcess>? process;
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
      'publisher',
      publisher,
    );
    addField(
      'contact',
      contact,
    );
    addField(
      'description',
      description,
    );
    addField(
      'useContext',
      useContext,
    );
    addField(
      'jurisdiction',
      jurisdiction,
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
      'actor',
      actor,
    );
    addField(
      'instance',
      instance,
    );
    addField(
      'process',
      process,
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ExampleScenario clone() => copyWith();

  /// Copy function for [ExampleScenario]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ExampleScenarioCopyWith<ExampleScenario> get copyWith =>
      _$ExampleScenarioCopyWithImpl<ExampleScenario>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ExampleScenario) {
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
    if (!listEquals<ContactDetail>(
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
    if (!listEquals<UsageContext>(
      useContext,
      o.useContext,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
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
    if (!listEquals<ExampleScenarioActor>(
      actor,
      o.actor,
    )) {
      return false;
    }
    if (!listEquals<ExampleScenarioInstance>(
      instance,
      o.instance,
    )) {
      return false;
    }
    if (!listEquals<ExampleScenarioProcess>(
      process,
      o.process,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExampleScenarioActor]
/// A system or person who shares or receives an instance within the
/// scenario.
class ExampleScenarioActor extends BackboneElement {
  /// Primary constructor for
  /// [ExampleScenarioActor]

  const ExampleScenarioActor({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.key,
    required this.type,
    required this.title,
    this.description,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExampleScenarioActor.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExampleScenarioActor(
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
      key: JsonParser.parsePrimitive<FhirString>(
        json,
        'key',
        FhirString.fromJson,
      )!,
      type: JsonParser.parsePrimitive<ExampleScenarioActorType>(
        json,
        'type',
        ExampleScenarioActorType.fromJson,
      )!,
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
      )!,
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
    );
  }

  /// Deserialize [ExampleScenarioActor]
  /// from a [String] or [YamlMap] object
  factory ExampleScenarioActor.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExampleScenarioActor.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExampleScenarioActor.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExampleScenarioActor '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExampleScenarioActor]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExampleScenarioActor.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExampleScenarioActor.fromJson(json);
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
  final FhirString key;

  /// [type]
  /// The category of actor - person or system.
  final ExampleScenarioActorType type;

  /// [title]
  /// The human-readable name for the actor used when rendering the scenario.
  final FhirString title;

  /// [description]
  /// An explanation of who/what the actor is and its role in the scenario.
  final FhirMarkdown? description;
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
      'key',
      key,
    );
    addField(
      'type',
      type,
    );
    addField(
      'title',
      title,
    );
    addField(
      'description',
      description,
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
      'key',
      'type',
      'title',
      'description',
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
      case 'key':
        fields.add(key);
      case 'type':
        fields.add(type);
      case 'title':
        fields.add(title);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ExampleScenarioActor clone() => copyWith();

  /// Copy function for [ExampleScenarioActor]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ExampleScenarioActorCopyWith<ExampleScenarioActor> get copyWith =>
      _$ExampleScenarioActorCopyWithImpl<ExampleScenarioActor>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ExampleScenarioActor) {
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

/// [ExampleScenarioInstance]
/// A single data collection that is shared as part of the scenario.
class ExampleScenarioInstance extends BackboneElement {
  /// Primary constructor for
  /// [ExampleScenarioInstance]

  const ExampleScenarioInstance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.key,
    required this.structureType,
    this.structureVersion,
    StructureProfileXExampleScenarioInstance? structureProfileX,
    FhirCanonical? structureProfileCanonical,
    FhirUri? structureProfileUri,
    required this.title,
    this.description,
    this.content,
    this.version,
    this.containedInstance,
    super.disallowExtensions,
  })  : structureProfileX = structureProfileX ??
            structureProfileCanonical ??
            structureProfileUri,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExampleScenarioInstance.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExampleScenarioInstance(
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
      key: JsonParser.parsePrimitive<FhirString>(
        json,
        'key',
        FhirString.fromJson,
      )!,
      structureType: JsonParser.parseObject<Coding>(
        json,
        'structureType',
        Coding.fromJson,
      )!,
      structureVersion: JsonParser.parsePrimitive<FhirString>(
        json,
        'structureVersion',
        FhirString.fromJson,
      ),
      structureProfileX:
          JsonParser.parsePolymorphic<StructureProfileXExampleScenarioInstance>(
        json,
        {
          'structureProfileCanonical': FhirCanonical.fromJson,
          'structureProfileUri': FhirUri.fromJson,
        },
      ),
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
      )!,
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      content: JsonParser.parseObject<Reference>(
        json,
        'content',
        Reference.fromJson,
      ),
      version: (json['version'] as List<dynamic>?)
          ?.map<ExampleScenarioVersion>(
            (v) => ExampleScenarioVersion.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      containedInstance: (json['containedInstance'] as List<dynamic>?)
          ?.map<ExampleScenarioContainedInstance>(
            (v) => ExampleScenarioContainedInstance.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ExampleScenarioInstance]
  /// from a [String] or [YamlMap] object
  factory ExampleScenarioInstance.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExampleScenarioInstance.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExampleScenarioInstance.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExampleScenarioInstance '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExampleScenarioInstance]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExampleScenarioInstance.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExampleScenarioInstance.fromJson(json);
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
  final FhirString key;

  /// [structureType]
  /// A code indicating the kind of data structure (FHIR resource or some
  /// other standard) this is an instance of.
  final Coding structureType;

  /// [structureVersion]
  /// Conveys the version of the data structure instantiated. I.e. what
  /// release of FHIR, X12, OpenEHR, etc. is instance compliant with.
  final FhirString? structureVersion;

  /// [structureProfileX]
  /// Refers to a profile, template or other ruleset the instance adheres to.
  final StructureProfileXExampleScenarioInstance? structureProfileX;

  /// Getter for [structureProfileCanonical] as a FhirCanonical
  FhirCanonical? get structureProfileCanonical =>
      structureProfileX?.isAs<FhirCanonical>();

  /// Getter for [structureProfileUri] as a FhirUri
  FhirUri? get structureProfileUri => structureProfileX?.isAs<FhirUri>();

  /// [title]
  /// A short descriptive label the instance to be used in tables or
  /// diagrams.
  final FhirString title;

  /// [description]
  /// An explanation of what the instance contains and what it's for.
  final FhirMarkdown? description;

  /// [content]
  /// Points to an instance (typically an example) that shows the data that
  /// would corespond to this instance.
  final Reference? content;

  /// [version]
  /// Represents the instance as it was at a specific time-point.
  final List<ExampleScenarioVersion>? version;

  /// [containedInstance]
  /// References to other instances that can be found within this instance
  /// (e.g. the observations contained in a bundle).
  final List<ExampleScenarioContainedInstance>? containedInstance;
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
      'key',
      key,
    );
    addField(
      'structureType',
      structureType,
    );
    addField(
      'structureVersion',
      structureVersion,
    );
    if (structureProfileX != null) {
      final fhirType = structureProfileX!.fhirType;
      addField(
        'structureProfile${fhirType.capitalize()}',
        structureProfileX,
      );
    }

    addField(
      'title',
      title,
    );
    addField(
      'description',
      description,
    );
    addField(
      'content',
      content,
    );
    addField(
      'version',
      version,
    );
    addField(
      'containedInstance',
      containedInstance,
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
      case 'key':
        fields.add(key);
      case 'structureType':
        fields.add(structureType);
      case 'structureVersion':
        if (structureVersion != null) {
          fields.add(structureVersion!);
        }
      case 'structureProfile':
        fields.add(structureProfileX!);
      case 'structureProfileX':
        fields.add(structureProfileX!);
      case 'structureProfileCanonical':
        if (structureProfileX is FhirCanonical) {
          fields.add(structureProfileX!);
        }
      case 'structureProfileUri':
        if (structureProfileX is FhirUri) {
          fields.add(structureProfileX!);
        }
      case 'title':
        fields.add(title);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ExampleScenarioInstance clone() => copyWith();

  /// Copy function for [ExampleScenarioInstance]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ExampleScenarioInstanceCopyWith<ExampleScenarioInstance> get copyWith =>
      _$ExampleScenarioInstanceCopyWithImpl<ExampleScenarioInstance>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ExampleScenarioInstance) {
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
    if (!listEquals<ExampleScenarioVersion>(
      version,
      o.version,
    )) {
      return false;
    }
    if (!listEquals<ExampleScenarioContainedInstance>(
      containedInstance,
      o.containedInstance,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExampleScenarioVersion]
/// Represents the instance as it was at a specific time-point.
class ExampleScenarioVersion extends BackboneElement {
  /// Primary constructor for
  /// [ExampleScenarioVersion]

  const ExampleScenarioVersion({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.key,
    required this.title,
    this.description,
    this.content,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExampleScenarioVersion.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExampleScenarioVersion(
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
      key: JsonParser.parsePrimitive<FhirString>(
        json,
        'key',
        FhirString.fromJson,
      )!,
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
      )!,
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      content: JsonParser.parseObject<Reference>(
        json,
        'content',
        Reference.fromJson,
      ),
    );
  }

  /// Deserialize [ExampleScenarioVersion]
  /// from a [String] or [YamlMap] object
  factory ExampleScenarioVersion.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExampleScenarioVersion.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExampleScenarioVersion.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExampleScenarioVersion '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExampleScenarioVersion]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExampleScenarioVersion.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExampleScenarioVersion.fromJson(json);
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
  final FhirString key;

  /// [title]
  /// A short descriptive label the version to be used in tables or diagrams.
  final FhirString title;

  /// [description]
  /// An explanation of what this specific version of the instance contains
  /// and represents.
  final FhirMarkdown? description;

  /// [content]
  /// Points to an instance (typically an example) that shows the data that
  /// would flow at this point in the scenario.
  final Reference? content;
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
      'key',
      key,
    );
    addField(
      'title',
      title,
    );
    addField(
      'description',
      description,
    );
    addField(
      'content',
      content,
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
      'key',
      'title',
      'description',
      'content',
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
      case 'key':
        fields.add(key);
      case 'title':
        fields.add(title);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ExampleScenarioVersion clone() => copyWith();

  /// Copy function for [ExampleScenarioVersion]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ExampleScenarioVersionCopyWith<ExampleScenarioVersion> get copyWith =>
      _$ExampleScenarioVersionCopyWithImpl<ExampleScenarioVersion>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ExampleScenarioVersion) {
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

/// [ExampleScenarioContainedInstance]
/// References to other instances that can be found within this instance
/// (e.g. the observations contained in a bundle).
class ExampleScenarioContainedInstance extends BackboneElement {
  /// Primary constructor for
  /// [ExampleScenarioContainedInstance]

  const ExampleScenarioContainedInstance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.instanceReference,
    this.versionReference,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExampleScenarioContainedInstance.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExampleScenarioContainedInstance(
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
      instanceReference: JsonParser.parsePrimitive<FhirString>(
        json,
        'instanceReference',
        FhirString.fromJson,
      )!,
      versionReference: JsonParser.parsePrimitive<FhirString>(
        json,
        'versionReference',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [ExampleScenarioContainedInstance]
  /// from a [String] or [YamlMap] object
  factory ExampleScenarioContainedInstance.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExampleScenarioContainedInstance.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExampleScenarioContainedInstance.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExampleScenarioContainedInstance '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExampleScenarioContainedInstance]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExampleScenarioContainedInstance.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExampleScenarioContainedInstance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExampleScenarioContainedInstance';

  /// [instanceReference]
  /// A reference to the key of an instance found within this one.
  final FhirString instanceReference;

  /// [versionReference]
  /// A reference to the key of a specific version of an instance in this
  /// instance.
  final FhirString? versionReference;
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
      'instanceReference',
      instanceReference,
    );
    addField(
      'versionReference',
      versionReference,
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
      'instanceReference',
      'versionReference',
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
      case 'instanceReference':
        fields.add(instanceReference);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ExampleScenarioContainedInstance clone() => copyWith();

  /// Copy function for [ExampleScenarioContainedInstance]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ExampleScenarioContainedInstanceCopyWith<ExampleScenarioContainedInstance>
      get copyWith => _$ExampleScenarioContainedInstanceCopyWithImpl<
              ExampleScenarioContainedInstance>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ExampleScenarioContainedInstance) {
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

/// [ExampleScenarioProcess]
/// A group of operations that represents a significant step within a
/// scenario.
class ExampleScenarioProcess extends BackboneElement {
  /// Primary constructor for
  /// [ExampleScenarioProcess]

  const ExampleScenarioProcess({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.title,
    this.description,
    this.preConditions,
    this.postConditions,
    this.step,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExampleScenarioProcess.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExampleScenarioProcess(
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
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
      )!,
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      preConditions: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'preConditions',
        FhirMarkdown.fromJson,
      ),
      postConditions: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'postConditions',
        FhirMarkdown.fromJson,
      ),
      step: (json['step'] as List<dynamic>?)
          ?.map<ExampleScenarioStep>(
            (v) => ExampleScenarioStep.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ExampleScenarioProcess]
  /// from a [String] or [YamlMap] object
  factory ExampleScenarioProcess.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExampleScenarioProcess.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExampleScenarioProcess.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExampleScenarioProcess '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExampleScenarioProcess]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExampleScenarioProcess.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExampleScenarioProcess.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExampleScenarioProcess';

  /// [title]
  /// A short descriptive label the process to be used in tables or diagrams.
  final FhirString title;

  /// [description]
  /// An explanation of what the process represents and what it does.
  final FhirMarkdown? description;

  /// [preConditions]
  /// Description of the initial state of the actors, environment and data
  /// before the process starts.
  final FhirMarkdown? preConditions;

  /// [postConditions]
  /// Description of the final state of the actors, environment and data
  /// after the process has been successfully completed.
  final FhirMarkdown? postConditions;

  /// [step]
  /// A significant action that occurs as part of the process.
  final List<ExampleScenarioStep>? step;
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
      'title',
      title,
    );
    addField(
      'description',
      description,
    );
    addField(
      'preConditions',
      preConditions,
    );
    addField(
      'postConditions',
      postConditions,
    );
    addField(
      'step',
      step,
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
      case 'title':
        fields.add(title);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ExampleScenarioProcess clone() => copyWith();

  /// Copy function for [ExampleScenarioProcess]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ExampleScenarioProcessCopyWith<ExampleScenarioProcess> get copyWith =>
      _$ExampleScenarioProcessCopyWithImpl<ExampleScenarioProcess>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ExampleScenarioProcess) {
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
    if (!listEquals<ExampleScenarioStep>(
      step,
      o.step,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExampleScenarioStep]
/// A significant action that occurs as part of the process.
class ExampleScenarioStep extends BackboneElement {
  /// Primary constructor for
  /// [ExampleScenarioStep]

  const ExampleScenarioStep({
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExampleScenarioStep.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExampleScenarioStep(
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
      number: JsonParser.parsePrimitive<FhirString>(
        json,
        'number',
        FhirString.fromJson,
      ),
      process: JsonParser.parseObject<ExampleScenarioProcess>(
        json,
        'process',
        ExampleScenarioProcess.fromJson,
      ),
      workflow: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'workflow',
        FhirCanonical.fromJson,
      ),
      operation: JsonParser.parseObject<ExampleScenarioOperation>(
        json,
        'operation',
        ExampleScenarioOperation.fromJson,
      ),
      alternative: (json['alternative'] as List<dynamic>?)
          ?.map<ExampleScenarioAlternative>(
            (v) => ExampleScenarioAlternative.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      pause: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'pause',
        FhirBoolean.fromJson,
      ),
    );
  }

  /// Deserialize [ExampleScenarioStep]
  /// from a [String] or [YamlMap] object
  factory ExampleScenarioStep.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExampleScenarioStep.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExampleScenarioStep.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExampleScenarioStep '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExampleScenarioStep]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExampleScenarioStep.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExampleScenarioStep.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExampleScenarioStep';

  /// [number]
  /// The sequential number of the step, e.g. 1.2.5.
  final FhirString? number;

  /// [process]
  /// Indicates that the step is a complex sub-process with its own steps.
  final ExampleScenarioProcess? process;

  /// [workflow]
  /// Indicates that the step is defined by a seaparate scenario instance.
  final FhirCanonical? workflow;

  /// [operation]
  /// The step represents a single operation invoked on receiver by sender.
  final ExampleScenarioOperation? operation;

  /// [alternative]
  /// Indicates an alternative step that can be taken instead of the
  /// sub-process, scenario or operation. E.g. to represent
  /// non-happy-path/exceptional/atypical circumstances.
  final List<ExampleScenarioAlternative>? alternative;

  /// [pause]
  /// If true, indicates that, following this step, there is a pause in the
  /// flow and the subsequent step will occur at some later time (triggered
  /// by some event).
  final FhirBoolean? pause;
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
      'number',
      number,
    );
    addField(
      'process',
      process,
    );
    addField(
      'workflow',
      workflow,
    );
    addField(
      'operation',
      operation,
    );
    addField(
      'alternative',
      alternative,
    );
    addField(
      'pause',
      pause,
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ExampleScenarioStep clone() => copyWith();

  /// Copy function for [ExampleScenarioStep]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ExampleScenarioStepCopyWith<ExampleScenarioStep> get copyWith =>
      _$ExampleScenarioStepCopyWithImpl<ExampleScenarioStep>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ExampleScenarioStep) {
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
    if (!listEquals<ExampleScenarioAlternative>(
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

/// [ExampleScenarioOperation]
/// The step represents a single operation invoked on receiver by sender.
class ExampleScenarioOperation extends BackboneElement {
  /// Primary constructor for
  /// [ExampleScenarioOperation]

  const ExampleScenarioOperation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    required this.title,
    this.initiator,
    this.receiver,
    this.description,
    this.initiatorActive,
    this.receiverActive,
    this.request,
    this.response,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExampleScenarioOperation.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExampleScenarioOperation(
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
      type: JsonParser.parseObject<Coding>(
        json,
        'type',
        Coding.fromJson,
      ),
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
      )!,
      initiator: JsonParser.parsePrimitive<FhirString>(
        json,
        'initiator',
        FhirString.fromJson,
      ),
      receiver: JsonParser.parsePrimitive<FhirString>(
        json,
        'receiver',
        FhirString.fromJson,
      ),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      initiatorActive: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'initiatorActive',
        FhirBoolean.fromJson,
      ),
      receiverActive: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'receiverActive',
        FhirBoolean.fromJson,
      ),
      request: JsonParser.parseObject<ExampleScenarioContainedInstance>(
        json,
        'request',
        ExampleScenarioContainedInstance.fromJson,
      ),
      response: JsonParser.parseObject<ExampleScenarioContainedInstance>(
        json,
        'response',
        ExampleScenarioContainedInstance.fromJson,
      ),
    );
  }

  /// Deserialize [ExampleScenarioOperation]
  /// from a [String] or [YamlMap] object
  factory ExampleScenarioOperation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExampleScenarioOperation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExampleScenarioOperation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExampleScenarioOperation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExampleScenarioOperation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExampleScenarioOperation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExampleScenarioOperation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExampleScenarioOperation';

  /// [type]
  /// The standardized type of action (FHIR or otherwise).
  final Coding? type;

  /// [title]
  /// A short descriptive label the step to be used in tables or diagrams.
  final FhirString title;

  /// [initiator]
  /// The system that invokes the action/transmits the data.
  final FhirString? initiator;

  /// [receiver]
  /// The system on which the action is invoked/receives the data.
  final FhirString? receiver;

  /// [description]
  /// An explanation of what the operation represents and what it does.
  final FhirMarkdown? description;

  /// [initiatorActive]
  /// If false, the initiator is deactivated right after the operation.
  final FhirBoolean? initiatorActive;

  /// [receiverActive]
  /// If false, the receiver is deactivated right after the operation.
  final FhirBoolean? receiverActive;

  /// [request]
  /// A reference to the instance that is transmitted from requester to
  /// receiver as part of the invocation of the operation.
  final ExampleScenarioContainedInstance? request;

  /// [response]
  /// A reference to the instance that is transmitted from receiver to
  /// requester as part of the operation's synchronous response (if any).
  final ExampleScenarioContainedInstance? response;
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
    addField(
      'title',
      title,
    );
    addField(
      'initiator',
      initiator,
    );
    addField(
      'receiver',
      receiver,
    );
    addField(
      'description',
      description,
    );
    addField(
      'initiatorActive',
      initiatorActive,
    );
    addField(
      'receiverActive',
      receiverActive,
    );
    addField(
      'request',
      request,
    );
    addField(
      'response',
      response,
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
        if (type != null) {
          fields.add(type!);
        }
      case 'title':
        fields.add(title);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ExampleScenarioOperation clone() => copyWith();

  /// Copy function for [ExampleScenarioOperation]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ExampleScenarioOperationCopyWith<ExampleScenarioOperation> get copyWith =>
      _$ExampleScenarioOperationCopyWithImpl<ExampleScenarioOperation>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ExampleScenarioOperation) {
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

/// [ExampleScenarioAlternative]
/// Indicates an alternative step that can be taken instead of the
/// sub-process, scenario or operation. E.g. to represent
/// non-happy-path/exceptional/atypical circumstances.
class ExampleScenarioAlternative extends BackboneElement {
  /// Primary constructor for
  /// [ExampleScenarioAlternative]

  const ExampleScenarioAlternative({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.title,
    this.description,
    this.step,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExampleScenarioAlternative.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExampleScenarioAlternative(
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
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
      )!,
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      step: (json['step'] as List<dynamic>?)
          ?.map<ExampleScenarioStep>(
            (v) => ExampleScenarioStep.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ExampleScenarioAlternative]
  /// from a [String] or [YamlMap] object
  factory ExampleScenarioAlternative.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExampleScenarioAlternative.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExampleScenarioAlternative.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExampleScenarioAlternative '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExampleScenarioAlternative]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExampleScenarioAlternative.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExampleScenarioAlternative.fromJson(json);
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
  final FhirString title;

  /// [description]
  /// A human-readable description of the alternative explaining when the
  /// alternative should occur rather than the base step.
  final FhirMarkdown? description;

  /// [step]
  /// Indicates the operation, sub-process or scenario that happens if the
  /// alternative option is selected.
  final List<ExampleScenarioStep>? step;
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
      'title',
      title,
    );
    addField(
      'description',
      description,
    );
    addField(
      'step',
      step,
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
      'title',
      'description',
      'step',
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
      case 'title':
        fields.add(title);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ExampleScenarioAlternative clone() => copyWith();

  /// Copy function for [ExampleScenarioAlternative]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ExampleScenarioAlternativeCopyWith<ExampleScenarioAlternative>
      get copyWith =>
          _$ExampleScenarioAlternativeCopyWithImpl<ExampleScenarioAlternative>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ExampleScenarioAlternative) {
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
    if (!listEquals<ExampleScenarioStep>(
      step,
      o.step,
    )) {
      return false;
    }
    return true;
  }
}
