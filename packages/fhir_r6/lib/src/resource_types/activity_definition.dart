import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'activity_definition.g.dart';

/// [ActivityDefinition]
/// This resource allows for the definition of some activity to be
/// performed, independent of a particular patient, practitioner, or other
/// performance context.
class ActivityDefinition extends MetadataResource {
  /// Primary constructor for
  /// [ActivityDefinition]

  const ActivityDefinition({
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
    VersionAlgorithmXActivityDefinition? versionAlgorithmX,
    FhirString? versionAlgorithmString,
    Coding? versionAlgorithmCoding,
    this.name,
    this.title,
    this.subtitle,
    required super.status,
    super.experimental,
    SubjectXActivityDefinition? subjectX,
    CodeableConcept? subjectCodeableConcept,
    Reference? subjectReference,
    FhirCanonical? subjectCanonical,
    super.date,
    super.publisher,
    super.contact,
    super.description,
    super.useContext,
    super.jurisdiction,
    this.purpose,
    super.usage,
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
    this.library_,
    this.kind,
    this.profile,
    this.code,
    this.intent,
    this.priority,
    this.doNotPerform,
    TimingXActivityDefinition? timingX,
    Timing? timingTiming,
    Age? timingAge,
    Range? timingRange,
    FhirDuration? timingDuration,
    AsNeededXActivityDefinition? asNeededX,
    FhirBoolean? asNeededBoolean,
    CodeableConcept? asNeededCodeableConcept,
    this.location,
    this.participant,
    ProductXActivityDefinition? productX,
    Reference? productReference,
    CodeableConcept? productCodeableConcept,
    this.quantity,
    this.dosage,
    this.bodySite,
    this.specimenRequirement,
    this.observationRequirement,
    this.observationResultRequirement,
    this.transform,
    this.dynamicValue,
  })  : versionAlgorithmX = versionAlgorithmX ??
            versionAlgorithmString ??
            versionAlgorithmCoding,
        subjectX = subjectX ??
            subjectCodeableConcept ??
            subjectReference ??
            subjectCanonical,
        timingX = timingX ??
            timingTiming ??
            timingAge ??
            timingRange ??
            timingDuration,
        asNeededX = asNeededX ?? asNeededBoolean ?? asNeededCodeableConcept,
        productX = productX ?? productReference ?? productCodeableConcept,
        super(
          resourceType: R6ResourceType.ActivityDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ActivityDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    return ActivityDefinition(
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
          JsonParser.parsePolymorphic<VersionAlgorithmXActivityDefinition>(
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
      subtitle: JsonParser.parsePrimitive<FhirString>(
        json,
        'subtitle',
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
      subjectX: JsonParser.parsePolymorphic<SubjectXActivityDefinition>(
        json,
        {
          'subjectCodeableConcept': CodeableConcept.fromJson,
          'subjectReference': Reference.fromJson,
          'subjectCanonical': FhirCanonical.fromJson,
        },
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
      usage: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'usage',
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
      topic: (json['topic'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      author: (json['author'] as List<dynamic>?)
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
      relatedArtifact: (json['relatedArtifact'] as List<dynamic>?)
          ?.map<RelatedArtifact>(
            (v) => RelatedArtifact.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      library_: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'library',
        FhirCanonical.fromJson,
      ),
      kind: JsonParser.parsePrimitive<RequestResourceTypes>(
        json,
        'kind',
        RequestResourceTypes.fromJson,
      ),
      profile: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'profile',
        FhirCanonical.fromJson,
      ),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      ),
      intent: JsonParser.parsePrimitive<RequestIntent>(
        json,
        'intent',
        RequestIntent.fromJson,
      ),
      priority: JsonParser.parsePrimitive<RequestPriority>(
        json,
        'priority',
        RequestPriority.fromJson,
      ),
      doNotPerform: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'doNotPerform',
        FhirBoolean.fromJson,
      ),
      timingX: JsonParser.parsePolymorphic<TimingXActivityDefinition>(
        json,
        {
          'timingTiming': Timing.fromJson,
          'timingAge': Age.fromJson,
          'timingRange': Range.fromJson,
          'timingDuration': FhirDuration.fromJson,
        },
      ),
      asNeededX: JsonParser.parsePolymorphic<AsNeededXActivityDefinition>(
        json,
        {
          'asNeededBoolean': FhirBoolean.fromJson,
          'asNeededCodeableConcept': CodeableConcept.fromJson,
        },
      ),
      location: JsonParser.parseObject<CodeableReference>(
        json,
        'location',
        CodeableReference.fromJson,
      ),
      participant: (json['participant'] as List<dynamic>?)
          ?.map<ActivityDefinitionParticipant>(
            (v) => ActivityDefinitionParticipant.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      productX: JsonParser.parsePolymorphic<ProductXActivityDefinition>(
        json,
        {
          'productReference': Reference.fromJson,
          'productCodeableConcept': CodeableConcept.fromJson,
        },
      ),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
      ),
      dosage: (json['dosage'] as List<dynamic>?)
          ?.map<Dosage>(
            (v) => Dosage.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      bodySite: (json['bodySite'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      specimenRequirement: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'specimenRequirement',
        FhirCanonical.fromJson,
      ),
      observationRequirement: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'observationRequirement',
        FhirCanonical.fromJson,
      ),
      observationResultRequirement:
          JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'observationResultRequirement',
        FhirCanonical.fromJson,
      ),
      transform: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'transform',
        FhirCanonical.fromJson,
      ),
      dynamicValue: (json['dynamicValue'] as List<dynamic>?)
          ?.map<ActivityDefinitionDynamicValue>(
            (v) => ActivityDefinitionDynamicValue.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ActivityDefinition]
  /// from a [String] or [YamlMap] object
  factory ActivityDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ActivityDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ActivityDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ActivityDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ActivityDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ActivityDefinition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ActivityDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ActivityDefinition';

  /// [identifier]
  /// A formal identifier that is used to identify this activity definition
  /// when it is represented in other formats, or referenced in a
  /// specification, model, design or an instance.
  final List<Identifier>? identifier;

  /// [versionAlgorithmX]
  /// Indicates the mechanism used to compare versions to determine which is
  /// more current.
  final VersionAlgorithmXActivityDefinition? versionAlgorithmX;

  /// Getter for [versionAlgorithmString] as a FhirString
  FhirString? get versionAlgorithmString =>
      versionAlgorithmX?.isAs<FhirString>();

  /// Getter for [versionAlgorithmCoding] as a Coding
  Coding? get versionAlgorithmCoding => versionAlgorithmX?.isAs<Coding>();

  /// [name]
  /// A natural language name identifying the activity definition. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the activity definition.
  final FhirString? title;

  /// [subtitle]
  /// An explanatory or alternate title for the activity definition giving
  /// additional information about its content.
  final FhirString? subtitle;

  /// [subjectX]
  /// A code, group definition, or canonical reference that describes or
  /// identifies the intended subject of the activity being defined.
  /// Canonical references are allowed to support the definition of protocols
  /// for drug and substance quality specifications, and is allowed to
  /// reference a MedicinalProductDefinition, SubstanceDefinition,
  /// AdministrableProductDefinition, ManufacturedItemDefinition, or
  /// PackagedProductDefinition resource.
  final SubjectXActivityDefinition? subjectX;

  /// Getter for [subjectCodeableConcept] as a CodeableConcept
  CodeableConcept? get subjectCodeableConcept =>
      subjectX?.isAs<CodeableConcept>();

  /// Getter for [subjectReference] as a Reference
  Reference? get subjectReference => subjectX?.isAs<Reference>();

  /// Getter for [subjectCanonical] as a FhirCanonical
  FhirCanonical? get subjectCanonical => subjectX?.isAs<FhirCanonical>();

  /// [purpose]
  /// Explanation of why this activity definition is needed and why it has
  /// been designed as it has.
  final FhirMarkdown? purpose;

  /// [copyright]
  /// A copyright statement relating to the activity definition and/or its
  /// contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the activity definition.
  final FhirMarkdown? copyright;

  /// [copyrightLabel]
  /// A short string (<50 characters), suitable for inclusion in a page
  /// footer that identifies the copyright holder, effective period, and
  /// optionally whether rights are resctricted. (e.g. 'All rights reserved',
  /// 'Some rights reserved').
  final FhirString? copyrightLabel;

  /// [library_]
  /// A reference to a Library resource containing any formal logic used by
  /// the activity definition.
  final List<FhirCanonical>? library_;

  /// [kind]
  /// A description of the kind of resource the activity definition is
  /// representing. For example, a MedicationRequest, a ServiceRequest, or a
  /// CommunicationRequest.
  final RequestResourceTypes? kind;

  /// [profile]
  /// A profile to which the target of the activity definition is expected to
  /// conform.
  final FhirCanonical? profile;

  /// [code]
  /// Detailed description of the type of activity; e.g. What lab test, what
  /// procedure, what kind of encounter.
  final CodeableConcept? code;

  /// [intent]
  /// Indicates the level of authority/intentionality associated with the
  /// activity and where the request should fit into the workflow chain.
  final RequestIntent? intent;

  /// [priority]
  /// Indicates how quickly the activity should be addressed with respect to
  /// other requests.
  final RequestPriority? priority;

  /// [doNotPerform]
  /// Set this to true if the definition is to indicate that a particular
  /// activity should NOT be performed. If true, this element should be
  /// interpreted to reinforce a negative coding. For example NPO as a code
  /// with a doNotPerform of true would still indicate to NOT perform the
  /// action.
  final FhirBoolean? doNotPerform;

  /// [timingX]
  /// The timing or frequency upon which the described activity is to occur.
  final TimingXActivityDefinition? timingX;

  /// Getter for [timingTiming] as a Timing
  Timing? get timingTiming => timingX?.isAs<Timing>();

  /// Getter for [timingAge] as a Age
  Age? get timingAge => timingX?.isAs<Age>();

  /// Getter for [timingRange] as a Range
  Range? get timingRange => timingX?.isAs<Range>();

  /// Getter for [timingDuration] as a FhirDuration
  FhirDuration? get timingDuration => timingX?.isAs<FhirDuration>();

  /// [asNeededX]
  /// If a CodeableConcept is present, it indicates the pre-condition for
  /// performing the service. For example "pain", "on flare-up", etc.
  final AsNeededXActivityDefinition? asNeededX;

  /// Getter for [asNeededBoolean] as a FhirBoolean
  FhirBoolean? get asNeededBoolean => asNeededX?.isAs<FhirBoolean>();

  /// Getter for [asNeededCodeableConcept] as a CodeableConcept
  CodeableConcept? get asNeededCodeableConcept =>
      asNeededX?.isAs<CodeableConcept>();

  /// [location]
  /// Identifies the facility where the activity will occur; e.g. home,
  /// hospital, specific clinic, etc.
  final CodeableReference? location;

  /// [participant]
  /// Indicates who should participate in performing the action described.
  final List<ActivityDefinitionParticipant>? participant;

  /// [productX]
  /// Identifies the food, drug or other product being consumed or supplied
  /// in the activity.
  final ProductXActivityDefinition? productX;

  /// Getter for [productReference] as a Reference
  Reference? get productReference => productX?.isAs<Reference>();

  /// Getter for [productCodeableConcept] as a CodeableConcept
  CodeableConcept? get productCodeableConcept =>
      productX?.isAs<CodeableConcept>();

  /// [quantity]
  /// Identifies the quantity expected to be consumed at once (per dose, per
  /// meal, etc.).
  final Quantity? quantity;

  /// [dosage]
  /// Provides detailed dosage instructions in the same way that they are
  /// described for MedicationRequest resources.
  final List<Dosage>? dosage;

  /// [bodySite]
  /// Indicates the sites on the subject's body where the procedure should be
  /// performed (I.e. the target sites).
  final List<CodeableConcept>? bodySite;

  /// [specimenRequirement]
  /// Defines specimen requirements for the action to be performed, such as
  /// required specimens for a lab test.
  final List<FhirCanonical>? specimenRequirement;

  /// [observationRequirement]
  /// Defines observation requirements for the action to be performed, such
  /// as body weight or surface area.
  final List<FhirCanonical>? observationRequirement;

  /// [observationResultRequirement]
  /// Defines the observations that are expected to be produced by the
  /// action.
  final List<FhirCanonical>? observationResultRequirement;

  /// [transform]
  /// A reference to a StructureMap resource that defines a transform that
  /// can be executed to produce the intent resource using the
  /// ActivityDefinition instance as the input.
  final FhirCanonical? transform;

  /// [dynamicValue]
  /// Dynamic values that will be evaluated to produce values for elements of
  /// the resulting resource. For example, if the dosage of a medication must
  /// be computed based on the patient's weight, a dynamic value would be
  /// used to specify an expression that calculated the weight, and the path
  /// on the request resource that would contain the result.
  final List<ActivityDefinitionDynamicValue>? dynamicValue;
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
      'subtitle',
      subtitle,
    );
    addField(
      'status',
      status,
    );
    addField(
      'experimental',
      experimental,
    );
    if (subjectX != null) {
      final fhirType = subjectX!.fhirType;
      addField(
        'subject${fhirType.capitalize()}',
        subjectX,
      );
    }

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
      'usage',
      usage,
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
      'topic',
      topic,
    );
    addField(
      'author',
      author,
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
      'relatedArtifact',
      relatedArtifact,
    );
    addField(
      'library',
      library_,
    );
    addField(
      'kind',
      kind,
    );
    addField(
      'profile',
      profile,
    );
    addField(
      'code',
      code,
    );
    addField(
      'intent',
      intent,
    );
    addField(
      'priority',
      priority,
    );
    addField(
      'doNotPerform',
      doNotPerform,
    );
    if (timingX != null) {
      final fhirType = timingX!.fhirType;
      addField(
        'timing${fhirType.capitalize()}',
        timingX,
      );
    }

    if (asNeededX != null) {
      final fhirType = asNeededX!.fhirType;
      addField(
        'asNeeded${fhirType.capitalize()}',
        asNeededX,
      );
    }

    addField(
      'location',
      location,
    );
    addField(
      'participant',
      participant,
    );
    if (productX != null) {
      final fhirType = productX!.fhirType;
      addField(
        'product${fhirType.capitalize()}',
        productX,
      );
    }

    addField(
      'quantity',
      quantity,
    );
    addField(
      'dosage',
      dosage,
    );
    addField(
      'bodySite',
      bodySite,
    );
    addField(
      'specimenRequirement',
      specimenRequirement,
    );
    addField(
      'observationRequirement',
      observationRequirement,
    );
    addField(
      'observationResultRequirement',
      observationResultRequirement,
    );
    addField(
      'transform',
      transform,
    );
    addField(
      'dynamicValue',
      dynamicValue,
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
      'subtitle',
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
      'usage',
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
      'library',
      'kind',
      'profile',
      'code',
      'intent',
      'priority',
      'doNotPerform',
      'timingX',
      'asNeededX',
      'location',
      'participant',
      'productX',
      'quantity',
      'dosage',
      'bodySite',
      'specimenRequirement',
      'observationRequirement',
      'observationResultRequirement',
      'transform',
      'dynamicValue',
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
      case 'subtitle':
        if (subtitle != null) {
          fields.add(subtitle!);
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
        fields.add(subjectX!);
      case 'subjectX':
        fields.add(subjectX!);
      case 'subjectCodeableConcept':
        if (subjectX is CodeableConcept) {
          fields.add(subjectX!);
        }
      case 'subjectReference':
        if (subjectX is Reference) {
          fields.add(subjectX!);
        }
      case 'subjectCanonical':
        if (subjectX is FhirCanonical) {
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
      case 'usage':
        if (usage != null) {
          fields.add(usage!);
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
      case 'library':
        if (library_ != null) {
          fields.addAll(library_!);
        }
      case 'kind':
        if (kind != null) {
          fields.add(kind!);
        }
      case 'profile':
        if (profile != null) {
          fields.add(profile!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'intent':
        if (intent != null) {
          fields.add(intent!);
        }
      case 'priority':
        if (priority != null) {
          fields.add(priority!);
        }
      case 'doNotPerform':
        if (doNotPerform != null) {
          fields.add(doNotPerform!);
        }
      case 'timing':
        fields.add(timingX!);
      case 'timingX':
        fields.add(timingX!);
      case 'timingTiming':
        if (timingX is Timing) {
          fields.add(timingX!);
        }
      case 'timingAge':
        if (timingX is Age) {
          fields.add(timingX!);
        }
      case 'timingRange':
        if (timingX is Range) {
          fields.add(timingX!);
        }
      case 'timingDuration':
        if (timingX is FhirDuration) {
          fields.add(timingX!);
        }
      case 'asNeeded':
        fields.add(asNeededX!);
      case 'asNeededX':
        fields.add(asNeededX!);
      case 'asNeededBoolean':
        if (asNeededX is FhirBoolean) {
          fields.add(asNeededX!);
        }
      case 'asNeededCodeableConcept':
        if (asNeededX is CodeableConcept) {
          fields.add(asNeededX!);
        }
      case 'location':
        if (location != null) {
          fields.add(location!);
        }
      case 'participant':
        if (participant != null) {
          fields.addAll(participant!);
        }
      case 'product':
        fields.add(productX!);
      case 'productX':
        fields.add(productX!);
      case 'productReference':
        if (productX is Reference) {
          fields.add(productX!);
        }
      case 'productCodeableConcept':
        if (productX is CodeableConcept) {
          fields.add(productX!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'dosage':
        if (dosage != null) {
          fields.addAll(dosage!);
        }
      case 'bodySite':
        if (bodySite != null) {
          fields.addAll(bodySite!);
        }
      case 'specimenRequirement':
        if (specimenRequirement != null) {
          fields.addAll(specimenRequirement!);
        }
      case 'observationRequirement':
        if (observationRequirement != null) {
          fields.addAll(observationRequirement!);
        }
      case 'observationResultRequirement':
        if (observationResultRequirement != null) {
          fields.addAll(observationResultRequirement!);
        }
      case 'transform':
        if (transform != null) {
          fields.add(transform!);
        }
      case 'dynamicValue':
        if (dynamicValue != null) {
          fields.addAll(dynamicValue!);
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
  ActivityDefinition clone() => copyWith();

  /// Copy function for [ActivityDefinition]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ActivityDefinitionCopyWith<ActivityDefinition> get copyWith =>
      _$ActivityDefinitionCopyWithImpl<ActivityDefinition>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ActivityDefinition) {
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
      subtitle,
      o.subtitle,
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
      usage,
      o.usage,
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
    if (!listEquals<CodeableConcept>(
      topic,
      o.topic,
    )) {
      return false;
    }
    if (!listEquals<ContactDetail>(
      author,
      o.author,
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
    if (!listEquals<RelatedArtifact>(
      relatedArtifact,
      o.relatedArtifact,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonical>(
      library_,
      o.library_,
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
      profile,
      o.profile,
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
      intent,
      o.intent,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      priority,
      o.priority,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      doNotPerform,
      o.doNotPerform,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      timingX,
      o.timingX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      asNeededX,
      o.asNeededX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      location,
      o.location,
    )) {
      return false;
    }
    if (!listEquals<ActivityDefinitionParticipant>(
      participant,
      o.participant,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      productX,
      o.productX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!listEquals<Dosage>(
      dosage,
      o.dosage,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      bodySite,
      o.bodySite,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonical>(
      specimenRequirement,
      o.specimenRequirement,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonical>(
      observationRequirement,
      o.observationRequirement,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonical>(
      observationResultRequirement,
      o.observationResultRequirement,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      transform,
      o.transform,
    )) {
      return false;
    }
    if (!listEquals<ActivityDefinitionDynamicValue>(
      dynamicValue,
      o.dynamicValue,
    )) {
      return false;
    }
    return true;
  }
}

/// [ActivityDefinitionParticipant]
/// Indicates who should participate in performing the action described.
class ActivityDefinitionParticipant extends BackboneElement {
  /// Primary constructor for
  /// [ActivityDefinitionParticipant]

  const ActivityDefinitionParticipant({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.typeCanonical,
    this.typeReference,
    this.role,
    this.function_,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ActivityDefinitionParticipant.fromJson(
    Map<String, dynamic> json,
  ) {
    return ActivityDefinitionParticipant(
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
      type: JsonParser.parsePrimitive<ActionParticipantType>(
        json,
        'type',
        ActionParticipantType.fromJson,
      ),
      typeCanonical: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'typeCanonical',
        FhirCanonical.fromJson,
      ),
      typeReference: JsonParser.parseObject<Reference>(
        json,
        'typeReference',
        Reference.fromJson,
      ),
      role: JsonParser.parseObject<CodeableConcept>(
        json,
        'role',
        CodeableConcept.fromJson,
      ),
      function_: JsonParser.parseObject<CodeableConcept>(
        json,
        'function',
        CodeableConcept.fromJson,
      ),
    );
  }

  /// Deserialize [ActivityDefinitionParticipant]
  /// from a [String] or [YamlMap] object
  factory ActivityDefinitionParticipant.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ActivityDefinitionParticipant.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ActivityDefinitionParticipant.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ActivityDefinitionParticipant '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ActivityDefinitionParticipant]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ActivityDefinitionParticipant.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ActivityDefinitionParticipant.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ActivityDefinitionParticipant';

  /// [type]
  /// The type of participant in the action.
  final ActionParticipantType? type;

  /// [typeCanonical]
  /// The type of participant in the action.
  final FhirCanonical? typeCanonical;

  /// [typeReference]
  /// The type of participant in the action.
  final Reference? typeReference;

  /// [role]
  /// The role the participant should play in performing the described
  /// action.
  final CodeableConcept? role;

  /// [function_]
  /// Indicates how the actor will be involved in the action - author,
  /// reviewer, witness, etc.
  final CodeableConcept? function_;
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
      'typeCanonical',
      typeCanonical,
    );
    addField(
      'typeReference',
      typeReference,
    );
    addField(
      'role',
      role,
    );
    addField(
      'function',
      function_,
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
      'typeCanonical',
      'typeReference',
      'role',
      'function',
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
      case 'typeCanonical':
        if (typeCanonical != null) {
          fields.add(typeCanonical!);
        }
      case 'typeReference':
        if (typeReference != null) {
          fields.add(typeReference!);
        }
      case 'role':
        if (role != null) {
          fields.add(role!);
        }
      case 'function':
        if (function_ != null) {
          fields.add(function_!);
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
  ActivityDefinitionParticipant clone() => copyWith();

  /// Copy function for [ActivityDefinitionParticipant]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ActivityDefinitionParticipantCopyWith<ActivityDefinitionParticipant>
      get copyWith => _$ActivityDefinitionParticipantCopyWithImpl<
              ActivityDefinitionParticipant>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ActivityDefinitionParticipant) {
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
      typeCanonical,
      o.typeCanonical,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      typeReference,
      o.typeReference,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      role,
      o.role,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      function_,
      o.function_,
    )) {
      return false;
    }
    return true;
  }
}

/// [ActivityDefinitionDynamicValue]
/// Dynamic values that will be evaluated to produce values for elements of
/// the resulting resource. For example, if the dosage of a medication must
/// be computed based on the patient's weight, a dynamic value would be
/// used to specify an expression that calculated the weight, and the path
/// on the request resource that would contain the result.
class ActivityDefinitionDynamicValue extends BackboneElement {
  /// Primary constructor for
  /// [ActivityDefinitionDynamicValue]

  const ActivityDefinitionDynamicValue({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.path,
    required this.expression,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ActivityDefinitionDynamicValue.fromJson(
    Map<String, dynamic> json,
  ) {
    return ActivityDefinitionDynamicValue(
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
      path: JsonParser.parsePrimitive<FhirString>(
        json,
        'path',
        FhirString.fromJson,
      )!,
      expression: JsonParser.parseObject<FhirExpression>(
        json,
        'expression',
        FhirExpression.fromJson,
      )!,
    );
  }

  /// Deserialize [ActivityDefinitionDynamicValue]
  /// from a [String] or [YamlMap] object
  factory ActivityDefinitionDynamicValue.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ActivityDefinitionDynamicValue.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ActivityDefinitionDynamicValue.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ActivityDefinitionDynamicValue '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ActivityDefinitionDynamicValue]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ActivityDefinitionDynamicValue.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ActivityDefinitionDynamicValue.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ActivityDefinitionDynamicValue';

  /// [path]
  /// The path to the element to be customized. This is the path on the
  /// resource that will hold the result of the calculation defined by the
  /// expression. The specified path SHALL be a FHIRPath resolvable on the
  /// specified target type of the ActivityDefinition, and SHALL consist only
  /// of identifiers, constant indexers, and a restricted subset of
  /// functions. The path is allowed to contain qualifiers (.) to traverse
  /// sub-elements, as well as indexers ([x]) to traverse
  /// multiple-cardinality sub-elements (see the [Simple FHIRPath
  /// Profile](fhirpath.html#simple) for full details).
  final FhirString path;

  /// [expression]
  /// An expression specifying the value of the customized element.
  final FhirExpression expression;
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
      'path',
      path,
    );
    addField(
      'expression',
      expression,
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
      'path',
      'expression',
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
      case 'path':
        fields.add(path);
      case 'expression':
        fields.add(expression);
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
  ActivityDefinitionDynamicValue clone() => copyWith();

  /// Copy function for [ActivityDefinitionDynamicValue]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ActivityDefinitionDynamicValueCopyWith<ActivityDefinitionDynamicValue>
      get copyWith => _$ActivityDefinitionDynamicValueCopyWithImpl<
              ActivityDefinitionDynamicValue>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ActivityDefinitionDynamicValue) {
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
      path,
      o.path,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      expression,
      o.expression,
    )) {
      return false;
    }
    return true;
  }
}
