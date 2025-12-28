import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'artifact_assessment.g.dart';

/// [ArtifactAssessment]
/// This Resource provides one or more comments, classifiers or ratings
/// about a Resource and supports attribution and rights management
/// metadata for the added content.
class ArtifactAssessment extends DomainResource {
  /// Primary constructor for
  /// [ArtifactAssessment]

  const ArtifactAssessment({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.title,
    this.citeAs,
    required this.artifactX,
    this.relatesTo,
    this.date,
    this.copyright,
    this.approvalDate,
    this.lastReviewDate,
    this.content,
    this.workflowStatus,
    this.disposition,
  }) : super(
          resourceType: R6ResourceType.ArtifactAssessment,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ArtifactAssessment.fromJson(
    Map<String, dynamic> json,
  ) {
    return ArtifactAssessment(
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
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
      ),
      citeAs: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'citeAs',
        FhirMarkdown.fromJson,
      ),
      artifactX: JsonParser.parsePolymorphic<ArtifactXArtifactAssessment>(
        json,
        {
          'artifactReference': Reference.fromJson,
          'artifactCanonical': FhirCanonical.fromJson,
          'artifactUri': FhirUri.fromJson,
        },
      )!,
      relatesTo: (json['relatesTo'] as List<dynamic>?)
          ?.map<ArtifactAssessmentRelatesTo>(
            (v) => ArtifactAssessmentRelatesTo.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
      ),
      copyright: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'copyright',
        FhirMarkdown.fromJson,
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
      content: (json['content'] as List<dynamic>?)
          ?.map<ArtifactAssessmentContent>(
            (v) => ArtifactAssessmentContent.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      workflowStatus:
          JsonParser.parsePrimitive<ArtifactAssessmentWorkflowStatus>(
        json,
        'workflowStatus',
        ArtifactAssessmentWorkflowStatus.fromJson,
      ),
      disposition: JsonParser.parsePrimitive<ArtifactAssessmentDisposition>(
        json,
        'disposition',
        ArtifactAssessmentDisposition.fromJson,
      ),
    );
  }

  /// Deserialize [ArtifactAssessment]
  /// from a [String] or [YamlMap] object
  factory ArtifactAssessment.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ArtifactAssessment.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ArtifactAssessment.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ArtifactAssessment '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ArtifactAssessment]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ArtifactAssessment.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ArtifactAssessment.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ArtifactAssessment';

  /// [identifier]
  /// A formal identifier that is used to identify this artifact assessment
  /// when it is represented in other formats, or referenced in a
  /// specification, model, design or an instance.
  final List<Identifier>? identifier;

  /// [title]
  /// A label for use in displaying and selecting the artifact assessment.
  final FhirString? title;

  /// [citeAs]
  /// Display of the bibliographic citation of the comment, classifier, or
  /// rating.
  final FhirMarkdown? citeAs;

  /// [artifactX]
  /// A reference to a resource, canonical resource, or non-FHIR resource
  /// which the comment or assessment is about.
  final ArtifactXArtifactAssessment artifactX;

  /// Getter for [artifactReference] as a Reference
  Reference? get artifactReference => artifactX.isAs<Reference>();

  /// Getter for [artifactCanonical] as a FhirCanonical
  FhirCanonical? get artifactCanonical => artifactX.isAs<FhirCanonical>();

  /// Getter for [artifactUri] as a FhirUri
  FhirUri? get artifactUri => artifactX.isAs<FhirUri>();

  /// [relatesTo]
  /// Relationship that this ArtifactAssessment has with other FHIR or
  /// non-FHIR resources that already exist.
  final List<ArtifactAssessmentRelatesTo>? relatesTo;

  /// [date]
  /// The date (and optionally time) when the artifact assessment was
  /// published. The date must change when the disposition changes and it
  /// must change if the workflow status code changes. In addition, it should
  /// change when the substantive content of the artifact assessment changes.
  final FhirDateTime? date;

  /// [copyright]
  /// A copyright statement relating to the artifact assessment and/or its
  /// contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the artifact assessment.
  final FhirMarkdown? copyright;

