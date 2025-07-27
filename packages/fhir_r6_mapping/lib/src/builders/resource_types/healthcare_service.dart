import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart'
    show
        HealthcareService,
        HealthcareServiceEligibility,
        R6ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r6_mapping/fhir_r6_mapping.dart';
import 'package:yaml/yaml.dart';

/// [HealthcareServiceBuilder]
/// The details of a healthcare service available at a location.
class HealthcareServiceBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [HealthcareServiceBuilder]

  HealthcareServiceBuilder({
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
    this.providedBy,
    this.offeredIn,
    this.category,
    this.type,
    this.specialty,
    this.location,
    this.name,
    this.comment,
    this.extraDetails,
    this.photo,
    this.contact,
    this.coverageArea,
    this.serviceProvisionCode,
    this.eligibility,
    this.program,
    this.characteristic,
    this.communication,
    this.referralMethod,
    this.appointmentRequired,
    this.availability,
    this.endpoint,
  }) : super(
          objectPath: 'HealthcareService',
          resourceType: R6ResourceType.HealthcareService,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory HealthcareServiceBuilder.empty() => HealthcareServiceBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory HealthcareServiceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'HealthcareService';
    return HealthcareServiceBuilder(
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
      providedBy: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'providedBy',
        ReferenceBuilder.fromJson,
        '$objectPath.providedBy',
      ),
      offeredIn: (json['offeredIn'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.offeredIn',
              },
            ),
          )
          .toList(),
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.category',
              },
            ),
          )
          .toList(),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.type',
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
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      comment: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'comment',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.comment',
      ),
      extraDetails: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'extraDetails',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.extraDetails',
      ),
      photo: JsonParser.parseObject<AttachmentBuilder>(
        json,
        'photo',
        AttachmentBuilder.fromJson,
        '$objectPath.photo',
      ),
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
      coverageArea: (json['coverageArea'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.coverageArea',
              },
            ),
          )
          .toList(),
      serviceProvisionCode: (json['serviceProvisionCode'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.serviceProvisionCode',
              },
            ),
          )
          .toList(),
      eligibility: (json['eligibility'] as List<dynamic>?)
          ?.map<HealthcareServiceEligibilityBuilder>(
            (v) => HealthcareServiceEligibilityBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.eligibility',
              },
            ),
          )
          .toList(),
      program: (json['program'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.program',
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
      referralMethod: (json['referralMethod'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.referralMethod',
              },
            ),
          )
          .toList(),
      appointmentRequired: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'appointmentRequired',
        FhirBooleanBuilder.fromJson,
        '$objectPath.appointmentRequired',
      ),
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

  /// Deserialize [HealthcareServiceBuilder]
  /// from a [String] or [YamlMap] object
  factory HealthcareServiceBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return HealthcareServiceBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return HealthcareServiceBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'HealthcareServiceBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [HealthcareServiceBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory HealthcareServiceBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return HealthcareServiceBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'HealthcareService';

  /// [identifier]
  /// External identifiers for this item.
  List<IdentifierBuilder>? identifier;

  /// [active]
  /// This flag is used to mark the record to not be used. This is not used
  /// when a center is closed for maintenance, or for holidays, the
  /// notAvailable period is to be used for this.
  FhirBooleanBuilder? active;

  /// [providedBy]
  /// The organization that provides this healthcare service.
  ReferenceBuilder? providedBy;

  /// [offeredIn]
  /// When the HealthcareService is representing a specific, schedulable
  /// service, the availableIn property can refer to a generic service.
  List<ReferenceBuilder>? offeredIn;

  /// [category]
  /// Identifies the broad category of service being performed or delivered.
  List<CodeableConceptBuilder>? category;

  /// [type]
  /// The specific type of service that may be delivered or performed.
  List<CodeableConceptBuilder>? type;

  /// [specialty]
  /// Collection of specialties handled by the Healthcare service. This is
  /// more of a medical term.
  List<CodeableConceptBuilder>? specialty;

  /// [location]
  /// The location(s) where this healthcare service may be provided.
  List<ReferenceBuilder>? location;

  /// [name]
  /// Further description of the service as it would be presented to a
  /// consumer while searching.
  FhirStringBuilder? name;

  /// [comment]
  /// Any additional description of the service and/or any specific issues
  /// not covered by the other attributes, which can be displayed as further
  /// detail under the serviceName.
  FhirMarkdownBuilder? comment;

  /// [extraDetails]
  /// Extra details about the service that can't be placed in the other
  /// fields.
  FhirMarkdownBuilder? extraDetails;

  /// [photo]
  /// If there is a photo/symbol associated with this HealthcareService, it
  /// may be included here to facilitate quick identification of the service
  /// in a list.
  AttachmentBuilder? photo;

  /// [contact]
  /// The contact details of communication devices available relevant to the
  /// specific HealthcareService. This can include addresses, phone numbers,
  /// fax numbers, mobile numbers, email addresses and web sites.
  List<ExtendedContactDetailBuilder>? contact;

  /// [coverageArea]
  /// The location(s) that this service is available to (not where the
  /// service is provided).
  List<ReferenceBuilder>? coverageArea;

  /// [serviceProvisionCode]
  /// The code(s) that detail the conditions under which the healthcare
  /// service is available/offered.
  List<CodeableConceptBuilder>? serviceProvisionCode;

  /// [eligibility]
  /// Does this service have specific eligibility requirements that need to
  /// be met in order to use the service?
  List<HealthcareServiceEligibilityBuilder>? eligibility;

  /// [program]
  /// Programs that this service is applicable to.
  List<CodeableConceptBuilder>? program;

  /// [characteristic]
  /// Collection of characteristics (attributes).
  List<CodeableConceptBuilder>? characteristic;

  /// [communication]
  /// Some services are specifically made available in multiple languages,
  /// this property permits a directory to declare the languages this is
  /// offered in. Typically this is only provided where a service operates in
  /// communities with mixed languages used.
  List<CodeableConceptBuilder>? communication;

  /// [referralMethod]
  /// Ways that the service accepts referrals, if this is not provided then
  /// it is implied that no referral is required.
  List<CodeableConceptBuilder>? referralMethod;

  /// [appointmentRequired]
  /// Indicates whether or not a prospective consumer will require an
  /// appointment for a particular service at a site to be provided by the
  /// Organization. Indicates if an appointment is required for access to
  /// this service.
  FhirBooleanBuilder? appointmentRequired;

  /// [availability]
  /// A collection of times that the healthcare service is available.
  List<AvailabilityBuilder>? availability;

  /// [endpoint]
  /// Technical endpoints providing access to services operated for the
  /// specific healthcare services defined at this resource.
  List<ReferenceBuilder>? endpoint;

  /// Converts a [HealthcareServiceBuilder]
  /// to [HealthcareService]
  @override
  HealthcareService build() => HealthcareService.fromJson(toJson());

  /// Converts a [HealthcareServiceBuilder]
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
    addField('providedBy', providedBy);
    addField('offeredIn', offeredIn);
    addField('category', category);
    addField('type', type);
    addField('specialty', specialty);
    addField('location', location);
    addField('name', name);
    addField('comment', comment);
    addField('extraDetails', extraDetails);
    addField('photo', photo);
    addField('contact', contact);
    addField('coverageArea', coverageArea);
    addField('serviceProvisionCode', serviceProvisionCode);
    addField('eligibility', eligibility);
    addField('program', program);
    addField('characteristic', characteristic);
    addField('communication', communication);
    addField('referralMethod', referralMethod);
    addField('appointmentRequired', appointmentRequired);
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
      'providedBy',
      'offeredIn',
      'category',
      'type',
      'specialty',
      'location',
      'name',
      'comment',
      'extraDetails',
      'photo',
      'contact',
      'coverageArea',
      'serviceProvisionCode',
      'eligibility',
      'program',
      'characteristic',
      'communication',
      'referralMethod',
      'appointmentRequired',
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
      case 'providedBy':
        if (providedBy != null) {
          fields.add(providedBy!);
        }
      case 'offeredIn':
        if (offeredIn != null) {
          fields.addAll(offeredIn!);
        }
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'type':
        if (type != null) {
          fields.addAll(type!);
        }
      case 'specialty':
        if (specialty != null) {
          fields.addAll(specialty!);
        }
      case 'location':
        if (location != null) {
          fields.addAll(location!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'comment':
        if (comment != null) {
          fields.add(comment!);
        }
      case 'extraDetails':
        if (extraDetails != null) {
          fields.add(extraDetails!);
        }
      case 'photo':
        if (photo != null) {
          fields.add(photo!);
        }
      case 'contact':
        if (contact != null) {
          fields.addAll(contact!);
        }
      case 'coverageArea':
        if (coverageArea != null) {
          fields.addAll(coverageArea!);
        }
      case 'serviceProvisionCode':
        if (serviceProvisionCode != null) {
          fields.addAll(serviceProvisionCode!);
        }
      case 'eligibility':
        if (eligibility != null) {
          fields.addAll(eligibility!);
        }
      case 'program':
        if (program != null) {
          fields.addAll(program!);
        }
      case 'characteristic':
        if (characteristic != null) {
          fields.addAll(characteristic!);
        }
      case 'communication':
        if (communication != null) {
          fields.addAll(communication!);
        }
      case 'referralMethod':
        if (referralMethod != null) {
          fields.addAll(referralMethod!);
        }
      case 'appointmentRequired':
        if (appointmentRequired != null) {
          fields.add(appointmentRequired!);
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
      case 'providedBy':
        {
          if (child is ReferenceBuilder) {
            providedBy = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'offeredIn':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            offeredIn = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            offeredIn = [
              ...(offeredIn ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'category':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            category = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            category = [
              ...(category ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            type = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            type = [
              ...(type ?? []),
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
      case 'name':
        {
          if (child is FhirStringBuilder) {
            name = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                name = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'comment':
        {
          if (child is FhirMarkdownBuilder) {
            comment = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                comment = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extraDetails':
        {
          if (child is FhirMarkdownBuilder) {
            extraDetails = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                extraDetails = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'photo':
        {
          if (child is AttachmentBuilder) {
            photo = child;
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
      case 'coverageArea':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            coverageArea = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            coverageArea = [
              ...(coverageArea ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'serviceProvisionCode':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            serviceProvisionCode = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            serviceProvisionCode = [
              ...(serviceProvisionCode ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'eligibility':
        {
          if (child is List<HealthcareServiceEligibilityBuilder>) {
            // Replace or create new list
            eligibility = child;
            return;
          } else if (child is HealthcareServiceEligibilityBuilder) {
            // Add single element to existing list or create new list
            eligibility = [
              ...(eligibility ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'program':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            program = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            program = [
              ...(program ?? []),
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
      case 'referralMethod':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            referralMethod = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            referralMethod = [
              ...(referralMethod ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'appointmentRequired':
        {
          if (child is FhirBooleanBuilder) {
            appointmentRequired = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                appointmentRequired = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
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
      case 'providedBy':
        return ['ReferenceBuilder'];
      case 'offeredIn':
        return ['ReferenceBuilder'];
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'specialty':
        return ['CodeableConceptBuilder'];
      case 'location':
        return ['ReferenceBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      case 'comment':
        return ['FhirMarkdownBuilder'];
      case 'extraDetails':
        return ['FhirMarkdownBuilder'];
      case 'photo':
        return ['AttachmentBuilder'];
      case 'contact':
        return ['ExtendedContactDetailBuilder'];
      case 'coverageArea':
        return ['ReferenceBuilder'];
      case 'serviceProvisionCode':
        return ['CodeableConceptBuilder'];
      case 'eligibility':
        return ['HealthcareServiceEligibilityBuilder'];
      case 'program':
        return ['CodeableConceptBuilder'];
      case 'characteristic':
        return ['CodeableConceptBuilder'];
      case 'communication':
        return ['CodeableConceptBuilder'];
      case 'referralMethod':
        return ['CodeableConceptBuilder'];
      case 'appointmentRequired':
        return ['FhirBooleanBuilder'];
      case 'availability':
        return ['AvailabilityBuilder'];
      case 'endpoint':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [HealthcareServiceBuilder]
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
      case 'providedBy':
        {
          providedBy = ReferenceBuilder.empty();
          return;
        }
      case 'offeredIn':
        {
          offeredIn = <ReferenceBuilder>[];
          return;
        }
      case 'category':
        {
          category = <CodeableConceptBuilder>[];
          return;
        }
      case 'type':
        {
          type = <CodeableConceptBuilder>[];
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
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'comment':
        {
          comment = FhirMarkdownBuilder.empty();
          return;
        }
      case 'extraDetails':
        {
          extraDetails = FhirMarkdownBuilder.empty();
          return;
        }
      case 'photo':
        {
          photo = AttachmentBuilder.empty();
          return;
        }
      case 'contact':
        {
          contact = <ExtendedContactDetailBuilder>[];
          return;
        }
      case 'coverageArea':
        {
          coverageArea = <ReferenceBuilder>[];
          return;
        }
      case 'serviceProvisionCode':
        {
          serviceProvisionCode = <CodeableConceptBuilder>[];
          return;
        }
      case 'eligibility':
        {
          eligibility = <HealthcareServiceEligibilityBuilder>[];
          return;
        }
      case 'program':
        {
          program = <CodeableConceptBuilder>[];
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
      case 'referralMethod':
        {
          referralMethod = <CodeableConceptBuilder>[];
          return;
        }
      case 'appointmentRequired':
        {
          appointmentRequired = FhirBooleanBuilder.empty();
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
  HealthcareServiceBuilder clone() => throw UnimplementedError();
  @override
  HealthcareServiceBuilder copyWith({
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
    ReferenceBuilder? providedBy,
    List<ReferenceBuilder>? offeredIn,
    List<CodeableConceptBuilder>? category,
    List<CodeableConceptBuilder>? type,
    List<CodeableConceptBuilder>? specialty,
    List<ReferenceBuilder>? location,
    FhirStringBuilder? name,
    FhirMarkdownBuilder? comment,
    FhirMarkdownBuilder? extraDetails,
    AttachmentBuilder? photo,
    List<ExtendedContactDetailBuilder>? contact,
    List<ReferenceBuilder>? coverageArea,
    List<CodeableConceptBuilder>? serviceProvisionCode,
    List<HealthcareServiceEligibilityBuilder>? eligibility,
    List<CodeableConceptBuilder>? program,
    List<CodeableConceptBuilder>? characteristic,
    List<CodeableConceptBuilder>? communication,
    List<CodeableConceptBuilder>? referralMethod,
    FhirBooleanBuilder? appointmentRequired,
    List<AvailabilityBuilder>? availability,
    List<ReferenceBuilder>? endpoint,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = HealthcareServiceBuilder(
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
      providedBy: providedBy ?? this.providedBy,
      offeredIn: offeredIn ?? this.offeredIn,
      category: category ?? this.category,
      type: type ?? this.type,
      specialty: specialty ?? this.specialty,
      location: location ?? this.location,
      name: name ?? this.name,
      comment: comment ?? this.comment,
      extraDetails: extraDetails ?? this.extraDetails,
      photo: photo ?? this.photo,
      contact: contact ?? this.contact,
      coverageArea: coverageArea ?? this.coverageArea,
      serviceProvisionCode: serviceProvisionCode ?? this.serviceProvisionCode,
      eligibility: eligibility ?? this.eligibility,
      program: program ?? this.program,
      characteristic: characteristic ?? this.characteristic,
      communication: communication ?? this.communication,
      referralMethod: referralMethod ?? this.referralMethod,
      appointmentRequired: appointmentRequired ?? this.appointmentRequired,
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
    if (o is! HealthcareServiceBuilder) {
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
      providedBy,
      o.providedBy,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      offeredIn,
      o.offeredIn,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      category,
      o.category,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      type,
      o.type,
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
    if (!equalsDeepWithNull(
      name,
      o.name,
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
      extraDetails,
      o.extraDetails,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      photo,
      o.photo,
    )) {
      return false;
    }
    if (!listEquals<ExtendedContactDetailBuilder>(
      contact,
      o.contact,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      coverageArea,
      o.coverageArea,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      serviceProvisionCode,
      o.serviceProvisionCode,
    )) {
      return false;
    }
    if (!listEquals<HealthcareServiceEligibilityBuilder>(
      eligibility,
      o.eligibility,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      program,
      o.program,
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
    if (!listEquals<CodeableConceptBuilder>(
      referralMethod,
      o.referralMethod,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      appointmentRequired,
      o.appointmentRequired,
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

/// [HealthcareServiceEligibilityBuilder]
/// Does this service have specific eligibility requirements that need to
/// be met in order to use the service?
class HealthcareServiceEligibilityBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [HealthcareServiceEligibilityBuilder]

  HealthcareServiceEligibilityBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.comment,
    super.disallowExtensions,
  }) : super(
          objectPath: 'HealthcareService.eligibility',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory HealthcareServiceEligibilityBuilder.empty() =>
      HealthcareServiceEligibilityBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory HealthcareServiceEligibilityBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'HealthcareService.eligibility';
    return HealthcareServiceEligibilityBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
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
      code: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'code',
        CodeableConceptBuilder.fromJson,
        '$objectPath.code',
      ),
      comment: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'comment',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.comment',
      ),
    );
  }

  /// Deserialize [HealthcareServiceEligibilityBuilder]
  /// from a [String] or [YamlMap] object
  factory HealthcareServiceEligibilityBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return HealthcareServiceEligibilityBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return HealthcareServiceEligibilityBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'HealthcareServiceEligibilityBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [HealthcareServiceEligibilityBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory HealthcareServiceEligibilityBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return HealthcareServiceEligibilityBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'HealthcareServiceEligibility';

  /// [code]
  /// Coded value for the eligibility.
  CodeableConceptBuilder? code;

  /// [comment]
  /// Describes the eligibility conditions for the service.
  FhirMarkdownBuilder? comment;

  /// Converts a [HealthcareServiceEligibilityBuilder]
  /// to [HealthcareServiceEligibility]
  @override
  HealthcareServiceEligibility build() =>
      HealthcareServiceEligibility.fromJson(toJson());

  /// Converts a [HealthcareServiceEligibilityBuilder]
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

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('code', code);
    addField('comment', comment);
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
      'comment',
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
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
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
      case 'code':
        {
          if (child is CodeableConceptBuilder) {
            code = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'comment':
        {
          if (child is FhirMarkdownBuilder) {
            comment = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                comment = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
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
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'comment':
        return ['FhirMarkdownBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [HealthcareServiceEligibilityBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
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
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
          return;
        }
      case 'comment':
        {
          comment = FhirMarkdownBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  HealthcareServiceEligibilityBuilder clone() => throw UnimplementedError();
  @override
  HealthcareServiceEligibilityBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? code,
    FhirMarkdownBuilder? comment,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = HealthcareServiceEligibilityBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      comment: comment ?? this.comment,
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
    if (o is! HealthcareServiceEligibilityBuilder) {
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
    return true;
  }
}
