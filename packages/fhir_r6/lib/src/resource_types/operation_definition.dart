import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'operation_definition.g.dart';

/// [OperationDefinition]
/// A formal computable definition of an operation (on the RESTful
/// interface) or a named query (using the search interaction).
class OperationDefinition extends CanonicalResource {
  /// Primary constructor for
  /// [OperationDefinition]

  const OperationDefinition({
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
    VersionAlgorithmXOperationDefinition? versionAlgorithmX,
    FhirString? versionAlgorithmString,
    Coding? versionAlgorithmCoding,
    required this.name,
    this.title,
    required super.status,
    required this.kind,
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
    this.affectsState,
    required this.code,
    this.comment,
    this.base,
    this.resource,
    required this.system,
    required this.type,
    required this.instance,
    this.inputProfile,
    this.outputProfile,
    this.parameter,
    this.overload,
  })  : versionAlgorithmX = versionAlgorithmX ??
            versionAlgorithmString ??
            versionAlgorithmCoding,
        super(
          resourceType: R5ResourceType.OperationDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory OperationDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    return OperationDefinition(
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
          JsonParser.parsePolymorphic<VersionAlgorithmXOperationDefinition>(
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
      )!,
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
      kind: JsonParser.parsePrimitive<OperationKind>(
        json,
        'kind',
        OperationKind.fromJson,
      )!,
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
      affectsState: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'affectsState',
        FhirBoolean.fromJson,
      ),
      code: JsonParser.parsePrimitive<FhirCode>(
        json,
        'code',
        FhirCode.fromJson,
      )!,
      comment: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'comment',
        FhirMarkdown.fromJson,
      ),
      base: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'base',
        FhirCanonical.fromJson,
      ),
      resource:
          JsonParser.parsePrimitiveList<VersionIndependentResourceTypesAll>(
        json,
        'resource',
        VersionIndependentResourceTypesAll.fromJson,
      ),
      system: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'system',
        FhirBoolean.fromJson,
      )!,
      type: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'type',
        FhirBoolean.fromJson,
      )!,
      instance: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'instance',
        FhirBoolean.fromJson,
      )!,
      inputProfile: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'inputProfile',
        FhirCanonical.fromJson,
      ),
      outputProfile: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'outputProfile',
        FhirCanonical.fromJson,
      ),
      parameter: (json['parameter'] as List<dynamic>?)
          ?.map<OperationDefinitionParameter>(
            (v) => OperationDefinitionParameter.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      overload: (json['overload'] as List<dynamic>?)
          ?.map<OperationDefinitionOverload>(
            (v) => OperationDefinitionOverload.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [OperationDefinition]
  /// from a [String] or [YamlMap] object
  factory OperationDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return OperationDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return OperationDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'OperationDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [OperationDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory OperationDefinition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return OperationDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'OperationDefinition';

  /// [identifier]
  /// A formal identifier that is used to identify this implementation guide
  /// when it is represented in other formats, or referenced in a
  /// specification, model, design or an instance.
  final List<Identifier>? identifier;

  /// [versionAlgorithmX]
  /// Indicates the mechanism used to compare versions to determine which is
  /// more current.
  final VersionAlgorithmXOperationDefinition? versionAlgorithmX;

  /// Getter for [versionAlgorithmString] as a FhirString
  FhirString? get versionAlgorithmString =>
      versionAlgorithmX?.isAs<FhirString>();

  /// Getter for [versionAlgorithmCoding] as a Coding
  Coding? get versionAlgorithmCoding => versionAlgorithmX?.isAs<Coding>();

  /// [name]
  /// A natural language name identifying the operation definition. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString name;

  /// [title]
  /// A short, descriptive, user-friendly title for the operation definition.
  final FhirString? title;

  /// [kind]
  /// Whether this is an operation or a named query.
  final OperationKind kind;

  /// [purpose]
  /// Explanation of why this operation definition is needed and why it has
  /// been designed as it has.
  final FhirMarkdown? purpose;

  /// [copyright]
  /// A copyright statement relating to the operation definition and/or its
  /// contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the operation definition.
  final FhirMarkdown? copyright;

  /// [copyrightLabel]
  /// A short string (<50 characters), suitable for inclusion in a page
  /// footer that identifies the copyright holder, effective period, and
  /// optionally whether rights are resctricted. (e.g. 'All rights reserved',
  /// 'Some rights reserved').
  final FhirString? copyrightLabel;

  /// [affectsState]
  /// Whether the operation affects state. Side effects such as producing
  /// audit trail entries do not count as 'affecting state'.
  final FhirBoolean? affectsState;

  /// [code]
  /// The label that is recommended to be used in the URL for this operation.
  /// In some cases, servers may need to use a different CapabilityStatement
  /// operation.name to differentiate between multiple SearchParameters that
  /// happen to have the same code.
  final FhirCode code;

  /// [comment]
  /// Additional information about how to use this operation or named query.
  final FhirMarkdown? comment;

  /// [base]
  /// Indicates that this operation definition is a constraining profile on
  /// the base.
  final FhirCanonical? base;

  /// [resource]
  /// The types on which this operation can be executed.
  final List<VersionIndependentResourceTypesAll>? resource;

  /// [system]
  /// Indicates whether this operation or named query can be invoked at the
  /// system level (e.g. without needing to choose a resource type for the
  /// context).
  final FhirBoolean system;

  /// [type]
  /// Indicates whether this operation or named query can be invoked at the
  /// resource type level for any given resource type level (e.g. without
  /// needing to choose a specific resource id for the context).
  final FhirBoolean type;

  /// [instance]
  /// Indicates whether this operation can be invoked on a particular
  /// instance of one of the given types.
  final FhirBoolean instance;

  /// [inputProfile]
  /// Additional validation information for the in parameters - a single
  /// profile that covers all the parameters. The profile is a constraint on
  /// the parameters resource as a whole.
  final FhirCanonical? inputProfile;

  /// [outputProfile]
  /// Additional validation information for the out parameters - a single
  /// profile that covers all the parameters. The profile is a constraint on
  /// the parameters resource.
  final FhirCanonical? outputProfile;

  /// [parameter]
  /// The parameters for the operation/query.
  final List<OperationDefinitionParameter>? parameter;

  /// [overload]
  /// Defines an appropriate combination of parameters to use when invoking
  /// this operation, to help code generators when generating overloaded
  /// parameter sets for this operation.
  final List<OperationDefinitionOverload>? overload;
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
      'kind',
      kind,
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
      'affectsState',
      affectsState,
    );
    addField(
      'code',
      code,
    );
    addField(
      'comment',
      comment,
    );
    addField(
      'base',
      base,
    );
    addField(
      'resource',
      resource,
    );
    addField(
      'system',
      system,
    );
    addField(
      'type',
      type,
    );
    addField(
      'instance',
      instance,
    );
    addField(
      'inputProfile',
      inputProfile,
    );
    addField(
      'outputProfile',
      outputProfile,
    );
    addField(
      'parameter',
      parameter,
    );
    addField(
      'overload',
      overload,
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
      'kind',
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
      'affectsState',
      'code',
      'comment',
      'base',
      'resource',
      'system',
      'type',
      'instance',
      'inputProfile',
      'outputProfile',
      'parameter',
      'overload',
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
        fields.add(name);
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'kind':
        fields.add(kind);
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
      case 'affectsState':
        if (affectsState != null) {
          fields.add(affectsState!);
        }
      case 'code':
        fields.add(code);
      case 'comment':
        if (comment != null) {
          fields.add(comment!);
        }
      case 'base':
        if (base != null) {
          fields.add(base!);
        }
      case 'resource':
        if (resource != null) {
          fields.addAll(resource!);
        }
      case 'system':
        fields.add(system);
      case 'type':
        fields.add(type);
      case 'instance':
        fields.add(instance);
      case 'inputProfile':
        if (inputProfile != null) {
          fields.add(inputProfile!);
        }
      case 'outputProfile':
        if (outputProfile != null) {
          fields.add(outputProfile!);
        }
      case 'parameter':
        if (parameter != null) {
          fields.addAll(parameter!);
        }
      case 'overload':
        if (overload != null) {
          fields.addAll(overload!);
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
  OperationDefinition clone() => copyWith();

  /// Copy function for [OperationDefinition]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $OperationDefinitionCopyWith<OperationDefinition> get copyWith =>
      _$OperationDefinitionCopyWithImpl<OperationDefinition>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! OperationDefinition) {
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
      kind,
      o.kind,
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
    if (!equalsDeepWithNull(
      affectsState,
      o.affectsState,
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
      comment,
      o.comment,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      base,
      o.base,
    )) {
      return false;
    }
    if (!listEquals<VersionIndependentResourceTypesAll>(
      resource,
      o.resource,
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
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      instance,
      o.instance,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      inputProfile,
      o.inputProfile,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      outputProfile,
      o.outputProfile,
    )) {
      return false;
    }
    if (!listEquals<OperationDefinitionParameter>(
      parameter,
      o.parameter,
    )) {
      return false;
    }
    if (!listEquals<OperationDefinitionOverload>(
      overload,
      o.overload,
    )) {
      return false;
    }
    return true;
  }
}

/// [OperationDefinitionParameter]
/// The parameters for the operation/query.
class OperationDefinitionParameter extends BackboneElement {
  /// Primary constructor for
  /// [OperationDefinitionParameter]

  const OperationDefinitionParameter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    required this.use,
    this.scope,
    required this.min,
    required this.max,
    this.documentation,
    this.type,
    this.allowedType,
    this.targetProfile,
    this.searchType,
    this.binding,
    this.referencedFrom,
    this.part_,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory OperationDefinitionParameter.fromJson(
    Map<String, dynamic> json,
  ) {
    return OperationDefinitionParameter(
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
      name: JsonParser.parsePrimitive<FhirCode>(
        json,
        'name',
        FhirCode.fromJson,
      )!,
      use: JsonParser.parsePrimitive<OperationParameterUse>(
        json,
        'use',
        OperationParameterUse.fromJson,
      )!,
      scope: JsonParser.parsePrimitiveList<OperationParameterScope>(
        json,
        'scope',
        OperationParameterScope.fromJson,
      ),
      min: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'min',
        FhirInteger.fromJson,
      )!,
      max: JsonParser.parsePrimitive<FhirString>(
        json,
        'max',
        FhirString.fromJson,
      )!,
      documentation: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'documentation',
        FhirMarkdown.fromJson,
      ),
      type: JsonParser.parsePrimitive<FHIRTypes>(
        json,
        'type',
        FHIRTypes.fromJson,
      ),
      allowedType: JsonParser.parsePrimitiveList<FHIRTypes>(
        json,
        'allowedType',
        FHIRTypes.fromJson,
      ),
      targetProfile: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'targetProfile',
        FhirCanonical.fromJson,
      ),
      searchType: JsonParser.parsePrimitive<SearchParamType>(
        json,
        'searchType',
        SearchParamType.fromJson,
      ),
      binding: JsonParser.parseObject<OperationDefinitionBinding>(
        json,
        'binding',
        OperationDefinitionBinding.fromJson,
      ),
      referencedFrom: (json['referencedFrom'] as List<dynamic>?)
          ?.map<OperationDefinitionReferencedFrom>(
            (v) => OperationDefinitionReferencedFrom.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      part_: (json['part'] as List<dynamic>?)
          ?.map<OperationDefinitionParameter>(
            (v) => OperationDefinitionParameter.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [OperationDefinitionParameter]
  /// from a [String] or [YamlMap] object
  factory OperationDefinitionParameter.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return OperationDefinitionParameter.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return OperationDefinitionParameter.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'OperationDefinitionParameter '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [OperationDefinitionParameter]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory OperationDefinitionParameter.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return OperationDefinitionParameter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'OperationDefinitionParameter';

  /// [name]
  /// The name of used to identify the parameter.
  final FhirCode name;

  /// [use]
  /// Whether this is an input or an output parameter.
  final OperationParameterUse use;

  /// [scope]
  /// If present, indicates that the parameter applies when the operation is
  /// being invoked at the specified level.
  final List<OperationParameterScope>? scope;

  /// [min]
  /// The minimum number of times this parameter SHALL appear in the request
  /// or response.
  final FhirInteger min;

  /// [max]
  /// The maximum number of times this element is permitted to appear in the
  /// request or response.
  final FhirString max;

  /// [documentation]
  /// Describes the meaning or use of this parameter.
  final FhirMarkdown? documentation;

  /// [type]
  /// The type for this parameter.
  final FHIRTypes? type;

  /// [allowedType]
  /// Support for polymorphic types. If the parameter type is abstract, this
  /// element lists allowed sub-types for the parameter.
  final List<FHIRTypes>? allowedType;

  /// [targetProfile]
  /// Used when the type is "Reference" or "canonical", and identifies a
  /// profile structure or implementation Guide that applies to the target of
  /// the reference this parameter refers to. If any profiles are specified,
  /// then the content must conform to at least one of them. The URL can be a
  /// local reference - to a contained StructureDefinition, or a reference to
  /// another StructureDefinition or Implementation Guide by a canonical URL.
  /// When an implementation guide is specified, the target resource SHALL
  /// conform to at least one profile defined in the implementation guide.
  final List<FhirCanonical>? targetProfile;

  /// [searchType]
  /// How the parameter is understood if/when it used as search parameter.
  /// This is only used if the parameter is a string.
  final SearchParamType? searchType;

  /// [binding]
  /// Binds to a value set if this parameter is coded (code, Coding,
  /// CodeableConcept).
  final OperationDefinitionBinding? binding;

  /// [referencedFrom]
  /// Identifies other resource parameters within the operation invocation
  /// that are expected to resolve to this resource.
  final List<OperationDefinitionReferencedFrom>? referencedFrom;

  /// [part_]
  /// The parts of a nested Parameter.
  final List<OperationDefinitionParameter>? part_;
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
    addField(
      'use',
      use,
    );
    addField(
      'scope',
      scope,
    );
    addField(
      'min',
      min,
    );
    addField(
      'max',
      max,
    );
    addField(
      'documentation',
      documentation,
    );
    addField(
      'type',
      type,
    );
    addField(
      'allowedType',
      allowedType,
    );
    addField(
      'targetProfile',
      targetProfile,
    );
    addField(
      'searchType',
      searchType,
    );
    addField(
      'binding',
      binding,
    );
    addField(
      'referencedFrom',
      referencedFrom,
    );
    addField(
      'part',
      part_,
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
      'name',
      'use',
      'scope',
      'min',
      'max',
      'documentation',
      'type',
      'allowedType',
      'targetProfile',
      'searchType',
      'binding',
      'referencedFrom',
      'part',
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
        fields.add(name);
      case 'use':
        fields.add(use);
      case 'scope':
        if (scope != null) {
          fields.addAll(scope!);
        }
      case 'min':
        fields.add(min);
      case 'max':
        fields.add(max);
      case 'documentation':
        if (documentation != null) {
          fields.add(documentation!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'allowedType':
        if (allowedType != null) {
          fields.addAll(allowedType!);
        }
      case 'targetProfile':
        if (targetProfile != null) {
          fields.addAll(targetProfile!);
        }
      case 'searchType':
        if (searchType != null) {
          fields.add(searchType!);
        }
      case 'binding':
        if (binding != null) {
          fields.add(binding!);
        }
      case 'referencedFrom':
        if (referencedFrom != null) {
          fields.addAll(referencedFrom!);
        }
      case 'part':
        if (part_ != null) {
          fields.addAll(part_!);
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
  OperationDefinitionParameter clone() => copyWith();

  /// Copy function for [OperationDefinitionParameter]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $OperationDefinitionParameterCopyWith<OperationDefinitionParameter>
      get copyWith => _$OperationDefinitionParameterCopyWithImpl<
              OperationDefinitionParameter>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! OperationDefinitionParameter) {
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
      use,
      o.use,
    )) {
      return false;
    }
    if (!listEquals<OperationParameterScope>(
      scope,
      o.scope,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      min,
      o.min,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      max,
      o.max,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      documentation,
      o.documentation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<FHIRTypes>(
      allowedType,
      o.allowedType,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonical>(
      targetProfile,
      o.targetProfile,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      searchType,
      o.searchType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      binding,
      o.binding,
    )) {
      return false;
    }
    if (!listEquals<OperationDefinitionReferencedFrom>(
      referencedFrom,
      o.referencedFrom,
    )) {
      return false;
    }
    if (!listEquals<OperationDefinitionParameter>(
      part_,
      o.part_,
    )) {
      return false;
    }
    return true;
  }
}

/// [OperationDefinitionBinding]
/// Binds to a value set if this parameter is coded (code, Coding,
/// CodeableConcept).
class OperationDefinitionBinding extends BackboneElement {
  /// Primary constructor for
  /// [OperationDefinitionBinding]

  const OperationDefinitionBinding({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.strength,
    required this.valueSet,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory OperationDefinitionBinding.fromJson(
    Map<String, dynamic> json,
  ) {
    return OperationDefinitionBinding(
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
      strength: JsonParser.parsePrimitive<BindingStrength>(
        json,
        'strength',
        BindingStrength.fromJson,
      )!,
      valueSet: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'valueSet',
        FhirCanonical.fromJson,
      )!,
    );
  }

  /// Deserialize [OperationDefinitionBinding]
  /// from a [String] or [YamlMap] object
  factory OperationDefinitionBinding.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return OperationDefinitionBinding.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return OperationDefinitionBinding.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'OperationDefinitionBinding '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [OperationDefinitionBinding]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory OperationDefinitionBinding.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return OperationDefinitionBinding.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'OperationDefinitionBinding';

  /// [strength]
  /// Indicates the degree of conformance expectations associated with this
  /// binding - that is, the degree to which the provided value set must be
  /// adhered to in the instances.
  final BindingStrength strength;

  /// [valueSet]
  /// Points to the value set or external definition (e.g. implicit value
  /// set) that identifies the set of codes to be used.
  final FhirCanonical valueSet;
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
      'strength',
      strength,
    );
    addField(
      'valueSet',
      valueSet,
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
      'strength',
      'valueSet',
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
      case 'strength':
        fields.add(strength);
      case 'valueSet':
        fields.add(valueSet);
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
  OperationDefinitionBinding clone() => copyWith();

  /// Copy function for [OperationDefinitionBinding]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $OperationDefinitionBindingCopyWith<OperationDefinitionBinding>
      get copyWith =>
          _$OperationDefinitionBindingCopyWithImpl<OperationDefinitionBinding>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! OperationDefinitionBinding) {
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
      strength,
      o.strength,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      valueSet,
      o.valueSet,
    )) {
      return false;
    }
    return true;
  }
}

/// [OperationDefinitionReferencedFrom]
/// Identifies other resource parameters within the operation invocation
/// that are expected to resolve to this resource.
class OperationDefinitionReferencedFrom extends BackboneElement {
  /// Primary constructor for
  /// [OperationDefinitionReferencedFrom]

  const OperationDefinitionReferencedFrom({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.source,
    this.sourceId,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory OperationDefinitionReferencedFrom.fromJson(
    Map<String, dynamic> json,
  ) {
    return OperationDefinitionReferencedFrom(
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
      source: JsonParser.parsePrimitive<FhirString>(
        json,
        'source',
        FhirString.fromJson,
      )!,
      sourceId: JsonParser.parsePrimitive<FhirString>(
        json,
        'sourceId',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [OperationDefinitionReferencedFrom]
  /// from a [String] or [YamlMap] object
  factory OperationDefinitionReferencedFrom.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return OperationDefinitionReferencedFrom.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return OperationDefinitionReferencedFrom.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'OperationDefinitionReferencedFrom '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [OperationDefinitionReferencedFrom]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory OperationDefinitionReferencedFrom.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return OperationDefinitionReferencedFrom.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'OperationDefinitionReferencedFrom';

  /// [source]
  /// The name of the parameter or dot-separated path of parameter names
  /// pointing to the resource parameter that is expected to contain a
  /// reference to this resource.
  final FhirString source;

  /// [sourceId]
  /// The id of the element in the referencing resource that is expected to
  /// resolve to this resource.
  final FhirString? sourceId;
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
      'source',
      source,
    );
    addField(
      'sourceId',
      sourceId,
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
      'source',
      'sourceId',
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
      case 'source':
        fields.add(source);
      case 'sourceId':
        if (sourceId != null) {
          fields.add(sourceId!);
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
  OperationDefinitionReferencedFrom clone() => copyWith();

  /// Copy function for [OperationDefinitionReferencedFrom]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $OperationDefinitionReferencedFromCopyWith<OperationDefinitionReferencedFrom>
      get copyWith => _$OperationDefinitionReferencedFromCopyWithImpl<
              OperationDefinitionReferencedFrom>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! OperationDefinitionReferencedFrom) {
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
      source,
      o.source,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sourceId,
      o.sourceId,
    )) {
      return false;
    }
    return true;
  }
}

/// [OperationDefinitionOverload]
/// Defines an appropriate combination of parameters to use when invoking
/// this operation, to help code generators when generating overloaded
/// parameter sets for this operation.
class OperationDefinitionOverload extends BackboneElement {
  /// Primary constructor for
  /// [OperationDefinitionOverload]

  const OperationDefinitionOverload({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.parameterName,
    this.comment,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory OperationDefinitionOverload.fromJson(
    Map<String, dynamic> json,
  ) {
    return OperationDefinitionOverload(
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
      parameterName: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'parameterName',
        FhirString.fromJson,
      ),
      comment: JsonParser.parsePrimitive<FhirString>(
        json,
        'comment',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [OperationDefinitionOverload]
  /// from a [String] or [YamlMap] object
  factory OperationDefinitionOverload.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return OperationDefinitionOverload.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return OperationDefinitionOverload.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'OperationDefinitionOverload '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [OperationDefinitionOverload]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory OperationDefinitionOverload.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return OperationDefinitionOverload.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'OperationDefinitionOverload';

  /// [parameterName]
  /// Name of parameter to include in overload.
  final List<FhirString>? parameterName;

  /// [comment]
  /// Comments to go on overload.
  final FhirString? comment;
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
      'parameterName',
      parameterName,
    );
    addField(
      'comment',
      comment,
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
      'parameterName',
      'comment',
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
      case 'parameterName':
        if (parameterName != null) {
          fields.addAll(parameterName!);
        }
      case 'comment':
        if (comment != null) {
          fields.add(comment!);
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
  OperationDefinitionOverload clone() => copyWith();

  /// Copy function for [OperationDefinitionOverload]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $OperationDefinitionOverloadCopyWith<OperationDefinitionOverload>
      get copyWith => _$OperationDefinitionOverloadCopyWithImpl<
              OperationDefinitionOverload>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! OperationDefinitionOverload) {
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
    if (!listEquals<FhirString>(
      parameterName,
      o.parameterName,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      comment,
      o.comment,
    )) {
      return false;
    }
    return true;
  }
}