  /// [approvalDate]
  /// The date on which the resource content was approved by the publisher.
  /// Approval happens once when the content is officially approved for
  /// usage.
  final FhirDate? approvalDate;

  /// [lastReviewDate]
  /// The date on which the resource content was last reviewed. Review
  /// happens periodically after approval but does not change the original
  /// approval date.
  final FhirDate? lastReviewDate;

  /// [content]
  /// A component comment, classifier, or rating of the artifact.
  final List<ArtifactAssessmentContent>? content;

  /// [workflowStatus]
  /// Indicates the workflow status of the comment or change request.
  final ArtifactAssessmentWorkflowStatus? workflowStatus;

  /// [disposition]
  /// Indicates the disposition of the responsible party to the comment or
  /// change request.
  final ArtifactAssessmentDisposition? disposition;
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
      'title',
      title,
    );
    addField(
      'citeAs',
      citeAs,
    );
    final artifactXFhirType = artifactX.fhirType;
    addField(
      'artifact${artifactXFhirType.capitalize()}',
      artifactX,
    );

    addField(
      'relatesTo',
      relatesTo,
    );
    addField(
      'date',
      date,
    );
    addField(
      'copyright',
      copyright,
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
      'content',
      content,
    );
    addField(
      'workflowStatus',
      workflowStatus,
    );
    addField(
      'disposition',
      disposition,
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
      'title',
      'citeAs',
      'artifactX',
      'relatesTo',
      'date',
      'copyright',
      'approvalDate',
      'lastReviewDate',
      'content',
      'workflowStatus',
      'disposition',
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
      case 'title':
        if (title != null) {
          fields.add(title!);
        }
      case 'citeAs':
        if (citeAs != null) {
          fields.add(citeAs!);
        }
      case 'artifact':
        fields.add(artifactX);
      case 'artifactX':
        fields.add(artifactX);
      case 'artifactReference':
        if (artifactX is Reference) {
          fields.add(artifactX);
        }
      case 'artifactCanonical':
        if (artifactX is FhirCanonical) {
          fields.add(artifactX);
        }
      case 'artifactUri':
        if (artifactX is FhirUri) {
          fields.add(artifactX);
        }
      case 'relatesTo':
        if (relatesTo != null) {
          fields.addAll(relatesTo!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'copyright':
        if (copyright != null) {
          fields.add(copyright!);
        }
      case 'approvalDate':
        if (approvalDate != null) {
          fields.add(approvalDate!);
        }
      case 'lastReviewDate':
        if (lastReviewDate != null) {
          fields.add(lastReviewDate!);
        }
      case 'content':
        if (content != null) {
          fields.addAll(content!);
        }
      case 'workflowStatus':
        if (workflowStatus != null) {
          fields.add(workflowStatus!);
        }
      case 'disposition':
        if (disposition != null) {
          fields.add(disposition!);
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
  ArtifactAssessment clone() => copyWith();

  /// Copy function for [ArtifactAssessment]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ArtifactAssessmentCopyWith<ArtifactAssessment> get copyWith =>
      _$ArtifactAssessmentCopyWithImpl<ArtifactAssessment>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ArtifactAssessment) {
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
      title,
      o.title,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      citeAs,
      o.citeAs,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      artifactX,
      o.artifactX,
    )) {
      return false;
    }
    if (!listEquals<ArtifactAssessmentRelatesTo>(
      relatesTo,
      o.relatesTo,
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
      copyright,
      o.copyright,
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
    if (!listEquals<ArtifactAssessmentContent>(
      content,
      o.content,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      workflowStatus,
      o.workflowStatus,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      disposition,
      o.disposition,
    )) {
      return false;
    }
    return true;
  }
}

/// [ArtifactAssessmentRelatesTo]
/// Relationship that this ArtifactAssessment has with other FHIR or
/// non-FHIR resources that already exist.
class ArtifactAssessmentRelatesTo extends BackboneElement {
  /// Primary constructor for
  /// [ArtifactAssessmentRelatesTo]

  const ArtifactAssessmentRelatesTo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.targetX,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ArtifactAssessmentRelatesTo.fromJson(
    Map<String, dynamic> json,
  ) {
    return ArtifactAssessmentRelatesTo(
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
      type: JsonParser.parsePrimitive<ArtifactRelationshipType>(
        json,
        'type',
        ArtifactRelationshipType.fromJson,
      )!,
      targetX: JsonParser.parsePolymorphic<TargetXArtifactAssessmentRelatesTo>(
        json,
        {
          'targetUri': FhirUri.fromJson,
          'targetAttachment': Attachment.fromJson,
          'targetCanonical': FhirCanonical.fromJson,
          'targetReference': Reference.fromJson,
          'targetMarkdown': FhirMarkdown.fromJson,
        },
      )!,
    );
  }

  /// Deserialize [ArtifactAssessmentRelatesTo]
  /// from a [String] or [YamlMap] object
  factory ArtifactAssessmentRelatesTo.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ArtifactAssessmentRelatesTo.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ArtifactAssessmentRelatesTo.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ArtifactAssessmentRelatesTo '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ArtifactAssessmentRelatesTo]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ArtifactAssessmentRelatesTo.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ArtifactAssessmentRelatesTo.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ArtifactAssessmentRelatesTo';

  /// [type]
  /// The type of relationship to the related artifact.
  final ArtifactRelationshipType type;

  /// [targetX]
  /// The artifact that is related to this ArtifactAssessment Resource.
  final TargetXArtifactAssessmentRelatesTo targetX;

  /// Getter for [targetUri] as a FhirUri
  FhirUri? get targetUri => targetX.isAs<FhirUri>();

  /// Getter for [targetAttachment] as a Attachment
  Attachment? get targetAttachment => targetX.isAs<Attachment>();

  /// Getter for [targetCanonical] as a FhirCanonical
  FhirCanonical? get targetCanonical => targetX.isAs<FhirCanonical>();

  /// Getter for [targetReference] as a Reference
  Reference? get targetReference => targetX.isAs<Reference>();

  /// Getter for [targetMarkdown] as a FhirMarkdown
  FhirMarkdown? get targetMarkdown => targetX.isAs<FhirMarkdown>();
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
      'type',
      type,
    );
    final targetXFhirType = targetX.fhirType;
    addField(
      'target${targetXFhirType.capitalize()}',
      targetX,
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
      'type',
      'targetX',
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
      case 'type':
        fields.add(type);
      case 'target':
        fields.add(targetX);
      case 'targetX':
        fields.add(targetX);
      case 'targetUri':
        if (targetX is FhirUri) {
          fields.add(targetX);
        }
      case 'targetAttachment':
        if (targetX is Attachment) {
          fields.add(targetX);
        }
      case 'targetCanonical':
        if (targetX is FhirCanonical) {
          fields.add(targetX);
        }
      case 'targetReference':
        if (targetX is Reference) {
          fields.add(targetX);
        }
      case 'targetMarkdown':
        if (targetX is FhirMarkdown) {
          fields.add(targetX);
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
  ArtifactAssessmentRelatesTo clone() => copyWith();

  /// Copy function for [ArtifactAssessmentRelatesTo]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ArtifactAssessmentRelatesToCopyWith<ArtifactAssessmentRelatesTo>
      get copyWith => _$ArtifactAssessmentRelatesToCopyWithImpl<
              ArtifactAssessmentRelatesTo>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ArtifactAssessmentRelatesTo) {
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
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      targetX,
      o.targetX,
    )) {
      return false;
    }
    return true;
  }
}

