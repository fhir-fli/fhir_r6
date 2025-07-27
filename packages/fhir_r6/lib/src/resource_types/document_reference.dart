import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'document_reference.g.dart';

/// [DocumentReference]
/// A reference to a document of any kind for any purpose. While the term
/// “document” implies a more narrow focus, for this resource this
/// "document" encompasses *any* serialized object with a mime-type, it
/// includes formal patient-centric documents (CDA), clinical notes,
/// scanned paper, non-patient specific documents like policy text, as well
/// as a photo, video, or audio recording acquired or used in healthcare.
/// The DocumentReference resource provides metadata about the document so
/// that the document can be discovered and managed. The actual content may
/// be inline base64 encoded data or provided by direct reference.
class DocumentReference extends DomainResource {
  /// Primary constructor for
  /// [DocumentReference]

  const DocumentReference({
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
    required this.status,
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
    required this.content,
  }) : super(
          resourceType: R5ResourceType.DocumentReference,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DocumentReference.fromJson(
    Map<String, dynamic> json,
  ) {
    return DocumentReference(
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
      version: JsonParser.parsePrimitive<FhirString>(
        json,
        'version',
        FhirString.fromJson,
      ),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<DocumentReferenceStatus>(
        json,
        'status',
        DocumentReferenceStatus.fromJson,
      )!,
      docStatus: JsonParser.parsePrimitive<CompositionStatus>(
        json,
        'docStatus',
        CompositionStatus.fromJson,
      ),
      modality: (json['modality'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
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
      context: (json['context'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      event: (json['event'] as List<dynamic>?)
          ?.map<CodeableReference>(
            (v) => CodeableReference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      bodySite: (json['bodySite'] as List<dynamic>?)
          ?.map<CodeableReference>(
            (v) => CodeableReference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      facilityType: JsonParser.parseObject<CodeableConcept>(
        json,
        'facilityType',
        CodeableConcept.fromJson,
      ),
      practiceSetting: JsonParser.parseObject<CodeableConcept>(
        json,
        'practiceSetting',
        CodeableConcept.fromJson,
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
      ),
      date: JsonParser.parsePrimitive<FhirInstant>(
        json,
        'date',
        FhirInstant.fromJson,
      ),
      author: (json['author'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      attester: (json['attester'] as List<dynamic>?)
          ?.map<DocumentReferenceAttester>(
            (v) => DocumentReferenceAttester.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      custodian: JsonParser.parseObject<Reference>(
        json,
        'custodian',
        Reference.fromJson,
      ),
      relatesTo: (json['relatesTo'] as List<dynamic>?)
          ?.map<DocumentReferenceRelatesTo>(
            (v) => DocumentReferenceRelatesTo.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      securityLabel: (json['securityLabel'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      content: (json['content'] as List<dynamic>)
          .map<DocumentReferenceContent>(
            (v) => DocumentReferenceContent.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DocumentReference]
  /// from a [String] or [YamlMap] object
  factory DocumentReference.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DocumentReference.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DocumentReference.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DocumentReference '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DocumentReference]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DocumentReference.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DocumentReference.fromJson(json);
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
  final List<Identifier>? identifier;

  /// [version]
  /// An explicitly assigned identifer of a variation of the content in the
  /// DocumentReference.
  final FhirString? version;

  /// [basedOn]
  /// A procedure that is fulfilled in whole or in part by the creation of
  /// this media.
  final List<Reference>? basedOn;

  /// [status]
  /// The status of this document reference.
  final DocumentReferenceStatus status;

  /// [docStatus]
  /// The status of the underlying document.
  final CompositionStatus? docStatus;

  /// [modality]
  /// Imaging modality used. This may include both acquisition and
  /// non-acquisition modalities.
  final List<CodeableConcept>? modality;

  /// [type]
  /// Specifies the particular kind of document referenced (e.g. History and
  /// Physical, Discharge Summary, Progress Note). This usually equates to
  /// the purpose of making the document referenced.
  final CodeableConcept? type;

  /// [category]
  /// A categorization for the type of document referenced - helps for
  /// indexing and searching. This may be implied by or derived from the code
  /// specified in the DocumentReference.type.
  final List<CodeableConcept>? category;

  /// [subject]
  /// Who or what the document is about. The document can be about a person,
  /// (patient or healthcare practitioner), a device (e.g. a machine) or even
  /// a group of subjects (such as a document about a herd of farm animals,
  /// or a set of patients that share a common exposure).
  final Reference? subject;

  /// [context]
  /// Describes the clinical encounter or type of care that the document
  /// content is associated with.
  final List<Reference>? context;

  /// [event]
  /// This list of codes represents the main clinical acts, such as a
  /// colonoscopy or an appendectomy, being documented. In some cases, the
  /// event is inherent in the type Code, such as a "History and Physical
  /// Report" in which the procedure being documented is necessarily a
  /// "History and Physical" act.
  final List<CodeableReference>? event;

  /// [bodySite]
  /// The anatomic structures included in the document.
  final List<CodeableReference>? bodySite;

  /// [facilityType]
  /// The kind of facility where the patient was seen.
  final CodeableConcept? facilityType;

  /// [practiceSetting]
  /// This property may convey specifics about the practice setting where the
  /// content was created, often reflecting the clinical specialty.
  final CodeableConcept? practiceSetting;

  /// [period]
  /// The time period over which the service that is described by the
  /// document was provided.
  final Period? period;

  /// [date]
  /// When the document reference was created.
  final FhirInstant? date;

  /// [author]
  /// Identifies who is responsible for adding the information to the
  /// document.
  final List<Reference>? author;

  /// [attester]
  /// A participant who has authenticated the accuracy of the document.
  final List<DocumentReferenceAttester>? attester;

  /// [custodian]
  /// Identifies the organization or group who is responsible for ongoing
  /// maintenance of and access to the document.
  final Reference? custodian;

  /// [relatesTo]
  /// Relationships that this document has with other document references
  /// that already exist.
  final List<DocumentReferenceRelatesTo>? relatesTo;

  /// [description]
  /// Human-readable description of the source document.
  final FhirMarkdown? description;

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
  final List<CodeableConcept>? securityLabel;

  /// [content]
  /// The document and format referenced. If there are multiple content
  /// element repetitions, these must all represent the same document in
  /// different format, or attachment metadata.
  final List<DocumentReferenceContent> content;
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
      'version',
      version,
    );
    addField(
      'basedOn',
      basedOn,
    );
    addField(
      'status',
      status,
    );
    addField(
      'docStatus',
      docStatus,
    );
    addField(
      'modality',
      modality,
    );
    addField(
      'type',
      type,
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
      'context',
      context,
    );
    addField(
      'event',
      event,
    );
    addField(
      'bodySite',
      bodySite,
    );
    addField(
      'facilityType',
      facilityType,
    );
    addField(
      'practiceSetting',
      practiceSetting,
    );
    addField(
      'period',
      period,
    );
    addField(
      'date',
      date,
    );
    addField(
      'author',
      author,
    );
    addField(
      'attester',
      attester,
    );
    addField(
      'custodian',
      custodian,
    );
    addField(
      'relatesTo',
      relatesTo,
    );
    addField(
      'description',
      description,
    );
    addField(
      'securityLabel',
      securityLabel,
    );
    addField(
      'content',
      content,
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
      case 'version':
        if (version != null) {
          fields.add(version!);
        }
      case 'basedOn':
        if (basedOn != null) {
          fields.addAll(basedOn!);
        }
      case 'status':
        fields.add(status);
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
        fields.addAll(content);
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
  DocumentReference clone() => copyWith();

  /// Copy function for [DocumentReference]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DocumentReferenceCopyWith<DocumentReference> get copyWith =>
      _$DocumentReferenceCopyWithImpl<DocumentReference>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DocumentReference) {
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
      version,
      o.version,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
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
    if (!listEquals<CodeableConcept>(
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
    if (!listEquals<Reference>(
      context,
      o.context,
    )) {
      return false;
    }
    if (!listEquals<CodeableReference>(
      event,
      o.event,
    )) {
      return false;
    }
    if (!listEquals<CodeableReference>(
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
    if (!listEquals<Reference>(
      author,
      o.author,
    )) {
      return false;
    }
    if (!listEquals<DocumentReferenceAttester>(
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
    if (!listEquals<DocumentReferenceRelatesTo>(
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
    if (!listEquals<CodeableConcept>(
      securityLabel,
      o.securityLabel,
    )) {
      return false;
    }
    if (!listEquals<DocumentReferenceContent>(
      content,
      o.content,
    )) {
      return false;
    }
    return true;
  }
}

/// [DocumentReferenceAttester]
/// A participant who has authenticated the accuracy of the document.
class DocumentReferenceAttester extends BackboneElement {
  /// Primary constructor for
  /// [DocumentReferenceAttester]

  const DocumentReferenceAttester({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.mode,
    this.time,
    this.party,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DocumentReferenceAttester.fromJson(
    Map<String, dynamic> json,
  ) {
    return DocumentReferenceAttester(
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
      mode: JsonParser.parseObject<CodeableConcept>(
        json,
        'mode',
        CodeableConcept.fromJson,
      )!,
      time: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'time',
        FhirDateTime.fromJson,
      ),
      party: JsonParser.parseObject<Reference>(
        json,
        'party',
        Reference.fromJson,
      ),
    );
  }

  /// Deserialize [DocumentReferenceAttester]
  /// from a [String] or [YamlMap] object
  factory DocumentReferenceAttester.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DocumentReferenceAttester.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DocumentReferenceAttester.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DocumentReferenceAttester '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DocumentReferenceAttester]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DocumentReferenceAttester.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DocumentReferenceAttester.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DocumentReferenceAttester';

  /// [mode]
  /// The type of attestation the authenticator offers.
  final CodeableConcept mode;

  /// [time]
  /// When the document was attested by the party.
  final FhirDateTime? time;

  /// [party]
  /// Who attested the document in the specified way.
  final Reference? party;
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
      'mode',
      mode,
    );
    addField(
      'time',
      time,
    );
    addField(
      'party',
      party,
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
      'mode',
      'time',
      'party',
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
      case 'mode':
        fields.add(mode);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  DocumentReferenceAttester clone() => copyWith();

  /// Copy function for [DocumentReferenceAttester]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DocumentReferenceAttesterCopyWith<DocumentReferenceAttester> get copyWith =>
      _$DocumentReferenceAttesterCopyWithImpl<DocumentReferenceAttester>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DocumentReferenceAttester) {
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

/// [DocumentReferenceRelatesTo]
/// Relationships that this document has with other document references
/// that already exist.
class DocumentReferenceRelatesTo extends BackboneElement {
  /// Primary constructor for
  /// [DocumentReferenceRelatesTo]

  const DocumentReferenceRelatesTo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    required this.target,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DocumentReferenceRelatesTo.fromJson(
    Map<String, dynamic> json,
  ) {
    return DocumentReferenceRelatesTo(
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
      target: JsonParser.parseObject<Reference>(
        json,
        'target',
        Reference.fromJson,
      )!,
    );
  }

  /// Deserialize [DocumentReferenceRelatesTo]
  /// from a [String] or [YamlMap] object
  factory DocumentReferenceRelatesTo.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DocumentReferenceRelatesTo.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DocumentReferenceRelatesTo.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DocumentReferenceRelatesTo '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DocumentReferenceRelatesTo]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DocumentReferenceRelatesTo.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DocumentReferenceRelatesTo.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DocumentReferenceRelatesTo';

  /// [code]
  /// The type of relationship that this document has with anther document.
  final CodeableConcept code;

  /// [target]
  /// The target document of this relationship.
  final Reference target;
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
      'target',
      target,
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
      'target',
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
      case 'target':
        fields.add(target);
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
  DocumentReferenceRelatesTo clone() => copyWith();

  /// Copy function for [DocumentReferenceRelatesTo]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DocumentReferenceRelatesToCopyWith<DocumentReferenceRelatesTo>
      get copyWith =>
          _$DocumentReferenceRelatesToCopyWithImpl<DocumentReferenceRelatesTo>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DocumentReferenceRelatesTo) {
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
    if (!equalsDeepWithNull(
      target,
      o.target,
    )) {
      return false;
    }
    return true;
  }
}

/// [DocumentReferenceContent]
/// The document and format referenced. If there are multiple content
/// element repetitions, these must all represent the same document in
/// different format, or attachment metadata.
class DocumentReferenceContent extends BackboneElement {
  /// Primary constructor for
  /// [DocumentReferenceContent]

  const DocumentReferenceContent({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.attachment,
    this.profile,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DocumentReferenceContent.fromJson(
    Map<String, dynamic> json,
  ) {
    return DocumentReferenceContent(
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
      attachment: JsonParser.parseObject<Attachment>(
        json,
        'attachment',
        Attachment.fromJson,
      )!,
      profile: (json['profile'] as List<dynamic>?)
          ?.map<DocumentReferenceProfile>(
            (v) => DocumentReferenceProfile.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DocumentReferenceContent]
  /// from a [String] or [YamlMap] object
  factory DocumentReferenceContent.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DocumentReferenceContent.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DocumentReferenceContent.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DocumentReferenceContent '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DocumentReferenceContent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DocumentReferenceContent.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DocumentReferenceContent.fromJson(json);
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
  final Attachment attachment;

  /// [profile]
  /// An identifier of the document constraints, encoding, structure, and
  /// template that the document conforms to beyond the base format indicated
  /// in the mimeType.
  final List<DocumentReferenceProfile>? profile;
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
      'attachment',
      attachment,
    );
    addField(
      'profile',
      profile,
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
      'attachment',
      'profile',
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
      case 'attachment':
        fields.add(attachment);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  DocumentReferenceContent clone() => copyWith();

  /// Copy function for [DocumentReferenceContent]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DocumentReferenceContentCopyWith<DocumentReferenceContent> get copyWith =>
      _$DocumentReferenceContentCopyWithImpl<DocumentReferenceContent>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DocumentReferenceContent) {
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
      attachment,
      o.attachment,
    )) {
      return false;
    }
    if (!listEquals<DocumentReferenceProfile>(
      profile,
      o.profile,
    )) {
      return false;
    }
    return true;
  }
}

/// [DocumentReferenceProfile]
/// An identifier of the document constraints, encoding, structure, and
/// template that the document conforms to beyond the base format indicated
/// in the mimeType.
class DocumentReferenceProfile extends BackboneElement {
  /// Primary constructor for
  /// [DocumentReferenceProfile]

  const DocumentReferenceProfile({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.valueX,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DocumentReferenceProfile.fromJson(
    Map<String, dynamic> json,
  ) {
    return DocumentReferenceProfile(
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
      valueX: JsonParser.parsePolymorphic<ValueXDocumentReferenceProfile>(
        json,
        {
          'valueCoding': Coding.fromJson,
          'valueUri': FhirUri.fromJson,
          'valueCanonical': FhirCanonical.fromJson,
        },
      )!,
    );
  }

  /// Deserialize [DocumentReferenceProfile]
  /// from a [String] or [YamlMap] object
  factory DocumentReferenceProfile.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DocumentReferenceProfile.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DocumentReferenceProfile.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DocumentReferenceProfile '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DocumentReferenceProfile]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DocumentReferenceProfile.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DocumentReferenceProfile.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DocumentReferenceProfile';

  /// [valueX]
  /// Code|uri|canonical.
  final ValueXDocumentReferenceProfile valueX;

  /// Getter for [valueCoding] as a Coding
  Coding? get valueCoding => valueX.isAs<Coding>();

  /// Getter for [valueUri] as a FhirUri
  FhirUri? get valueUri => valueX.isAs<FhirUri>();

  /// Getter for [valueCanonical] as a FhirCanonical
  FhirCanonical? get valueCanonical => valueX.isAs<FhirCanonical>();
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
    final valueXFhirType = valueX.fhirType;
    addField(
      'value${valueXFhirType.capitalize()}',
      valueX,
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
      'valueX',
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
      case 'value':
        fields.add(valueX);
      case 'valueX':
        fields.add(valueX);
      case 'valueCoding':
        if (valueX is Coding) {
          fields.add(valueX);
        }
      case 'valueUri':
        if (valueX is FhirUri) {
          fields.add(valueX);
        }
      case 'valueCanonical':
        if (valueX is FhirCanonical) {
          fields.add(valueX);
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
  DocumentReferenceProfile clone() => copyWith();

  /// Copy function for [DocumentReferenceProfile]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $DocumentReferenceProfileCopyWith<DocumentReferenceProfile> get copyWith =>
      _$DocumentReferenceProfileCopyWithImpl<DocumentReferenceProfile>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DocumentReferenceProfile) {
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
      valueX,
      o.valueX,
    )) {
      return false;
    }
    return true;
  }
}
