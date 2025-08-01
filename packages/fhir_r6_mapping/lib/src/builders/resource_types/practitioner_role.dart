import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show PractitionerRole, R5ResourceType, yamlMapToJson, yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [PractitionerRoleBuilder]
/// A specific set of Roles/Locations/specialties/services that a
/// practitioner may perform at an organization for a period of time.
class PractitionerRoleBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [PractitionerRoleBuilder]

  PractitionerRoleBuilder({
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
          objectPath: 'PractitionerRole',
          resourceType: R5ResourceType.PractitionerRole,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory PractitionerRoleBuilder.empty() => PractitionerRoleBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PractitionerRoleBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'PractitionerRole';
    return PractitionerRoleBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMetaBuilder>(
        json,
        'meta',
        FhirMetaBuilder.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'implicitRules',
        FhirUriBuilder.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<AllLanguagesBuilder>(
        json,
        'language',
        AllLanguagesBuilder.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<NarrativeBuilder>(
        json,
        'text',
        NarrativeBuilder.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<ResourceBuilder>(
            (v) => ResourceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      active: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'active',
        FhirBooleanBuilder.fromJson,
        '$objectPath.active',
      ),
      period: JsonParser.parseObject<PeriodBuilder>(
        json,
        'period',
        PeriodBuilder.fromJson,
        '$objectPath.period',
      ),
      practitioner: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'practitioner',
        ReferenceBuilder.fromJson,
        '$objectPath.practitioner',
      ),
      organization: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'organization',
        ReferenceBuilder.fromJson,
        '$objectPath.organization',
      ),
      code: (json['code'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.code',
              },
            ),
          )
          .toList(),
      specialty: (json['specialty'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.specialty',
              },
            ),
          )
          .toList(),
      location: (json['location'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.location',
              },
            ),
          )
          .toList(),
      healthcareService: (json['healthcareService'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.healthcareService',
              },
            ),
          )
          .toList(),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ExtendedContactDetailBuilder>(
            (v) => ExtendedContactDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contact',
              },
            ),
          )
          .toList(),
      characteristic: (json['characteristic'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.characteristic',
              },
            ),
          )
          .toList(),
      communication: (json['communication'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.communication',
              },
            ),
          )
          .toList(),
      availability: (json['availability'] as List<dynamic>?)
          ?.map<AvailabilityBuilder>(
            (v) => AvailabilityBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.availability',
              },
            ),
          )
          .toList(),
      endpoint: (json['endpoint'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.endpoint',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [PractitionerRoleBuilder]
  /// from a [String] or [YamlMap] object
  factory PractitionerRoleBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PractitionerRoleBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PractitionerRoleBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PractitionerRoleBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PractitionerRoleBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PractitionerRoleBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PractitionerRoleBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'PractitionerRole';

  /// [identifier]
  /// Business Identifiers that are specific to a role/location.
  List<IdentifierBuilder>? identifier;

  /// [active]
  /// Whether this practitioner role record is in active use. Some systems
  /// may use this property to mark non-active practitioners, such as those
  /// that are not currently employed.
  FhirBooleanBuilder? active;

  /// [period]
  /// The period during which the person is authorized to act as a
  /// practitioner in these role(s) for the organization.
  PeriodBuilder? period;

  /// [practitioner]
  /// Practitioner that is able to provide the defined services for the
  /// organization.
  ReferenceBuilder? practitioner;

  /// [organization]
  /// The organization where the Practitioner performs the roles associated.
  ReferenceBuilder? organization;

  /// [code]
  /// Roles which this practitioner is authorized to perform for the
  /// organization.
  List<CodeableConceptBuilder>? code;

  /// [specialty]
  /// The specialty of a practitioner that describes the functional role they
  /// are practicing at a given organization or location.
  List<CodeableConceptBuilder>? specialty;

  /// [location]
  /// The location(s) at which this practitioner provides care.
  List<ReferenceBuilder>? location;

  /// [healthcareService]
  /// The list of healthcare services that this worker provides for this
  /// role's Organization/Location(s).
  List<ReferenceBuilder>? healthcareService;

  /// [contact]
  /// The contact details of communication devices available relevant to the
  /// specific PractitionerRole. This can include addresses, phone numbers,
  /// fax numbers, mobile numbers, email addresses and web sites.
  List<ExtendedContactDetailBuilder>? contact;

  /// [characteristic]
  /// Collection of characteristics (attributes).
  List<CodeableConceptBuilder>? characteristic;

  /// [communication]
  /// A language the practitioner can use in patient communication. The
  /// practitioner may know several languages (listed in
  /// practitioner.communication), however these are the languages that could
  /// be advertised in a directory for a patient to search.
  List<CodeableConceptBuilder>? communication;

  /// [availability]
  /// A collection of times the practitioner is available or performing this
  /// role at the location and/or healthcareservice.
  List<AvailabilityBuilder>? availability;

  /// [endpoint]
  /// Technical endpoints providing access to services operated for the
  /// practitioner with this role. Commonly used for locating scheduling
  /// services, or identifying where to send referrals electronically.
  List<ReferenceBuilder>? endpoint;

  /// Converts a [PractitionerRoleBuilder]
  /// to [PractitionerRole]
  @override
  PractitionerRole build() => PractitionerRole.fromJson(toJson());

  /// Converts a [PractitionerRoleBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('active', active);
    addField('period', period);
    addField('practitioner', practitioner);
    addField('organization', organization);
    addField('code', code);
    addField('specialty', specialty);
    addField('location', location);
    addField('healthcareService', healthcareService);
    addField('contact', contact);
    addField('characteristic', characteristic);
    addField('communication', communication);
    addField('availability', availability);
    addField('endpoint', endpoint);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                implicitRules = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'language':
        {
          if (child is AllLanguagesBuilder) {
            language = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = AllLanguagesBuilder(stringValue);
                language = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'text':
        {
          if (child is NarrativeBuilder) {
            text = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contained':
        {
          if (child is List<ResourceBuilder>) {
            // Replace or create new list
            contained = child;
            return;
          } else if (child is ResourceBuilder) {
            // Add single element to existing list or create new list
            contained = [
              ...(contained ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'identifier':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            identifier = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            identifier = [
              ...(identifier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'active':
        {
          if (child is FhirBooleanBuilder) {
            active = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                active = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'period':
        {
          if (child is PeriodBuilder) {
            period = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'practitioner':
        {
          if (child is ReferenceBuilder) {
            practitioner = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'organization':
        {
          if (child is ReferenceBuilder) {
            organization = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'code':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            code = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            code = [
              ...(code ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'specialty':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            specialty = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            specialty = [
              ...(specialty ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'location':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            location = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            location = [
              ...(location ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'healthcareService':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            healthcareService = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            healthcareService = [
              ...(healthcareService ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contact':
        {
          if (child is List<ExtendedContactDetailBuilder>) {
            // Replace or create new list
            contact = child;
            return;
          } else if (child is ExtendedContactDetailBuilder) {
            // Add single element to existing list or create new list
            contact = [
              ...(contact ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'characteristic':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            characteristic = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            characteristic = [
              ...(characteristic ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'communication':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            communication = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            communication = [
              ...(communication ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'availability':
        {
          if (child is List<AvailabilityBuilder>) {
            // Replace or create new list
            availability = child;
            return;
          } else if (child is AvailabilityBuilder) {
            // Add single element to existing list or create new list
            availability = [
              ...(availability ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'endpoint':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            endpoint = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            endpoint = [
              ...(endpoint ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'meta':
        return ['FhirMetaBuilder'];
      case 'implicitRules':
        return ['FhirUriBuilder'];
      case 'language':
        return ['FhirCodeEnumBuilder'];
      case 'text':
        return ['NarrativeBuilder'];
      case 'contained':
        return ['ResourceBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'active':
        return ['FhirBooleanBuilder'];
      case 'period':
        return ['PeriodBuilder'];
      case 'practitioner':
        return ['ReferenceBuilder'];
      case 'organization':
        return ['ReferenceBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'specialty':
        return ['CodeableConceptBuilder'];
      case 'location':
        return ['ReferenceBuilder'];
      case 'healthcareService':
        return ['ReferenceBuilder'];
      case 'contact':
        return ['ExtendedContactDetailBuilder'];
      case 'characteristic':
        return ['CodeableConceptBuilder'];
      case 'communication':
        return ['CodeableConceptBuilder'];
      case 'availability':
        return ['AvailabilityBuilder'];
      case 'endpoint':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [PractitionerRoleBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'meta':
        {
          meta = FhirMetaBuilder.empty();
          return;
        }
      case 'implicitRules':
        {
          implicitRules = FhirUriBuilder.empty();
          return;
        }
      case 'language':
        {
          language = AllLanguagesBuilder.empty();
          return;
        }
      case 'text':
        {
          text = NarrativeBuilder.empty();
          return;
        }
      case 'contained':
        {
          contained = <ResourceBuilder>[];
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'identifier':
        {
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'active':
        {
          active = FhirBooleanBuilder.empty();
          return;
        }
      case 'period':
        {
          period = PeriodBuilder.empty();
          return;
        }
      case 'practitioner':
        {
          practitioner = ReferenceBuilder.empty();
          return;
        }
      case 'organization':
        {
          organization = ReferenceBuilder.empty();
          return;
        }
      case 'code':
        {
          code = <CodeableConceptBuilder>[];
          return;
        }
      case 'specialty':
        {
          specialty = <CodeableConceptBuilder>[];
          return;
        }
      case 'location':
        {
          location = <ReferenceBuilder>[];
          return;
        }
      case 'healthcareService':
        {
          healthcareService = <ReferenceBuilder>[];
          return;
        }
      case 'contact':
        {
          contact = <ExtendedContactDetailBuilder>[];
          return;
        }
      case 'characteristic':
        {
          characteristic = <CodeableConceptBuilder>[];
          return;
        }
      case 'communication':
        {
          communication = <CodeableConceptBuilder>[];
          return;
        }
      case 'availability':
        {
          availability = <AvailabilityBuilder>[];
          return;
        }
      case 'endpoint':
        {
          endpoint = <ReferenceBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  PractitionerRoleBuilder clone() => throw UnimplementedError();
  @override
  PractitionerRoleBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    FhirBooleanBuilder? active,
    PeriodBuilder? period,
    ReferenceBuilder? practitioner,
    ReferenceBuilder? organization,
    List<CodeableConceptBuilder>? code,
    List<CodeableConceptBuilder>? specialty,
    List<ReferenceBuilder>? location,
    List<ReferenceBuilder>? healthcareService,
    List<ExtendedContactDetailBuilder>? contact,
    List<CodeableConceptBuilder>? characteristic,
    List<CodeableConceptBuilder>? communication,
    List<AvailabilityBuilder>? availability,
    List<ReferenceBuilder>? endpoint,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = PractitionerRoleBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      active: active ?? this.active,
      period: period ?? this.period,
      practitioner: practitioner ?? this.practitioner,
      organization: organization ?? this.organization,
      code: code ?? this.code,
      specialty: specialty ?? this.specialty,
      location: location ?? this.location,
      healthcareService: healthcareService ?? this.healthcareService,
      contact: contact ?? this.contact,
      characteristic: characteristic ?? this.characteristic,
      communication: communication ?? this.communication,
      availability: availability ?? this.availability,
      endpoint: endpoint ?? this.endpoint,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! PractitionerRoleBuilder) {
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
    if (!listEquals<ResourceBuilder>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<IdentifierBuilder>(
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
    if (!listEquals<CodeableConceptBuilder>(
      code,
      o.code,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      specialty,
      o.specialty,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      location,
      o.location,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      healthcareService,
      o.healthcareService,
    )) {
      return false;
    }
    if (!listEquals<ExtendedContactDetailBuilder>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      characteristic,
      o.characteristic,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      communication,
      o.communication,
    )) {
      return false;
    }
    if (!listEquals<AvailabilityBuilder>(
      availability,
      o.availability,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      endpoint,
      o.endpoint,
    )) {
      return false;
    }
    return true;
  }
}
