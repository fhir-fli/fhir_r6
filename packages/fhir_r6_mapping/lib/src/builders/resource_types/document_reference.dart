import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        DocumentReference,
        DocumentReferenceAttester,
        DocumentReferenceContent,
        DocumentReferenceProfile,
        DocumentReferenceRelatesTo,
        R5ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [DocumentReferenceBuilder]
/// A reference to a document of any kind for any purpose. While the term
/// “document” implies a more narrow focus, for this resource this
/// "document" encompasses *any* serialized object with a mime-type, it
/// includes formal patient-centric documents (CDA), clinical notes,
/// scanned paper, non-patient specific documents like policy text, as well
/// as a photo, video, or audio recording acquired or used in healthcare.
/// The DocumentReference resource provides metadata about the document so
/// that the document can be discovered and managed. The actual content may
/// be inline base64 encoded data or provided by direct reference.
class DocumentReferenceBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [DocumentReferenceBuilder]

  DocumentReferenceBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.version,
    this.basedOn,
    this.status,
    this.docStatus,
    this.modality,
    this.type,
    this.category,
    this.subject,
    this.context,
    this.event,
    this.bodySite,
    this.facilityType,
    this.practiceSetting,
    this.period,
    this.date,
    this.author,
    this.attester,
    this.custodian,
    this.relatesTo,
    this.description,
    this.securityLabel,
    this.content,
  }) : super(
          objectPath: 'DocumentReference',
          resourceType: R5ResourceType.DocumentReference,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DocumentReferenceBuilder.empty() => DocumentReferenceBuilder(
        status: DocumentReferenceStatusBuilder.values.first,
        content: <DocumentReferenceContentBuilder>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DocumentReferenceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DocumentReference';
    return DocumentReferenceBuilder(
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
      version: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'version',
        FhirStringBuilder.fromJson,
        '$objectPath.version',
      ),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.basedOn',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<DocumentReferenceStatusBuilder>(
        json,
        'status',
        DocumentReferenceStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      docStatus: JsonParser.parsePrimitive<CompositionStatusBuilder>(
        json,
        'docStatus',
        CompositionStatusBuilder.fromJson,
        '$objectPath.docStatus',
      ),
      modality: (json['modality'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modality',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
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
      context: (json['context'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.context',
              },
            ),
          )
          .toList(),
      event: (json['event'] as List<dynamic>?)
          ?.map<CodeableReferenceBuilder>(
            (v) => CodeableReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.event',
              },
            ),
          )
          .toList(),
      bodySite: (json['bodySite'] as List<dynamic>?)
          ?.map<CodeableReferenceBuilder>(
            (v) => CodeableReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.bodySite',
              },
            ),
          )
          .toList(),
      facilityType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'facilityType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.facilityType',
      ),
      practiceSetting: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'practiceSetting',
        CodeableConceptBuilder.fromJson,
        '$objectPath.practiceSetting',
      ),
      period: JsonParser.parseObject<PeriodBuilder>(
        json,
        'period',
        PeriodBuilder.fromJson,
        '$objectPath.period',
      ),
      date: JsonParser.parsePrimitive<FhirInstantBuilder>(
        json,
        'date',
        FhirInstantBuilder.fromJson,
        '$objectPath.date',
      ),
      author: (json['author'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.author',
              },
            ),
          )
          .toList(),
      attester: (json['attester'] as List<dynamic>?)
          ?.map<DocumentReferenceAttesterBuilder>(
            (v) => DocumentReferenceAttesterBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.attester',
              },
            ),
          )
          .toList(),
      custodian: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'custodian',
        ReferenceBuilder.fromJson,
        '$objectPath.custodian',
      ),
      relatesTo: (json['relatesTo'] as List<dynamic>?)
          ?.map<DocumentReferenceRelatesToBuilder>(
            (v) => DocumentReferenceRelatesToBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.relatesTo',
              },
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'description',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.description',
      ),
      securityLabel: (json['securityLabel'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.securityLabel',
              },
            ),
          )
          .toList(),
      content: (json['content'] as List<dynamic>?)
          ?.map<DocumentReferenceContentBuilder>(
            (v) => DocumentReferenceContentBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.content',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DocumentReferenceBuilder]
  /// from a [String] or [YamlMap] object
  factory DocumentReferenceBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DocumentReferenceBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DocumentReferenceBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DocumentReferenceBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DocumentReferenceBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DocumentReferenceBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DocumentReferenceBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DocumentReference';

  /// [identifier]
  /// Other business identifiers associated with the document, including
  /// version independent identifiers.
  List<IdentifierBuilder>? identifier;

  /// [version]
  /// An explicitly assigned identifer of a variation of the content in the
  /// DocumentReference.
  FhirStringBuilder? version;

  /// [basedOn]
  /// A procedure that is fulfilled in whole or in part by the creation of
  /// this media.
  List<ReferenceBuilder>? basedOn;

  /// [status]
  /// The status of this document reference.
  DocumentReferenceStatusBuilder? status;

  /// [docStatus]
  /// The status of the underlying document.
  CompositionStatusBuilder? docStatus;

  /// [modality]
  /// Imaging modality used. This may include both acquisition and
  /// non-acquisition modalities.
  List<CodeableConceptBuilder>? modality;

  /// [type]
  /// Specifies the particular kind of document referenced (e.g. History and
  /// Physical, Discharge Summary, Progress Note). This usually equates to
  /// the purpose of making the document referenced.
  CodeableConceptBuilder? type;

  /// [category]
  /// A categorization for the type of document referenced - helps for
  /// indexing and searching. This may be implied by or derived from the code
  /// specified in the DocumentReference.type.
  List<CodeableConceptBuilder>? category;

  /// [subject]
  /// Who or what the document is about. The document can be about a person,
  /// (patient or healthcare practitioner), a device (e.g. a machine) or even
  /// a group of subjects (such as a document about a herd of farm animals,
  /// or a set of patients that share a common exposure).
  ReferenceBuilder? subject;

  /// [context]
  /// Describes the clinical encounter or type of care that the document
  /// content is associated with.
  List<ReferenceBuilder>? context;

  /// [event]
  /// This list of codes represents the main clinical acts, such as a
  /// colonoscopy or an appendectomy, being documented. In some cases, the
  /// event is inherent in the type Code, such as a "History and Physical
  /// Report" in which the procedure being documented is necessarily a
  /// "History and Physical" act.
  List<CodeableReferenceBuilder>? event;

  /// [bodySite]
  /// The anatomic structures included in the document.
  List<CodeableReferenceBuilder>? bodySite;

  /// [facilityType]
  /// The kind of facility where the patient was seen.
  CodeableConceptBuilder? facilityType;

  /// [practiceSetting]
  /// This property may convey specifics about the practice setting where the
  /// content was created, often reflecting the clinical specialty.
  CodeableConceptBuilder? practiceSetting;

  /// [period]
  /// The time period over which the service that is described by the
  /// document was provided.
  PeriodBuilder? period;

  /// [date]
  /// When the document reference was created.
  FhirInstantBuilder? date;

  /// [author]
  /// Identifies who is responsible for adding the information to the
  /// document.
  List<ReferenceBuilder>? author;

  /// [attester]
  /// A participant who has authenticated the accuracy of the document.
  List<DocumentReferenceAttesterBuilder>? attester;

  /// [custodian]
  /// Identifies the organization or group who is responsible for ongoing
  /// maintenance of and access to the document.
  ReferenceBuilder? custodian;

  /// [relatesTo]
  /// Relationships that this document has with other document references
  /// that already exist.
  List<DocumentReferenceRelatesToBuilder>? relatesTo;

  /// [description]
  /// Human-readable description of the source document.
  FhirMarkdownBuilder? description;

  /// [securityLabel]
  /// A set of Security-Tag codes specifying the level of privacy/security of
  /// the Document found at DocumentReference.content.attachment.url. Note
  /// that DocumentReference.meta.security contains the security labels of
  /// the data elements in DocumentReference, while
  /// DocumentReference.securityLabel contains the security labels for the
  /// document the reference refers to. The distinction recognizes that the
  /// document may contain sensitive information, while the DocumentReference
  /// is metadata about the document and thus might not be as sensitive as
  /// the document. For example: a psychotherapy episode may contain highly
  /// sensitive information, while the metadata may simply indicate that some
  /// episode happened.
  List<CodeableConceptBuilder>? securityLabel;

  /// [content]
  /// The document and format referenced. If there are multiple content
  /// element repetitions, these must all represent the same document in
  /// different format, or attachment metadata.
  List<DocumentReferenceContentBuilder>? content;

  /// Converts a [DocumentReferenceBuilder]
  /// to [DocumentReference]
  @override
  DocumentReference build() => DocumentReference.fromJson(toJson());

  /// Converts a [DocumentReferenceBuilder]
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
    addField('version', version);
    addField('basedOn', basedOn);
    addField('status', status);
    addField('docStatus', docStatus);
    addField('modality', modality);
    addField('type', type);
    addField('category', category);
    addField('subject', subject);
    addField('context', context);
    addField('event', event);
    addField('bodySite', bodySite);
    addField('facilityType', facilityType);
    addField('practiceSetting', practiceSetting);
    addField('period', period);
    addField('date', date);
    addField('author', author);
    addField('attester', attester);
    addField('custodian', custodian);
    addField('relatesTo', relatesTo);
    addField('description', description);
    addField('securityLabel', securityLabel);
    addField('content', content);
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
      'version',
      'basedOn',
      'status',
      'docStatus',
      'modality',
      'type',
      'category',
      'subject',
      'context',
      'event',
      'bodySite',
      'facilityType',
      'practiceSetting',
      'period',
      'date',
      'author',
      'attester',
      'custodian',
      'relatesTo',
      'description',
      'securityLabel',
      'content',
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
      case 'version':
        if (version != null) {
          fields.add(version!);
        }
      case 'basedOn':
        if (basedOn != null) {
          fields.addAll(basedOn!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'docStatus':
        if (docStatus != null) {
          fields.add(docStatus!);
        }
      case 'modality':
        if (modality != null) {
          fields.addAll(modality!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'context':
        if (context != null) {
          fields.addAll(context!);
        }
      case 'event':
        if (event != null) {
          fields.addAll(event!);
        }
      case 'bodySite':
        if (bodySite != null) {
          fields.addAll(bodySite!);
        }
      case 'facilityType':
        if (facilityType != null) {
          fields.add(facilityType!);
        }
      case 'practiceSetting':
        if (practiceSetting != null) {
          fields.add(practiceSetting!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'author':
        if (author != null) {
          fields.addAll(author!);
        }
      case 'attester':
        if (attester != null) {
          fields.addAll(attester!);
        }
      case 'custodian':
        if (custodian != null) {
          fields.add(custodian!);
        }
      case 'relatesTo':
        if (relatesTo != null) {
          fields.addAll(relatesTo!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'securityLabel':
        if (securityLabel != null) {
          fields.addAll(securityLabel!);
        }
      case 'content':
        if (content != null) {
          fields.addAll(content!);
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
      case 'version':
        {
          if (child is FhirStringBuilder) {
            version = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                version = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'basedOn':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            basedOn = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            basedOn = [
              ...(basedOn ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is DocumentReferenceStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = DocumentReferenceStatusBuilder(stringValue);
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
      case 'docStatus':
        {
          if (child is CompositionStatusBuilder) {
            docStatus = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = CompositionStatusBuilder(stringValue);
                docStatus = converted;
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
      case 'modality':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            modality = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            modality = [
              ...(modality ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
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
      case 'subject':
        {
          if (child is ReferenceBuilder) {
            subject = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'context':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            context = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            context = [
              ...(context ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'event':
        {
          if (child is List<CodeableReferenceBuilder>) {
            // Replace or create new list
            event = child;
            return;
          } else if (child is CodeableReferenceBuilder) {
            // Add single element to existing list or create new list
            event = [
              ...(event ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'bodySite':
        {
          if (child is List<CodeableReferenceBuilder>) {
            // Replace or create new list
            bodySite = child;
            return;
          } else if (child is CodeableReferenceBuilder) {
            // Add single element to existing list or create new list
            bodySite = [
              ...(bodySite ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'facilityType':
        {
          if (child is CodeableConceptBuilder) {
            facilityType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'practiceSetting':
        {
          if (child is CodeableConceptBuilder) {
            practiceSetting = child;
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
      case 'date':
        {
          if (child is FhirInstantBuilder) {
            date = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirInstantBuilder.tryParse(stringValue);
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
      case 'author':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            author = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            author = [
              ...(author ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'attester':
        {
          if (child is List<DocumentReferenceAttesterBuilder>) {
            // Replace or create new list
            attester = child;
            return;
          } else if (child is DocumentReferenceAttesterBuilder) {
            // Add single element to existing list or create new list
            attester = [
              ...(attester ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'custodian':
        {
          if (child is ReferenceBuilder) {
            custodian = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'relatesTo':
        {
          if (child is List<DocumentReferenceRelatesToBuilder>) {
            // Replace or create new list
            relatesTo = child;
            return;
          } else if (child is DocumentReferenceRelatesToBuilder) {
            // Add single element to existing list or create new list
            relatesTo = [
              ...(relatesTo ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is FhirMarkdownBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                description = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'securityLabel':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            securityLabel = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            securityLabel = [
              ...(securityLabel ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'content':
        {
          if (child is List<DocumentReferenceContentBuilder>) {
            // Replace or create new list
            content = child;
            return;
          } else if (child is DocumentReferenceContentBuilder) {
            // Add single element to existing list or create new list
            content = [
              ...(content ?? []),
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
      case 'version':
        return ['FhirStringBuilder'];
      case 'basedOn':
        return ['ReferenceBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'docStatus':
        return ['FhirCodeEnumBuilder'];
      case 'modality':
        return ['CodeableConceptBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'subject':
        return ['ReferenceBuilder'];
      case 'context':
        return ['ReferenceBuilder'];
      case 'event':
        return ['CodeableReferenceBuilder'];
      case 'bodySite':
        return ['CodeableReferenceBuilder'];
      case 'facilityType':
        return ['CodeableConceptBuilder'];
      case 'practiceSetting':
        return ['CodeableConceptBuilder'];
      case 'period':
        return ['PeriodBuilder'];
      case 'date':
        return ['FhirInstantBuilder'];
      case 'author':
        return ['ReferenceBuilder'];
      case 'attester':
        return ['DocumentReferenceAttesterBuilder'];
      case 'custodian':
        return ['ReferenceBuilder'];
      case 'relatesTo':
        return ['DocumentReferenceRelatesToBuilder'];
      case 'description':
        return ['FhirMarkdownBuilder'];
      case 'securityLabel':
        return ['CodeableConceptBuilder'];
      case 'content':
        return ['DocumentReferenceContentBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DocumentReferenceBuilder]
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
      case 'version':
        {
          version = FhirStringBuilder.empty();
          return;
        }
      case 'basedOn':
        {
          basedOn = <ReferenceBuilder>[];
          return;
        }
      case 'status':
        {
          status = DocumentReferenceStatusBuilder.empty();
          return;
        }
      case 'docStatus':
        {
          docStatus = CompositionStatusBuilder.empty();
          return;
        }
      case 'modality':
        {
          modality = <CodeableConceptBuilder>[];
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
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
      case 'context':
        {
          context = <ReferenceBuilder>[];
          return;
        }
      case 'event':
        {
          event = <CodeableReferenceBuilder>[];
          return;
        }
      case 'bodySite':
        {
          bodySite = <CodeableReferenceBuilder>[];
          return;
        }
      case 'facilityType':
        {
          facilityType = CodeableConceptBuilder.empty();
          return;
        }
      case 'practiceSetting':
        {
          practiceSetting = CodeableConceptBuilder.empty();
          return;
        }
      case 'period':
        {
          period = PeriodBuilder.empty();
          return;
        }
      case 'date':
        {
          date = FhirInstantBuilder.empty();
          return;
        }
      case 'author':
        {
          author = <ReferenceBuilder>[];
          return;
        }
      case 'attester':
        {
          attester = <DocumentReferenceAttesterBuilder>[];
          return;
        }
      case 'custodian':
        {
          custodian = ReferenceBuilder.empty();
          return;
        }
      case 'relatesTo':
        {
          relatesTo = <DocumentReferenceRelatesToBuilder>[];
          return;
        }
      case 'description':
        {
          description = FhirMarkdownBuilder.empty();
          return;
        }
      case 'securityLabel':
        {
          securityLabel = <CodeableConceptBuilder>[];
          return;
        }
      case 'content':
        {
          content = <DocumentReferenceContentBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  DocumentReferenceBuilder clone() => throw UnimplementedError();
  @override
  DocumentReferenceBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    FhirStringBuilder? version,
    List<ReferenceBuilder>? basedOn,
    DocumentReferenceStatusBuilder? status,
    CompositionStatusBuilder? docStatus,
    List<CodeableConceptBuilder>? modality,
    CodeableConceptBuilder? type,
    List<CodeableConceptBuilder>? category,
    ReferenceBuilder? subject,
    List<ReferenceBuilder>? context,
    List<CodeableReferenceBuilder>? event,
    List<CodeableReferenceBuilder>? bodySite,
    CodeableConceptBuilder? facilityType,
    CodeableConceptBuilder? practiceSetting,
    PeriodBuilder? period,
    FhirInstantBuilder? date,
    List<ReferenceBuilder>? author,
    List<DocumentReferenceAttesterBuilder>? attester,
    ReferenceBuilder? custodian,
    List<DocumentReferenceRelatesToBuilder>? relatesTo,
    FhirMarkdownBuilder? description,
    List<CodeableConceptBuilder>? securityLabel,
    List<DocumentReferenceContentBuilder>? content,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = DocumentReferenceBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      version: version ?? this.version,
      basedOn: basedOn ?? this.basedOn,
      status: status ?? this.status,
      docStatus: docStatus ?? this.docStatus,
      modality: modality ?? this.modality,
      type: type ?? this.type,
      category: category ?? this.category,
      subject: subject ?? this.subject,
      context: context ?? this.context,
      event: event ?? this.event,
      bodySite: bodySite ?? this.bodySite,
      facilityType: facilityType ?? this.facilityType,
      practiceSetting: practiceSetting ?? this.practiceSetting,
      period: period ?? this.period,
      date: date ?? this.date,
      author: author ?? this.author,
      attester: attester ?? this.attester,
      custodian: custodian ?? this.custodian,
      relatesTo: relatesTo ?? this.relatesTo,
      description: description ?? this.description,
      securityLabel: securityLabel ?? this.securityLabel,
      content: content ?? this.content,
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
    if (o is! DocumentReferenceBuilder) {
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
      version,
      o.version,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      basedOn,
      o.basedOn,
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
      docStatus,
      o.docStatus,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      modality,
      o.modality,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
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
    if (!listEquals<ReferenceBuilder>(
      context,
      o.context,
    )) {
      return false;
    }
    if (!listEquals<CodeableReferenceBuilder>(
      event,
      o.event,
    )) {
      return false;
    }
    if (!listEquals<CodeableReferenceBuilder>(
      bodySite,
      o.bodySite,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      facilityType,
      o.facilityType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      practiceSetting,
      o.practiceSetting,
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
      date,
      o.date,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      author,
      o.author,
    )) {
      return false;
    }
    if (!listEquals<DocumentReferenceAttesterBuilder>(
      attester,
      o.attester,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      custodian,
      o.custodian,
    )) {
      return false;
    }
    if (!listEquals<DocumentReferenceRelatesToBuilder>(
      relatesTo,
      o.relatesTo,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      securityLabel,
      o.securityLabel,
    )) {
      return false;
    }
    if (!listEquals<DocumentReferenceContentBuilder>(
      content,
      o.content,
    )) {
      return false;
    }
    return true;
  }
}

/// [DocumentReferenceAttesterBuilder]
/// A participant who has authenticated the accuracy of the document.
class DocumentReferenceAttesterBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DocumentReferenceAttesterBuilder]

  DocumentReferenceAttesterBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.mode,
    this.time,
    this.party,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DocumentReference.attester',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DocumentReferenceAttesterBuilder.empty() =>
      DocumentReferenceAttesterBuilder(
        mode: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DocumentReferenceAttesterBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DocumentReference.attester';
    return DocumentReferenceAttesterBuilder(
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
      mode: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'mode',
        CodeableConceptBuilder.fromJson,
        '$objectPath.mode',
      ),
      time: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'time',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.time',
      ),
      party: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'party',
        ReferenceBuilder.fromJson,
        '$objectPath.party',
      ),
    );
  }

  /// Deserialize [DocumentReferenceAttesterBuilder]
  /// from a [String] or [YamlMap] object
  factory DocumentReferenceAttesterBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DocumentReferenceAttesterBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DocumentReferenceAttesterBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DocumentReferenceAttesterBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DocumentReferenceAttesterBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DocumentReferenceAttesterBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DocumentReferenceAttesterBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DocumentReferenceAttester';

  /// [mode]
  /// The type of attestation the authenticator offers.
  CodeableConceptBuilder? mode;

  /// [time]
  /// When the document was attested by the party.
  FhirDateTimeBuilder? time;

  /// [party]
  /// Who attested the document in the specified way.
  ReferenceBuilder? party;

  /// Converts a [DocumentReferenceAttesterBuilder]
  /// to [DocumentReferenceAttester]
  @override
  DocumentReferenceAttester build() =>
      DocumentReferenceAttester.fromJson(toJson());

  /// Converts a [DocumentReferenceAttesterBuilder]
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
    addField('mode', mode);
    addField('time', time);
    addField('party', party);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'mode',
      'time',
      'party',
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
      case 'mode':
        if (mode != null) {
          fields.add(mode!);
        }
      case 'time':
        if (time != null) {
          fields.add(time!);
        }
      case 'party':
        if (party != null) {
          fields.add(party!);
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
      case 'mode':
        {
          if (child is CodeableConceptBuilder) {
            mode = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'time':
        {
          if (child is FhirDateTimeBuilder) {
            time = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                time = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'party':
        {
          if (child is ReferenceBuilder) {
            party = child;
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
      case 'mode':
        return ['CodeableConceptBuilder'];
      case 'time':
        return ['FhirDateTimeBuilder'];
      case 'party':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DocumentReferenceAttesterBuilder]
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
      case 'mode':
        {
          mode = CodeableConceptBuilder.empty();
          return;
        }
      case 'time':
        {
          time = FhirDateTimeBuilder.empty();
          return;
        }
      case 'party':
        {
          party = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  DocumentReferenceAttesterBuilder clone() => throw UnimplementedError();
  @override
  DocumentReferenceAttesterBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? mode,
    FhirDateTimeBuilder? time,
    ReferenceBuilder? party,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = DocumentReferenceAttesterBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      mode: mode ?? this.mode,
      time: time ?? this.time,
      party: party ?? this.party,
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
    if (o is! DocumentReferenceAttesterBuilder) {
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
      mode,
      o.mode,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      time,
      o.time,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      party,
      o.party,
    )) {
      return false;
    }
    return true;
  }
}

/// [DocumentReferenceRelatesToBuilder]
/// Relationships that this document has with other document references
/// that already exist.
class DocumentReferenceRelatesToBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DocumentReferenceRelatesToBuilder]

  DocumentReferenceRelatesToBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.target,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DocumentReference.relatesTo',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DocumentReferenceRelatesToBuilder.empty() =>
      DocumentReferenceRelatesToBuilder(
        code: CodeableConceptBuilder.empty(),
        target: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DocumentReferenceRelatesToBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DocumentReference.relatesTo';
    return DocumentReferenceRelatesToBuilder(
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
      target: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'target',
        ReferenceBuilder.fromJson,
        '$objectPath.target',
      ),
    );
  }

  /// Deserialize [DocumentReferenceRelatesToBuilder]
  /// from a [String] or [YamlMap] object
  factory DocumentReferenceRelatesToBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DocumentReferenceRelatesToBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DocumentReferenceRelatesToBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DocumentReferenceRelatesToBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DocumentReferenceRelatesToBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DocumentReferenceRelatesToBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DocumentReferenceRelatesToBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DocumentReferenceRelatesTo';

  /// [code]
  /// The type of relationship that this document has with anther document.
  CodeableConceptBuilder? code;

  /// [target]
  /// The target document of this relationship.
  ReferenceBuilder? target;

  /// Converts a [DocumentReferenceRelatesToBuilder]
  /// to [DocumentReferenceRelatesTo]
  @override
  DocumentReferenceRelatesTo build() =>
      DocumentReferenceRelatesTo.fromJson(toJson());

  /// Converts a [DocumentReferenceRelatesToBuilder]
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
    addField('target', target);
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
      'target',
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
      case 'target':
        if (target != null) {
          fields.add(target!);
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
      case 'target':
        {
          if (child is ReferenceBuilder) {
            target = child;
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
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'target':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DocumentReferenceRelatesToBuilder]
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
      case 'target':
        {
          target = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  DocumentReferenceRelatesToBuilder clone() => throw UnimplementedError();
  @override
  DocumentReferenceRelatesToBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? code,
    ReferenceBuilder? target,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = DocumentReferenceRelatesToBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      target: target ?? this.target,
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
    if (o is! DocumentReferenceRelatesToBuilder) {
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
      target,
      o.target,
    )) {
      return false;
    }
    return true;
  }
}

/// [DocumentReferenceContentBuilder]
/// The document and format referenced. If there are multiple content
/// element repetitions, these must all represent the same document in
/// different format, or attachment metadata.
class DocumentReferenceContentBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DocumentReferenceContentBuilder]

  DocumentReferenceContentBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.attachment,
    this.profile,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DocumentReference.content',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DocumentReferenceContentBuilder.empty() =>
      DocumentReferenceContentBuilder(
        attachment: AttachmentBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DocumentReferenceContentBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DocumentReference.content';
    return DocumentReferenceContentBuilder(
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
      attachment: JsonParser.parseObject<AttachmentBuilder>(
        json,
        'attachment',
        AttachmentBuilder.fromJson,
        '$objectPath.attachment',
      ),
      profile: (json['profile'] as List<dynamic>?)
          ?.map<DocumentReferenceProfileBuilder>(
            (v) => DocumentReferenceProfileBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.profile',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DocumentReferenceContentBuilder]
  /// from a [String] or [YamlMap] object
  factory DocumentReferenceContentBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DocumentReferenceContentBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DocumentReferenceContentBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DocumentReferenceContentBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DocumentReferenceContentBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DocumentReferenceContentBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DocumentReferenceContentBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DocumentReferenceContent';

  /// [attachment]
  /// The document or URL of the document along with critical metadata to
  /// prove content has integrity.
  AttachmentBuilder? attachment;

  /// [profile]
  /// An identifier of the document constraints, encoding, structure, and
  /// template that the document conforms to beyond the base format indicated
  /// in the mimeType.
  List<DocumentReferenceProfileBuilder>? profile;

  /// Converts a [DocumentReferenceContentBuilder]
  /// to [DocumentReferenceContent]
  @override
  DocumentReferenceContent build() =>
      DocumentReferenceContent.fromJson(toJson());

  /// Converts a [DocumentReferenceContentBuilder]
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
    addField('attachment', attachment);
    addField('profile', profile);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'attachment',
      'profile',
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
      case 'attachment':
        if (attachment != null) {
          fields.add(attachment!);
        }
      case 'profile':
        if (profile != null) {
          fields.addAll(profile!);
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
      case 'attachment':
        {
          if (child is AttachmentBuilder) {
            attachment = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'profile':
        {
          if (child is List<DocumentReferenceProfileBuilder>) {
            // Replace or create new list
            profile = child;
            return;
          } else if (child is DocumentReferenceProfileBuilder) {
            // Add single element to existing list or create new list
            profile = [
              ...(profile ?? []),
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
      case 'attachment':
        return ['AttachmentBuilder'];
      case 'profile':
        return ['DocumentReferenceProfileBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DocumentReferenceContentBuilder]
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
      case 'attachment':
        {
          attachment = AttachmentBuilder.empty();
          return;
        }
      case 'profile':
        {
          profile = <DocumentReferenceProfileBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  DocumentReferenceContentBuilder clone() => throw UnimplementedError();
  @override
  DocumentReferenceContentBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    AttachmentBuilder? attachment,
    List<DocumentReferenceProfileBuilder>? profile,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = DocumentReferenceContentBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      attachment: attachment ?? this.attachment,
      profile: profile ?? this.profile,
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
    if (o is! DocumentReferenceContentBuilder) {
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
      attachment,
      o.attachment,
    )) {
      return false;
    }
    if (!listEquals<DocumentReferenceProfileBuilder>(
      profile,
      o.profile,
    )) {
      return false;
    }
    return true;
  }
}

/// [DocumentReferenceProfileBuilder]
/// An identifier of the document constraints, encoding, structure, and
/// template that the document conforms to beyond the base format indicated
/// in the mimeType.
class DocumentReferenceProfileBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DocumentReferenceProfileBuilder]

  DocumentReferenceProfileBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    ValueXDocumentReferenceProfileBuilder? valueX,
    CodingBuilder? valueCoding,
    FhirUriBuilder? valueUri,
    FhirCanonicalBuilder? valueCanonical,
    super.disallowExtensions,
  })  : valueX = valueX ?? valueCoding ?? valueUri ?? valueCanonical,
        super(
          objectPath: 'DocumentReference.content.profile',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DocumentReferenceProfileBuilder.empty() =>
      DocumentReferenceProfileBuilder(
        valueX: CodingBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DocumentReferenceProfileBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DocumentReference.content.profile';
    return DocumentReferenceProfileBuilder(
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
      valueX:
          JsonParser.parsePolymorphic<ValueXDocumentReferenceProfileBuilder>(
        json,
        {
          'valueCoding': CodingBuilder.fromJson,
          'valueUri': FhirUriBuilder.fromJson,
          'valueCanonical': FhirCanonicalBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [DocumentReferenceProfileBuilder]
  /// from a [String] or [YamlMap] object
  factory DocumentReferenceProfileBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DocumentReferenceProfileBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DocumentReferenceProfileBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DocumentReferenceProfileBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DocumentReferenceProfileBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DocumentReferenceProfileBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DocumentReferenceProfileBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DocumentReferenceProfile';

  /// [valueX]
  /// Code|uri|canonical.
  ValueXDocumentReferenceProfileBuilder? valueX;

  /// Getter for [valueCoding] as a CodingBuilder
  CodingBuilder? get valueCoding => valueX?.isAs<CodingBuilder>();

  /// Getter for [valueUri] as a FhirUriBuilder
  FhirUriBuilder? get valueUri => valueX?.isAs<FhirUriBuilder>();

  /// Getter for [valueCanonical] as a FhirCanonicalBuilder
  FhirCanonicalBuilder? get valueCanonical =>
      valueX?.isAs<FhirCanonicalBuilder>();

  /// Converts a [DocumentReferenceProfileBuilder]
  /// to [DocumentReferenceProfile]
  @override
  DocumentReferenceProfile build() =>
      DocumentReferenceProfile.fromJson(toJson());

  /// Converts a [DocumentReferenceProfileBuilder]
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
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField('value${fhirType.capitalizeFirstLetter()}', valueX);
    }

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'valueX',
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
      case 'value':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueX':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueCoding':
        if (valueX is CodingBuilder) {
          fields.add(valueX!);
        }
      case 'valueUri':
        if (valueX is FhirUriBuilder) {
          fields.add(valueX!);
        }
      case 'valueCanonical':
        if (valueX is FhirCanonicalBuilder) {
          fields.add(valueX!);
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
      case 'value':
      case 'valueX':
        {
          if (child is ValueXDocumentReferenceProfileBuilder) {
            valueX = child;
            return;
          } else {
            if (child is CodingBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirUriBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirCanonicalBuilder) {
              valueX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueCoding':
        {
          if (child is CodingBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueUri':
        {
          if (child is FhirUriBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCanonical':
        {
          if (child is FhirCanonicalBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
      case 'value':
      case 'valueX':
        return [
          'CodingBuilder',
          'FhirUriBuilder',
          'FhirCanonicalBuilder',
        ];
      case 'valueCoding':
        return ['CodingBuilder'];
      case 'valueUri':
        return ['FhirUriBuilder'];
      case 'valueCanonical':
        return ['FhirCanonicalBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DocumentReferenceProfileBuilder]
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
      case 'value':
      case 'valueX':
      case 'valueCoding':
        {
          valueX = CodingBuilder.empty();
          return;
        }
      case 'valueUri':
        {
          valueX = FhirUriBuilder.empty();
          return;
        }
      case 'valueCanonical':
        {
          valueX = FhirCanonicalBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  DocumentReferenceProfileBuilder clone() => throw UnimplementedError();
  @override
  DocumentReferenceProfileBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ValueXDocumentReferenceProfileBuilder? valueX,
    CodingBuilder? valueCoding,
    FhirUriBuilder? valueUri,
    FhirCanonicalBuilder? valueCanonical,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = DocumentReferenceProfileBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      valueX:
          valueX ?? valueCoding ?? valueUri ?? valueCanonical ?? this.valueX,
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
    if (o is! DocumentReferenceProfileBuilder) {
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
      valueX,
      o.valueX,
    )) {
      return false;
    }
    return true;
  }
}
