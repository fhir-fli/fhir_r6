import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'specimen_definition.g.dart';

/// [SpecimenDefinition]
/// A kind of specimen with associated set of requirements.
class SpecimenDefinition extends MetadataResource {
  /// Primary constructor for
  /// [SpecimenDefinition]

  const SpecimenDefinition({
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
    VersionAlgorithmXSpecimenDefinition? versionAlgorithmX,
    FhirString? versionAlgorithmString,
    Coding? versionAlgorithmCoding,
    this.name,
    this.title,
    this.derivedFromCanonical,
    this.derivedFromUri,
    required super.status,
    super.experimental,
    SubjectXSpecimenDefinition? subjectX,
    CodeableConcept? subjectCodeableConcept,
    Reference? subjectReference,
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
          resourceType: R5ResourceType.SpecimenDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    return SpecimenDefinition(
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
      identifier: JsonParser.parseObject<Identifier>(
        json,
        'identifier',
        Identifier.fromJson,
      ),
      version: JsonParser.parsePrimitive<FhirString>(
        json,
        'version',
        FhirString.fromJson,
      ),
      versionAlgorithmX:
          JsonParser.parsePolymorphic<VersionAlgorithmXSpecimenDefinition>(
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
      derivedFromCanonical: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'derivedFromCanonical',
        FhirCanonical.fromJson,
      ),
      derivedFromUri: JsonParser.parsePrimitiveList<FhirUri>(
        json,
        'derivedFromUri',
        FhirUri.fromJson,
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
      subjectX: JsonParser.parsePolymorphic<SubjectXSpecimenDefinition>(
        json,
        {
          'subjectCodeableConcept': CodeableConcept.fromJson,
          'subjectReference': Reference.fromJson,
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
      typeCollected: JsonParser.parseObject<CodeableConcept>(
        json,
        'typeCollected',
        CodeableConcept.fromJson,
      ),
      patientPreparation: (json['patientPreparation'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      timeAspect: JsonParser.parsePrimitive<FhirString>(
        json,
        'timeAspect',
        FhirString.fromJson,
      ),
      collection: (json['collection'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      typeTested: (json['typeTested'] as List<dynamic>?)
          ?.map<SpecimenDefinitionTypeTested>(
            (v) => SpecimenDefinitionTypeTested.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SpecimenDefinition]
  /// from a [String] or [YamlMap] object
  factory SpecimenDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SpecimenDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SpecimenDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SpecimenDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SpecimenDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SpecimenDefinition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SpecimenDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SpecimenDefinition';

  /// [identifier]
  /// A business identifier assigned to this SpecimenDefinition.
  final Identifier? identifier;

  /// [versionAlgorithmX]
  /// Indicates the mechanism used to compare versions to determine which is
  /// more current.
  final VersionAlgorithmXSpecimenDefinition? versionAlgorithmX;

  /// Getter for [versionAlgorithmString] as a FhirString
  FhirString? get versionAlgorithmString =>
      versionAlgorithmX?.isAs<FhirString>();

  /// Getter for [versionAlgorithmCoding] as a Coding
  Coding? get versionAlgorithmCoding => versionAlgorithmX?.isAs<Coding>();

  /// [name]
  /// A natural language name identifying the {{title}}. This name should be
  /// usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the SpecimenDefinition.
  final FhirString? title;

  /// [derivedFromCanonical]
  /// The canonical URL pointing to another FHIR-defined SpecimenDefinition
  /// that is adhered to in whole or in part by this definition.
  final List<FhirCanonical>? derivedFromCanonical;

  /// [derivedFromUri]
  /// The URL pointing to an externally-defined type of specimen, guideline
  /// or other definition that is adhered to in whole or in part by this
  /// definition.
  final List<FhirUri>? derivedFromUri;

  /// [subjectX]
  /// A code or group definition that describes the intended subject from
  /// which this kind of specimen is to be collected.
  final SubjectXSpecimenDefinition? subjectX;

  /// Getter for [subjectCodeableConcept] as a CodeableConcept
  CodeableConcept? get subjectCodeableConcept =>
      subjectX?.isAs<CodeableConcept>();

  /// Getter for [subjectReference] as a Reference
  Reference? get subjectReference => subjectX?.isAs<Reference>();

  /// [purpose]
  /// Explains why this SpecimeDefinition is needed and why it has been
  /// designed as it has.
  final FhirMarkdown? purpose;

  /// [copyright]
  /// Copyright statement relating to the SpecimenDefinition and/or its
  /// contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the SpecimenDefinition.
  final FhirMarkdown? copyright;

  /// [copyrightLabel]
  /// A short string (<50 characters), suitable for inclusion in a page
  /// footer that identifies the copyright holder, effective period, and
  /// optionally whether rights are resctricted. (e.g. 'All rights reserved',
  /// 'Some rights reserved').
  final FhirString? copyrightLabel;

  /// [typeCollected]
  /// The kind of material to be collected.
  final CodeableConcept? typeCollected;

  /// [patientPreparation]
  /// Preparation of the patient for specimen collection.
  final List<CodeableConcept>? patientPreparation;

  /// [timeAspect]
  /// Time aspect of specimen collection (duration or offset).
  final FhirString? timeAspect;

  /// [collection]
  /// The action to be performed for collecting the specimen.
  final List<CodeableConcept>? collection;

  /// [typeTested]
  /// Specimen conditioned in a container as expected by the testing
  /// laboratory.
  final List<SpecimenDefinitionTypeTested>? typeTested;
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
      'derivedFromCanonical',
      derivedFromCanonical,
    );
    addField(
      'derivedFromUri',
      derivedFromUri,
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
      'typeCollected',
      typeCollected,
    );
    addField(
      'patientPreparation',
      patientPreparation,
    );
    addField(
      'timeAspect',
      timeAspect,
    );
    addField(
      'collection',
      collection,
    );
    addField(
      'typeTested',
      typeTested,
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
          fields.add(identifier!);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  SpecimenDefinition clone() => copyWith();

  /// Copy function for [SpecimenDefinition]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SpecimenDefinitionCopyWith<SpecimenDefinition> get copyWith =>
      _$SpecimenDefinitionCopyWithImpl<SpecimenDefinition>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SpecimenDefinition) {
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
    if (!listEquals<FhirCanonical>(
      derivedFromCanonical,
      o.derivedFromCanonical,
    )) {
      return false;
    }
    if (!listEquals<FhirUri>(
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
    if (!listEquals<CodeableConcept>(
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
    if (!listEquals<CodeableConcept>(
      collection,
      o.collection,
    )) {
      return false;
    }
    if (!listEquals<SpecimenDefinitionTypeTested>(
      typeTested,
      o.typeTested,
    )) {
      return false;
    }
    return true;
  }
}

/// [SpecimenDefinitionTypeTested]
/// Specimen conditioned in a container as expected by the testing
/// laboratory.
class SpecimenDefinitionTypeTested extends BackboneElement {
  /// Primary constructor for
  /// [SpecimenDefinitionTypeTested]

  const SpecimenDefinitionTypeTested({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.isDerived,
    this.type,
    required this.preference,
    this.container,
    this.requirement,
    this.retentionTime,
    this.singleUse,
    this.rejectionCriterion,
    this.handling,
    this.testingDestination,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenDefinitionTypeTested.fromJson(
    Map<String, dynamic> json,
  ) {
    return SpecimenDefinitionTypeTested(
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
      isDerived: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'isDerived',
        FhirBoolean.fromJson,
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      preference: JsonParser.parsePrimitive<SpecimenContainedPreference>(
        json,
        'preference',
        SpecimenContainedPreference.fromJson,
      )!,
      container: JsonParser.parseObject<SpecimenDefinitionContainer>(
        json,
        'container',
        SpecimenDefinitionContainer.fromJson,
      ),
      requirement: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'requirement',
        FhirMarkdown.fromJson,
      ),
      retentionTime: JsonParser.parseObject<FhirDuration>(
        json,
        'retentionTime',
        FhirDuration.fromJson,
      ),
      singleUse: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'singleUse',
        FhirBoolean.fromJson,
      ),
      rejectionCriterion: (json['rejectionCriterion'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      handling: (json['handling'] as List<dynamic>?)
          ?.map<SpecimenDefinitionHandling>(
            (v) => SpecimenDefinitionHandling.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      testingDestination: (json['testingDestination'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SpecimenDefinitionTypeTested]
  /// from a [String] or [YamlMap] object
  factory SpecimenDefinitionTypeTested.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SpecimenDefinitionTypeTested.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SpecimenDefinitionTypeTested.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SpecimenDefinitionTypeTested '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SpecimenDefinitionTypeTested]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SpecimenDefinitionTypeTested.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SpecimenDefinitionTypeTested.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SpecimenDefinitionTypeTested';

  /// [isDerived]
  /// Primary of secondary specimen.
  final FhirBoolean? isDerived;

  /// [type]
  /// The kind of specimen conditioned for testing expected by lab.
  final CodeableConcept? type;

  /// [preference]
  /// The preference for this type of conditioned specimen.
  final SpecimenContainedPreference preference;

  /// [container]
  /// The specimen's container.
  final SpecimenDefinitionContainer? container;

  /// [requirement]
  /// Requirements for delivery and special handling of this kind of
  /// conditioned specimen.
  final FhirMarkdown? requirement;

  /// [retentionTime]
  /// The usual time that a specimen of this kind is retained after the
  /// ordered tests are completed, for the purpose of additional testing.
  final FhirDuration? retentionTime;

  /// [singleUse]
  /// Specimen can be used by only one test or panel if the value is "true".
  final FhirBoolean? singleUse;

  /// [rejectionCriterion]
  /// Criterion for rejection of the specimen in its container by the
  /// laboratory.
  final List<CodeableConcept>? rejectionCriterion;

  /// [handling]
  /// Set of instructions for preservation/transport of the specimen at a
  /// defined temperature interval, prior the testing process.
  final List<SpecimenDefinitionHandling>? handling;

  /// [testingDestination]
  /// Where the specimen will be tested: e.g., lab, sector, device or any
  /// combination of these.
  final List<CodeableConcept>? testingDestination;
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
      'isDerived',
      isDerived,
    );
    addField(
      'type',
      type,
    );
    addField(
      'preference',
      preference,
    );
    addField(
      'container',
      container,
    );
    addField(
      'requirement',
      requirement,
    );
    addField(
      'retentionTime',
      retentionTime,
    );
    addField(
      'singleUse',
      singleUse,
    );
    addField(
      'rejectionCriterion',
      rejectionCriterion,
    );
    addField(
      'handling',
      handling,
    );
    addField(
      'testingDestination',
      testingDestination,
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
      case 'isDerived':
        if (isDerived != null) {
          fields.add(isDerived!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'preference':
        fields.add(preference);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  SpecimenDefinitionTypeTested clone() => copyWith();

  /// Copy function for [SpecimenDefinitionTypeTested]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SpecimenDefinitionTypeTestedCopyWith<SpecimenDefinitionTypeTested>
      get copyWith => _$SpecimenDefinitionTypeTestedCopyWithImpl<
              SpecimenDefinitionTypeTested>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SpecimenDefinitionTypeTested) {
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
    if (!listEquals<CodeableConcept>(
      rejectionCriterion,
      o.rejectionCriterion,
    )) {
      return false;
    }
    if (!listEquals<SpecimenDefinitionHandling>(
      handling,
      o.handling,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      testingDestination,
      o.testingDestination,
    )) {
      return false;
    }
    return true;
  }
}

/// [SpecimenDefinitionContainer]
/// The specimen's container.
class SpecimenDefinitionContainer extends BackboneElement {
  /// Primary constructor for
  /// [SpecimenDefinitionContainer]

  const SpecimenDefinitionContainer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.material,
    this.type,
    this.cap,
    this.description,
    this.capacity,
    MinimumVolumeXSpecimenDefinitionContainer? minimumVolumeX,
    Quantity? minimumVolumeQuantity,
    FhirString? minimumVolumeString,
    this.additive,
    this.preparation,
    super.disallowExtensions,
  })  : minimumVolumeX =
            minimumVolumeX ?? minimumVolumeQuantity ?? minimumVolumeString,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenDefinitionContainer.fromJson(
    Map<String, dynamic> json,
  ) {
    return SpecimenDefinitionContainer(
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
      material: JsonParser.parseObject<CodeableConcept>(
        json,
        'material',
        CodeableConcept.fromJson,
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      cap: JsonParser.parseObject<CodeableConcept>(
        json,
        'cap',
        CodeableConcept.fromJson,
      ),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      capacity: JsonParser.parseObject<Quantity>(
        json,
        'capacity',
        Quantity.fromJson,
      ),
      minimumVolumeX: JsonParser.parsePolymorphic<
          MinimumVolumeXSpecimenDefinitionContainer>(
        json,
        {
          'minimumVolumeQuantity': Quantity.fromJson,
          'minimumVolumeString': FhirString.fromJson,
        },
      ),
      additive: (json['additive'] as List<dynamic>?)
          ?.map<SpecimenDefinitionAdditive>(
            (v) => SpecimenDefinitionAdditive.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      preparation: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'preparation',
        FhirMarkdown.fromJson,
      ),
    );
  }

  /// Deserialize [SpecimenDefinitionContainer]
  /// from a [String] or [YamlMap] object
  factory SpecimenDefinitionContainer.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SpecimenDefinitionContainer.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SpecimenDefinitionContainer.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SpecimenDefinitionContainer '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SpecimenDefinitionContainer]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SpecimenDefinitionContainer.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SpecimenDefinitionContainer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SpecimenDefinitionContainer';

  /// [material]
  /// The type of material of the container.
  final CodeableConcept? material;

  /// [type]
  /// The type of container used to contain this kind of specimen.
  final CodeableConcept? type;

  /// [cap]
  /// Color of container cap.
  final CodeableConcept? cap;

  /// [description]
  /// The textual description of the kind of container.
  final FhirMarkdown? description;

  /// [capacity]
  /// The capacity (volume or other measure) of this kind of container.
  final Quantity? capacity;

  /// [minimumVolumeX]
  /// The minimum volume to be conditioned in the container.
  final MinimumVolumeXSpecimenDefinitionContainer? minimumVolumeX;

  /// Getter for [minimumVolumeQuantity] as a Quantity
  Quantity? get minimumVolumeQuantity => minimumVolumeX?.isAs<Quantity>();

  /// Getter for [minimumVolumeString] as a FhirString
  FhirString? get minimumVolumeString => minimumVolumeX?.isAs<FhirString>();

  /// [additive]
  /// Substance introduced in the kind of container to preserve, maintain or
  /// enhance the specimen. Examples: Formalin, Citrate, EDTA.
  final List<SpecimenDefinitionAdditive>? additive;

  /// [preparation]
  /// Special processing that should be applied to the container for this
  /// kind of specimen.
  final FhirMarkdown? preparation;
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
      'material',
      material,
    );
    addField(
      'type',
      type,
    );
    addField(
      'cap',
      cap,
    );
    addField(
      'description',
      description,
    );
    addField(
      'capacity',
      capacity,
    );
    if (minimumVolumeX != null) {
      final fhirType = minimumVolumeX!.fhirType;
      addField(
        'minimumVolume${fhirType.capitalize()}',
        minimumVolumeX,
      );
    }

    addField(
      'additive',
      additive,
    );
    addField(
      'preparation',
      preparation,
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
        fields.add(minimumVolumeX!);
      case 'minimumVolumeX':
        fields.add(minimumVolumeX!);
      case 'minimumVolumeQuantity':
        if (minimumVolumeX is Quantity) {
          fields.add(minimumVolumeX!);
        }
      case 'minimumVolumeString':
        if (minimumVolumeX is FhirString) {
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  SpecimenDefinitionContainer clone() => copyWith();

  /// Copy function for [SpecimenDefinitionContainer]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SpecimenDefinitionContainerCopyWith<SpecimenDefinitionContainer>
      get copyWith => _$SpecimenDefinitionContainerCopyWithImpl<
              SpecimenDefinitionContainer>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SpecimenDefinitionContainer) {
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
    if (!listEquals<SpecimenDefinitionAdditive>(
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

/// [SpecimenDefinitionAdditive]
/// Substance introduced in the kind of container to preserve, maintain or
/// enhance the specimen. Examples: Formalin, Citrate, EDTA.
class SpecimenDefinitionAdditive extends BackboneElement {
  /// Primary constructor for
  /// [SpecimenDefinitionAdditive]

  const SpecimenDefinitionAdditive({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.additiveX,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenDefinitionAdditive.fromJson(
    Map<String, dynamic> json,
  ) {
    return SpecimenDefinitionAdditive(
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
      additiveX:
          JsonParser.parsePolymorphic<AdditiveXSpecimenDefinitionAdditive>(
        json,
        {
          'additiveCodeableConcept': CodeableConcept.fromJson,
          'additiveReference': Reference.fromJson,
        },
      )!,
    );
  }

  /// Deserialize [SpecimenDefinitionAdditive]
  /// from a [String] or [YamlMap] object
  factory SpecimenDefinitionAdditive.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SpecimenDefinitionAdditive.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SpecimenDefinitionAdditive.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SpecimenDefinitionAdditive '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SpecimenDefinitionAdditive]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SpecimenDefinitionAdditive.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SpecimenDefinitionAdditive.fromJson(json);
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
  final AdditiveXSpecimenDefinitionAdditive additiveX;

  /// Getter for [additiveCodeableConcept] as a CodeableConcept
  CodeableConcept? get additiveCodeableConcept =>
      additiveX.isAs<CodeableConcept>();

  /// Getter for [additiveReference] as a Reference
  Reference? get additiveReference => additiveX.isAs<Reference>();
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
    final additiveXFhirType = additiveX.fhirType;
    addField(
      'additive${additiveXFhirType.capitalize()}',
      additiveX,
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
      'additiveX',
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
      case 'additive':
        fields.add(additiveX);
      case 'additiveX':
        fields.add(additiveX);
      case 'additiveCodeableConcept':
        if (additiveX is CodeableConcept) {
          fields.add(additiveX);
        }
      case 'additiveReference':
        if (additiveX is Reference) {
          fields.add(additiveX);
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
  SpecimenDefinitionAdditive clone() => copyWith();

  /// Copy function for [SpecimenDefinitionAdditive]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SpecimenDefinitionAdditiveCopyWith<SpecimenDefinitionAdditive>
      get copyWith =>
          _$SpecimenDefinitionAdditiveCopyWithImpl<SpecimenDefinitionAdditive>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SpecimenDefinitionAdditive) {
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
      additiveX,
      o.additiveX,
    )) {
      return false;
    }
    return true;
  }
}

/// [SpecimenDefinitionHandling]
/// Set of instructions for preservation/transport of the specimen at a
/// defined temperature interval, prior the testing process.
class SpecimenDefinitionHandling extends BackboneElement {
  /// Primary constructor for
  /// [SpecimenDefinitionHandling]

  const SpecimenDefinitionHandling({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.temperatureQualifier,
    this.temperatureRange,
    this.maxDuration,
    this.instruction,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SpecimenDefinitionHandling.fromJson(
    Map<String, dynamic> json,
  ) {
    return SpecimenDefinitionHandling(
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
      temperatureQualifier: JsonParser.parseObject<CodeableConcept>(
        json,
        'temperatureQualifier',
        CodeableConcept.fromJson,
      ),
      temperatureRange: JsonParser.parseObject<Range>(
        json,
        'temperatureRange',
        Range.fromJson,
      ),
      maxDuration: JsonParser.parseObject<FhirDuration>(
        json,
        'maxDuration',
        FhirDuration.fromJson,
      ),
      instruction: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'instruction',
        FhirMarkdown.fromJson,
      ),
    );
  }

  /// Deserialize [SpecimenDefinitionHandling]
  /// from a [String] or [YamlMap] object
  factory SpecimenDefinitionHandling.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SpecimenDefinitionHandling.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SpecimenDefinitionHandling.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SpecimenDefinitionHandling '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SpecimenDefinitionHandling]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SpecimenDefinitionHandling.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SpecimenDefinitionHandling.fromJson(json);
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
  final CodeableConcept? temperatureQualifier;

  /// [temperatureRange]
  /// The temperature interval for this set of handling instructions.
  final Range? temperatureRange;

  /// [maxDuration]
  /// The maximum time interval of preservation of the specimen with these
  /// conditions.
  final FhirDuration? maxDuration;

  /// [instruction]
  /// Additional textual instructions for the preservation or transport of
  /// the specimen. For instance, 'Protect from light exposure'.
  final FhirMarkdown? instruction;
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
      'temperatureQualifier',
      temperatureQualifier,
    );
    addField(
      'temperatureRange',
      temperatureRange,
    );
    addField(
      'maxDuration',
      maxDuration,
    );
    addField(
      'instruction',
      instruction,
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
      'temperatureQualifier',
      'temperatureRange',
      'maxDuration',
      'instruction',
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  SpecimenDefinitionHandling clone() => copyWith();

  /// Copy function for [SpecimenDefinitionHandling]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SpecimenDefinitionHandlingCopyWith<SpecimenDefinitionHandling>
      get copyWith =>
          _$SpecimenDefinitionHandlingCopyWithImpl<SpecimenDefinitionHandling>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SpecimenDefinitionHandling) {
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
