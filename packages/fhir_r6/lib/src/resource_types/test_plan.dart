import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'test_plan.g.dart';

/// [TestPlan]
/// A plan for executing testing on an artifact or specifications.
class TestPlan extends CanonicalResource {
  /// Primary constructor for
  /// [TestPlan]

  const TestPlan({
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
    VersionAlgorithmXTestPlan? versionAlgorithmX,
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
    this.category,
    this.scope,
    this.testTools,
    this.dependency,
    this.exitCriteria,
    this.testCase,
  })  : versionAlgorithmX = versionAlgorithmX ??
            versionAlgorithmString ??
            versionAlgorithmCoding,
        super(
          resourceType: R5ResourceType.TestPlan,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestPlan.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestPlan(
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
      versionAlgorithmX: JsonParser.parsePolymorphic<VersionAlgorithmXTestPlan>(
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
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      scope: (json['scope'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      testTools: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'testTools',
        FhirMarkdown.fromJson,
      ),
      dependency: (json['dependency'] as List<dynamic>?)
          ?.map<TestPlanDependency>(
            (v) => TestPlanDependency.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      exitCriteria: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'exitCriteria',
        FhirMarkdown.fromJson,
      ),
      testCase: (json['testCase'] as List<dynamic>?)
          ?.map<TestPlanTestCase>(
            (v) => TestPlanTestCase.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [TestPlan]
  /// from a [String] or [YamlMap] object
  factory TestPlan.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestPlan.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestPlan.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestPlan '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestPlan]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestPlan.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestPlan.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'TestPlan';

  /// [identifier]
  /// A formal identifier that is used to identify this test plan when it is
  /// represented in other formats, or referenced in a specification, model,
  /// design or an instance.
  final List<Identifier>? identifier;

  /// [versionAlgorithmX]
  /// Indicates the mechanism used to compare versions to determine which is
  /// more current.
  final VersionAlgorithmXTestPlan? versionAlgorithmX;

  /// Getter for [versionAlgorithmString] as a FhirString
  FhirString? get versionAlgorithmString =>
      versionAlgorithmX?.isAs<FhirString>();

  /// Getter for [versionAlgorithmCoding] as a Coding
  Coding? get versionAlgorithmCoding => versionAlgorithmX?.isAs<Coding>();

  /// [name]
  /// A natural language name identifying the test plan. This name should be
  /// usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the test plan.
  final FhirString? title;

  /// [purpose]
  /// Explanation of why this test plan is needed and why it has been
  /// designed as it has.
  final FhirMarkdown? purpose;

  /// [copyright]
  /// A copyright statement relating to the test plan and/or its contents.
  /// Copyright statements are generally legal restrictions on the use and
  /// publishing of the test plan. The short copyright declaration (e.g. (c)
  /// '2015+ xyz organization' should be sent in the copyrightLabel element.
  final FhirMarkdown? copyright;

  /// [copyrightLabel]
  /// A short string (<50 characters), suitable for inclusion in a page
  /// footer that identifies the copyright holder, effective period, and
  /// optionally whether rights are resctricted. (e.g. 'All rights reserved',
  /// 'Some rights reserved').
  final FhirString? copyrightLabel;

  /// [category]
  /// The category of the Test Plan - can be acceptance, unit, performance,
  /// etc.
  final List<CodeableConcept>? category;

  /// [scope]
  /// What is being tested with this Test Plan - a conformance resource, or
  /// narrative criteria, or an external reference...
  final List<Reference>? scope;

  /// [testTools]
  /// A description of test tools to be used in the test plan.
  final FhirMarkdown? testTools;

  /// [dependency]
  /// The required criteria to execute the test plan - e.g. preconditions,
  /// previous tests...
  final List<TestPlanDependency>? dependency;

  /// [exitCriteria]
  /// The threshold or criteria for the test plan to be considered
  /// successfully executed - narrative.
  final FhirMarkdown? exitCriteria;

  /// [testCase]
  /// The individual test cases that are part of this plan, when they they
  /// are made explicit.
  final List<TestPlanTestCase>? testCase;
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
      'category',
      category,
    );
    addField(
      'scope',
      scope,
    );
    addField(
      'testTools',
      testTools,
    );
    addField(
      'dependency',
      dependency,
    );
    addField(
      'exitCriteria',
      exitCriteria,
    );
    addField(
      'testCase',
      testCase,
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
      'category',
      'scope',
      'testTools',
      'dependency',
      'exitCriteria',
      'testCase',
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
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'scope':
        if (scope != null) {
          fields.addAll(scope!);
        }
      case 'testTools':
        if (testTools != null) {
          fields.add(testTools!);
        }
      case 'dependency':
        if (dependency != null) {
          fields.addAll(dependency!);
        }
      case 'exitCriteria':
        if (exitCriteria != null) {
          fields.add(exitCriteria!);
        }
      case 'testCase':
        if (testCase != null) {
          fields.addAll(testCase!);
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
  TestPlan clone() => copyWith();

  /// Copy function for [TestPlan]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $TestPlanCopyWith<TestPlan> get copyWith => _$TestPlanCopyWithImpl<TestPlan>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TestPlan) {
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
    if (!listEquals<CodeableConcept>(
      category,
      o.category,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      scope,
      o.scope,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      testTools,
      o.testTools,
    )) {
      return false;
    }
    if (!listEquals<TestPlanDependency>(
      dependency,
      o.dependency,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      exitCriteria,
      o.exitCriteria,
    )) {
      return false;
    }
    if (!listEquals<TestPlanTestCase>(
      testCase,
      o.testCase,
    )) {
      return false;
    }
    return true;
  }
}

/// [TestPlanDependency]
/// The required criteria to execute the test plan - e.g. preconditions,
/// previous tests...
class TestPlanDependency extends BackboneElement {
  /// Primary constructor for
  /// [TestPlanDependency]

  const TestPlanDependency({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.predecessor,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestPlanDependency.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestPlanDependency(
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
      predecessor: JsonParser.parseObject<Reference>(
        json,
        'predecessor',
        Reference.fromJson,
      ),
    );
  }

  /// Deserialize [TestPlanDependency]
  /// from a [String] or [YamlMap] object
  factory TestPlanDependency.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestPlanDependency.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestPlanDependency.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestPlanDependency '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestPlanDependency]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestPlanDependency.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestPlanDependency.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'TestPlanDependency';

  /// [description]
  /// A textual description of the criterium - what is needed for the
  /// dependency to be considered met.
  final FhirMarkdown? description;

  /// [predecessor]
  /// Predecessor test plans - those that are expected to be successfully
  /// performed as a dependency for the execution of this test plan.
  final Reference? predecessor;
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
      'predecessor',
      predecessor,
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
      'predecessor',
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
      case 'predecessor':
        if (predecessor != null) {
          fields.add(predecessor!);
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
  TestPlanDependency clone() => copyWith();

  /// Copy function for [TestPlanDependency]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $TestPlanDependencyCopyWith<TestPlanDependency> get copyWith =>
      _$TestPlanDependencyCopyWithImpl<TestPlanDependency>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TestPlanDependency) {
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
      description,
      o.description,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      predecessor,
      o.predecessor,
    )) {
      return false;
    }
    return true;
  }
}

/// [TestPlanTestCase]
/// The individual test cases that are part of this plan, when they they
/// are made explicit.
class TestPlanTestCase extends BackboneElement {
  /// Primary constructor for
  /// [TestPlanTestCase]

  const TestPlanTestCase({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.sequence,
    this.scope,
    this.dependency,
    this.testRun,
    this.testData,
    this.assertion,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestPlanTestCase.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestPlanTestCase(
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
      sequence: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'sequence',
        FhirInteger.fromJson,
      ),
      scope: (json['scope'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      dependency: (json['dependency'] as List<dynamic>?)
          ?.map<TestPlanDependency>(
            (v) => TestPlanDependency.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      testRun: (json['testRun'] as List<dynamic>?)
          ?.map<TestPlanTestRun>(
            (v) => TestPlanTestRun.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      testData: (json['testData'] as List<dynamic>?)
          ?.map<TestPlanTestData>(
            (v) => TestPlanTestData.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      assertion: (json['assertion'] as List<dynamic>?)
          ?.map<TestPlanAssertion>(
            (v) => TestPlanAssertion.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [TestPlanTestCase]
  /// from a [String] or [YamlMap] object
  factory TestPlanTestCase.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestPlanTestCase.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestPlanTestCase.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestPlanTestCase '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestPlanTestCase]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestPlanTestCase.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestPlanTestCase.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'TestPlanTestCase';

  /// [sequence]
  /// Sequence of test case - an ordinal number that indicates the order for
  /// the present test case in the test plan.
  final FhirInteger? sequence;

  /// [scope]
  /// The scope or artifact covered by the case, when the individual test
  /// case is associated with a testable artifact.
  final List<Reference>? scope;

  /// [dependency]
  /// The required criteria to execute the test case - e.g. preconditions,
  /// previous tests.
  final List<TestPlanDependency>? dependency;

  /// [testRun]
  /// The actual test to be executed.
  final List<TestPlanTestRun>? testRun;

  /// [testData]
  /// The test data used in the test case.
  final List<TestPlanTestData>? testData;

  /// [assertion]
  /// The test assertions - the expectations of test results from the
  /// execution of the test case.
  final List<TestPlanAssertion>? assertion;
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
      'sequence',
      sequence,
    );
    addField(
      'scope',
      scope,
    );
    addField(
      'dependency',
      dependency,
    );
    addField(
      'testRun',
      testRun,
    );
    addField(
      'testData',
      testData,
    );
    addField(
      'assertion',
      assertion,
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
      'sequence',
      'scope',
      'dependency',
      'testRun',
      'testData',
      'assertion',
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
      case 'sequence':
        if (sequence != null) {
          fields.add(sequence!);
        }
      case 'scope':
        if (scope != null) {
          fields.addAll(scope!);
        }
      case 'dependency':
        if (dependency != null) {
          fields.addAll(dependency!);
        }
      case 'testRun':
        if (testRun != null) {
          fields.addAll(testRun!);
        }
      case 'testData':
        if (testData != null) {
          fields.addAll(testData!);
        }
      case 'assertion':
        if (assertion != null) {
          fields.addAll(assertion!);
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
  TestPlanTestCase clone() => copyWith();

  /// Copy function for [TestPlanTestCase]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $TestPlanTestCaseCopyWith<TestPlanTestCase> get copyWith =>
      _$TestPlanTestCaseCopyWithImpl<TestPlanTestCase>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TestPlanTestCase) {
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
      sequence,
      o.sequence,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      scope,
      o.scope,
    )) {
      return false;
    }
    if (!listEquals<TestPlanDependency>(
      dependency,
      o.dependency,
    )) {
      return false;
    }
    if (!listEquals<TestPlanTestRun>(
      testRun,
      o.testRun,
    )) {
      return false;
    }
    if (!listEquals<TestPlanTestData>(
      testData,
      o.testData,
    )) {
      return false;
    }
    if (!listEquals<TestPlanAssertion>(
      assertion,
      o.assertion,
    )) {
      return false;
    }
    return true;
  }
}

/// [TestPlanDependency1]
/// The required criteria to execute the test case - e.g. preconditions,
/// previous tests.
class TestPlanDependency1 extends BackboneElement {
  /// Primary constructor for
  /// [TestPlanDependency1]

  const TestPlanDependency1({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.predecessor,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestPlanDependency1.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestPlanDependency1(
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
      predecessor: JsonParser.parseObject<Reference>(
        json,
        'predecessor',
        Reference.fromJson,
      ),
    );
  }

  /// Deserialize [TestPlanDependency1]
  /// from a [String] or [YamlMap] object
  factory TestPlanDependency1.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestPlanDependency1.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestPlanDependency1.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestPlanDependency1 '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestPlanDependency1]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestPlanDependency1.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestPlanDependency1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'TestPlanDependency1';

  /// [description]
  /// Description of the criteria.
  final FhirMarkdown? description;

  /// [predecessor]
  /// Link to predecessor test plans.
  final Reference? predecessor;
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
      'predecessor',
      predecessor,
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
      'predecessor',
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
      case 'predecessor':
        if (predecessor != null) {
          fields.add(predecessor!);
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
  TestPlanDependency1 clone() => copyWith();

  /// Copy function for [TestPlanDependency1]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $TestPlanDependency1CopyWith<TestPlanDependency1> get copyWith =>
      _$TestPlanDependency1CopyWithImpl<TestPlanDependency1>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TestPlanDependency1) {
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
      description,
      o.description,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      predecessor,
      o.predecessor,
    )) {
      return false;
    }
    return true;
  }
}

/// [TestPlanTestRun]
/// The actual test to be executed.
class TestPlanTestRun extends BackboneElement {
  /// Primary constructor for
  /// [TestPlanTestRun]

  const TestPlanTestRun({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.narrative,
    this.script,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestPlanTestRun.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestPlanTestRun(
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
      narrative: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'narrative',
        FhirMarkdown.fromJson,
      ),
      script: JsonParser.parseObject<TestPlanScript>(
        json,
        'script',
        TestPlanScript.fromJson,
      ),
    );
  }

  /// Deserialize [TestPlanTestRun]
  /// from a [String] or [YamlMap] object
  factory TestPlanTestRun.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestPlanTestRun.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestPlanTestRun.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestPlanTestRun '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestPlanTestRun]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestPlanTestRun.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestPlanTestRun.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'TestPlanTestRun';

  /// [narrative]
  /// The narrative description of the tests.
  final FhirMarkdown? narrative;

  /// [script]
  /// The test cases in a structured language e.g. gherkin, Postman, or FHIR
  /// TestScript.
  final TestPlanScript? script;
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
      'narrative',
      narrative,
    );
    addField(
      'script',
      script,
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
      'narrative',
      'script',
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
      case 'narrative':
        if (narrative != null) {
          fields.add(narrative!);
        }
      case 'script':
        if (script != null) {
          fields.add(script!);
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
  TestPlanTestRun clone() => copyWith();

  /// Copy function for [TestPlanTestRun]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $TestPlanTestRunCopyWith<TestPlanTestRun> get copyWith =>
      _$TestPlanTestRunCopyWithImpl<TestPlanTestRun>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TestPlanTestRun) {
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
      narrative,
      o.narrative,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      script,
      o.script,
    )) {
      return false;
    }
    return true;
  }
}

/// [TestPlanScript]
/// The test cases in a structured language e.g. gherkin, Postman, or FHIR
/// TestScript.
class TestPlanScript extends BackboneElement {
  /// Primary constructor for
  /// [TestPlanScript]

  const TestPlanScript({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.language,
    SourceXTestPlanScript? sourceX,
    FhirString? sourceString,
    Reference? sourceReference,
    super.disallowExtensions,
  })  : sourceX = sourceX ?? sourceString ?? sourceReference,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestPlanScript.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestPlanScript(
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
      language: JsonParser.parseObject<CodeableConcept>(
        json,
        'language',
        CodeableConcept.fromJson,
      ),
      sourceX: JsonParser.parsePolymorphic<SourceXTestPlanScript>(
        json,
        {
          'sourceString': FhirString.fromJson,
          'sourceReference': Reference.fromJson,
        },
      ),
    );
  }

  /// Deserialize [TestPlanScript]
  /// from a [String] or [YamlMap] object
  factory TestPlanScript.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestPlanScript.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestPlanScript.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestPlanScript '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestPlanScript]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestPlanScript.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestPlanScript.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'TestPlanScript';

  /// [language]
  /// The language for the test cases e.g. 'gherkin', 'testscript'.
  final CodeableConcept? language;

  /// [sourceX]
  /// The actual content of the cases - references to TestScripts or
  /// externally defined content.
  final SourceXTestPlanScript? sourceX;

  /// Getter for [sourceString] as a FhirString
  FhirString? get sourceString => sourceX?.isAs<FhirString>();

  /// Getter for [sourceReference] as a Reference
  Reference? get sourceReference => sourceX?.isAs<Reference>();
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
      'language',
      language,
    );
    if (sourceX != null) {
      final fhirType = sourceX!.fhirType;
      addField(
        'source${fhirType.capitalize()}',
        sourceX,
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
      'language',
      'sourceX',
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
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'source':
        fields.add(sourceX!);
      case 'sourceX':
        fields.add(sourceX!);
      case 'sourceString':
        if (sourceX is FhirString) {
          fields.add(sourceX!);
        }
      case 'sourceReference':
        if (sourceX is Reference) {
          fields.add(sourceX!);
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
  TestPlanScript clone() => copyWith();

  /// Copy function for [TestPlanScript]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $TestPlanScriptCopyWith<TestPlanScript> get copyWith =>
      _$TestPlanScriptCopyWithImpl<TestPlanScript>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TestPlanScript) {
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
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sourceX,
      o.sourceX,
    )) {
      return false;
    }
    return true;
  }
}

/// [TestPlanTestData]
/// The test data used in the test case.
class TestPlanTestData extends BackboneElement {
  /// Primary constructor for
  /// [TestPlanTestData]

  const TestPlanTestData({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.content,
    SourceXTestPlanTestData? sourceX,
    FhirString? sourceString,
    Reference? sourceReference,
    super.disallowExtensions,
  })  : sourceX = sourceX ?? sourceString ?? sourceReference,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestPlanTestData.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestPlanTestData(
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
      )!,
      content: JsonParser.parseObject<Reference>(
        json,
        'content',
        Reference.fromJson,
      ),
      sourceX: JsonParser.parsePolymorphic<SourceXTestPlanTestData>(
        json,
        {
          'sourceString': FhirString.fromJson,
          'sourceReference': Reference.fromJson,
        },
      ),
    );
  }

  /// Deserialize [TestPlanTestData]
  /// from a [String] or [YamlMap] object
  factory TestPlanTestData.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestPlanTestData.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestPlanTestData.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestPlanTestData '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestPlanTestData]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestPlanTestData.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestPlanTestData.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'TestPlanTestData';

  /// [type]
  /// The type of test data description, e.g. 'synthea'.
  final Coding type;

  /// [content]
  /// The actual test resources when they exist.
  final Reference? content;

  /// [sourceX]
  /// Pointer to a definition of test resources - narrative or structured
  /// e.g. synthetic data generation, etc.
  final SourceXTestPlanTestData? sourceX;

  /// Getter for [sourceString] as a FhirString
  FhirString? get sourceString => sourceX?.isAs<FhirString>();

  /// Getter for [sourceReference] as a Reference
  Reference? get sourceReference => sourceX?.isAs<Reference>();
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
      'content',
      content,
    );
    if (sourceX != null) {
      final fhirType = sourceX!.fhirType;
      addField(
        'source${fhirType.capitalize()}',
        sourceX,
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
      'type',
      'content',
      'sourceX',
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
      case 'content':
        if (content != null) {
          fields.add(content!);
        }
      case 'source':
        fields.add(sourceX!);
      case 'sourceX':
        fields.add(sourceX!);
      case 'sourceString':
        if (sourceX is FhirString) {
          fields.add(sourceX!);
        }
      case 'sourceReference':
        if (sourceX is Reference) {
          fields.add(sourceX!);
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
  TestPlanTestData clone() => copyWith();

  /// Copy function for [TestPlanTestData]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $TestPlanTestDataCopyWith<TestPlanTestData> get copyWith =>
      _$TestPlanTestDataCopyWithImpl<TestPlanTestData>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TestPlanTestData) {
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
      content,
      o.content,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sourceX,
      o.sourceX,
    )) {
      return false;
    }
    return true;
  }
}

/// [TestPlanAssertion]
/// The test assertions - the expectations of test results from the
/// execution of the test case.
class TestPlanAssertion extends BackboneElement {
  /// Primary constructor for
  /// [TestPlanAssertion]

  const TestPlanAssertion({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.object,
    this.result,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TestPlanAssertion.fromJson(
    Map<String, dynamic> json,
  ) {
    return TestPlanAssertion(
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
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      object: (json['object'] as List<dynamic>?)
          ?.map<CodeableReference>(
            (v) => CodeableReference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      result: (json['result'] as List<dynamic>?)
          ?.map<CodeableReference>(
            (v) => CodeableReference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [TestPlanAssertion]
  /// from a [String] or [YamlMap] object
  factory TestPlanAssertion.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TestPlanAssertion.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TestPlanAssertion.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TestPlanAssertion '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TestPlanAssertion]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TestPlanAssertion.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return TestPlanAssertion.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'TestPlanAssertion';

  /// [type]
  /// The test assertion type - this can be used to group assertions as
  /// 'required' or 'optional', or can be used for other classification of
  /// the assertion.
  final List<CodeableConcept>? type;

  /// [object]
  /// The focus or object of the assertion i.e. a resource.
  final List<CodeableReference>? object;

  /// [result]
  /// The test assertion - the expected outcome from the test case execution.
  final List<CodeableReference>? result;
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
      'object',
      object,
    );
    addField(
      'result',
      result,
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
      'object',
      'result',
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
          fields.addAll(type!);
        }
      case 'object':
        if (object != null) {
          fields.addAll(object!);
        }
      case 'result':
        if (result != null) {
          fields.addAll(result!);
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
  TestPlanAssertion clone() => copyWith();

  /// Copy function for [TestPlanAssertion]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $TestPlanAssertionCopyWith<TestPlanAssertion> get copyWith =>
      _$TestPlanAssertionCopyWithImpl<TestPlanAssertion>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TestPlanAssertion) {
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
    if (!listEquals<CodeableConcept>(
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<CodeableReference>(
      object,
      o.object,
    )) {
      return false;
    }
    if (!listEquals<CodeableReference>(
      result,
      o.result,
    )) {
      return false;
    }
    return true;
  }
}
