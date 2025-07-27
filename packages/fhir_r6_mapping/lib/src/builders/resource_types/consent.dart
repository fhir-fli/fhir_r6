import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        Consent,
        ConsentActor,
        ConsentData,
        ConsentPolicyBasis,
        ConsentProvision,
        ConsentVerification,
        R5ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [ConsentBuilder]
/// A record of a healthcare consumer’s choices or choices made on their
/// behalf by a third party, which permits or denies identified
/// recipient(s) or recipient role(s) to perform one or more actions within
/// a given policy context, for specific purposes and periods of time.
class ConsentBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [ConsentBuilder]

  ConsentBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.status,
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
          objectPath: 'Consent',
          resourceType: R5ResourceType.Consent,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ConsentBuilder.empty() => ConsentBuilder(
        status: ConsentStateBuilder.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConsentBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Consent';
    return ConsentBuilder(
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
      status: JsonParser.parsePrimitive<ConsentStateBuilder>(
        json,
        'status',
        ConsentStateBuilder.fromJson,
        '$objectPath.status',
      ),
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
      subject: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'subject',
        ReferenceBuilder.fromJson,
        '$objectPath.subject',
      ),
      date: JsonParser.parsePrimitive<FhirDateBuilder>(
        json,
        'date',
        FhirDateBuilder.fromJson,
        '$objectPath.date',
      ),
      period: JsonParser.parseObject<PeriodBuilder>(
        json,
        'period',
        PeriodBuilder.fromJson,
        '$objectPath.period',
      ),
      grantor: (json['grantor'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.grantor',
              },
            ),
          )
          .toList(),
      grantee: (json['grantee'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.grantee',
              },
            ),
          )
          .toList(),
      manager: (json['manager'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.manager',
              },
            ),
          )
          .toList(),
      controller: (json['controller'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.controller',
              },
            ),
          )
          .toList(),
      sourceAttachment: (json['sourceAttachment'] as List<dynamic>?)
          ?.map<AttachmentBuilder>(
            (v) => AttachmentBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.sourceAttachment',
              },
            ),
          )
          .toList(),
      sourceReference: (json['sourceReference'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.sourceReference',
              },
            ),
          )
          .toList(),
      regulatoryBasis: (json['regulatoryBasis'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.regulatoryBasis',
              },
            ),
          )
          .toList(),
      policyBasis: JsonParser.parseObject<ConsentPolicyBasisBuilder>(
        json,
        'policyBasis',
        ConsentPolicyBasisBuilder.fromJson,
        '$objectPath.policyBasis',
      ),
      policyText: (json['policyText'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.policyText',
              },
            ),
          )
          .toList(),
      verification: (json['verification'] as List<dynamic>?)
          ?.map<ConsentVerificationBuilder>(
            (v) => ConsentVerificationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.verification',
              },
            ),
          )
          .toList(),
      decision: JsonParser.parsePrimitive<ConsentProvisionTypeBuilder>(
        json,
        'decision',
        ConsentProvisionTypeBuilder.fromJson,
        '$objectPath.decision',
      ),
      provision: (json['provision'] as List<dynamic>?)
          ?.map<ConsentProvisionBuilder>(
            (v) => ConsentProvisionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.provision',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ConsentBuilder]
  /// from a [String] or [YamlMap] object
  factory ConsentBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConsentBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConsentBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConsentBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConsentBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConsentBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ConsentBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Consent';

  /// [identifier]
  /// Unique identifier for this copy of the Consent Statement.
  List<IdentifierBuilder>? identifier;

  /// [status]
  /// Indicates the current state of this Consent resource.
  ConsentStateBuilder? status;

  /// [category]
  /// A classification of the type of consents found in the statement. This
  /// element supports indexing and retrieval of consent statements.
  List<CodeableConceptBuilder>? category;

  /// [subject]
  /// The patient/healthcare practitioner or group of persons to whom this
  /// consent applies.
  ReferenceBuilder? subject;

  /// [date]
  /// Date the consent instance was agreed to.
  FhirDateBuilder? date;

  /// [period]
  /// Effective period for this Consent Resource and all provisions unless
  /// specified in that provision.
  PeriodBuilder? period;

  /// [grantor]
  /// The entity responsible for granting the rights listed in a Consent
  /// Directive.
  List<ReferenceBuilder>? grantor;

  /// [grantee]
  /// The entity responsible for complying with the Consent Directive,
  /// including any obligations or limitations on authorizations and
  /// enforcement of prohibitions.
  List<ReferenceBuilder>? grantee;

  /// [manager]
  /// The actor that manages the consent through its lifecycle.
  List<ReferenceBuilder>? manager;

  /// [controller]
  /// The actor that controls/enforces the access according to the consent.
  List<ReferenceBuilder>? controller;

  /// [sourceAttachment]
  /// The source on which this consent statement is based. The source might
  /// be a scanned original paper form.
  List<AttachmentBuilder>? sourceAttachment;

  /// [sourceReference]
  /// A reference to a consent that links back to such a source, a reference
  /// to a document repository (e.g. XDS) that stores the original consent
  /// document.
  List<ReferenceBuilder>? sourceReference;

  /// [regulatoryBasis]
  /// A set of codes that indicate the regulatory basis (if any) that this
  /// consent supports.
  List<CodeableConceptBuilder>? regulatoryBasis;

  /// [policyBasis]
  /// A Reference or URL used to uniquely identify the policy the
  /// organization will enforce for this Consent. This Reference or URL
  /// should be specific to the version of the policy and should be
  /// dereferencable to a computable policy of some form.
  ConsentPolicyBasisBuilder? policyBasis;

  /// [policyText]
  /// A Reference to the human readable policy explaining the basis for the
  /// Consent.
  List<ReferenceBuilder>? policyText;

  /// [verification]
  /// Whether a treatment instruction (e.g. artificial respiration: yes or
  /// no) was verified with the patient, his/her family or another authorized
  /// person.
  List<ConsentVerificationBuilder>? verification;

  /// [decision]
  /// Action to take - permit or deny - as default.
  ConsentProvisionTypeBuilder? decision;

  /// [provision]
  /// An exception to the base policy of this consent. An exception can be an
  /// addition or removal of access permissions.
  List<ConsentProvisionBuilder>? provision;

  /// Converts a [ConsentBuilder]
  /// to [Consent]
  @override
  Consent build() => Consent.fromJson(toJson());

  /// Converts a [ConsentBuilder]
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
    addField('status', status);
    addField('category', category);
    addField('subject', subject);
    addField('date', date);
    addField('period', period);
    addField('grantor', grantor);
    addField('grantee', grantee);
    addField('manager', manager);
    addField('controller', controller);
    addField('sourceAttachment', sourceAttachment);
    addField('sourceReference', sourceReference);
    addField('regulatoryBasis', regulatoryBasis);
    addField('policyBasis', policyBasis);
    addField('policyText', policyText);
    addField('verification', verification);
    addField('decision', decision);
    addField('provision', provision);
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
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
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
      case 'status':
        {
          if (child is ConsentStateBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ConsentStateBuilder(stringValue);
                status = converted;
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
      case 'subject':
        {
          if (child is ReferenceBuilder) {
            subject = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'date':
        {
          if (child is FhirDateBuilder) {
            date = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateBuilder.tryParse(stringValue);
              if (converted != null) {
                date = converted;
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
      case 'grantor':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            grantor = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            grantor = [
              ...(grantor ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'grantee':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            grantee = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            grantee = [
              ...(grantee ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'manager':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            manager = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            manager = [
              ...(manager ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'controller':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            controller = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            controller = [
              ...(controller ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'sourceAttachment':
        {
          if (child is List<AttachmentBuilder>) {
            // Replace or create new list
            sourceAttachment = child;
            return;
          } else if (child is AttachmentBuilder) {
            // Add single element to existing list or create new list
            sourceAttachment = [
              ...(sourceAttachment ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'sourceReference':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            sourceReference = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            sourceReference = [
              ...(sourceReference ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'regulatoryBasis':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            regulatoryBasis = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            regulatoryBasis = [
              ...(regulatoryBasis ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'policyBasis':
        {
          if (child is ConsentPolicyBasisBuilder) {
            policyBasis = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'policyText':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            policyText = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            policyText = [
              ...(policyText ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'verification':
        {
          if (child is List<ConsentVerificationBuilder>) {
            // Replace or create new list
            verification = child;
            return;
          } else if (child is ConsentVerificationBuilder) {
            // Add single element to existing list or create new list
            verification = [
              ...(verification ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'decision':
        {
          if (child is ConsentProvisionTypeBuilder) {
            decision = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ConsentProvisionTypeBuilder(stringValue);
                decision = converted;
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
      case 'provision':
        {
          if (child is List<ConsentProvisionBuilder>) {
            // Replace or create new list
            provision = child;
            return;
          } else if (child is ConsentProvisionBuilder) {
            // Add single element to existing list or create new list
            provision = [
              ...(provision ?? []),
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
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'subject':
        return ['ReferenceBuilder'];
      case 'date':
        return ['FhirDateBuilder'];
      case 'period':
        return ['PeriodBuilder'];
      case 'grantor':
        return ['ReferenceBuilder'];
      case 'grantee':
        return ['ReferenceBuilder'];
      case 'manager':
        return ['ReferenceBuilder'];
      case 'controller':
        return ['ReferenceBuilder'];
      case 'sourceAttachment':
        return ['AttachmentBuilder'];
      case 'sourceReference':
        return ['ReferenceBuilder'];
      case 'regulatoryBasis':
        return ['CodeableConceptBuilder'];
      case 'policyBasis':
        return ['ConsentPolicyBasisBuilder'];
      case 'policyText':
        return ['ReferenceBuilder'];
      case 'verification':
        return ['ConsentVerificationBuilder'];
      case 'decision':
        return ['FhirCodeEnumBuilder'];
      case 'provision':
        return ['ConsentProvisionBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ConsentBuilder]
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
      case 'status':
        {
          status = ConsentStateBuilder.empty();
          return;
        }
      case 'category':
        {
          category = <CodeableConceptBuilder>[];
          return;
        }
      case 'subject':
        {
          subject = ReferenceBuilder.empty();
          return;
        }
      case 'date':
        {
          date = FhirDateBuilder.empty();
          return;
        }
      case 'period':
        {
          period = PeriodBuilder.empty();
          return;
        }
      case 'grantor':
        {
          grantor = <ReferenceBuilder>[];
          return;
        }
      case 'grantee':
        {
          grantee = <ReferenceBuilder>[];
          return;
        }
      case 'manager':
        {
          manager = <ReferenceBuilder>[];
          return;
        }
      case 'controller':
        {
          controller = <ReferenceBuilder>[];
          return;
        }
      case 'sourceAttachment':
        {
          sourceAttachment = <AttachmentBuilder>[];
          return;
        }
      case 'sourceReference':
        {
          sourceReference = <ReferenceBuilder>[];
          return;
        }
      case 'regulatoryBasis':
        {
          regulatoryBasis = <CodeableConceptBuilder>[];
          return;
        }
      case 'policyBasis':
        {
          policyBasis = ConsentPolicyBasisBuilder.empty();
          return;
        }
      case 'policyText':
        {
          policyText = <ReferenceBuilder>[];
          return;
        }
      case 'verification':
        {
          verification = <ConsentVerificationBuilder>[];
          return;
        }
      case 'decision':
        {
          decision = ConsentProvisionTypeBuilder.empty();
          return;
        }
      case 'provision':
        {
          provision = <ConsentProvisionBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ConsentBuilder clone() => throw UnimplementedError();
  @override
  ConsentBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    ConsentStateBuilder? status,
    List<CodeableConceptBuilder>? category,
    ReferenceBuilder? subject,
    FhirDateBuilder? date,
    PeriodBuilder? period,
    List<ReferenceBuilder>? grantor,
    List<ReferenceBuilder>? grantee,
    List<ReferenceBuilder>? manager,
    List<ReferenceBuilder>? controller,
    List<AttachmentBuilder>? sourceAttachment,
    List<ReferenceBuilder>? sourceReference,
    List<CodeableConceptBuilder>? regulatoryBasis,
    ConsentPolicyBasisBuilder? policyBasis,
    List<ReferenceBuilder>? policyText,
    List<ConsentVerificationBuilder>? verification,
    ConsentProvisionTypeBuilder? decision,
    List<ConsentProvisionBuilder>? provision,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = ConsentBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      category: category ?? this.category,
      subject: subject ?? this.subject,
      date: date ?? this.date,
      period: period ?? this.period,
      grantor: grantor ?? this.grantor,
      grantee: grantee ?? this.grantee,
      manager: manager ?? this.manager,
      controller: controller ?? this.controller,
      sourceAttachment: sourceAttachment ?? this.sourceAttachment,
      sourceReference: sourceReference ?? this.sourceReference,
      regulatoryBasis: regulatoryBasis ?? this.regulatoryBasis,
      policyBasis: policyBasis ?? this.policyBasis,
      policyText: policyText ?? this.policyText,
      verification: verification ?? this.verification,
      decision: decision ?? this.decision,
      provision: provision ?? this.provision,
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
    if (o is! ConsentBuilder) {
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
      status,
      o.status,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
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
    if (!listEquals<ReferenceBuilder>(
      grantor,
      o.grantor,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      grantee,
      o.grantee,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      manager,
      o.manager,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      controller,
      o.controller,
    )) {
      return false;
    }
    if (!listEquals<AttachmentBuilder>(
      sourceAttachment,
      o.sourceAttachment,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      sourceReference,
      o.sourceReference,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
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
    if (!listEquals<ReferenceBuilder>(
      policyText,
      o.policyText,
    )) {
      return false;
    }
    if (!listEquals<ConsentVerificationBuilder>(
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
    if (!listEquals<ConsentProvisionBuilder>(
      provision,
      o.provision,
    )) {
      return false;
    }
    return true;
  }
}

/// [ConsentPolicyBasisBuilder]
/// A Reference or URL used to uniquely identify the policy the
/// organization will enforce for this Consent. This Reference or URL
/// should be specific to the version of the policy and should be
/// dereferencable to a computable policy of some form.
class ConsentPolicyBasisBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ConsentPolicyBasisBuilder]

  ConsentPolicyBasisBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.reference,
    this.url,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Consent.policyBasis',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ConsentPolicyBasisBuilder.empty() => ConsentPolicyBasisBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConsentPolicyBasisBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Consent.policyBasis';
    return ConsentPolicyBasisBuilder(
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
      reference: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'reference',
        ReferenceBuilder.fromJson,
        '$objectPath.reference',
      ),
      url: JsonParser.parsePrimitive<FhirUrlBuilder>(
        json,
        'url',
        FhirUrlBuilder.fromJson,
        '$objectPath.url',
      ),
    );
  }

  /// Deserialize [ConsentPolicyBasisBuilder]
  /// from a [String] or [YamlMap] object
  factory ConsentPolicyBasisBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConsentPolicyBasisBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConsentPolicyBasisBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConsentPolicyBasisBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConsentPolicyBasisBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConsentPolicyBasisBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ConsentPolicyBasisBuilder.fromJson(json);
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
  ReferenceBuilder? reference;

  /// [url]
  /// A URL that links to a computable version of the policy the organization
  /// will enforce for this Consent.
  FhirUrlBuilder? url;

  /// Converts a [ConsentPolicyBasisBuilder]
  /// to [ConsentPolicyBasis]
  @override
  ConsentPolicyBasis build() => ConsentPolicyBasis.fromJson(toJson());

  /// Converts a [ConsentPolicyBasisBuilder]
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
    addField('reference', reference);
    addField('url', url);
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
      case 'reference':
        {
          if (child is ReferenceBuilder) {
            reference = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'url':
        {
          if (child is FhirUrlBuilder) {
            url = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUrlBuilder.tryParse(stringValue);
              if (converted != null) {
                url = converted;
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
      case 'reference':
        return ['ReferenceBuilder'];
      case 'url':
        return ['FhirUrlBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ConsentPolicyBasisBuilder]
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
      case 'reference':
        {
          reference = ReferenceBuilder.empty();
          return;
        }
      case 'url':
        {
          url = FhirUrlBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ConsentPolicyBasisBuilder clone() => throw UnimplementedError();
  @override
  ConsentPolicyBasisBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ReferenceBuilder? reference,
    FhirUrlBuilder? url,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ConsentPolicyBasisBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      reference: reference ?? this.reference,
      url: url ?? this.url,
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
    if (o is! ConsentPolicyBasisBuilder) {
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

/// [ConsentVerificationBuilder]
/// Whether a treatment instruction (e.g. artificial respiration: yes or
/// no) was verified with the patient, his/her family or another authorized
/// person.
class ConsentVerificationBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ConsentVerificationBuilder]

  ConsentVerificationBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.verified,
    this.verificationType,
    this.verifiedBy,
    this.verifiedWith,
    this.verificationDate,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Consent.verification',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ConsentVerificationBuilder.empty() => ConsentVerificationBuilder(
        verified: FhirBooleanBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConsentVerificationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Consent.verification';
    return ConsentVerificationBuilder(
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
      verified: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'verified',
        FhirBooleanBuilder.fromJson,
        '$objectPath.verified',
      ),
      verificationType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'verificationType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.verificationType',
      ),
      verifiedBy: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'verifiedBy',
        ReferenceBuilder.fromJson,
        '$objectPath.verifiedBy',
      ),
      verifiedWith: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'verifiedWith',
        ReferenceBuilder.fromJson,
        '$objectPath.verifiedWith',
      ),
      verificationDate: JsonParser.parsePrimitiveList<FhirDateTimeBuilder>(
        json,
        'verificationDate',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.verificationDate',
      ),
    );
  }

  /// Deserialize [ConsentVerificationBuilder]
  /// from a [String] or [YamlMap] object
  factory ConsentVerificationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConsentVerificationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConsentVerificationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConsentVerificationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConsentVerificationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConsentVerificationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ConsentVerificationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ConsentVerification';

  /// [verified]
  /// Has the instruction been verified.
  FhirBooleanBuilder? verified;

  /// [verificationType]
  /// Extensible list of verification type starting with verification and
  /// re-validation.
  CodeableConceptBuilder? verificationType;

  /// [verifiedBy]
  /// The person who conducted the verification/validation of the Grantor
  /// decision.
  ReferenceBuilder? verifiedBy;

  /// [verifiedWith]
  /// Who verified the instruction (Patient, Relative or other Authorized
  /// Person).
  ReferenceBuilder? verifiedWith;

  /// [verificationDate]
  /// Date(s) verification was collected.
  List<FhirDateTimeBuilder>? verificationDate;

  /// Converts a [ConsentVerificationBuilder]
  /// to [ConsentVerification]
  @override
  ConsentVerification build() => ConsentVerification.fromJson(toJson());

  /// Converts a [ConsentVerificationBuilder]
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
    addField('verified', verified);
    addField('verificationType', verificationType);
    addField('verifiedBy', verifiedBy);
    addField('verifiedWith', verifiedWith);
    addField('verificationDate', verificationDate);
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
      case 'verified':
        if (verified != null) {
          fields.add(verified!);
        }
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
      case 'verified':
        {
          if (child is FhirBooleanBuilder) {
            verified = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                verified = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'verificationType':
        {
          if (child is CodeableConceptBuilder) {
            verificationType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'verifiedBy':
        {
          if (child is ReferenceBuilder) {
            verifiedBy = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'verifiedWith':
        {
          if (child is ReferenceBuilder) {
            verifiedWith = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'verificationDate':
        {
          if (child is List<FhirDateTimeBuilder>) {
            // Replace or create new list
            verificationDate = child;
            return;
          } else if (child is FhirDateTimeBuilder) {
            // Add single element to existing list or create new list
            verificationDate = [
              ...(verificationDate ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirDateTimeBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirDateTimeBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              verificationDate = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                verificationDate = [
                  ...(verificationDate ?? []),
                  converted,
                ];
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
      case 'verified':
        return ['FhirBooleanBuilder'];
      case 'verificationType':
        return ['CodeableConceptBuilder'];
      case 'verifiedBy':
        return ['ReferenceBuilder'];
      case 'verifiedWith':
        return ['ReferenceBuilder'];
      case 'verificationDate':
        return ['FhirDateTimeBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ConsentVerificationBuilder]
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
      case 'verified':
        {
          verified = FhirBooleanBuilder.empty();
          return;
        }
      case 'verificationType':
        {
          verificationType = CodeableConceptBuilder.empty();
          return;
        }
      case 'verifiedBy':
        {
          verifiedBy = ReferenceBuilder.empty();
          return;
        }
      case 'verifiedWith':
        {
          verifiedWith = ReferenceBuilder.empty();
          return;
        }
      case 'verificationDate':
        {
          verificationDate = <FhirDateTimeBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ConsentVerificationBuilder clone() => throw UnimplementedError();
  @override
  ConsentVerificationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirBooleanBuilder? verified,
    CodeableConceptBuilder? verificationType,
    ReferenceBuilder? verifiedBy,
    ReferenceBuilder? verifiedWith,
    List<FhirDateTimeBuilder>? verificationDate,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ConsentVerificationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      verified: verified ?? this.verified,
      verificationType: verificationType ?? this.verificationType,
      verifiedBy: verifiedBy ?? this.verifiedBy,
      verifiedWith: verifiedWith ?? this.verifiedWith,
      verificationDate: verificationDate ?? this.verificationDate,
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
    if (o is! ConsentVerificationBuilder) {
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
    if (!listEquals<FhirDateTimeBuilder>(
      verificationDate,
      o.verificationDate,
    )) {
      return false;
    }
    return true;
  }
}

/// [ConsentProvisionBuilder]
/// An exception to the base policy of this consent. An exception can be an
/// addition or removal of access permissions.
class ConsentProvisionBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ConsentProvisionBuilder]

  ConsentProvisionBuilder({
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
  }) : super(
          objectPath: 'Consent.provision',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ConsentProvisionBuilder.empty() => ConsentProvisionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConsentProvisionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Consent.provision';
    return ConsentProvisionBuilder(
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
      period: JsonParser.parseObject<PeriodBuilder>(
        json,
        'period',
        PeriodBuilder.fromJson,
        '$objectPath.period',
      ),
      actor: (json['actor'] as List<dynamic>?)
          ?.map<ConsentActorBuilder>(
            (v) => ConsentActorBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.actor',
              },
            ),
          )
          .toList(),
      action: (json['action'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.action',
              },
            ),
          )
          .toList(),
      securityLabel: (json['securityLabel'] as List<dynamic>?)
          ?.map<CodingBuilder>(
            (v) => CodingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.securityLabel',
              },
            ),
          )
          .toList(),
      purpose: (json['purpose'] as List<dynamic>?)
          ?.map<CodingBuilder>(
            (v) => CodingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.purpose',
              },
            ),
          )
          .toList(),
      documentType: (json['documentType'] as List<dynamic>?)
          ?.map<CodingBuilder>(
            (v) => CodingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.documentType',
              },
            ),
          )
          .toList(),
      resourceType: (json['resourceType'] as List<dynamic>?)
          ?.map<CodingBuilder>(
            (v) => CodingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.resourceType',
              },
            ),
          )
          .toList(),
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
      dataPeriod: JsonParser.parseObject<PeriodBuilder>(
        json,
        'dataPeriod',
        PeriodBuilder.fromJson,
        '$objectPath.dataPeriod',
      ),
      data: (json['data'] as List<dynamic>?)
          ?.map<ConsentDataBuilder>(
            (v) => ConsentDataBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.data',
              },
            ),
          )
          .toList(),
      expression: JsonParser.parseObject<FhirExpressionBuilder>(
        json,
        'expression',
        FhirExpressionBuilder.fromJson,
        '$objectPath.expression',
      ),
      provision: (json['provision'] as List<dynamic>?)
          ?.map<ConsentProvisionBuilder>(
            (v) => ConsentProvisionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.provision',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ConsentProvisionBuilder]
  /// from a [String] or [YamlMap] object
  factory ConsentProvisionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConsentProvisionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConsentProvisionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConsentProvisionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConsentProvisionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConsentProvisionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ConsentProvisionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ConsentProvision';

  /// [period]
  /// Timeframe for this provision.
  PeriodBuilder? period;

  /// [actor]
  /// Who or what is controlled by this provision. Use group to identify a
  /// set of actors by some property they share (e.g. 'admitting officers').
  List<ConsentActorBuilder>? actor;

  /// [action]
  /// Actions controlled by this provision.
  List<CodeableConceptBuilder>? action;

  /// [securityLabel]
  /// A security label, comprised of 0..* security label fields (Privacy
  /// tags), which define which resources are controlled by this exception.
  List<CodingBuilder>? securityLabel;

  /// [purpose]
  /// The context of the activities a user is taking - why the user is
  /// accessing the data - that are controlled by this provision.
  List<CodingBuilder>? purpose;

  /// [documentType]
  /// The documentType(s) covered by this provision. The type can be a CDA
  /// document, or some other type that indicates what sort of information
  /// the consent relates to.
  List<CodingBuilder>? documentType;

  /// [resourceType]
  /// The resourceType(s) covered by this provision. The type can be a FHIR
  /// resource type or a profile on a type that indicates what information
  /// the consent relates to.
  List<CodingBuilder>? resourceType;

  /// [code]
  /// If this code is found in an instance, then the provision applies.
  List<CodeableConceptBuilder>? code;

  /// [dataPeriod]
  /// Clinical or Operational Relevant period of time that bounds the data
  /// controlled by this provision.
  PeriodBuilder? dataPeriod;

  /// [data]
  /// The resources controlled by this provision if specific resources are
  /// referenced.
  List<ConsentDataBuilder>? data;

  /// [expression]
  /// A computable (FHIRPath or other) definition of what is controlled by
  /// this consent.
  FhirExpressionBuilder? expression;

  /// [provision]
  /// Provisions which provide exceptions to the base provision or
  /// subprovisions.
  List<ConsentProvisionBuilder>? provision;

  /// Converts a [ConsentProvisionBuilder]
  /// to [ConsentProvision]
  @override
  ConsentProvision build() => ConsentProvision.fromJson(toJson());

  /// Converts a [ConsentProvisionBuilder]
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
    addField('period', period);
    addField('actor', actor);
    addField('action', action);
    addField('securityLabel', securityLabel);
    addField('purpose', purpose);
    addField('documentType', documentType);
    addField('resourceType', resourceType);
    addField('code', code);
    addField('dataPeriod', dataPeriod);
    addField('data', data);
    addField('expression', expression);
    addField('provision', provision);
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
      case 'period':
        {
          if (child is PeriodBuilder) {
            period = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'actor':
        {
          if (child is List<ConsentActorBuilder>) {
            // Replace or create new list
            actor = child;
            return;
          } else if (child is ConsentActorBuilder) {
            // Add single element to existing list or create new list
            actor = [
              ...(actor ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'action':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            action = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            action = [
              ...(action ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'securityLabel':
        {
          if (child is List<CodingBuilder>) {
            // Replace or create new list
            securityLabel = child;
            return;
          } else if (child is CodingBuilder) {
            // Add single element to existing list or create new list
            securityLabel = [
              ...(securityLabel ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'purpose':
        {
          if (child is List<CodingBuilder>) {
            // Replace or create new list
            purpose = child;
            return;
          } else if (child is CodingBuilder) {
            // Add single element to existing list or create new list
            purpose = [
              ...(purpose ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'documentType':
        {
          if (child is List<CodingBuilder>) {
            // Replace or create new list
            documentType = child;
            return;
          } else if (child is CodingBuilder) {
            // Add single element to existing list or create new list
            documentType = [
              ...(documentType ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'resourceType':
        {
          if (child is List<CodingBuilder>) {
            // Replace or create new list
            resourceType = child;
            return;
          } else if (child is CodingBuilder) {
            // Add single element to existing list or create new list
            resourceType = [
              ...(resourceType ?? []),
              child,
            ];
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
      case 'dataPeriod':
        {
          if (child is PeriodBuilder) {
            dataPeriod = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'data':
        {
          if (child is List<ConsentDataBuilder>) {
            // Replace or create new list
            data = child;
            return;
          } else if (child is ConsentDataBuilder) {
            // Add single element to existing list or create new list
            data = [
              ...(data ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'expression':
        {
          if (child is FhirExpressionBuilder) {
            expression = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'provision':
        {
          if (child is List<ConsentProvisionBuilder>) {
            // Replace or create new list
            provision = child;
            return;
          } else if (child is ConsentProvisionBuilder) {
            // Add single element to existing list or create new list
            provision = [
              ...(provision ?? []),
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
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'period':
        return ['PeriodBuilder'];
      case 'actor':
        return ['ConsentActorBuilder'];
      case 'action':
        return ['CodeableConceptBuilder'];
      case 'securityLabel':
        return ['CodingBuilder'];
      case 'purpose':
        return ['CodingBuilder'];
      case 'documentType':
        return ['CodingBuilder'];
      case 'resourceType':
        return ['CodingBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'dataPeriod':
        return ['PeriodBuilder'];
      case 'data':
        return ['ConsentDataBuilder'];
      case 'expression':
        return ['FhirExpressionBuilder'];
      case 'provision':
        return ['ConsentProvisionBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ConsentProvisionBuilder]
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
      case 'period':
        {
          period = PeriodBuilder.empty();
          return;
        }
      case 'actor':
        {
          actor = <ConsentActorBuilder>[];
          return;
        }
      case 'action':
        {
          action = <CodeableConceptBuilder>[];
          return;
        }
      case 'securityLabel':
        {
          securityLabel = <CodingBuilder>[];
          return;
        }
      case 'purpose':
        {
          purpose = <CodingBuilder>[];
          return;
        }
      case 'documentType':
        {
          documentType = <CodingBuilder>[];
          return;
        }
      case 'resourceType':
        {
          resourceType = <CodingBuilder>[];
          return;
        }
      case 'code':
        {
          code = <CodeableConceptBuilder>[];
          return;
        }
      case 'dataPeriod':
        {
          dataPeriod = PeriodBuilder.empty();
          return;
        }
      case 'data':
        {
          data = <ConsentDataBuilder>[];
          return;
        }
      case 'expression':
        {
          expression = FhirExpressionBuilder.empty();
          return;
        }
      case 'provision':
        {
          provision = <ConsentProvisionBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ConsentProvisionBuilder clone() => throw UnimplementedError();
  @override
  ConsentProvisionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    PeriodBuilder? period,
    List<ConsentActorBuilder>? actor,
    List<CodeableConceptBuilder>? action,
    List<CodingBuilder>? securityLabel,
    List<CodingBuilder>? purpose,
    List<CodingBuilder>? documentType,
    List<CodingBuilder>? resourceType,
    List<CodeableConceptBuilder>? code,
    PeriodBuilder? dataPeriod,
    List<ConsentDataBuilder>? data,
    FhirExpressionBuilder? expression,
    List<ConsentProvisionBuilder>? provision,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ConsentProvisionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      period: period ?? this.period,
      actor: actor ?? this.actor,
      action: action ?? this.action,
      securityLabel: securityLabel ?? this.securityLabel,
      purpose: purpose ?? this.purpose,
      documentType: documentType ?? this.documentType,
      resourceType: resourceType ?? this.resourceType,
      code: code ?? this.code,
      dataPeriod: dataPeriod ?? this.dataPeriod,
      data: data ?? this.data,
      expression: expression ?? this.expression,
      provision: provision ?? this.provision,
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
    if (o is! ConsentProvisionBuilder) {
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
      period,
      o.period,
    )) {
      return false;
    }
    if (!listEquals<ConsentActorBuilder>(
      actor,
      o.actor,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      action,
      o.action,
    )) {
      return false;
    }
    if (!listEquals<CodingBuilder>(
      securityLabel,
      o.securityLabel,
    )) {
      return false;
    }
    if (!listEquals<CodingBuilder>(
      purpose,
      o.purpose,
    )) {
      return false;
    }
    if (!listEquals<CodingBuilder>(
      documentType,
      o.documentType,
    )) {
      return false;
    }
    if (!listEquals<CodingBuilder>(
      resourceType,
      o.resourceType,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
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
    if (!listEquals<ConsentDataBuilder>(
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
    if (!listEquals<ConsentProvisionBuilder>(
      provision,
      o.provision,
    )) {
      return false;
    }
    return true;
  }
}

/// [ConsentActorBuilder]
/// Who or what is controlled by this provision. Use group to identify a
/// set of actors by some property they share (e.g. 'admitting officers').
class ConsentActorBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ConsentActorBuilder]

  ConsentActorBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.role,
    this.reference,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Consent.provision.actor',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ConsentActorBuilder.empty() => ConsentActorBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConsentActorBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Consent.provision.actor';
    return ConsentActorBuilder(
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
      role: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'role',
        CodeableConceptBuilder.fromJson,
        '$objectPath.role',
      ),
      reference: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'reference',
        ReferenceBuilder.fromJson,
        '$objectPath.reference',
      ),
    );
  }

  /// Deserialize [ConsentActorBuilder]
  /// from a [String] or [YamlMap] object
  factory ConsentActorBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConsentActorBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConsentActorBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConsentActorBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConsentActorBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConsentActorBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ConsentActorBuilder.fromJson(json);
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
  CodeableConceptBuilder? role;

  /// [reference]
  /// The resource that identifies the actor. To identify actors by type, use
  /// group to identify a set of actors by some property they share (e.g.
  /// 'admitting officers').
  ReferenceBuilder? reference;

  /// Converts a [ConsentActorBuilder]
  /// to [ConsentActor]
  @override
  ConsentActor build() => ConsentActor.fromJson(toJson());

  /// Converts a [ConsentActorBuilder]
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
    addField('role', role);
    addField('reference', reference);
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
      case 'role':
        {
          if (child is CodeableConceptBuilder) {
            role = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reference':
        {
          if (child is ReferenceBuilder) {
            reference = child;
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
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'role':
        return ['CodeableConceptBuilder'];
      case 'reference':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ConsentActorBuilder]
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
      case 'role':
        {
          role = CodeableConceptBuilder.empty();
          return;
        }
      case 'reference':
        {
          reference = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ConsentActorBuilder clone() => throw UnimplementedError();
  @override
  ConsentActorBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? role,
    ReferenceBuilder? reference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ConsentActorBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      role: role ?? this.role,
      reference: reference ?? this.reference,
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
    if (o is! ConsentActorBuilder) {
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

/// [ConsentDataBuilder]
/// The resources controlled by this provision if specific resources are
/// referenced.
class ConsentDataBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ConsentDataBuilder]

  ConsentDataBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.meaning,
    this.reference,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Consent.provision.data',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ConsentDataBuilder.empty() => ConsentDataBuilder(
        meaning: ConsentDataMeaningBuilder.values.first,
        reference: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConsentDataBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Consent.provision.data';
    return ConsentDataBuilder(
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
      meaning: JsonParser.parsePrimitive<ConsentDataMeaningBuilder>(
        json,
        'meaning',
        ConsentDataMeaningBuilder.fromJson,
        '$objectPath.meaning',
      ),
      reference: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'reference',
        ReferenceBuilder.fromJson,
        '$objectPath.reference',
      ),
    );
  }

  /// Deserialize [ConsentDataBuilder]
  /// from a [String] or [YamlMap] object
  factory ConsentDataBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConsentDataBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConsentDataBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConsentDataBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConsentDataBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConsentDataBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ConsentDataBuilder.fromJson(json);
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
  ConsentDataMeaningBuilder? meaning;

  /// [reference]
  /// A reference to a specific resource that defines which resources are
  /// covered by this consent.
  ReferenceBuilder? reference;

  /// Converts a [ConsentDataBuilder]
  /// to [ConsentData]
  @override
  ConsentData build() => ConsentData.fromJson(toJson());

  /// Converts a [ConsentDataBuilder]
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
    addField('meaning', meaning);
    addField('reference', reference);
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
      case 'meaning':
        if (meaning != null) {
          fields.add(meaning!);
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
      case 'meaning':
        {
          if (child is ConsentDataMeaningBuilder) {
            meaning = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ConsentDataMeaningBuilder(stringValue);
                meaning = converted;
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
      case 'reference':
        {
          if (child is ReferenceBuilder) {
            reference = child;
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
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'meaning':
        return ['FhirCodeEnumBuilder'];
      case 'reference':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ConsentDataBuilder]
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
      case 'meaning':
        {
          meaning = ConsentDataMeaningBuilder.empty();
          return;
        }
      case 'reference':
        {
          reference = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ConsentDataBuilder clone() => throw UnimplementedError();
  @override
  ConsentDataBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ConsentDataMeaningBuilder? meaning,
    ReferenceBuilder? reference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ConsentDataBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      meaning: meaning ?? this.meaning,
      reference: reference ?? this.reference,
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
    if (o is! ConsentDataBuilder) {
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