/// [ArtifactAssessmentContent]
/// A component comment, classifier, or rating of the artifact.
class ArtifactAssessmentContent extends BackboneElement {
  /// Primary constructor for
  /// [ArtifactAssessmentContent]

  const ArtifactAssessmentContent({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.summary,
    this.type,
    this.classifier,
    this.quantity,
    this.author,
    this.path,
    this.relatesTo,
    this.freeToShare,
    this.component,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ArtifactAssessmentContent.fromJson(
    Map<String, dynamic> json,
  ) {
    return ArtifactAssessmentContent(
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
      summary: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'summary',
        FhirMarkdown.fromJson,
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      classifier: (json['classifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
      ),
      author: (json['author'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      path: JsonParser.parsePrimitiveList<FhirUri>(
        json,
        'path',
        FhirUri.fromJson,
      ),
      relatesTo: (json['relatesTo'] as List<dynamic>?)
          ?.map<ArtifactAssessmentRelatesTo>(
            (v) => ArtifactAssessmentRelatesTo.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      freeToShare: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'freeToShare',
        FhirBoolean.fromJson,
      ),
      component: (json['component'] as List<dynamic>?)
          ?.map<ArtifactAssessmentContent>(
            (v) => ArtifactAssessmentContent.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ArtifactAssessmentContent]
  /// from a [String] or [YamlMap] object
  factory ArtifactAssessmentContent.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ArtifactAssessmentContent.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ArtifactAssessmentContent.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ArtifactAssessmentContent '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ArtifactAssessmentContent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ArtifactAssessmentContent.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ArtifactAssessmentContent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ArtifactAssessmentContent';

  /// [summary]
  /// A brief summary of the content of this component.
  final FhirMarkdown? summary;

  /// [type]
  /// Indicates what type of content this component represents.
  final CodeableConcept? type;

  /// [classifier]
  /// Represents a rating, classifier, or assessment of the artifact.
  final List<CodeableConcept>? classifier;

  /// [quantity]
  /// A quantitative rating of the artifact.
  final Quantity? quantity;

  /// [author]
  /// Indicates who or what authored the content.
  final List<Reference>? author;

  /// [path]
  /// A URI that points to what the comment is about, such as a line of text
  /// in the CQL, or a specific element in a resource.
  final List<FhirUri>? path;

  /// [relatesTo]
  /// Relationship that this content component has with other FHIR or
  /// non-FHIR resources that already exist.
  final List<ArtifactAssessmentRelatesTo>? relatesTo;

  /// [freeToShare]
  /// Acceptable to publicly share the comment, classifier or rating.
  final FhirBoolean? freeToShare;

  /// [component]
  /// A component comment, classifier, or rating of the artifact.
  final List<ArtifactAssessmentContent>? component;
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
      'summary',
      summary,
    );
    addField(
      'type',
      type,
    );
    addField(
      'classifier',
      classifier,
    );
    addField(
      'quantity',
      quantity,
    );
    addField(
      'author',
      author,
    );
    addField(
      'path',
      path,
    );
    addField(
      'relatesTo',
      relatesTo,
    );
    addField(
      'freeToShare',
      freeToShare,
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
      'extension',
      'modifierExtension',
      'summary',
      'type',
      'classifier',
      'quantity',
      'author',
      'path',
      'relatesTo',
      'freeToShare',
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
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'summary':
        if (summary != null) {
          fields.add(summary!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'classifier':
        if (classifier != null) {
          fields.addAll(classifier!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'author':
        if (author != null) {
          fields.addAll(author!);
        }
      case 'path':
        if (path != null) {
          fields.addAll(path!);
        }
      case 'relatesTo':
        if (relatesTo != null) {
          fields.addAll(relatesTo!);
        }
      case 'freeToShare':
        if (freeToShare != null) {
          fields.add(freeToShare!);
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
  ArtifactAssessmentContent clone() => copyWith();

  /// Copy function for [ArtifactAssessmentContent]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ArtifactAssessmentContentCopyWith<ArtifactAssessmentContent> get copyWith =>
      _$ArtifactAssessmentContentCopyWithImpl<ArtifactAssessmentContent>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ArtifactAssessmentContent) {
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
      summary,
      o.summary,
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
      classifier,
      o.classifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      author,
      o.author,
    )) {
      return false;
    }
    if (!listEquals<FhirUri>(
      path,
      o.path,
    )) {
      return false;
    }
    if (!listEquals<ArtifactAssessmentRelatesTo>(
      relatesTo,
      o.relatesTo,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      freeToShare,
      o.freeToShare,
    )) {
      return false;
    }
    if (!listEquals<ArtifactAssessmentContent>(
      component,
      o.component,
    )) {
      return false;
    }
    return true;
  }
}
