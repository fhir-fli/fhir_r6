import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'consent.g.dart';

/// [Consent]
/// A record of a healthcare consumer’s choices or choices made on their
/// behalf by a third party, which permits or denies identified
/// recipient(s) or recipient role(s) to perform one or more actions within
/// a given policy context, for specific purposes and periods of time.
class Consent extends DomainResource {
  /// Primary constructor for
  /// [Consent]

  const Consent({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    this.category,
    this.subject,
    this.date,
    this.period,
    this.grantor,
    this.grantee,
    this.manager,
    this.controller,
    this.sourceAttachment,
    this.sourceReference,
    this.regulatoryBasis,
    this.policyBasis,
    this.policyText,
    this.verification,
    this.decision,
    this.provision,
  }) : super(
          resourceType: R5ResourceType.Consent,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Consent.fromJson(
    Map<String, dynamic> json,
  ) {
    return Consent(
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
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<ConsentState>(
        json,
        'status',
        ConsentState.fromJson,
      )!,
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
      ),
      date: JsonParser.parsePrimitive<FhirDate>(
        json,
        'date',
        FhirDate.fromJson,
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
      ),
      grantor: (json['grantor'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      grantee: (json['grantee'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      manager: (json['manager'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      controller: (json['controller'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      sourceAttachment: (json['sourceAttachment'] as List<dynamic>?)
          ?.map<Attachment>(
            (v) => Attachment.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      sourceReference: (json['sourceReference'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      regulatoryBasis: (json['regulatoryBasis'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      policyBasis: JsonParser.parseObject<ConsentPolicyBasis>(
        json,
        'policyBasis',
        ConsentPolicyBasis.fromJson,
      ),
      policyText: (json['policyText'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      verification: (json['verification'] as List<dynamic>?)
          ?.map<ConsentVerification>(
            (v) => ConsentVerification.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      decision: JsonParser.parsePrimitive<ConsentProvisionType>(
        json,
        'decision',
        ConsentProvisionType.fromJson,
      ),
      provision: (json['provision'] as List<dynamic>?)
          ?.map<ConsentProvision>(
            (v) => ConsentProvision.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [Consent]
  /// from a [String] or [YamlMap] object
  factory Consent.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Consent.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Consent.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Consent '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Consent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Consent.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Consent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Consent';

  /// [identifier]
  /// Unique identifier for this copy of the Consent Statement.
  final List<Identifier>? identifier;

  /// [status]
  /// Indicates the current state of this Consent resource.
  final ConsentState status;

  /// [category]
  /// A classification of the type of consents found in the statement. This
  /// element supports indexing and retrieval of consent statements.
  final List<CodeableConcept>? category;

  /// [subject]
  /// The patient/healthcare practitioner or group of persons to whom this
  /// consent applies.
  final Reference? subject;

  /// [date]
  /// Date the consent instance was agreed to.
  final FhirDate? date;

  /// [period]
  /// Effective period for this Consent Resource and all provisions unless
  /// specified in that provision.
  final Period? period;

  /// [grantor]
  /// The entity responsible for granting the rights listed in a Consent
  /// Directive.
  final List<Reference>? grantor;

  /// [grantee]
  /// The entity responsible for complying with the Consent Directive,
  /// including any obligations or limitations on authorizations and
  /// enforcement of prohibitions.
  final List<Reference>? grantee;

  /// [manager]
  /// The actor that manages the consent through its lifecycle.
  final List<Reference>? manager;

  /// [controller]
  /// The actor that controls/enforces the access according to the consent.
  final List<Reference>? controller;

  /// [sourceAttachment]
  /// The source on which this consent statement is based. The source might
  /// be a scanned original paper form.
  final List<Attachment>? sourceAttachment;

  /// [sourceReference]
  /// A reference to a consent that links back to such a source, a reference
  /// to a document repository (e.g. XDS) that stores the original consent
  /// document.
  final List<Reference>? sourceReference;

  /// [regulatoryBasis]
  /// A set of codes that indicate the regulatory basis (if any) that this
  /// consent supports.
  final List<CodeableConcept>? regulatoryBasis;

  /// [policyBasis]
  /// A Reference or URL used to uniquely identify the policy the
  /// organization will enforce for this Consent. This Reference or URL
  /// should be specific to the version of the policy and should be
  /// dereferencable to a computable policy of some form.
  final ConsentPolicyBasis? policyBasis;

  /// [policyText]
  /// A Reference to the human readable policy explaining the basis for the
  /// Consent.
  final List<Reference>? policyText;

  /// [verification]
  /// Whether a treatment instruction (e.g. artificial respiration: yes or
  /// no) was verified with the patient, his/her family or another authorized
  /// person.
  final List<ConsentVerification>? verification;

  /// [decision]
  /// Action to take - permit or deny - as default.
  final ConsentProvisionType? decision;

  /// [provision]
  /// An exception to the base policy of this consent. An exception can be an
  /// addition or removal of access permissions.
  final List<ConsentProvision>? provision;
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
      'identifier',
      identifier,
    );
    addField(
      'status',
      status,
    );
    addField(
      'category',
      category,
    );
    addField(
      'subject',
      subject,
    );
    addField(
      'date',
      date,
    );
    addField(
      'period',
      period,
    );
    addField(
      'grantor',
      grantor,
    );
    addField(
      'grantee',
      grantee,
    );
    addField(
      'manager',
      manager,
    );
    addField(
      'controller',
      controller,
    );
    addField(
      'sourceAttachment',
      sourceAttachment,
    );
    addField(
      'sourceReference',
      sourceReference,
    );
    addField(
      'regulatoryBasis',
      regulatoryBasis,
    );
    addField(
      'policyBasis',
      policyBasis,
    );
    addField(
      'policyText',
      policyText,
    );
    addField(
      'verification',
      verification,
    );
    addField(
      'decision',
      decision,
    );
    addField(
      'provision',
      provision,
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
      'identifier',
      'status',
      'category',
      'subject',
      'date',
      'period',
      'grantor',
      'grantee',
      'manager',
      'controller',
      'sourceAttachment',
      'sourceReference',
      'regulatoryBasis',
      'policyBasis',
      'policyText',
      'verification',
      'decision',
      'provision',
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
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'status':
        fields.add(status);
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      case 'grantor':
        if (grantor != null) {
          fields.addAll(grantor!);
        }
      case 'grantee':
        if (grantee != null) {
          fields.addAll(grantee!);
        }
      case 'manager':
        if (manager != null) {
          fields.addAll(manager!);
        }
      case 'controller':
        if (controller != null) {
          fields.addAll(controller!);
        }
      case 'sourceAttachment':
        if (sourceAttachment != null) {
          fields.addAll(sourceAttachment!);
        }
      case 'sourceReference':
        if (sourceReference != null) {
          fields.addAll(sourceReference!);
        }
      case 'regulatoryBasis':
        if (regulatoryBasis != null) {
          fields.addAll(regulatoryBasis!);
        }
      case 'policyBasis':
        if (policyBasis != null) {
          fields.add(policyBasis!);
        }
      case 'policyText':
        if (policyText != null) {
          fields.addAll(policyText!);
        }
      case 'verification':
        if (verification != null) {
          fields.addAll(verification!);
        }
      case 'decision':
        if (decision != null) {
          fields.add(decision!);
        }
      case 'provision':
        if (provision != null) {
          fields.addAll(provision!);
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
  Consent clone() => copyWith();

  /// Copy function for [Consent]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ConsentCopyWith<Consent> get copyWith => _$ConsentCopyWithImpl<Consent>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Consent) {
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
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
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
      subject,
      o.subject,
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
      period,
      o.period,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      grantor,
      o.grantor,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      grantee,
      o.grantee,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      manager,
      o.manager,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      controller,
      o.controller,
    )) {
      return false;
    }
    if (!listEquals<Attachment>(
      sourceAttachment,
      o.sourceAttachment,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      sourceReference,
      o.sourceReference,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      regulatoryBasis,
      o.regulatoryBasis,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      policyBasis,
      o.policyBasis,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      policyText,
      o.policyText,
    )) {
      return false;
    }
    if (!listEquals<ConsentVerification>(
      verification,
      o.verification,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      decision,
      o.decision,
    )) {
      return false;
    }
    if (!listEquals<ConsentProvision>(
      provision,
      o.provision,
    )) {
      return false;
    }
    return true;
  }
}

/// [ConsentPolicyBasis]
/// A Reference or URL used to uniquely identify the policy the
/// organization will enforce for this Consent. This Reference or URL
/// should be specific to the version of the policy and should be
/// dereferencable to a computable policy of some form.
class ConsentPolicyBasis extends BackboneElement {
  /// Primary constructor for
  /// [ConsentPolicyBasis]

  const ConsentPolicyBasis({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.reference,
    this.url,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConsentPolicyBasis.fromJson(
    Map<String, dynamic> json,
  ) {
    return ConsentPolicyBasis(
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
      reference: JsonParser.parseObject<Reference>(
        json,
        'reference',
        Reference.fromJson,
      ),
      url: JsonParser.parsePrimitive<FhirUrl>(
        json,
        'url',
        FhirUrl.fromJson,
      ),
    );
  }

  /// Deserialize [ConsentPolicyBasis]
  /// from a [String] or [YamlMap] object
  factory ConsentPolicyBasis.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConsentPolicyBasis.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConsentPolicyBasis.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConsentPolicyBasis '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConsentPolicyBasis]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConsentPolicyBasis.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ConsentPolicyBasis.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ConsentPolicyBasis';

  /// [reference]
  /// A Reference that identifies the policy the organization will enforce
  /// for this Consent.
  final Reference? reference;

  /// [url]
  /// A URL that links to a computable version of the policy the organization
  /// will enforce for this Consent.
  final FhirUrl? url;
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
      'reference',
      reference,
    );
    addField(
      'url',
      url,
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
      'reference',
      'url',
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
      case 'reference':
        if (reference != null) {
          fields.add(reference!);
        }
      case 'url':
        if (url != null) {
          fields.add(url!);
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
  ConsentPolicyBasis clone() => copyWith();

  /// Copy function for [ConsentPolicyBasis]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ConsentPolicyBasisCopyWith<ConsentPolicyBasis> get copyWith =>
      _$ConsentPolicyBasisCopyWithImpl<ConsentPolicyBasis>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ConsentPolicyBasis) {
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
      reference,
      o.reference,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      url,
      o.url,
    )) {
      return false;
    }
    return true;
  }
}

/// [ConsentVerification]
/// Whether a treatment instruction (e.g. artificial respiration: yes or
/// no) was verified with the patient, his/her family or another authorized
/// person.
class ConsentVerification extends BackboneElement {
  /// Primary constructor for
  /// [ConsentVerification]

  const ConsentVerification({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.verified,
    this.verificationType,
    this.verifiedBy,
    this.verifiedWith,
    this.verificationDate,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConsentVerification.fromJson(
    Map<String, dynamic> json,
  ) {
    return ConsentVerification(
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
      verified: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'verified',
        FhirBoolean.fromJson,
      )!,
      verificationType: JsonParser.parseObject<CodeableConcept>(
        json,
        'verificationType',
        CodeableConcept.fromJson,
      ),
      verifiedBy: JsonParser.parseObject<Reference>(
        json,
        'verifiedBy',
        Reference.fromJson,
      ),
      verifiedWith: JsonParser.parseObject<Reference>(
        json,
        'verifiedWith',
        Reference.fromJson,
      ),
      verificationDate: JsonParser.parsePrimitiveList<FhirDateTime>(
        json,
        'verificationDate',
        FhirDateTime.fromJson,
      ),
    );
  }

  /// Deserialize [ConsentVerification]
  /// from a [String] or [YamlMap] object
  factory ConsentVerification.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConsentVerification.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConsentVerification.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConsentVerification '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConsentVerification]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConsentVerification.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ConsentVerification.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ConsentVerification';

  /// [verified]
  /// Has the instruction been verified.
  final FhirBoolean verified;

  /// [verificationType]
  /// Extensible list of verification type starting with verification and
  /// re-validation.
  final CodeableConcept? verificationType;

  /// [verifiedBy]
  /// The person who conducted the verification/validation of the Grantor
  /// decision.
  final Reference? verifiedBy;

  /// [verifiedWith]
  /// Who verified the instruction (Patient, Relative or other Authorized
  /// Person).
  final Reference? verifiedWith;

  /// [verificationDate]
  /// Date(s) verification was collected.
  final List<FhirDateTime>? verificationDate;
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
      'verified',
      verified,
    );
    addField(
      'verificationType',
      verificationType,
    );
    addField(
      'verifiedBy',
      verifiedBy,
    );
    addField(
      'verifiedWith',
      verifiedWith,
    );
    addField(
      'verificationDate',
      verificationDate,
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
      'verified',
      'verificationType',
      'verifiedBy',
      'verifiedWith',
      'verificationDate',
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
      case 'verified':
        fields.add(verified);
      case 'verificationType':
        if (verificationType != null) {
          fields.add(verificationType!);
        }
      case 'verifiedBy':
        if (verifiedBy != null) {
          fields.add(verifiedBy!);
        }
      case 'verifiedWith':
        if (verifiedWith != null) {
          fields.add(verifiedWith!);
        }
      case 'verificationDate':
        if (verificationDate != null) {
          fields.addAll(verificationDate!);
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
  ConsentVerification clone() => copyWith();

  /// Copy function for [ConsentVerification]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ConsentVerificationCopyWith<ConsentVerification> get copyWith =>
      _$ConsentVerificationCopyWithImpl<ConsentVerification>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ConsentVerification) {
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
      verified,
      o.verified,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      verificationType,
      o.verificationType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      verifiedBy,
      o.verifiedBy,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      verifiedWith,
      o.verifiedWith,
    )) {
      return false;
    }
    if (!listEquals<FhirDateTime>(
      verificationDate,
      o.verificationDate,
    )) {
      return false;
    }
    return true;
  }
}

/// [ConsentProvision]
/// An exception to the base policy of this consent. An exception can be an
/// addition or removal of access permissions.
class ConsentProvision extends BackboneElement {
  /// Primary constructor for
  /// [ConsentProvision]

  const ConsentProvision({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.period,
    this.actor,
    this.action,
    this.securityLabel,
    this.purpose,
    this.documentType,
    this.resourceType,
    this.code,
    this.dataPeriod,
    this.data,
    this.expression,
    this.provision,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConsentProvision.fromJson(
    Map<String, dynamic> json,
  ) {
    return ConsentProvision(
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
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
      ),
      actor: (json['actor'] as List<dynamic>?)
          ?.map<ConsentActor>(
            (v) => ConsentActor.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      action: (json['action'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      securityLabel: (json['securityLabel'] as List<dynamic>?)
          ?.map<Coding>(
            (v) => Coding.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      purpose: (json['purpose'] as List<dynamic>?)
          ?.map<Coding>(
            (v) => Coding.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      documentType: (json['documentType'] as List<dynamic>?)
          ?.map<Coding>(
            (v) => Coding.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      resourceType: (json['resourceType'] as List<dynamic>?)
          ?.map<Coding>(
            (v) => Coding.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      code: (json['code'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      dataPeriod: JsonParser.parseObject<Period>(
        json,
        'dataPeriod',
        Period.fromJson,
      ),
      data: (json['data'] as List<dynamic>?)
          ?.map<ConsentData>(
            (v) => ConsentData.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      expression: JsonParser.parseObject<FhirExpression>(
        json,
        'expression',
        FhirExpression.fromJson,
      ),
      provision: (json['provision'] as List<dynamic>?)
          ?.map<ConsentProvision>(
            (v) => ConsentProvision.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ConsentProvision]
  /// from a [String] or [YamlMap] object
  factory ConsentProvision.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConsentProvision.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConsentProvision.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConsentProvision '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConsentProvision]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConsentProvision.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ConsentProvision.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ConsentProvision';

  /// [period]
  /// Timeframe for this provision.
  final Period? period;

  /// [actor]
  /// Who or what is controlled by this provision. Use group to identify a
  /// set of actors by some property they share (e.g. 'admitting officers').
  final List<ConsentActor>? actor;

  /// [action]
  /// Actions controlled by this provision.
  final List<CodeableConcept>? action;

  /// [securityLabel]
  /// A security label, comprised of 0..* security label fields (Privacy
  /// tags), which define which resources are controlled by this exception.
  final List<Coding>? securityLabel;

  /// [purpose]
  /// The context of the activities a user is taking - why the user is
  /// accessing the data - that are controlled by this provision.
  final List<Coding>? purpose;

  /// [documentType]
  /// The documentType(s) covered by this provision. The type can be a CDA
  /// document, or some other type that indicates what sort of information
  /// the consent relates to.
  final List<Coding>? documentType;

  /// [resourceType]
  /// The resourceType(s) covered by this provision. The type can be a FHIR
  /// resource type or a profile on a type that indicates what information
  /// the consent relates to.
  final List<Coding>? resourceType;

  /// [code]
  /// If this code is found in an instance, then the provision applies.
  final List<CodeableConcept>? code;

  /// [dataPeriod]
  /// Clinical or Operational Relevant period of time that bounds the data
  /// controlled by this provision.
  final Period? dataPeriod;

  /// [data]
  /// The resources controlled by this provision if specific resources are
  /// referenced.
  final List<ConsentData>? data;

  /// [expression]
  /// A computable (FHIRPath or other) definition of what is controlled by
  /// this consent.
  final FhirExpression? expression;

  /// [provision]
  /// Provisions which provide exceptions to the base provision or
  /// subprovisions.
  final List<ConsentProvision>? provision;
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
      'period',
      period,
    );
    addField(
      'actor',
      actor,
    );
    addField(
      'action',
      action,
    );
    addField(
      'securityLabel',
      securityLabel,
    );
    addField(
      'purpose',
      purpose,
    );
    addField(
      'documentType',
      documentType,
    );
    addField(
      'resourceType',
      resourceType,
    );
    addField(
      'code',
      code,
    );
    addField(
      'dataPeriod',
      dataPeriod,
    );
    addField(
      'data',
      data,
    );
    addField(
      'expression',
      expression,
    );
    addField(
      'provision',
      provision,
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
      'period',
      'actor',
      'action',
      'securityLabel',
      'purpose',
      'documentType',
      'resourceType',
      'code',
      'dataPeriod',
      'data',
      'expression',
      'provision',
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
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      case 'actor':
        if (actor != null) {
          fields.addAll(actor!);
        }
      case 'action':
        if (action != null) {
          fields.addAll(action!);
        }
      case 'securityLabel':
        if (securityLabel != null) {
          fields.addAll(securityLabel!);
        }
      case 'purpose':
        if (purpose != null) {
          fields.addAll(purpose!);
        }
      case 'documentType':
        if (documentType != null) {
          fields.addAll(documentType!);
        }
      case 'resourceType':
        if (resourceType != null) {
          fields.addAll(resourceType!);
        }
      case 'code':
        if (code != null) {
          fields.addAll(code!);
        }
      case 'dataPeriod':
        if (dataPeriod != null) {
          fields.add(dataPeriod!);
        }
      case 'data':
        if (data != null) {
          fields.addAll(data!);
        }
      case 'expression':
        if (expression != null) {
          fields.add(expression!);
        }
      case 'provision':
        if (provision != null) {
          fields.addAll(provision!);
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
  ConsentProvision clone() => copyWith();

  /// Copy function for [ConsentProvision]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ConsentProvisionCopyWith<ConsentProvision> get copyWith =>
      _$ConsentProvisionCopyWithImpl<ConsentProvision>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ConsentProvision) {
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
      period,
      o.period,
    )) {
      return false;
    }
    if (!listEquals<ConsentActor>(
      actor,
      o.actor,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      action,
      o.action,
    )) {
      return false;
    }
    if (!listEquals<Coding>(
      securityLabel,
      o.securityLabel,
    )) {
      return false;
    }
    if (!listEquals<Coding>(
      purpose,
      o.purpose,
    )) {
      return false;
    }
    if (!listEquals<Coding>(
      documentType,
      o.documentType,
    )) {
      return false;
    }
    if (!listEquals<Coding>(
      resourceType,
      o.resourceType,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      dataPeriod,
      o.dataPeriod,
    )) {
      return false;
    }
    if (!listEquals<ConsentData>(
      data,
      o.data,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      expression,
      o.expression,
    )) {
      return false;
    }
    if (!listEquals<ConsentProvision>(
      provision,
      o.provision,
    )) {
      return false;
    }
    return true;
  }
}

/// [ConsentActor]
/// Who or what is controlled by this provision. Use group to identify a
/// set of actors by some property they share (e.g. 'admitting officers').
class ConsentActor extends BackboneElement {
  /// Primary constructor for
  /// [ConsentActor]

  const ConsentActor({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.role,
    this.reference,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConsentActor.fromJson(
    Map<String, dynamic> json,
  ) {
    return ConsentActor(
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
      role: JsonParser.parseObject<CodeableConcept>(
        json,
        'role',
        CodeableConcept.fromJson,
      ),
      reference: JsonParser.parseObject<Reference>(
        json,
        'reference',
        Reference.fromJson,
      ),
    );
  }

  /// Deserialize [ConsentActor]
  /// from a [String] or [YamlMap] object
  factory ConsentActor.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConsentActor.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConsentActor.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConsentActor '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConsentActor]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConsentActor.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ConsentActor.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ConsentActor';

  /// [role]
  /// How the individual is involved in the resources content that is
  /// described in the exception.
  final CodeableConcept? role;

  /// [reference]
  /// The resource that identifies the actor. To identify actors by type, use
  /// group to identify a set of actors by some property they share (e.g.
  /// 'admitting officers').
  final Reference? reference;
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
      'role',
      role,
    );
    addField(
      'reference',
      reference,
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
      'role',
      'reference',
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
      case 'role':
        if (role != null) {
          fields.add(role!);
        }
      case 'reference':
        if (reference != null) {
          fields.add(reference!);
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
  ConsentActor clone() => copyWith();

  /// Copy function for [ConsentActor]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ConsentActorCopyWith<ConsentActor> get copyWith =>
      _$ConsentActorCopyWithImpl<ConsentActor>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ConsentActor) {
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
      role,
      o.role,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reference,
      o.reference,
    )) {
      return false;
    }
    return true;
  }
}

/// [ConsentData]
/// The resources controlled by this provision if specific resources are
/// referenced.
class ConsentData extends BackboneElement {
  /// Primary constructor for
  /// [ConsentData]

  const ConsentData({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.meaning,
    required this.reference,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConsentData.fromJson(
    Map<String, dynamic> json,
  ) {
    return ConsentData(
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
      meaning: JsonParser.parsePrimitive<ConsentDataMeaning>(
        json,
        'meaning',
        ConsentDataMeaning.fromJson,
      )!,
      reference: JsonParser.parseObject<Reference>(
        json,
        'reference',
        Reference.fromJson,
      )!,
    );
  }

  /// Deserialize [ConsentData]
  /// from a [String] or [YamlMap] object
  factory ConsentData.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConsentData.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConsentData.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConsentData '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConsentData]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConsentData.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ConsentData.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ConsentData';

  /// [meaning]
  /// How the resource reference is interpreted when testing consent
  /// restrictions.
  final ConsentDataMeaning meaning;

  /// [reference]
  /// A reference to a specific resource that defines which resources are
  /// covered by this consent.
  final Reference reference;
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
      'meaning',
      meaning,
    );
    addField(
      'reference',
      reference,
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
      'meaning',
      'reference',
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
      case 'meaning':
        fields.add(meaning);
      case 'reference':
        fields.add(reference);
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
  ConsentData clone() => copyWith();

  /// Copy function for [ConsentData]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ConsentDataCopyWith<ConsentData> get copyWith =>
      _$ConsentDataCopyWithImpl<ConsentData>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ConsentData) {
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
      meaning,
      o.meaning,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reference,
      o.reference,
    )) {
      return false;
    }
    return true;
  }
}
