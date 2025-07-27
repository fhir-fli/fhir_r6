import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'practitioner_role.g.dart';

/// [PractitionerRole]
/// A specific set of Roles/Locations/specialties/services that a
/// practitioner may perform at an organization for a period of time.
class PractitionerRole extends DomainResource {
  /// Primary constructor for
  /// [PractitionerRole]

  const PractitionerRole({
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
    this.practitioner,
    this.organization,
    this.code,
    this.specialty,
    this.location,
    this.healthcareService,
    this.contact,
    this.characteristic,
    this.communication,
    this.availability,
    this.endpoint,
  }) : super(
          resourceType: R5ResourceType.PractitionerRole,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PractitionerRole.fromJson(
    Map<String, dynamic> json,
  ) {
    return PractitionerRole(
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
      practitioner: JsonParser.parseObject<Reference>(
        json,
        'practitioner',
        Reference.fromJson,
      ),
      organization: JsonParser.parseObject<Reference>(
        json,
        'organization',
        Reference.fromJson,
      ),
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
      characteristic: (json['characteristic'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      communication: (json['communication'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      availability: (json['availability'] as List<dynamic>?)
          ?.map<Availability>(
            (v) => Availability.fromJson(
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

  /// Deserialize [PractitionerRole]
  /// from a [String] or [YamlMap] object
  factory PractitionerRole.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PractitionerRole.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PractitionerRole.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PractitionerRole '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PractitionerRole]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PractitionerRole.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PractitionerRole.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'PractitionerRole';

  /// [identifier]
  /// Business Identifiers that are specific to a role/location.
  final List<Identifier>? identifier;

  /// [active]
  /// Whether this practitioner role record is in active use. Some systems
  /// may use this property to mark non-active practitioners, such as those
  /// that are not currently employed.
  final FhirBoolean? active;

  /// [period]
  /// The period during which the person is authorized to act as a
  /// practitioner in these role(s) for the organization.
  final Period? period;

  /// [practitioner]
  /// Practitioner that is able to provide the defined services for the
  /// organization.
  final Reference? practitioner;

  /// [organization]
  /// The organization where the Practitioner performs the roles associated.
  final Reference? organization;

  /// [code]
  /// Roles which this practitioner is authorized to perform for the
  /// organization.
  final List<CodeableConcept>? code;

  /// [specialty]
  /// The specialty of a practitioner that describes the functional role they
  /// are practicing at a given organization or location.
  final List<CodeableConcept>? specialty;

  /// [location]
  /// The location(s) at which this practitioner provides care.
  final List<Reference>? location;

  /// [healthcareService]
  /// The list of healthcare services that this worker provides for this
  /// role's Organization/Location(s).
  final List<Reference>? healthcareService;

  /// [contact]
  /// The contact details of communication devices available relevant to the
  /// specific PractitionerRole. This can include addresses, phone numbers,
  /// fax numbers, mobile numbers, email addresses and web sites.
  final List<ExtendedContactDetail>? contact;

  /// [characteristic]
  /// Collection of characteristics (attributes).
  final List<CodeableConcept>? characteristic;

  /// [communication]
  /// A language the practitioner can use in patient communication. The
  /// practitioner may know several languages (listed in
  /// practitioner.communication), however these are the languages that could
  /// be advertised in a directory for a patient to search.
  final List<CodeableConcept>? communication;

  /// [availability]
  /// A collection of times the practitioner is available or performing this
  /// role at the location and/or healthcareservice.
  final List<Availability>? availability;

  /// [endpoint]
  /// Technical endpoints providing access to services operated for the
  /// practitioner with this role. Commonly used for locating scheduling
  /// services, or identifying where to send referrals electronically.
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
      'practitioner',
      practitioner,
    );
    addField(
      'organization',
      organization,
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
      'characteristic',
      characteristic,
    );
    addField(
      'communication',
      communication,
    );
    addField(
      'availability',
      availability,
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
      'practitioner',
      'organization',
      'code',
      'specialty',
      'location',
      'healthcareService',
      'contact',
      'characteristic',
      'communication',
      'availability',
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
      case 'practitioner':
        if (practitioner != null) {
          fields.add(practitioner!);
        }
      case 'organization':
        if (organization != null) {
          fields.add(organization!);
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
      case 'characteristic':
        if (characteristic != null) {
          fields.addAll(characteristic!);
        }
      case 'communication':
        if (communication != null) {
          fields.addAll(communication!);
        }
      case 'availability':
        if (availability != null) {
          fields.addAll(availability!);
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
  PractitionerRole clone() => copyWith();

  /// Copy function for [PractitionerRole]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $PractitionerRoleCopyWith<PractitionerRole> get copyWith =>
      _$PractitionerRoleCopyWithImpl<PractitionerRole>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! PractitionerRole) {
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
      practitioner,
      o.practitioner,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      organization,
      o.organization,
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
    if (!listEquals<CodeableConcept>(
      characteristic,
      o.characteristic,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      communication,
      o.communication,
    )) {
      return false;
    }
    if (!listEquals<Availability>(
      availability,
      o.availability,
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
