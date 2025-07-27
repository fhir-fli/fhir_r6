import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'organization_affiliation.g.dart';

/// [OrganizationAffiliation]
/// Defines an affiliation/association/relationship between 2 distinct
/// organizations, that is not a part-of relationship/sub-division
/// relationship.
class OrganizationAffiliation extends DomainResource {
  /// Primary constructor for
  /// [OrganizationAffiliation]

  const OrganizationAffiliation({
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
    this.period,
    this.organization,
    this.participatingOrganization,
    this.network,
    this.code,
    this.specialty,
    this.location,
    this.healthcareService,
    this.contact,
    this.endpoint,
  }) : super(
          resourceType: R5ResourceType.OrganizationAffiliation,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory OrganizationAffiliation.fromJson(
    Map<String, dynamic> json,
  ) {
    return OrganizationAffiliation(
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
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
      ),
      organization: JsonParser.parseObject<Reference>(
        json,
        'organization',
        Reference.fromJson,
      ),
      participatingOrganization: JsonParser.parseObject<Reference>(
        json,
        'participatingOrganization',
        Reference.fromJson,
      ),
      network: (json['network'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
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
      specialty: (json['specialty'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      location: (json['location'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      healthcareService: (json['healthcareService'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ExtendedContactDetail>(
            (v) => ExtendedContactDetail.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      endpoint: (json['endpoint'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [OrganizationAffiliation]
  /// from a [String] or [YamlMap] object
  factory OrganizationAffiliation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return OrganizationAffiliation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return OrganizationAffiliation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'OrganizationAffiliation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [OrganizationAffiliation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory OrganizationAffiliation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return OrganizationAffiliation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'OrganizationAffiliation';

  /// [identifier]
  /// Business identifiers that are specific to this role.
  final List<Identifier>? identifier;

  /// [active]
  /// Whether this organization affiliation record is in active use.
  final FhirBoolean? active;

  /// [period]
  /// The period during which the participatingOrganization is affiliated
  /// with the primary organization.
  final Period? period;

  /// [organization]
  /// Organization where the role is available (primary organization/has
  /// members).
  final Reference? organization;

  /// [participatingOrganization]
  /// The Participating Organization provides/performs the role(s) defined by
  /// the code to the Primary Organization (e.g. providing services or is a
  /// member of).
  final Reference? participatingOrganization;

  /// [network]
  /// The network in which the participatingOrganization provides the role's
  /// services (if defined) at the indicated locations (if defined).
  final List<Reference>? network;

  /// [code]
  /// Definition of the role the participatingOrganization plays in the
  /// association.
  final List<CodeableConcept>? code;

  /// [specialty]
  /// Specific specialty of the participatingOrganization in the context of
  /// the role.
  final List<CodeableConcept>? specialty;

  /// [location]
  /// The location(s) at which the role occurs.
  final List<Reference>? location;

  /// [healthcareService]
  /// Healthcare services provided through the role.
  final List<Reference>? healthcareService;

  /// [contact]
  /// The contact details of communication devices available at the
  /// participatingOrganization relevant to this Affiliation.
  final List<ExtendedContactDetail>? contact;

  /// [endpoint]
  /// Technical endpoints providing access to services operated for this
  /// role.
  final List<Reference>? endpoint;
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
      'period',
      period,
    );
    addField(
      'organization',
      organization,
    );
    addField(
      'participatingOrganization',
      participatingOrganization,
    );
    addField(
      'network',
      network,
    );
    addField(
      'code',
      code,
    );
    addField(
      'specialty',
      specialty,
    );
    addField(
      'location',
      location,
    );
    addField(
      'healthcareService',
      healthcareService,
    );
    addField(
      'contact',
      contact,
    );
    addField(
      'endpoint',
      endpoint,
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
      'period',
      'organization',
      'participatingOrganization',
      'network',
      'code',
      'specialty',
      'location',
      'healthcareService',
      'contact',
      'endpoint',
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
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      case 'organization':
        if (organization != null) {
          fields.add(organization!);
        }
      case 'participatingOrganization':
        if (participatingOrganization != null) {
          fields.add(participatingOrganization!);
        }
      case 'network':
        if (network != null) {
          fields.addAll(network!);
        }
      case 'code':
        if (code != null) {
          fields.addAll(code!);
        }
      case 'specialty':
        if (specialty != null) {
          fields.addAll(specialty!);
        }
      case 'location':
        if (location != null) {
          fields.addAll(location!);
        }
      case 'healthcareService':
        if (healthcareService != null) {
          fields.addAll(healthcareService!);
        }
      case 'contact':
        if (contact != null) {
          fields.addAll(contact!);
        }
      case 'endpoint':
        if (endpoint != null) {
          fields.addAll(endpoint!);
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
  OrganizationAffiliation clone() => copyWith();

  /// Copy function for [OrganizationAffiliation]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $OrganizationAffiliationCopyWith<OrganizationAffiliation> get copyWith =>
      _$OrganizationAffiliationCopyWithImpl<OrganizationAffiliation>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! OrganizationAffiliation) {
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
    if (!equalsDeepWithNull(
      period,
      o.period,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      organization,
      o.organization,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      participatingOrganization,
      o.participatingOrganization,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      network,
      o.network,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      code,
      o.code,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      specialty,
      o.specialty,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      location,
      o.location,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      healthcareService,
      o.healthcareService,
    )) {
      return false;
    }
    if (!listEquals<ExtendedContactDetail>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      endpoint,
      o.endpoint,
    )) {
      return false;
    }
    return true;
  }
}
