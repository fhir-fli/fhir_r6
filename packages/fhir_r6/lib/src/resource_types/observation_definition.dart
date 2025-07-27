import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'observation_definition.g.dart';

/// [ObservationDefinition]
/// Set of definitional characteristics for a kind of observation or
/// measurement produced or consumed by an orderable health care service.
class ObservationDefinition extends MetadataResource {
  /// Primary constructor for
  /// [ObservationDefinition]

  const ObservationDefinition({
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
    VersionAlgorithmXObservationDefinition? versionAlgorithmX,
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
    super.approvalDate,
    super.lastReviewDate,
    super.effectivePeriod,
    this.derivedFromCanonical,
    this.derivedFromUri,
    this.subject,
    this.performerType,
    this.category,
    required this.code,
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
          resourceType: R6ResourceType.ObservationDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ObservationDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    return ObservationDefinition(
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
          JsonParser.parsePolymorphic<VersionAlgorithmXObservationDefinition>(
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
      subject: (json['subject'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      performerType: JsonParser.parseObject<CodeableConcept>(
        json,
        'performerType',
        CodeableConcept.fromJson,
      ),
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      )!,
      permittedDataType: JsonParser.parsePrimitiveList<ObservationDataType>(
        json,
        'permittedDataType',
        ObservationDataType.fromJson,
      ),
      multipleResultsAllowed: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'multipleResultsAllowed',
        FhirBoolean.fromJson,
      ),
      bodySite: JsonParser.parseObject<CodeableConcept>(
        json,
        'bodySite',
        CodeableConcept.fromJson,
      ),
      method: JsonParser.parseObject<CodeableConcept>(
        json,
        'method',
        CodeableConcept.fromJson,
      ),
      specimen: (json['specimen'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      device: (json['device'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      preferredReportName: JsonParser.parsePrimitive<FhirString>(
        json,
        'preferredReportName',
        FhirString.fromJson,
      ),
      permittedUnit: (json['permittedUnit'] as List<dynamic>?)
          ?.map<Coding>(
            (v) => Coding.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      qualifiedValue: (json['qualifiedValue'] as List<dynamic>?)
          ?.map<ObservationDefinitionQualifiedValue>(
            (v) => ObservationDefinitionQualifiedValue.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      hasMember: (json['hasMember'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      component: (json['component'] as List<dynamic>?)
          ?.map<ObservationDefinitionComponent>(
            (v) => ObservationDefinitionComponent.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ObservationDefinition]
  /// from a [String] or [YamlMap] object
  factory ObservationDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ObservationDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ObservationDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ObservationDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ObservationDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ObservationDefinition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ObservationDefinition.fromJson(json);
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
  final Identifier? identifier;

  /// [versionAlgorithmX]
  /// Indicates the mechanism used to compare versions to determine which is
  /// more current.
  final VersionAlgorithmXObservationDefinition? versionAlgorithmX;

  /// Getter for [versionAlgorithmString] as a FhirString
  FhirString? get versionAlgorithmString =>
      versionAlgorithmX?.isAs<FhirString>();

  /// Getter for [versionAlgorithmCoding] as a Coding
  Coding? get versionAlgorithmCoding => versionAlgorithmX?.isAs<Coding>();

  /// [name]
  /// A natural language name identifying the ObservationDefinition. This
  /// name should be usable as an identifier for the module by machine
  /// processing applications such as code generation.
  final FhirString? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the
  /// ObservationDefinition.
  final FhirString? title;

  /// [purpose]
  /// Explains why this ObservationDefinition is needed and why it has been
  /// designed as it has.
  final FhirMarkdown? purpose;

  /// [copyright]
  /// Copyright statement relating to the ObservationDefinition and/or its
  /// contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the ObservationDefinition.
  final FhirMarkdown? copyright;

  /// [copyrightLabel]
  /// A short string (<50 characters), suitable for inclusion in a page
  /// footer that identifies the copyright holder, effective period, and
  /// optionally whether rights are resctricted. (e.g. 'All rights reserved',
  /// 'Some rights reserved').
  final FhirString? copyrightLabel;

  /// [derivedFromCanonical]
  /// The canonical URL pointing to another FHIR-defined
  /// ObservationDefinition that is adhered to in whole or in part by this
  /// definition.
  final List<FhirCanonical>? derivedFromCanonical;

  /// [derivedFromUri]
  /// The URL pointing to an externally-defined observation definition,
  /// guideline or other definition that is adhered to in whole or in part by
  /// this definition.
  final List<FhirUri>? derivedFromUri;

  /// [subject]
  /// A code that describes the intended kind of subject of Observation
  /// instances conforming to this ObservationDefinition.
  final List<CodeableConcept>? subject;

  /// [performerType]
  /// The type of individual/organization/device that is expected to act upon
  /// instances of this definition.
  final CodeableConcept? performerType;

  /// [category]
  /// A code that classifies the general type of observation.
  final List<CodeableConcept>? category;

  /// [code]
  /// Describes what will be observed. Sometimes this is called the
  /// observation "name".
  final CodeableConcept code;

  /// [permittedDataType]
  /// The data types allowed for the value element of the instance
  /// observations conforming to this ObservationDefinition.
  final List<ObservationDataType>? permittedDataType;

  /// [multipleResultsAllowed]
  /// Multiple results allowed for observations conforming to this
  /// ObservationDefinition.
  final FhirBoolean? multipleResultsAllowed;

  /// [bodySite]
  /// The site on the subject's body where the observation is to be made.
  final CodeableConcept? bodySite;

  /// [method]
  /// The method or technique used to perform the observation.
  final CodeableConcept? method;

  /// [specimen]
  /// The kind of specimen that this type of observation is produced on.
  final List<Reference>? specimen;

  /// [device]
  /// The measurement model of device or actual device used to produce
  /// observations of this type.
  final List<Reference>? device;

  /// [preferredReportName]
  /// The preferred name to be used when reporting the results of
  /// observations conforming to this ObservationDefinition.
  final FhirString? preferredReportName;

  /// [permittedUnit]
  /// Units allowed for the valueQuantity element in the instance
  /// observations conforming to this ObservationDefinition.
  final List<Coding>? permittedUnit;

  /// [qualifiedValue]
  /// A set of qualified values associated with a context and a set of
  /// conditions - provides a range for quantitative and ordinal observations
  /// and a collection of value sets for qualitative observations.
  final List<ObservationDefinitionQualifiedValue>? qualifiedValue;

  /// [hasMember]
  /// This ObservationDefinition defines a group observation (e.g. a battery,
  /// a panel of tests, a set of vital sign measurements) that includes the
  /// target as a member of the group.
  final List<Reference>? hasMember;

  /// [component]
  /// Some observations have multiple component observations, expressed as
  /// separate code value pairs.
  final List<ObservationDefinitionComponent>? component;
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
      'derivedFromCanonical',
      derivedFromCanonical,
    );
    addField(
      'derivedFromUri',
      derivedFromUri,
    );
    addField(
      'subject',
      subject,
    );
    addField(
      'performerType',
      performerType,
    );
    addField(
      'category',
      category,
    );
    addField(
      'code',
      code,
    );
    addField(
      'permittedDataType',
      permittedDataType,
    );
    addField(
      'multipleResultsAllowed',
      multipleResultsAllowed,
    );
    addField(
      'bodySite',
      bodySite,
    );
    addField(
      'method',
      method,
    );
    addField(
      'specimen',
      specimen,
    );
    addField(
      'device',
      device,
    );
    addField(
      'preferredReportName',
      preferredReportName,
    );
    addField(
      'permittedUnit',
      permittedUnit,
    );
    addField(
      'qualifiedValue',
      qualifiedValue,
    );
    addField(
      'hasMember',
      hasMember,
    );
    addField(
      'component',
      component,
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
        fields.add(code);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ObservationDefinition clone() => copyWith();

  /// Copy function for [ObservationDefinition]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ObservationDefinitionCopyWith<ObservationDefinition> get copyWith =>
      _$ObservationDefinitionCopyWithImpl<ObservationDefinition>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ObservationDefinition) {
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
    if (!listEquals<CodeableConcept>(
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
    if (!listEquals<CodeableConcept>(
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
    if (!listEquals<ObservationDataType>(
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
    if (!listEquals<Reference>(
      specimen,
      o.specimen,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
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
    if (!listEquals<Coding>(
      permittedUnit,
      o.permittedUnit,
    )) {
      return false;
    }
    if (!listEquals<ObservationDefinitionQualifiedValue>(
      qualifiedValue,
      o.qualifiedValue,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      hasMember,
      o.hasMember,
    )) {
      return false;
    }
    if (!listEquals<ObservationDefinitionComponent>(
      component,
      o.component,
    )) {
      return false;
    }
    return true;
  }
}

/// [ObservationDefinitionQualifiedValue]
/// A set of qualified values associated with a context and a set of
/// conditions - provides a range for quantitative and ordinal observations
/// and a collection of value sets for qualitative observations.
class ObservationDefinitionQualifiedValue extends BackboneElement {
  /// Primary constructor for
  /// [ObservationDefinitionQualifiedValue]

  const ObservationDefinitionQualifiedValue({
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ObservationDefinitionQualifiedValue.fromJson(
    Map<String, dynamic> json,
  ) {
    return ObservationDefinitionQualifiedValue(
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
      context: JsonParser.parseObject<CodeableConcept>(
        json,
        'context',
        CodeableConcept.fromJson,
      ),
      appliesTo: (json['appliesTo'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      gender: JsonParser.parsePrimitive<AdministrativeGender>(
        json,
        'gender',
        AdministrativeGender.fromJson,
      ),
      age: JsonParser.parseObject<Range>(
        json,
        'age',
        Range.fromJson,
      ),
      gestationalAge: JsonParser.parseObject<Range>(
        json,
        'gestationalAge',
        Range.fromJson,
      ),
      condition: JsonParser.parsePrimitive<FhirString>(
        json,
        'condition',
        FhirString.fromJson,
      ),
      rangeCategory: JsonParser.parsePrimitive<ObservationRangeCategory>(
        json,
        'rangeCategory',
        ObservationRangeCategory.fromJson,
      ),
      range: JsonParser.parseObject<Range>(
        json,
        'range',
        Range.fromJson,
      ),
      validCodedValueSet: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'validCodedValueSet',
        FhirCanonical.fromJson,
      ),
      normalCodedValueSet: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'normalCodedValueSet',
        FhirCanonical.fromJson,
      ),
      abnormalCodedValueSet: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'abnormalCodedValueSet',
        FhirCanonical.fromJson,
      ),
      criticalCodedValueSet: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'criticalCodedValueSet',
        FhirCanonical.fromJson,
      ),
    );
  }

  /// Deserialize [ObservationDefinitionQualifiedValue]
  /// from a [String] or [YamlMap] object
  factory ObservationDefinitionQualifiedValue.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ObservationDefinitionQualifiedValue.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ObservationDefinitionQualifiedValue.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ObservationDefinitionQualifiedValue '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ObservationDefinitionQualifiedValue]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ObservationDefinitionQualifiedValue.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ObservationDefinitionQualifiedValue.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ObservationDefinitionQualifiedValue';

  /// [context]
  /// A concept defining the context for this set of qualified values.
  final CodeableConcept? context;

  /// [appliesTo]
  /// The target population this set of qualified values applies to.
  final List<CodeableConcept>? appliesTo;

  /// [gender]
  /// The gender this set of qualified values applies to.
  final AdministrativeGender? gender;

  /// [age]
  /// The age range this set of qualified values applies to.
  final Range? age;

  /// [gestationalAge]
  /// The gestational age this set of qualified values applies to.
  final Range? gestationalAge;

  /// [condition]
  /// Text based condition for which the the set of qualified values is
  /// valid.
  final FhirString? condition;

  /// [rangeCategory]
  /// The category of range of values for continuous or ordinal observations
  /// that match the criteria of this set of qualified values.
  final ObservationRangeCategory? rangeCategory;

  /// [range]
  /// The range of values defined for continuous or ordinal observations that
  /// match the criteria of this set of qualified values.
  final Range? range;

  /// [validCodedValueSet]
  /// The set of valid coded results for qualitative observations that match
  /// the criteria of this set of qualified values.
  final FhirCanonical? validCodedValueSet;

  /// [normalCodedValueSet]
  /// The set of normal coded results for qualitative observations that match
  /// the criteria of this set of qualified values.
  final FhirCanonical? normalCodedValueSet;

  /// [abnormalCodedValueSet]
  /// The set of abnormal coded results for qualitative observations that
  /// match the criteria of this set of qualified values.
  final FhirCanonical? abnormalCodedValueSet;

  /// [criticalCodedValueSet]
  /// The set of critical coded results for qualitative observations that
  /// match the criteria of this set of qualified values.
  final FhirCanonical? criticalCodedValueSet;
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
      'context',
      context,
    );
    addField(
      'appliesTo',
      appliesTo,
    );
    addField(
      'gender',
      gender,
    );
    addField(
      'age',
      age,
    );
    addField(
      'gestationalAge',
      gestationalAge,
    );
    addField(
      'condition',
      condition,
    );
    addField(
      'rangeCategory',
      rangeCategory,
    );
    addField(
      'range',
      range,
    );
    addField(
      'validCodedValueSet',
      validCodedValueSet,
    );
    addField(
      'normalCodedValueSet',
      normalCodedValueSet,
    );
    addField(
      'abnormalCodedValueSet',
      abnormalCodedValueSet,
    );
    addField(
      'criticalCodedValueSet',
      criticalCodedValueSet,
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ObservationDefinitionQualifiedValue clone() => copyWith();

  /// Copy function for [ObservationDefinitionQualifiedValue]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ObservationDefinitionQualifiedValueCopyWith<
          ObservationDefinitionQualifiedValue>
      get copyWith => _$ObservationDefinitionQualifiedValueCopyWithImpl<
              ObservationDefinitionQualifiedValue>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ObservationDefinitionQualifiedValue) {
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
      context,
      o.context,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
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

/// [ObservationDefinitionComponent]
/// Some observations have multiple component observations, expressed as
/// separate code value pairs.
class ObservationDefinitionComponent extends BackboneElement {
  /// Primary constructor for
  /// [ObservationDefinitionComponent]

  const ObservationDefinitionComponent({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.permittedDataType,
    this.permittedUnit,
    this.qualifiedValue,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ObservationDefinitionComponent.fromJson(
    Map<String, dynamic> json,
  ) {
    return ObservationDefinitionComponent(
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
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      )!,
      permittedDataType: JsonParser.parsePrimitiveList<ObservationDataType>(
        json,
        'permittedDataType',
        ObservationDataType.fromJson,
      ),
      permittedUnit: (json['permittedUnit'] as List<dynamic>?)
          ?.map<Coding>(
            (v) => Coding.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      qualifiedValue: (json['qualifiedValue'] as List<dynamic>?)
          ?.map<ObservationDefinitionQualifiedValue>(
            (v) => ObservationDefinitionQualifiedValue.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ObservationDefinitionComponent]
  /// from a [String] or [YamlMap] object
  factory ObservationDefinitionComponent.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ObservationDefinitionComponent.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ObservationDefinitionComponent.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ObservationDefinitionComponent '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ObservationDefinitionComponent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ObservationDefinitionComponent.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ObservationDefinitionComponent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ObservationDefinitionComponent';

  /// [code]
  /// Describes what will be observed.
  final CodeableConcept code;

  /// [permittedDataType]
  /// The data types allowed for the value element of the instance of this
  /// component observations.
  final List<ObservationDataType>? permittedDataType;

  /// [permittedUnit]
  /// Units allowed for the valueQuantity element in the instance
  /// observations conforming to this ObservationDefinition.
  final List<Coding>? permittedUnit;

  /// [qualifiedValue]
  /// A set of qualified values associated with a context and a set of
  /// conditions - provides a range for quantitative and ordinal observations
  /// and a collection of value sets for qualitative observations.
  final List<ObservationDefinitionQualifiedValue>? qualifiedValue;
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
      'code',
      code,
    );
    addField(
      'permittedDataType',
      permittedDataType,
    );
    addField(
      'permittedUnit',
      permittedUnit,
    );
    addField(
      'qualifiedValue',
      qualifiedValue,
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
      'code',
      'permittedDataType',
      'permittedUnit',
      'qualifiedValue',
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
      case 'code':
        fields.add(code);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ObservationDefinitionComponent clone() => copyWith();

  /// Copy function for [ObservationDefinitionComponent]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ObservationDefinitionComponentCopyWith<ObservationDefinitionComponent>
      get copyWith => _$ObservationDefinitionComponentCopyWithImpl<
              ObservationDefinitionComponent>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ObservationDefinitionComponent) {
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
      code,
      o.code,
    )) {
      return false;
    }
    if (!listEquals<ObservationDataType>(
      permittedDataType,
      o.permittedDataType,
    )) {
      return false;
    }
    if (!listEquals<Coding>(
      permittedUnit,
      o.permittedUnit,
    )) {
      return false;
    }
    if (!listEquals<ObservationDefinitionQualifiedValue>(
      qualifiedValue,
      o.qualifiedValue,
    )) {
      return false;
    }
    return true;
  }
}
