import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart'
    show
        NutritionIntake,
        NutritionIntakeConsumedItem,
        NutritionIntakeNotConsumedItem,
        NutritionIntakeNutritionItem,
        NutritionIntakePerformer,
        NutritionIntakeTotalIntake,
        R6ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r6_mapping/fhir_r6_mapping.dart';
import 'package:yaml/yaml.dart';

/// [NutritionIntakeBuilder]
/// A record of intake by a patient. A NutritionIntake may indicate that
/// the patient may be consuming the food (i.e., solid and/or liquid),
/// breastmilk, infant formula, supplements, enteral formula now or has
/// consumed it in the past. The source of this information can be the
/// patient, significant other (such as a family member or spouse), or a
/// clinician. A common scenario where this information is captured is
/// during the history taking process during a patient visit or stay or
/// through an app that tracks food (i.e., solid and/or liquid),
/// breastmilk, infant formula, supplements, enteral formula consumed. The
/// consumption information may come from sources such as the patient's
/// memory, from a nutrition label, or from a clinician documenting
/// observed intake.
class NutritionIntakeBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [NutritionIntakeBuilder]

  NutritionIntakeBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.basedOn,
    this.partOf,
    this.status,
    this.statusReason,
    this.code,
    this.subject,
    this.encounter,
    OccurrenceXNutritionIntakeBuilder? occurrenceX,
    FhirDateTimeBuilder? occurrenceDateTime,
    PeriodBuilder? occurrencePeriod,
    this.recorded,
    ReportedXNutritionIntakeBuilder? reportedX,
    FhirBooleanBuilder? reportedBoolean,
    ReferenceBuilder? reportedReference,
    this.nutritionItem,
    this.performer,
    this.location,
    this.derivedFrom,
    this.reason,
    this.note,
  })  : occurrenceX = occurrenceX ?? occurrenceDateTime ?? occurrencePeriod,
        reportedX = reportedX ?? reportedBoolean ?? reportedReference,
        super(
          objectPath: 'NutritionIntake',
          resourceType: R6ResourceType.NutritionIntake,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory NutritionIntakeBuilder.empty() => NutritionIntakeBuilder(
        status: EventStatusBuilder.values.first,
        subject: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionIntakeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'NutritionIntake';
    return NutritionIntakeBuilder(
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
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.partOf',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<EventStatusBuilder>(
        json,
        'status',
        EventStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      statusReason: (json['statusReason'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.statusReason',
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
      occurrenceX:
          JsonParser.parsePolymorphic<OccurrenceXNutritionIntakeBuilder>(
        json,
        {
          'occurrenceDateTime': FhirDateTimeBuilder.fromJson,
          'occurrencePeriod': PeriodBuilder.fromJson,
        },
        objectPath,
      ),
      recorded: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'recorded',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.recorded',
      ),
      reportedX: JsonParser.parsePolymorphic<ReportedXNutritionIntakeBuilder>(
        json,
        {
          'reportedBoolean': FhirBooleanBuilder.fromJson,
          'reportedReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
      nutritionItem: (json['nutritionItem'] as List<dynamic>?)
          ?.map<NutritionIntakeNutritionItemBuilder>(
            (v) => NutritionIntakeNutritionItemBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.nutritionItem',
              },
            ),
          )
          .toList(),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<NutritionIntakePerformerBuilder>(
            (v) => NutritionIntakePerformerBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.performer',
              },
            ),
          )
          .toList(),
      location: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'location',
        ReferenceBuilder.fromJson,
        '$objectPath.location',
      ),
      derivedFrom: (json['derivedFrom'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.derivedFrom',
              },
            ),
          )
          .toList(),
      reason: (json['reason'] as List<dynamic>?)
          ?.map<CodeableReferenceBuilder>(
            (v) => CodeableReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reason',
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

  /// Deserialize [NutritionIntakeBuilder]
  /// from a [String] or [YamlMap] object
  factory NutritionIntakeBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionIntakeBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionIntakeBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionIntakeBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionIntakeBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionIntakeBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return NutritionIntakeBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'NutritionIntake';

  /// [identifier]
  /// Identifiers associated with this Nutrition Intake that are defined by
  /// business processes and/or used to refer to it when a direct URL
  /// reference to the resource itself is not appropriate. They are business
  /// identifiers assigned to this resource by the performer or other systems
  /// and remain constant as the resource is updated and propagates from
  /// server to server.
  List<IdentifierBuilder>? identifier;

  /// [basedOn]
  /// A plan, proposal or order that is fulfilled in whole or in part by this
  /// event.
  List<ReferenceBuilder>? basedOn;

  /// [partOf]
  /// A larger event of which this particular event is a component or step.
  List<ReferenceBuilder>? partOf;

  /// [status]
  /// A code representing the patient or other source's judgment about the
  /// state of the intake that this assertion is about. Generally, this will
  /// be active or completed.
  EventStatusBuilder? status;

  /// [statusReason]
  /// Captures the reason for the current state of the NutritionIntake.
  List<CodeableConceptBuilder>? statusReason;

  /// [code]
  /// Overall type of nutrition intake.
  CodeableConceptBuilder? code;

  /// [subject]
  /// The person or group who is/was consuming the food (i.e. solid and/or
  /// liquid).
  ReferenceBuilder? subject;

  /// [encounter]
  /// The encounter that establishes the context for this NutritionIntake.
  ReferenceBuilder? encounter;

  /// [occurrenceX]
  /// The interval of time during which it is being asserted that the patient
  /// is/was consuming the food (i.e. solid and/or liquid).
  OccurrenceXNutritionIntakeBuilder? occurrenceX;

  /// Getter for [occurrenceDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get occurrenceDateTime =>
      occurrenceX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [occurrencePeriod] as a PeriodBuilder
  PeriodBuilder? get occurrencePeriod => occurrenceX?.isAs<PeriodBuilder>();

  /// [recorded]
  /// The date when the Nutrition Intake was asserted by the information
  /// source.
  FhirDateTimeBuilder? recorded;

  /// [reportedX]
  /// Indicates if this record was captured as a secondary 'reported' record
  /// rather than as an original primary source-of-truth. It may also
  /// indicate the source that provided the information about the
  /// consumption.
  ReportedXNutritionIntakeBuilder? reportedX;

  /// Getter for [reportedBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get reportedBoolean =>
      reportedX?.isAs<FhirBooleanBuilder>();

  /// Getter for [reportedReference] as a ReferenceBuilder
  ReferenceBuilder? get reportedReference =>
      reportedX?.isAs<ReferenceBuilder>();

  /// [nutritionItem]
  /// The nutrition product intended for consumption and/or administration.
  List<NutritionIntakeNutritionItemBuilder>? nutritionItem;

  /// [performer]
  /// Who or what performed the intake and how they were involved.
  List<NutritionIntakePerformerBuilder>? performer;

  /// [location]
  /// Where the intake occurred.
  ReferenceBuilder? location;

  /// [derivedFrom]
  /// Allows linking the NutritionIntake to the underlying NutritionOrder, or
  /// to other information, such as AllergyIntolerance, that supports or is
  /// used to derive the NutritionIntake.
  List<ReferenceBuilder>? derivedFrom;

  /// [reason]
  /// A reason, Condition or observation for why the food (i.e. solid and/or
  /// liquid) is /was consumed.
  List<CodeableReferenceBuilder>? reason;

  /// [note]
  /// Provides extra information about the Nutrition Intake that is not
  /// conveyed by the other attributes.
  List<AnnotationBuilder>? note;

  /// Converts a [NutritionIntakeBuilder]
  /// to [NutritionIntake]
  @override
  NutritionIntake build() => NutritionIntake.fromJson(toJson());

  /// Converts a [NutritionIntakeBuilder]
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
    addField('basedOn', basedOn);
    addField('partOf', partOf);
    addField('status', status);
    addField('statusReason', statusReason);
    addField('code', code);
    addField('subject', subject);
    addField('encounter', encounter);
    if (occurrenceX != null) {
      final fhirType = occurrenceX!.fhirType;
      addField('occurrence${fhirType.capitalizeFirstLetter()}', occurrenceX);
    }

    addField('recorded', recorded);
    if (reportedX != null) {
      final fhirType = reportedX!.fhirType;
      addField('reported${fhirType.capitalizeFirstLetter()}', reportedX);
    }

    addField('nutritionItem', nutritionItem);
    addField('performer', performer);
    addField('location', location);
    addField('derivedFrom', derivedFrom);
    addField('reason', reason);
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
      'basedOn',
      'partOf',
      'status',
      'statusReason',
      'code',
      'subject',
      'encounter',
      'occurrenceX',
      'recorded',
      'reportedX',
      'nutritionItem',
      'performer',
      'location',
      'derivedFrom',
      'reason',
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
      case 'basedOn':
        if (basedOn != null) {
          fields.addAll(basedOn!);
        }
      case 'partOf':
        if (partOf != null) {
          fields.addAll(partOf!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'statusReason':
        if (statusReason != null) {
          fields.addAll(statusReason!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'occurrence':
        if (occurrenceX != null) {
          fields.add(occurrenceX!);
        }
      case 'occurrenceX':
        if (occurrenceX != null) {
          fields.add(occurrenceX!);
        }
      case 'occurrenceDateTime':
        if (occurrenceX is FhirDateTimeBuilder) {
          fields.add(occurrenceX!);
        }
      case 'occurrencePeriod':
        if (occurrenceX is PeriodBuilder) {
          fields.add(occurrenceX!);
        }
      case 'recorded':
        if (recorded != null) {
          fields.add(recorded!);
        }
      case 'reported':
        if (reportedX != null) {
          fields.add(reportedX!);
        }
      case 'reportedX':
        if (reportedX != null) {
          fields.add(reportedX!);
        }
      case 'reportedBoolean':
        if (reportedX is FhirBooleanBuilder) {
          fields.add(reportedX!);
        }
      case 'reportedReference':
        if (reportedX is ReferenceBuilder) {
          fields.add(reportedX!);
        }
      case 'nutritionItem':
        if (nutritionItem != null) {
          fields.addAll(nutritionItem!);
        }
      case 'performer':
        if (performer != null) {
          fields.addAll(performer!);
        }
      case 'location':
        if (location != null) {
          fields.add(location!);
        }
      case 'derivedFrom':
        if (derivedFrom != null) {
          fields.addAll(derivedFrom!);
        }
      case 'reason':
        if (reason != null) {
          fields.addAll(reason!);
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
      case 'partOf':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            partOf = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            partOf = [
              ...(partOf ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is EventStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = EventStatusBuilder(stringValue);
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
      case 'statusReason':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            statusReason = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            statusReason = [
              ...(statusReason ?? []),
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
      case 'occurrence':
      case 'occurrenceX':
        {
          if (child is OccurrenceXNutritionIntakeBuilder) {
            occurrenceX = child;
            return;
          } else {
            if (child is FhirDateTimeBuilder) {
              occurrenceX = child;
              return;
            }
            if (child is PeriodBuilder) {
              occurrenceX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'occurrenceDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            occurrenceX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'occurrencePeriod':
        {
          if (child is PeriodBuilder) {
            occurrenceX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'recorded':
        {
          if (child is FhirDateTimeBuilder) {
            recorded = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                recorded = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reported':
      case 'reportedX':
        {
          if (child is ReportedXNutritionIntakeBuilder) {
            reportedX = child;
            return;
          } else {
            if (child is FhirBooleanBuilder) {
              reportedX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              reportedX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reportedBoolean':
        {
          if (child is FhirBooleanBuilder) {
            reportedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reportedReference':
        {
          if (child is ReferenceBuilder) {
            reportedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'nutritionItem':
        {
          if (child is List<NutritionIntakeNutritionItemBuilder>) {
            // Replace or create new list
            nutritionItem = child;
            return;
          } else if (child is NutritionIntakeNutritionItemBuilder) {
            // Add single element to existing list or create new list
            nutritionItem = [
              ...(nutritionItem ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'performer':
        {
          if (child is List<NutritionIntakePerformerBuilder>) {
            // Replace or create new list
            performer = child;
            return;
          } else if (child is NutritionIntakePerformerBuilder) {
            // Add single element to existing list or create new list
            performer = [
              ...(performer ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'location':
        {
          if (child is ReferenceBuilder) {
            location = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'derivedFrom':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            derivedFrom = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            derivedFrom = [
              ...(derivedFrom ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reason':
        {
          if (child is List<CodeableReferenceBuilder>) {
            // Replace or create new list
            reason = child;
            return;
          } else if (child is CodeableReferenceBuilder) {
            // Add single element to existing list or create new list
            reason = [
              ...(reason ?? []),
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
      case 'basedOn':
        return ['ReferenceBuilder'];
      case 'partOf':
        return ['ReferenceBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'statusReason':
        return ['CodeableConceptBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'subject':
        return ['ReferenceBuilder'];
      case 'encounter':
        return ['ReferenceBuilder'];
      case 'occurrence':
      case 'occurrenceX':
        return [
          'FhirDateTimeBuilder',
          'PeriodBuilder',
        ];
      case 'occurrenceDateTime':
        return ['FhirDateTimeBuilder'];
      case 'occurrencePeriod':
        return ['PeriodBuilder'];
      case 'recorded':
        return ['FhirDateTimeBuilder'];
      case 'reported':
      case 'reportedX':
        return [
          'FhirBooleanBuilder',
          'ReferenceBuilder',
        ];
      case 'reportedBoolean':
        return ['FhirBooleanBuilder'];
      case 'reportedReference':
        return ['ReferenceBuilder'];
      case 'nutritionItem':
        return ['NutritionIntakeNutritionItemBuilder'];
      case 'performer':
        return ['NutritionIntakePerformerBuilder'];
      case 'location':
        return ['ReferenceBuilder'];
      case 'derivedFrom':
        return ['ReferenceBuilder'];
      case 'reason':
        return ['CodeableReferenceBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [NutritionIntakeBuilder]
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
      case 'basedOn':
        {
          basedOn = <ReferenceBuilder>[];
          return;
        }
      case 'partOf':
        {
          partOf = <ReferenceBuilder>[];
          return;
        }
      case 'status':
        {
          status = EventStatusBuilder.empty();
          return;
        }
      case 'statusReason':
        {
          statusReason = <CodeableConceptBuilder>[];
          return;
        }
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
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
      case 'occurrence':
      case 'occurrenceX':
      case 'occurrenceDateTime':
        {
          occurrenceX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'occurrencePeriod':
        {
          occurrenceX = PeriodBuilder.empty();
          return;
        }
      case 'recorded':
        {
          recorded = FhirDateTimeBuilder.empty();
          return;
        }
      case 'reported':
      case 'reportedX':
      case 'reportedBoolean':
        {
          reportedX = FhirBooleanBuilder.empty();
          return;
        }
      case 'reportedReference':
        {
          reportedX = ReferenceBuilder.empty();
          return;
        }
      case 'nutritionItem':
        {
          nutritionItem = <NutritionIntakeNutritionItemBuilder>[];
          return;
        }
      case 'performer':
        {
          performer = <NutritionIntakePerformerBuilder>[];
          return;
        }
      case 'location':
        {
          location = ReferenceBuilder.empty();
          return;
        }
      case 'derivedFrom':
        {
          derivedFrom = <ReferenceBuilder>[];
          return;
        }
      case 'reason':
        {
          reason = <CodeableReferenceBuilder>[];
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
  NutritionIntakeBuilder clone() => throw UnimplementedError();
  @override
  NutritionIntakeBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    List<ReferenceBuilder>? basedOn,
    List<ReferenceBuilder>? partOf,
    EventStatusBuilder? status,
    List<CodeableConceptBuilder>? statusReason,
    CodeableConceptBuilder? code,
    ReferenceBuilder? subject,
    ReferenceBuilder? encounter,
    OccurrenceXNutritionIntakeBuilder? occurrenceX,
    FhirDateTimeBuilder? recorded,
    ReportedXNutritionIntakeBuilder? reportedX,
    List<NutritionIntakeNutritionItemBuilder>? nutritionItem,
    List<NutritionIntakePerformerBuilder>? performer,
    ReferenceBuilder? location,
    List<ReferenceBuilder>? derivedFrom,
    List<CodeableReferenceBuilder>? reason,
    List<AnnotationBuilder>? note,
    FhirDateTimeBuilder? occurrenceDateTime,
    PeriodBuilder? occurrencePeriod,
    FhirBooleanBuilder? reportedBoolean,
    ReferenceBuilder? reportedReference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = NutritionIntakeBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      basedOn: basedOn ?? this.basedOn,
      partOf: partOf ?? this.partOf,
      status: status ?? this.status,
      statusReason: statusReason ?? this.statusReason,
      code: code ?? this.code,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      occurrenceX: occurrenceX ??
          occurrenceDateTime ??
          occurrencePeriod ??
          this.occurrenceX,
      recorded: recorded ?? this.recorded,
      reportedX:
          reportedX ?? reportedBoolean ?? reportedReference ?? this.reportedX,
      nutritionItem: nutritionItem ?? this.nutritionItem,
      performer: performer ?? this.performer,
      location: location ?? this.location,
      derivedFrom: derivedFrom ?? this.derivedFrom,
      reason: reason ?? this.reason,
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
    if (o is! NutritionIntakeBuilder) {
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
    if (!listEquals<ReferenceBuilder>(
      basedOn,
      o.basedOn,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      partOf,
      o.partOf,
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
      statusReason,
      o.statusReason,
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
      occurrenceX,
      o.occurrenceX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      recorded,
      o.recorded,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reportedX,
      o.reportedX,
    )) {
      return false;
    }
    if (!listEquals<NutritionIntakeNutritionItemBuilder>(
      nutritionItem,
      o.nutritionItem,
    )) {
      return false;
    }
    if (!listEquals<NutritionIntakePerformerBuilder>(
      performer,
      o.performer,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      location,
      o.location,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      derivedFrom,
      o.derivedFrom,
    )) {
      return false;
    }
    if (!listEquals<CodeableReferenceBuilder>(
      reason,
      o.reason,
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

/// [NutritionIntakeNutritionItemBuilder]
/// The nutrition product intended for consumption and/or administration.
class NutritionIntakeNutritionItemBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [NutritionIntakeNutritionItemBuilder]

  NutritionIntakeNutritionItemBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.nutritionProduct,
    this.consumedItem,
    this.notConsumedItem,
    super.disallowExtensions,
  }) : super(
          objectPath: 'NutritionIntake.nutritionItem',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory NutritionIntakeNutritionItemBuilder.empty() =>
      NutritionIntakeNutritionItemBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionIntakeNutritionItemBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'NutritionIntake.nutritionItem';
    return NutritionIntakeNutritionItemBuilder(
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
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      nutritionProduct: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'nutritionProduct',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.nutritionProduct',
      ),
      consumedItem: (json['consumedItem'] as List<dynamic>?)
          ?.map<NutritionIntakeConsumedItemBuilder>(
            (v) => NutritionIntakeConsumedItemBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.consumedItem',
              },
            ),
          )
          .toList(),
      notConsumedItem: (json['notConsumedItem'] as List<dynamic>?)
          ?.map<NutritionIntakeNotConsumedItemBuilder>(
            (v) => NutritionIntakeNotConsumedItemBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.notConsumedItem',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [NutritionIntakeNutritionItemBuilder]
  /// from a [String] or [YamlMap] object
  factory NutritionIntakeNutritionItemBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionIntakeNutritionItemBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionIntakeNutritionItemBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionIntakeNutritionItemBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionIntakeNutritionItemBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionIntakeNutritionItemBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return NutritionIntakeNutritionItemBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'NutritionIntakeNutritionItem';

  /// [type]
  /// Indicates what a category of item that is intended to be consumed:
  /// e.g., food (i.e. solid and/or liquid), breastmilk, infant formula,
  /// supplements, enteral formula.
  CodeableConceptBuilder? type;

  /// [nutritionProduct]
  /// Identifies the food (i.e. solid and/or liquid) product that is to be
  /// consumed. This is potentially a link to a resource representing the
  /// details of the food product or a simple attribute carrying a code that
  /// identifies the food from a known list of foods.
  CodeableReferenceBuilder? nutritionProduct;

  /// [consumedItem]
  /// What nutrition item was consumed.
  List<NutritionIntakeConsumedItemBuilder>? consumedItem;

  /// [notConsumedItem]
  /// What nutrition item was not consumed.
  List<NutritionIntakeNotConsumedItemBuilder>? notConsumedItem;

  /// Converts a [NutritionIntakeNutritionItemBuilder]
  /// to [NutritionIntakeNutritionItem]
  @override
  NutritionIntakeNutritionItem build() =>
      NutritionIntakeNutritionItem.fromJson(toJson());

  /// Converts a [NutritionIntakeNutritionItemBuilder]
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
    addField('type', type);
    addField('nutritionProduct', nutritionProduct);
    addField('consumedItem', consumedItem);
    addField('notConsumedItem', notConsumedItem);
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
      'nutritionProduct',
      'consumedItem',
      'notConsumedItem',
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'nutritionProduct':
        if (nutritionProduct != null) {
          fields.add(nutritionProduct!);
        }
      case 'consumedItem':
        if (consumedItem != null) {
          fields.addAll(consumedItem!);
        }
      case 'notConsumedItem':
        if (notConsumedItem != null) {
          fields.addAll(notConsumedItem!);
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
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'nutritionProduct':
        {
          if (child is CodeableReferenceBuilder) {
            nutritionProduct = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'consumedItem':
        {
          if (child is List<NutritionIntakeConsumedItemBuilder>) {
            // Replace or create new list
            consumedItem = child;
            return;
          } else if (child is NutritionIntakeConsumedItemBuilder) {
            // Add single element to existing list or create new list
            consumedItem = [
              ...(consumedItem ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'notConsumedItem':
        {
          if (child is List<NutritionIntakeNotConsumedItemBuilder>) {
            // Replace or create new list
            notConsumedItem = child;
            return;
          } else if (child is NutritionIntakeNotConsumedItemBuilder) {
            // Add single element to existing list or create new list
            notConsumedItem = [
              ...(notConsumedItem ?? []),
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
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'nutritionProduct':
        return ['CodeableReferenceBuilder'];
      case 'consumedItem':
        return ['NutritionIntakeConsumedItemBuilder'];
      case 'notConsumedItem':
        return ['NutritionIntakeNotConsumedItemBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [NutritionIntakeNutritionItemBuilder]
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
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'nutritionProduct':
        {
          nutritionProduct = CodeableReferenceBuilder.empty();
          return;
        }
      case 'consumedItem':
        {
          consumedItem = <NutritionIntakeConsumedItemBuilder>[];
          return;
        }
      case 'notConsumedItem':
        {
          notConsumedItem = <NutritionIntakeNotConsumedItemBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  NutritionIntakeNutritionItemBuilder clone() => throw UnimplementedError();
  @override
  NutritionIntakeNutritionItemBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    CodeableReferenceBuilder? nutritionProduct,
    List<NutritionIntakeConsumedItemBuilder>? consumedItem,
    List<NutritionIntakeNotConsumedItemBuilder>? notConsumedItem,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = NutritionIntakeNutritionItemBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      nutritionProduct: nutritionProduct ?? this.nutritionProduct,
      consumedItem: consumedItem ?? this.consumedItem,
      notConsumedItem: notConsumedItem ?? this.notConsumedItem,
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
    if (o is! NutritionIntakeNutritionItemBuilder) {
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
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      nutritionProduct,
      o.nutritionProduct,
    )) {
      return false;
    }
    if (!listEquals<NutritionIntakeConsumedItemBuilder>(
      consumedItem,
      o.consumedItem,
    )) {
      return false;
    }
    if (!listEquals<NutritionIntakeNotConsumedItemBuilder>(
      notConsumedItem,
      o.notConsumedItem,
    )) {
      return false;
    }
    return true;
  }
}

/// [NutritionIntakeConsumedItemBuilder]
/// What nutrition item was consumed.
class NutritionIntakeConsumedItemBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [NutritionIntakeConsumedItemBuilder]

  NutritionIntakeConsumedItemBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.schedule,
    this.amount,
    RateXNutritionIntakeConsumedItemBuilder? rateX,
    QuantityBuilder? rateQuantity,
    RatioBuilder? rateRatio,
    this.totalIntake,
    super.disallowExtensions,
  })  : rateX = rateX ?? rateQuantity ?? rateRatio,
        super(
          objectPath: 'NutritionIntake.nutritionItem.consumedItem',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory NutritionIntakeConsumedItemBuilder.empty() =>
      NutritionIntakeConsumedItemBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionIntakeConsumedItemBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'NutritionIntake.nutritionItem.consumedItem';
    return NutritionIntakeConsumedItemBuilder(
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
      schedule: JsonParser.parseObject<TimingBuilder>(
        json,
        'schedule',
        TimingBuilder.fromJson,
        '$objectPath.schedule',
      ),
      amount: JsonParser.parseObject<QuantityBuilder>(
        json,
        'amount',
        QuantityBuilder.fromJson,
        '$objectPath.amount',
      ),
      rateX:
          JsonParser.parsePolymorphic<RateXNutritionIntakeConsumedItemBuilder>(
        json,
        {
          'rateQuantity': QuantityBuilder.fromJson,
          'rateRatio': RatioBuilder.fromJson,
        },
        objectPath,
      ),
      totalIntake: (json['totalIntake'] as List<dynamic>?)
          ?.map<NutritionIntakeTotalIntakeBuilder>(
            (v) => NutritionIntakeTotalIntakeBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.totalIntake',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [NutritionIntakeConsumedItemBuilder]
  /// from a [String] or [YamlMap] object
  factory NutritionIntakeConsumedItemBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionIntakeConsumedItemBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionIntakeConsumedItemBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionIntakeConsumedItemBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionIntakeConsumedItemBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionIntakeConsumedItemBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return NutritionIntakeConsumedItemBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'NutritionIntakeConsumedItem';

  /// [schedule]
  /// Scheduled frequency of consumption.
  TimingBuilder? schedule;

  /// [amount]
  /// Quantity of the specified food (i.e. solid and/or liquid).
  QuantityBuilder? amount;

  /// [rateX]
  /// Rate of enteral feeding administration.
  RateXNutritionIntakeConsumedItemBuilder? rateX;

  /// Getter for [rateQuantity] as a QuantityBuilder
  QuantityBuilder? get rateQuantity => rateX?.isAs<QuantityBuilder>();

  /// Getter for [rateRatio] as a RatioBuilder
  RatioBuilder? get rateRatio => rateX?.isAs<RatioBuilder>();

  /// [totalIntake]
  /// Nutrients and/or energy contained in the intake.
  List<NutritionIntakeTotalIntakeBuilder>? totalIntake;

  /// Converts a [NutritionIntakeConsumedItemBuilder]
  /// to [NutritionIntakeConsumedItem]
  @override
  NutritionIntakeConsumedItem build() =>
      NutritionIntakeConsumedItem.fromJson(toJson());

  /// Converts a [NutritionIntakeConsumedItemBuilder]
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
    addField('schedule', schedule);
    addField('amount', amount);
    if (rateX != null) {
      final fhirType = rateX!.fhirType;
      addField('rate${fhirType.capitalizeFirstLetter()}', rateX);
    }

    addField('totalIntake', totalIntake);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'schedule',
      'amount',
      'rateX',
      'totalIntake',
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
      case 'schedule':
        if (schedule != null) {
          fields.add(schedule!);
        }
      case 'amount':
        if (amount != null) {
          fields.add(amount!);
        }
      case 'rate':
        if (rateX != null) {
          fields.add(rateX!);
        }
      case 'rateX':
        if (rateX != null) {
          fields.add(rateX!);
        }
      case 'rateQuantity':
        if (rateX is QuantityBuilder) {
          fields.add(rateX!);
        }
      case 'rateRatio':
        if (rateX is RatioBuilder) {
          fields.add(rateX!);
        }
      case 'totalIntake':
        if (totalIntake != null) {
          fields.addAll(totalIntake!);
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
      case 'schedule':
        {
          if (child is TimingBuilder) {
            schedule = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'amount':
        {
          if (child is QuantityBuilder) {
            amount = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'rate':
      case 'rateX':
        {
          if (child is RateXNutritionIntakeConsumedItemBuilder) {
            rateX = child;
            return;
          } else {
            if (child is QuantityBuilder) {
              rateX = child;
              return;
            }
            if (child is RatioBuilder) {
              rateX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'rateQuantity':
        {
          if (child is QuantityBuilder) {
            rateX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'rateRatio':
        {
          if (child is RatioBuilder) {
            rateX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'totalIntake':
        {
          if (child is List<NutritionIntakeTotalIntakeBuilder>) {
            // Replace or create new list
            totalIntake = child;
            return;
          } else if (child is NutritionIntakeTotalIntakeBuilder) {
            // Add single element to existing list or create new list
            totalIntake = [
              ...(totalIntake ?? []),
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
      case 'schedule':
        return ['TimingBuilder'];
      case 'amount':
        return ['QuantityBuilder'];
      case 'rate':
      case 'rateX':
        return [
          'QuantityBuilder',
          'RatioBuilder',
        ];
      case 'rateQuantity':
        return ['QuantityBuilder'];
      case 'rateRatio':
        return ['RatioBuilder'];
      case 'totalIntake':
        return ['NutritionIntakeTotalIntakeBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [NutritionIntakeConsumedItemBuilder]
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
      case 'schedule':
        {
          schedule = TimingBuilder.empty();
          return;
        }
      case 'amount':
        {
          amount = QuantityBuilder.empty();
          return;
        }
      case 'rate':
      case 'rateX':
      case 'rateQuantity':
        {
          rateX = QuantityBuilder.empty();
          return;
        }
      case 'rateRatio':
        {
          rateX = RatioBuilder.empty();
          return;
        }
      case 'totalIntake':
        {
          totalIntake = <NutritionIntakeTotalIntakeBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  NutritionIntakeConsumedItemBuilder clone() => throw UnimplementedError();
  @override
  NutritionIntakeConsumedItemBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    TimingBuilder? schedule,
    QuantityBuilder? amount,
    RateXNutritionIntakeConsumedItemBuilder? rateX,
    List<NutritionIntakeTotalIntakeBuilder>? totalIntake,
    QuantityBuilder? rateQuantity,
    RatioBuilder? rateRatio,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = NutritionIntakeConsumedItemBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      schedule: schedule ?? this.schedule,
      amount: amount ?? this.amount,
      rateX: rateX ?? rateQuantity ?? rateRatio ?? this.rateX,
      totalIntake: totalIntake ?? this.totalIntake,
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
    if (o is! NutritionIntakeConsumedItemBuilder) {
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
      schedule,
      o.schedule,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      amount,
      o.amount,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      rateX,
      o.rateX,
    )) {
      return false;
    }
    if (!listEquals<NutritionIntakeTotalIntakeBuilder>(
      totalIntake,
      o.totalIntake,
    )) {
      return false;
    }
    return true;
  }
}

/// [NutritionIntakeTotalIntakeBuilder]
/// Nutrients and/or energy contained in the intake.
class NutritionIntakeTotalIntakeBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [NutritionIntakeTotalIntakeBuilder]

  NutritionIntakeTotalIntakeBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.nutrient,
    this.amount,
    this.energy,
    super.disallowExtensions,
  }) : super(
          objectPath: 'NutritionIntake.nutritionItem.consumedItem.totalIntake',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory NutritionIntakeTotalIntakeBuilder.empty() =>
      NutritionIntakeTotalIntakeBuilder(
        nutrient: CodeableReferenceBuilder.empty(),
        amount: QuantityBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionIntakeTotalIntakeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'NutritionIntake.nutritionItem.consumedItem.totalIntake';
    return NutritionIntakeTotalIntakeBuilder(
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
      nutrient: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'nutrient',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.nutrient',
      ),
      amount: JsonParser.parseObject<QuantityBuilder>(
        json,
        'amount',
        QuantityBuilder.fromJson,
        '$objectPath.amount',
      ),
      energy: JsonParser.parseObject<QuantityBuilder>(
        json,
        'energy',
        QuantityBuilder.fromJson,
        '$objectPath.energy',
      ),
    );
  }

  /// Deserialize [NutritionIntakeTotalIntakeBuilder]
  /// from a [String] or [YamlMap] object
  factory NutritionIntakeTotalIntakeBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionIntakeTotalIntakeBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionIntakeTotalIntakeBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionIntakeTotalIntakeBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionIntakeTotalIntakeBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionIntakeTotalIntakeBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return NutritionIntakeTotalIntakeBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'NutritionIntakeTotalIntake';

  /// [nutrient]
  /// Type of nutrient consumed. This could be a macronutrient (protein, fat,
  /// carbohydrate), or a vitamin and mineral.
  CodeableReferenceBuilder? nutrient;

  /// [amount]
  /// Total amount of nutrient consumed.
  QuantityBuilder? amount;

  /// [energy]
  /// Total energy consumed in kilocalories or kilojoules.
  QuantityBuilder? energy;

  /// Converts a [NutritionIntakeTotalIntakeBuilder]
  /// to [NutritionIntakeTotalIntake]
  @override
  NutritionIntakeTotalIntake build() =>
      NutritionIntakeTotalIntake.fromJson(toJson());

  /// Converts a [NutritionIntakeTotalIntakeBuilder]
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
    addField('nutrient', nutrient);
    addField('amount', amount);
    addField('energy', energy);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'nutrient',
      'amount',
      'energy',
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
      case 'nutrient':
        if (nutrient != null) {
          fields.add(nutrient!);
        }
      case 'amount':
        if (amount != null) {
          fields.add(amount!);
        }
      case 'energy':
        if (energy != null) {
          fields.add(energy!);
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
      case 'nutrient':
        {
          if (child is CodeableReferenceBuilder) {
            nutrient = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'amount':
        {
          if (child is QuantityBuilder) {
            amount = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'energy':
        {
          if (child is QuantityBuilder) {
            energy = child;
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
      case 'nutrient':
        return ['CodeableReferenceBuilder'];
      case 'amount':
        return ['QuantityBuilder'];
      case 'energy':
        return ['QuantityBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [NutritionIntakeTotalIntakeBuilder]
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
      case 'nutrient':
        {
          nutrient = CodeableReferenceBuilder.empty();
          return;
        }
      case 'amount':
        {
          amount = QuantityBuilder.empty();
          return;
        }
      case 'energy':
        {
          energy = QuantityBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  NutritionIntakeTotalIntakeBuilder clone() => throw UnimplementedError();
  @override
  NutritionIntakeTotalIntakeBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableReferenceBuilder? nutrient,
    QuantityBuilder? amount,
    QuantityBuilder? energy,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = NutritionIntakeTotalIntakeBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      nutrient: nutrient ?? this.nutrient,
      amount: amount ?? this.amount,
      energy: energy ?? this.energy,
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
    if (o is! NutritionIntakeTotalIntakeBuilder) {
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
      nutrient,
      o.nutrient,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      amount,
      o.amount,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      energy,
      o.energy,
    )) {
      return false;
    }
    return true;
  }
}

/// [NutritionIntakeNotConsumedItemBuilder]
/// What nutrition item was not consumed.
class NutritionIntakeNotConsumedItemBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [NutritionIntakeNotConsumedItemBuilder]

  NutritionIntakeNotConsumedItemBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.reason,
    this.schedule,
    this.amount,
    super.disallowExtensions,
  }) : super(
          objectPath: 'NutritionIntake.nutritionItem.notConsumedItem',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory NutritionIntakeNotConsumedItemBuilder.empty() =>
      NutritionIntakeNotConsumedItemBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionIntakeNotConsumedItemBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'NutritionIntake.nutritionItem.notConsumedItem';
    return NutritionIntakeNotConsumedItemBuilder(
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
      reason: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'reason',
        CodeableConceptBuilder.fromJson,
        '$objectPath.reason',
      ),
      schedule: JsonParser.parseObject<TimingBuilder>(
        json,
        'schedule',
        TimingBuilder.fromJson,
        '$objectPath.schedule',
      ),
      amount: JsonParser.parseObject<QuantityBuilder>(
        json,
        'amount',
        QuantityBuilder.fromJson,
        '$objectPath.amount',
      ),
    );
  }

  /// Deserialize [NutritionIntakeNotConsumedItemBuilder]
  /// from a [String] or [YamlMap] object
  factory NutritionIntakeNotConsumedItemBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionIntakeNotConsumedItemBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionIntakeNotConsumedItemBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionIntakeNotConsumedItemBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionIntakeNotConsumedItemBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionIntakeNotConsumedItemBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return NutritionIntakeNotConsumedItemBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'NutritionIntakeNotConsumedItem';

  /// [reason]
  /// Document the reason the nutrition item was not consumed, such as
  /// refused, held, etc.
  CodeableConceptBuilder? reason;

  /// [schedule]
  /// The intended frequency of consumption that was not followed.
  TimingBuilder? schedule;

  /// [amount]
  /// Quantity of the specified food (i.e. solid and/or liquid) that was not
  /// consumed.
  QuantityBuilder? amount;

  /// Converts a [NutritionIntakeNotConsumedItemBuilder]
  /// to [NutritionIntakeNotConsumedItem]
  @override
  NutritionIntakeNotConsumedItem build() =>
      NutritionIntakeNotConsumedItem.fromJson(toJson());

  /// Converts a [NutritionIntakeNotConsumedItemBuilder]
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
    addField('reason', reason);
    addField('schedule', schedule);
    addField('amount', amount);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'reason',
      'schedule',
      'amount',
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
      case 'reason':
        if (reason != null) {
          fields.add(reason!);
        }
      case 'schedule':
        if (schedule != null) {
          fields.add(schedule!);
        }
      case 'amount':
        if (amount != null) {
          fields.add(amount!);
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
      case 'reason':
        {
          if (child is CodeableConceptBuilder) {
            reason = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'schedule':
        {
          if (child is TimingBuilder) {
            schedule = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'amount':
        {
          if (child is QuantityBuilder) {
            amount = child;
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
      case 'reason':
        return ['CodeableConceptBuilder'];
      case 'schedule':
        return ['TimingBuilder'];
      case 'amount':
        return ['QuantityBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [NutritionIntakeNotConsumedItemBuilder]
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
      case 'reason':
        {
          reason = CodeableConceptBuilder.empty();
          return;
        }
      case 'schedule':
        {
          schedule = TimingBuilder.empty();
          return;
        }
      case 'amount':
        {
          amount = QuantityBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  NutritionIntakeNotConsumedItemBuilder clone() => throw UnimplementedError();
  @override
  NutritionIntakeNotConsumedItemBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? reason,
    TimingBuilder? schedule,
    QuantityBuilder? amount,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = NutritionIntakeNotConsumedItemBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      reason: reason ?? this.reason,
      schedule: schedule ?? this.schedule,
      amount: amount ?? this.amount,
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
    if (o is! NutritionIntakeNotConsumedItemBuilder) {
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
      reason,
      o.reason,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      schedule,
      o.schedule,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      amount,
      o.amount,
    )) {
      return false;
    }
    return true;
  }
}

/// [NutritionIntakePerformerBuilder]
/// Who or what performed the intake and how they were involved.
class NutritionIntakePerformerBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [NutritionIntakePerformerBuilder]

  NutritionIntakePerformerBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    this.actor,
    super.disallowExtensions,
  }) : super(
          objectPath: 'NutritionIntake.performer',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory NutritionIntakePerformerBuilder.empty() =>
      NutritionIntakePerformerBuilder(
        actor: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionIntakePerformerBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'NutritionIntake.performer';
    return NutritionIntakePerformerBuilder(
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

  /// Deserialize [NutritionIntakePerformerBuilder]
  /// from a [String] or [YamlMap] object
  factory NutritionIntakePerformerBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionIntakePerformerBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionIntakePerformerBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionIntakePerformerBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionIntakePerformerBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionIntakePerformerBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return NutritionIntakePerformerBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'NutritionIntakePerformer';

  /// [function_]
  /// Type of performance.
  CodeableConceptBuilder? function_;

  /// [actor]
  /// Who or what performed the intake.
  ReferenceBuilder? actor;

  /// Converts a [NutritionIntakePerformerBuilder]
  /// to [NutritionIntakePerformer]
  @override
  NutritionIntakePerformer build() =>
      NutritionIntakePerformer.fromJson(toJson());

  /// Converts a [NutritionIntakePerformerBuilder]
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

  /// Creates a new [NutritionIntakePerformerBuilder]
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
  NutritionIntakePerformerBuilder clone() => throw UnimplementedError();
  @override
  NutritionIntakePerformerBuilder copyWith({
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
    final newResult = NutritionIntakePerformerBuilder(
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
    if (o is! NutritionIntakePerformerBuilder) {
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
