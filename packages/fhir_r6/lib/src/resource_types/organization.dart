import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'organization.g.dart';

/// [Organization]
/// A formally or informally recognized grouping of people or organizations
/// formed for the purpose of achieving some form of collective action.
/// Includes companies, institutions, corporations, departments, community
/// groups, healthcare practice groups, payer/insurer, etc.
class Organization extends DomainResource {
  /// Primary constructor for
  /// [Organization]

  const Organization({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.active,
    this.type,
    this.name,
    this.alias,
    this.description,
    this.contact,
    this.partOf,
    this.endpoint,
    this.qualification,
  }) : super(
          resourceType: R5ResourceType.Organization,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Organization.fromJson(
    Map<String, dynamic> json,
  ) {
    return Organization(
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
      active: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'active',
        FhirBoolean.fromJson,
      ),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      ),
      alias: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'alias',
        FhirString.fromJson,
      ),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ExtendedContactDetail>(
            (v) => ExtendedContactDetail.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      partOf: JsonParser.parseObject<Reference>(
        json,
        'partOf',
        Reference.fromJson,
      ),
      endpoint: (json['endpoint'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      qualification: (json['qualification'] as List<dynamic>?)
          ?.map<OrganizationQualification>(
            (v) => OrganizationQualification.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [Organization]
  /// from a [String] or [YamlMap] object
  factory Organization.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Organization.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Organization.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Organization '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Organization]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Organization.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Organization.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Organization';

  /// [identifier]
  /// Identifier for the organization that is used to identify the
  /// organization across multiple disparate systems.
  final List<Identifier>? identifier;

  /// [active]
  /// Whether the organization's record is still in active use.
  final FhirBoolean? active;

  /// [type]
  /// The kind(s) of organization that this is.
  final List<CodeableConcept>? type;

  /// [name]
  /// A name associated with the organization.
  final FhirString? name;

  /// [alias]
  /// A list of alternate names that the organization is known as, or was
  /// known as in the past.
  final List<FhirString>? alias;

  /// [description]
  /// Description of the organization, which helps provide additional general
  /// context on the organization to ensure that the correct organization is
  /// selected.
  final FhirMarkdown? description;

  /// [contact]
  /// The contact details of communication devices available relevant to the
  /// specific Organization. This can include addresses, phone numbers, fax
  /// numbers, mobile numbers, email addresses and web sites.
  final List<ExtendedContactDetail>? contact;

  /// [partOf]
  /// The organization of which this organization forms a part.
  final Reference? partOf;

  /// [endpoint]
  /// Technical endpoints providing access to services operated for the
  /// organization.
  final List<Reference>? endpoint;

  /// [qualification]
  /// The official certifications, accreditations, training, designations and
  /// licenses that authorize and/or otherwise endorse the provision of care
  /// by the organization. For example, an approval to provide a type of
  /// services issued by a certifying body (such as the US Joint Commission)
  /// to an organization.
  final List<OrganizationQualification>? qualification;
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
      'active',
      active,
    );
    addField(
      'type',
      type,
    );
    addField(
      'name',
      name,
    );
    addField(
      'alias',
      alias,
    );
    addField(
      'description',
      description,
    );
    addField(
      'contact',
      contact,
    );
    addField(
      'partOf',
      partOf,
    );
    addField(
      'endpoint',
      endpoint,
    );
    addField(
      'qualification',
      qualification,
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
      'active',
      'type',
      'name',
      'alias',
      'description',
      'contact',
      'partOf',
      'endpoint',
      'qualification',
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
      case 'active':
        if (active != null) {
          fields.add(active!);
        }
      case 'type':
        if (type != null) {
          fields.addAll(type!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'alias':
        if (alias != null) {
          fields.addAll(alias!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'contact':
        if (contact != null) {
          fields.addAll(contact!);
        }
      case 'partOf':
        if (partOf != null) {
          fields.add(partOf!);
        }
      case 'endpoint':
        if (endpoint != null) {
          fields.addAll(endpoint!);
        }
      case 'qualification':
        if (qualification != null) {
          fields.addAll(qualification!);
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
  Organization clone() => copyWith();

  /// Copy function for [Organization]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $OrganizationCopyWith<Organization> get copyWith =>
      _$OrganizationCopyWithImpl<Organization>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Organization) {
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
      active,
      o.active,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!listEquals<FhirString>(
      alias,
      o.alias,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!listEquals<ExtendedContactDetail>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      partOf,
      o.partOf,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      endpoint,
      o.endpoint,
    )) {
      return false;
    }
    if (!listEquals<OrganizationQualification>(
      qualification,
      o.qualification,
    )) {
      return false;
    }
    return true;
  }
}

/// [OrganizationQualification]
/// The official certifications, accreditations, training, designations and
/// licenses that authorize and/or otherwise endorse the provision of care
/// by the organization. For example, an approval to provide a type of
/// services issued by a certifying body (such as the US Joint Commission)
/// to an organization.
class OrganizationQualification extends BackboneElement {
  /// Primary constructor for
  /// [OrganizationQualification]

  const OrganizationQualification({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.code,
    this.period,
    this.issuer,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory OrganizationQualification.fromJson(
    Map<String, dynamic> json,
  ) {
    return OrganizationQualification(
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
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      )!,
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
      ),
      issuer: JsonParser.parseObject<Reference>(
        json,
        'issuer',
        Reference.fromJson,
      ),
    );
  }

  /// Deserialize [OrganizationQualification]
  /// from a [String] or [YamlMap] object
  factory OrganizationQualification.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return OrganizationQualification.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return OrganizationQualification.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'OrganizationQualification '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [OrganizationQualification]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory OrganizationQualification.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return OrganizationQualification.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'OrganizationQualification';

  /// [identifier]
  /// An identifier allocated to this qualification for this organization.
  final List<Identifier>? identifier;

  /// [code]
  /// Coded representation of the qualification.
  final CodeableConcept code;

  /// [period]
  /// Period during which the qualification is valid.
  final Period? period;

  /// [issuer]
  /// Organization that regulates and issues the qualification.
  final Reference? issuer;
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
      'identifier',
      identifier,
    );
    addField(
      'code',
      code,
    );
    addField(
      'period',
      period,
    );
    addField(
      'issuer',
      issuer,
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
      'identifier',
      'code',
      'period',
      'issuer',
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
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'code':
        fields.add(code);
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      case 'issuer':
        if (issuer != null) {
          fields.add(issuer!);
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
  OrganizationQualification clone() => copyWith();

  /// Copy function for [OrganizationQualification]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $OrganizationQualificationCopyWith<OrganizationQualification> get copyWith =>
      _$OrganizationQualificationCopyWithImpl<OrganizationQualification>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! OrganizationQualification) {
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
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
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
      period,
      o.period,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      issuer,
      o.issuer,
    )) {
      return false;
    }
    return true;
  }
}
