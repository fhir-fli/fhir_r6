import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart'
    show
        Condition,
        ConditionParticipant,
        ConditionStage,
        R6ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r6_mapping/fhir_r6_mapping.dart';
import 'package:yaml/yaml.dart';

/// [ConditionBuilder]
/// A clinical condition, problem, diagnosis, or other event, situation,
/// issue, or clinical concept that has risen to a level of concern.
class ConditionBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [ConditionBuilder]

  ConditionBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.clinicalStatus,
    this.verificationStatus,
    this.category,
    this.severity,
    this.code,
    this.bodySite,
    this.subject,
    this.encounter,
    OnsetXConditionBuilder? onsetX,
    FhirDateTimeBuilder? onsetDateTime,
    AgeBuilder? onsetAge,
    PeriodBuilder? onsetPeriod,
    RangeBuilder? onsetRange,
    FhirStringBuilder? onsetString,
    AbatementXConditionBuilder? abatementX,
    FhirDateTimeBuilder? abatementDateTime,
    AgeBuilder? abatementAge,
    PeriodBuilder? abatementPeriod,
    RangeBuilder? abatementRange,
    FhirStringBuilder? abatementString,
    this.recordedDate,
    this.participant,
    this.stage,
    this.evidence,
    this.note,
  })  : onsetX = onsetX ??
            onsetDateTime ??
            onsetAge ??
            onsetPeriod ??
            onsetRange ??
            onsetString,
        abatementX = abatementX ??
            abatementDateTime ??
            abatementAge ??
            abatementPeriod ??
            abatementRange ??
            abatementString,
        super(
          objectPath: 'Condition',
          resourceType: R6ResourceType.Condition,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ConditionBuilder.empty() => ConditionBuilder(
        clinicalStatus: CodeableConceptBuilder.empty(),
        subject: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConditionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Condition';
    return ConditionBuilder(
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
      clinicalStatus: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'clinicalStatus',
        CodeableConceptBuilder.fromJson,
        '$objectPath.clinicalStatus',
      ),
      verificationStatus: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'verificationStatus',
        CodeableConceptBuilder.fromJson,
        '$objectPath.verificationStatus',
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
      severity: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'severity',
        CodeableConceptBuilder.fromJson,
        '$objectPath.severity',
      ),
      code: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'code',
        CodeableConceptBuilder.fromJson,
        '$objectPath.code',
      ),
      bodySite: (json['bodySite'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.bodySite',
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
      encounter: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'encounter',
        ReferenceBuilder.fromJson,
        '$objectPath.encounter',
      ),
      onsetX: JsonParser.parsePolymorphic<OnsetXConditionBuilder>(
        json,
        {
          'onsetDateTime': FhirDateTimeBuilder.fromJson,
          'onsetAge': AgeBuilder.fromJson,
          'onsetPeriod': PeriodBuilder.fromJson,
          'onsetRange': RangeBuilder.fromJson,
          'onsetString': FhirStringBuilder.fromJson,
        },
        objectPath,
      ),
      abatementX: JsonParser.parsePolymorphic<AbatementXConditionBuilder>(
        json,
        {
          'abatementDateTime': FhirDateTimeBuilder.fromJson,
          'abatementAge': AgeBuilder.fromJson,
          'abatementPeriod': PeriodBuilder.fromJson,
          'abatementRange': RangeBuilder.fromJson,
          'abatementString': FhirStringBuilder.fromJson,
        },
        objectPath,
      ),
      recordedDate: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'recordedDate',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.recordedDate',
      ),
      participant: (json['participant'] as List<dynamic>?)
          ?.map<ConditionParticipantBuilder>(
            (v) => ConditionParticipantBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.participant',
              },
            ),
          )
          .toList(),
      stage: (json['stage'] as List<dynamic>?)
          ?.map<ConditionStageBuilder>(
            (v) => ConditionStageBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.stage',
              },
            ),
          )
          .toList(),
      evidence: (json['evidence'] as List<dynamic>?)
          ?.map<CodeableReferenceBuilder>(
            (v) => CodeableReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.evidence',
              },
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<AnnotationBuilder>(
            (v) => AnnotationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ConditionBuilder]
  /// from a [String] or [YamlMap] object
  factory ConditionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConditionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConditionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConditionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConditionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConditionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ConditionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Condition';

  /// [identifier]
  /// Business identifiers assigned to this condition by the performer or
  /// other systems which remain constant as the resource is updated and
  /// propagates from server to server.
  List<IdentifierBuilder>? identifier;

  /// [clinicalStatus]
  /// The clinical status of the condition.
  CodeableConceptBuilder? clinicalStatus;

  /// [verificationStatus]
  /// The verification status to support the clinical status of the
  /// condition. The verification status pertains to the condition, itself,
  /// not to any specific condition attribute.
  CodeableConceptBuilder? verificationStatus;

  /// [category]
  /// A category assigned to the condition.
  List<CodeableConceptBuilder>? category;

  /// [severity]
  /// A subjective assessment of the severity of the condition as evaluated
  /// by the clinician.
  CodeableConceptBuilder? severity;

  /// [code]
  /// Identification of the condition, problem or diagnosis.
  CodeableConceptBuilder? code;

  /// [bodySite]
  /// The anatomical location where this condition manifests itself.
  List<CodeableConceptBuilder>? bodySite;

  /// [subject]
  /// Indicates the patient or group who the condition record is associated
  /// with.
  ReferenceBuilder? subject;

  /// [encounter]
  /// The Encounter during which this Condition was created or to which the
  /// creation of this record is tightly associated.
  ReferenceBuilder? encounter;

  /// [onsetX]
  /// Estimated or actual date or date-time the condition began, in the
  /// opinion of the clinician.
  OnsetXConditionBuilder? onsetX;

  /// Getter for [onsetDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get onsetDateTime => onsetX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [onsetAge] as a AgeBuilder
  AgeBuilder? get onsetAge => onsetX?.isAs<AgeBuilder>();

  /// Getter for [onsetPeriod] as a PeriodBuilder
  PeriodBuilder? get onsetPeriod => onsetX?.isAs<PeriodBuilder>();

  /// Getter for [onsetRange] as a RangeBuilder
  RangeBuilder? get onsetRange => onsetX?.isAs<RangeBuilder>();

  /// Getter for [onsetString] as a FhirStringBuilder
  FhirStringBuilder? get onsetString => onsetX?.isAs<FhirStringBuilder>();

  /// [abatementX]
  /// The date or estimated date that the condition resolved or went into
  /// remission. This is called "abatement" because of the many overloaded
  /// connotations associated with "remission" or "resolution" - Some
  /// conditions, such as chronic conditions, are never really resolved, but
  /// they can abate.
  AbatementXConditionBuilder? abatementX;

  /// Getter for [abatementDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get abatementDateTime =>
      abatementX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [abatementAge] as a AgeBuilder
  AgeBuilder? get abatementAge => abatementX?.isAs<AgeBuilder>();

  /// Getter for [abatementPeriod] as a PeriodBuilder
  PeriodBuilder? get abatementPeriod => abatementX?.isAs<PeriodBuilder>();

  /// Getter for [abatementRange] as a RangeBuilder
  RangeBuilder? get abatementRange => abatementX?.isAs<RangeBuilder>();

  /// Getter for [abatementString] as a FhirStringBuilder
  FhirStringBuilder? get abatementString =>
      abatementX?.isAs<FhirStringBuilder>();

  /// [recordedDate]
  /// The recordedDate represents when this particular Condition record was
  /// created in the system, which is often a system-generated date.
  FhirDateTimeBuilder? recordedDate;

  /// [participant]
  /// Indicates who or what participated in the activities related to the
  /// condition and how they were involved.
  List<ConditionParticipantBuilder>? participant;

  /// [stage]
  /// A simple summary of the stage such as "Stage 3" or "Early Onset". The
  /// determination of the stage is disease-specific, such as cancer,
  /// retinopathy of prematurity, kidney diseases, Alzheimer's, or Parkinson
  /// disease.
  List<ConditionStageBuilder>? stage;

  /// [evidence]
  /// Supporting evidence / manifestations that are the basis of the
  /// Condition's verification status, such as evidence that confirmed or
  /// refuted the condition.
  List<CodeableReferenceBuilder>? evidence;

  /// [note]
  /// Additional information about the Condition. This is a general
  /// notes/comments entry for description of the Condition, its diagnosis
  /// and prognosis.
  List<AnnotationBuilder>? note;

  /// Converts a [ConditionBuilder]
  /// to [Condition]
  @override
  Condition build() => Condition.fromJson(toJson());

  /// Converts a [ConditionBuilder]
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
    addField('clinicalStatus', clinicalStatus);
    addField('verificationStatus', verificationStatus);
    addField('category', category);
    addField('severity', severity);
    addField('code', code);
    addField('bodySite', bodySite);
    addField('subject', subject);
    addField('encounter', encounter);
    if (onsetX != null) {
      final fhirType = onsetX!.fhirType;
      addField('onset${fhirType.capitalizeFirstLetter()}', onsetX);
    }

    if (abatementX != null) {
      final fhirType = abatementX!.fhirType;
      addField('abatement${fhirType.capitalizeFirstLetter()}', abatementX);
    }

    addField('recordedDate', recordedDate);
    addField('participant', participant);
    addField('stage', stage);
    addField('evidence', evidence);
    addField('note', note);
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
      'clinicalStatus',
      'verificationStatus',
      'category',
      'severity',
      'code',
      'bodySite',
      'subject',
      'encounter',
      'onsetX',
      'abatementX',
      'recordedDate',
      'participant',
      'stage',
      'evidence',
      'note',
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
      case 'clinicalStatus':
        if (clinicalStatus != null) {
          fields.add(clinicalStatus!);
        }
      case 'verificationStatus':
        if (verificationStatus != null) {
          fields.add(verificationStatus!);
        }
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'severity':
        if (severity != null) {
          fields.add(severity!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'bodySite':
        if (bodySite != null) {
          fields.addAll(bodySite!);
        }
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'onset':
        if (onsetX != null) {
          fields.add(onsetX!);
        }
      case 'onsetX':
        if (onsetX != null) {
          fields.add(onsetX!);
        }
      case 'onsetDateTime':
        if (onsetX is FhirDateTimeBuilder) {
          fields.add(onsetX!);
        }
      case 'onsetAge':
        if (onsetX is AgeBuilder) {
          fields.add(onsetX!);
        }
      case 'onsetPeriod':
        if (onsetX is PeriodBuilder) {
          fields.add(onsetX!);
        }
      case 'onsetRange':
        if (onsetX is RangeBuilder) {
          fields.add(onsetX!);
        }
      case 'onsetString':
        if (onsetX is FhirStringBuilder) {
          fields.add(onsetX!);
        }
      case 'abatement':
        if (abatementX != null) {
          fields.add(abatementX!);
        }
      case 'abatementX':
        if (abatementX != null) {
          fields.add(abatementX!);
        }
      case 'abatementDateTime':
        if (abatementX is FhirDateTimeBuilder) {
          fields.add(abatementX!);
        }
      case 'abatementAge':
        if (abatementX is AgeBuilder) {
          fields.add(abatementX!);
        }
      case 'abatementPeriod':
        if (abatementX is PeriodBuilder) {
          fields.add(abatementX!);
        }
      case 'abatementRange':
        if (abatementX is RangeBuilder) {
          fields.add(abatementX!);
        }
      case 'abatementString':
        if (abatementX is FhirStringBuilder) {
          fields.add(abatementX!);
        }
      case 'recordedDate':
        if (recordedDate != null) {
          fields.add(recordedDate!);
        }
      case 'participant':
        if (participant != null) {
          fields.addAll(participant!);
        }
      case 'stage':
        if (stage != null) {
          fields.addAll(stage!);
        }
      case 'evidence':
        if (evidence != null) {
          fields.addAll(evidence!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
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
      case 'clinicalStatus':
        {
          if (child is CodeableConceptBuilder) {
            clinicalStatus = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'verificationStatus':
        {
          if (child is CodeableConceptBuilder) {
            verificationStatus = child;
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
      case 'severity':
        {
          if (child is CodeableConceptBuilder) {
            severity = child;
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
      case 'bodySite':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            bodySite = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            bodySite = [
              ...(bodySite ?? []),
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
      case 'encounter':
        {
          if (child is ReferenceBuilder) {
            encounter = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'onset':
      case 'onsetX':
        {
          if (child is OnsetXConditionBuilder) {
            onsetX = child;
            return;
          } else {
            if (child is FhirDateTimeBuilder) {
              onsetX = child;
              return;
            }
            if (child is AgeBuilder) {
              onsetX = child;
              return;
            }
            if (child is PeriodBuilder) {
              onsetX = child;
              return;
            }
            if (child is RangeBuilder) {
              onsetX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              onsetX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'onsetDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            onsetX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'onsetAge':
        {
          if (child is AgeBuilder) {
            onsetX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'onsetPeriod':
        {
          if (child is PeriodBuilder) {
            onsetX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'onsetRange':
        {
          if (child is RangeBuilder) {
            onsetX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'onsetString':
        {
          if (child is FhirStringBuilder) {
            onsetX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'abatement':
      case 'abatementX':
        {
          if (child is AbatementXConditionBuilder) {
            abatementX = child;
            return;
          } else {
            if (child is FhirDateTimeBuilder) {
              abatementX = child;
              return;
            }
            if (child is AgeBuilder) {
              abatementX = child;
              return;
            }
            if (child is PeriodBuilder) {
              abatementX = child;
              return;
            }
            if (child is RangeBuilder) {
              abatementX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              abatementX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'abatementDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            abatementX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'abatementAge':
        {
          if (child is AgeBuilder) {
            abatementX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'abatementPeriod':
        {
          if (child is PeriodBuilder) {
            abatementX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'abatementRange':
        {
          if (child is RangeBuilder) {
            abatementX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'abatementString':
        {
          if (child is FhirStringBuilder) {
            abatementX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'recordedDate':
        {
          if (child is FhirDateTimeBuilder) {
            recordedDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                recordedDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'participant':
        {
          if (child is List<ConditionParticipantBuilder>) {
            // Replace or create new list
            participant = child;
            return;
          } else if (child is ConditionParticipantBuilder) {
            // Add single element to existing list or create new list
            participant = [
              ...(participant ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'stage':
        {
          if (child is List<ConditionStageBuilder>) {
            // Replace or create new list
            stage = child;
            return;
          } else if (child is ConditionStageBuilder) {
            // Add single element to existing list or create new list
            stage = [
              ...(stage ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'evidence':
        {
          if (child is List<CodeableReferenceBuilder>) {
            // Replace or create new list
            evidence = child;
            return;
          } else if (child is CodeableReferenceBuilder) {
            // Add single element to existing list or create new list
            evidence = [
              ...(evidence ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'note':
        {
          if (child is List<AnnotationBuilder>) {
            // Replace or create new list
            note = child;
            return;
          } else if (child is AnnotationBuilder) {
            // Add single element to existing list or create new list
            note = [
              ...(note ?? []),
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
      case 'clinicalStatus':
        return ['CodeableConceptBuilder'];
      case 'verificationStatus':
        return ['CodeableConceptBuilder'];
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'severity':
        return ['CodeableConceptBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'bodySite':
        return ['CodeableConceptBuilder'];
      case 'subject':
        return ['ReferenceBuilder'];
      case 'encounter':
        return ['ReferenceBuilder'];
      case 'onset':
      case 'onsetX':
        return [
          'FhirDateTimeBuilder',
          'AgeBuilder',
          'PeriodBuilder',
          'RangeBuilder',
          'FhirStringBuilder',
        ];
      case 'onsetDateTime':
        return ['FhirDateTimeBuilder'];
      case 'onsetAge':
        return ['AgeBuilder'];
      case 'onsetPeriod':
        return ['PeriodBuilder'];
      case 'onsetRange':
        return ['RangeBuilder'];
      case 'onsetString':
        return ['FhirStringBuilder'];
      case 'abatement':
      case 'abatementX':
        return [
          'FhirDateTimeBuilder',
          'AgeBuilder',
          'PeriodBuilder',
          'RangeBuilder',
          'FhirStringBuilder',
        ];
      case 'abatementDateTime':
        return ['FhirDateTimeBuilder'];
      case 'abatementAge':
        return ['AgeBuilder'];
      case 'abatementPeriod':
        return ['PeriodBuilder'];
      case 'abatementRange':
        return ['RangeBuilder'];
      case 'abatementString':
        return ['FhirStringBuilder'];
      case 'recordedDate':
        return ['FhirDateTimeBuilder'];
      case 'participant':
        return ['ConditionParticipantBuilder'];
      case 'stage':
        return ['ConditionStageBuilder'];
      case 'evidence':
        return ['CodeableReferenceBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ConditionBuilder]
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
      case 'clinicalStatus':
        {
          clinicalStatus = CodeableConceptBuilder.empty();
          return;
        }
      case 'verificationStatus':
        {
          verificationStatus = CodeableConceptBuilder.empty();
          return;
        }
      case 'category':
        {
          category = <CodeableConceptBuilder>[];
          return;
        }
      case 'severity':
        {
          severity = CodeableConceptBuilder.empty();
          return;
        }
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
          return;
        }
      case 'bodySite':
        {
          bodySite = <CodeableConceptBuilder>[];
          return;
        }
      case 'subject':
        {
          subject = ReferenceBuilder.empty();
          return;
        }
      case 'encounter':
        {
          encounter = ReferenceBuilder.empty();
          return;
        }
      case 'onset':
      case 'onsetX':
      case 'onsetDateTime':
        {
          onsetX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'onsetAge':
        {
          onsetX = AgeBuilder.empty();
          return;
        }
      case 'onsetPeriod':
        {
          onsetX = PeriodBuilder.empty();
          return;
        }
      case 'onsetRange':
        {
          onsetX = RangeBuilder.empty();
          return;
        }
      case 'onsetString':
        {
          onsetX = FhirStringBuilder.empty();
          return;
        }
      case 'abatement':
      case 'abatementX':
      case 'abatementDateTime':
        {
          abatementX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'abatementAge':
        {
          abatementX = AgeBuilder.empty();
          return;
        }
      case 'abatementPeriod':
        {
          abatementX = PeriodBuilder.empty();
          return;
        }
      case 'abatementRange':
        {
          abatementX = RangeBuilder.empty();
          return;
        }
      case 'abatementString':
        {
          abatementX = FhirStringBuilder.empty();
          return;
        }
      case 'recordedDate':
        {
          recordedDate = FhirDateTimeBuilder.empty();
          return;
        }
      case 'participant':
        {
          participant = <ConditionParticipantBuilder>[];
          return;
        }
      case 'stage':
        {
          stage = <ConditionStageBuilder>[];
          return;
        }
      case 'evidence':
        {
          evidence = <CodeableReferenceBuilder>[];
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ConditionBuilder clone() => throw UnimplementedError();
  @override
  ConditionBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    CodeableConceptBuilder? clinicalStatus,
    CodeableConceptBuilder? verificationStatus,
    List<CodeableConceptBuilder>? category,
    CodeableConceptBuilder? severity,
    CodeableConceptBuilder? code,
    List<CodeableConceptBuilder>? bodySite,
    ReferenceBuilder? subject,
    ReferenceBuilder? encounter,
    OnsetXConditionBuilder? onsetX,
    AbatementXConditionBuilder? abatementX,
    FhirDateTimeBuilder? recordedDate,
    List<ConditionParticipantBuilder>? participant,
    List<ConditionStageBuilder>? stage,
    List<CodeableReferenceBuilder>? evidence,
    List<AnnotationBuilder>? note,
    FhirDateTimeBuilder? onsetDateTime,
    AgeBuilder? onsetAge,
    PeriodBuilder? onsetPeriod,
    RangeBuilder? onsetRange,
    FhirStringBuilder? onsetString,
    FhirDateTimeBuilder? abatementDateTime,
    AgeBuilder? abatementAge,
    PeriodBuilder? abatementPeriod,
    RangeBuilder? abatementRange,
    FhirStringBuilder? abatementString,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = ConditionBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      clinicalStatus: clinicalStatus ?? this.clinicalStatus,
      verificationStatus: verificationStatus ?? this.verificationStatus,
      category: category ?? this.category,
      severity: severity ?? this.severity,
      code: code ?? this.code,
      bodySite: bodySite ?? this.bodySite,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      onsetX: onsetX ??
          onsetDateTime ??
          onsetAge ??
          onsetPeriod ??
          onsetRange ??
          onsetString ??
          this.onsetX,
      abatementX: abatementX ??
          abatementDateTime ??
          abatementAge ??
          abatementPeriod ??
          abatementRange ??
          abatementString ??
          this.abatementX,
      recordedDate: recordedDate ?? this.recordedDate,
      participant: participant ?? this.participant,
      stage: stage ?? this.stage,
      evidence: evidence ?? this.evidence,
      note: note ?? this.note,
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
    if (o is! ConditionBuilder) {
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
      clinicalStatus,
      o.clinicalStatus,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      verificationStatus,
      o.verificationStatus,
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
      severity,
      o.severity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      bodySite,
      o.bodySite,
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
      encounter,
      o.encounter,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      onsetX,
      o.onsetX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      abatementX,
      o.abatementX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      recordedDate,
      o.recordedDate,
    )) {
      return false;
    }
    if (!listEquals<ConditionParticipantBuilder>(
      participant,
      o.participant,
    )) {
      return false;
    }
    if (!listEquals<ConditionStageBuilder>(
      stage,
      o.stage,
    )) {
      return false;
    }
    if (!listEquals<CodeableReferenceBuilder>(
      evidence,
      o.evidence,
    )) {
      return false;
    }
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
    )) {
      return false;
    }
    return true;
  }
}

/// [ConditionParticipantBuilder]
/// Indicates who or what participated in the activities related to the
/// condition and how they were involved.
class ConditionParticipantBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ConditionParticipantBuilder]

  ConditionParticipantBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    this.actor,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Condition.participant',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ConditionParticipantBuilder.empty() => ConditionParticipantBuilder(
        actor: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConditionParticipantBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Condition.participant';
    return ConditionParticipantBuilder(
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
      function_: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'function',
        CodeableConceptBuilder.fromJson,
        '$objectPath.function',
      ),
      actor: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'actor',
        ReferenceBuilder.fromJson,
        '$objectPath.actor',
      ),
    );
  }

  /// Deserialize [ConditionParticipantBuilder]
  /// from a [String] or [YamlMap] object
  factory ConditionParticipantBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConditionParticipantBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConditionParticipantBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConditionParticipantBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConditionParticipantBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConditionParticipantBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ConditionParticipantBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ConditionParticipant';

  /// [function_]
  /// Distinguishes the type of involvement of the actor in the activities
  /// related to the condition.
  CodeableConceptBuilder? function_;

  /// [actor]
  /// Indicates who or what participated in the activities related to the
  /// condition.
  ReferenceBuilder? actor;

  /// Converts a [ConditionParticipantBuilder]
  /// to [ConditionParticipant]
  @override
  ConditionParticipant build() => ConditionParticipant.fromJson(toJson());

  /// Converts a [ConditionParticipantBuilder]
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
    addField('function', function_);
    addField('actor', actor);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'function',
      'actor',
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
      case 'function':
        if (function_ != null) {
          fields.add(function_!);
        }
      case 'actor':
        if (actor != null) {
          fields.add(actor!);
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
      case 'function':
        {
          if (child is CodeableConceptBuilder) {
            function_ = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'actor':
        {
          if (child is ReferenceBuilder) {
            actor = child;
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
      case 'function':
        return ['CodeableConceptBuilder'];
      case 'actor':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ConditionParticipantBuilder]
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
      case 'function':
        {
          function_ = CodeableConceptBuilder.empty();
          return;
        }
      case 'actor':
        {
          actor = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ConditionParticipantBuilder clone() => throw UnimplementedError();
  @override
  ConditionParticipantBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? function_,
    ReferenceBuilder? actor,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ConditionParticipantBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      function_: function_ ?? this.function_,
      actor: actor ?? this.actor,
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
    if (o is! ConditionParticipantBuilder) {
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
      function_,
      o.function_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      actor,
      o.actor,
    )) {
      return false;
    }
    return true;
  }
}

/// [ConditionStageBuilder]
/// A simple summary of the stage such as "Stage 3" or "Early Onset". The
/// determination of the stage is disease-specific, such as cancer,
/// retinopathy of prematurity, kidney diseases, Alzheimer's, or Parkinson
/// disease.
class ConditionStageBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ConditionStageBuilder]

  ConditionStageBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.summary,
    this.assessment,
    this.type,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Condition.stage',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ConditionStageBuilder.empty() => ConditionStageBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConditionStageBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Condition.stage';
    return ConditionStageBuilder(
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
      summary: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'summary',
        CodeableConceptBuilder.fromJson,
        '$objectPath.summary',
      ),
      assessment: (json['assessment'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.assessment',
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
    );
  }

  /// Deserialize [ConditionStageBuilder]
  /// from a [String] or [YamlMap] object
  factory ConditionStageBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConditionStageBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConditionStageBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConditionStageBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConditionStageBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConditionStageBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ConditionStageBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ConditionStage';

  /// [summary]
  /// A simple summary of the stage such as "Stage 3" or "Early Onset". The
  /// determination of the stage is disease-specific, such as cancer,
  /// retinopathy of prematurity, kidney diseases, Alzheimer's, or Parkinson
  /// disease.
  CodeableConceptBuilder? summary;

  /// [assessment]
  /// Reference to a formal record of the evidence on which the staging
  /// assessment is based.
  List<ReferenceBuilder>? assessment;

  /// [type]
  /// The kind of staging, such as pathological or clinical staging.
  CodeableConceptBuilder? type;

  /// Converts a [ConditionStageBuilder]
  /// to [ConditionStage]
  @override
  ConditionStage build() => ConditionStage.fromJson(toJson());

  /// Converts a [ConditionStageBuilder]
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
    addField('summary', summary);
    addField('assessment', assessment);
    addField('type', type);
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
      'assessment',
      'type',
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
      case 'summary':
        if (summary != null) {
          fields.add(summary!);
        }
      case 'assessment':
        if (assessment != null) {
          fields.addAll(assessment!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
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
      case 'summary':
        {
          if (child is CodeableConceptBuilder) {
            summary = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'assessment':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            assessment = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            assessment = [
              ...(assessment ?? []),
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
      case 'summary':
        return ['CodeableConceptBuilder'];
      case 'assessment':
        return ['ReferenceBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ConditionStageBuilder]
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
      case 'summary':
        {
          summary = CodeableConceptBuilder.empty();
          return;
        }
      case 'assessment':
        {
          assessment = <ReferenceBuilder>[];
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ConditionStageBuilder clone() => throw UnimplementedError();
  @override
  ConditionStageBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? summary,
    List<ReferenceBuilder>? assessment,
    CodeableConceptBuilder? type,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ConditionStageBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      summary: summary ?? this.summary,
      assessment: assessment ?? this.assessment,
      type: type ?? this.type,
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
    if (o is! ConditionStageBuilder) {
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
      summary,
      o.summary,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      assessment,
      o.assessment,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    return true;
  }
}
