import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        NutritionIntake,
        NutritionIntakeConsumedItem,
        NutritionIntakeIngredientLabel,
        NutritionIntakePerformer,
        R5ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [NutritionIntakeBuilder]
/// A record of food or fluid that is being consumed by a patient. A
/// NutritionIntake may indicate that the patient may be consuming the food
/// or fluid now or has consumed the food or fluid in the past. The source
/// of this information can be the patient, significant other (such as a
/// family member or spouse), or a clinician. A common scenario where this
/// information is captured is during the history taking process during a
/// patient visit or stay or through an app that tracks food or fluids
/// consumed. The consumption information may come from sources such as the
/// patient's memory, from a nutrition label, or from a clinician
/// documenting observed intake.
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
    this.instantiatesCanonical,
    this.instantiatesUri,
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
    this.consumedItem,
    this.ingredientLabel,
    this.performer,
    this.location,
    this.derivedFrom,
    this.reason,
    this.note,
  })  : occurrenceX = occurrenceX ?? occurrenceDateTime ?? occurrencePeriod,
        reportedX = reportedX ?? reportedBoolean ?? reportedReference,
        super(
          objectPath: 'NutritionIntake',
          resourceType: R5ResourceType.NutritionIntake,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory NutritionIntakeBuilder.empty() => NutritionIntakeBuilder(
        status: EventStatusBuilder.values.first,
        subject: ReferenceBuilder.empty(),
        consumedItem: <NutritionIntakeConsumedItemBuilder>[],
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
      instantiatesCanonical:
          JsonParser.parsePrimitiveList<FhirCanonicalBuilder>(
        json,
        'instantiatesCanonical',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.instantiatesCanonical',
      ),
      instantiatesUri: JsonParser.parsePrimitiveList<FhirUriBuilder>(
        json,
        'instantiatesUri',
        FhirUriBuilder.fromJson,
        '$objectPath.instantiatesUri',
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
      ingredientLabel: (json['ingredientLabel'] as List<dynamic>?)
          ?.map<NutritionIntakeIngredientLabelBuilder>(
            (v) => NutritionIntakeIngredientLabelBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.ingredientLabel',
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

  /// [instantiatesCanonical]
  /// Instantiates FHIR protocol or definition.
  List<FhirCanonicalBuilder>? instantiatesCanonical;

  /// [instantiatesUri]
  /// Instantiates external protocol or definition.
  List<FhirUriBuilder>? instantiatesUri;

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
  /// The person, animal or group who is/was consuming the food or fluid.
  ReferenceBuilder? subject;

  /// [encounter]
  /// The encounter that establishes the context for this NutritionIntake.
  ReferenceBuilder? encounter;

  /// [occurrenceX]
  /// The interval of time during which it is being asserted that the patient
  /// is/was consuming the food or fluid.
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
  /// The person or organization that provided the information about the
  /// consumption of this food or fluid. Note: Use derivedFrom when a
  /// NutritionIntake is derived from other resources.
  ReportedXNutritionIntakeBuilder? reportedX;

  /// Getter for [reportedBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get reportedBoolean =>
      reportedX?.isAs<FhirBooleanBuilder>();

  /// Getter for [reportedReference] as a ReferenceBuilder
  ReferenceBuilder? get reportedReference =>
      reportedX?.isAs<ReferenceBuilder>();

  /// [consumedItem]
  /// What food or fluid product or item was consumed.
  List<NutritionIntakeConsumedItemBuilder>? consumedItem;

  /// [ingredientLabel]
  /// Total nutrient amounts for the whole meal, product, serving, etc.
  List<NutritionIntakeIngredientLabelBuilder>? ingredientLabel;

  /// [performer]
  /// Who performed the intake and how they were involved.
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
  /// A reason, Condition or observation for why the food or fluid is /was
  /// consumed.
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
    addField('instantiatesCanonical', instantiatesCanonical);
    addField('instantiatesUri', instantiatesUri);
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

    addField('consumedItem', consumedItem);
    addField('ingredientLabel', ingredientLabel);
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
      'instantiatesCanonical',
      'instantiatesUri',
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
      'consumedItem',
      'ingredientLabel',
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
      case 'instantiatesCanonical':
        if (instantiatesCanonical != null) {
          fields.addAll(instantiatesCanonical!);
        }
      case 'instantiatesUri':
        if (instantiatesUri != null) {
          fields.addAll(instantiatesUri!);
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
      case 'consumedItem':
        if (consumedItem != null) {
          fields.addAll(consumedItem!);
        }
      case 'ingredientLabel':
        if (ingredientLabel != null) {
          fields.addAll(ingredientLabel!);
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
      case 'instantiatesCanonical':
        {
          if (child is List<FhirCanonicalBuilder>) {
            // Replace or create new list
            instantiatesCanonical = child;
            return;
          } else if (child is FhirCanonicalBuilder) {
            // Add single element to existing list or create new list
            instantiatesCanonical = [
              ...(instantiatesCanonical ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirCanonicalBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirCanonicalBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              instantiatesCanonical = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirCanonicalBuilder.tryParse(stringValue);
              if (converted != null) {
                instantiatesCanonical = [
                  ...(instantiatesCanonical ?? []),
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
      case 'instantiatesUri':
        {
          if (child is List<FhirUriBuilder>) {
            // Replace or create new list
            instantiatesUri = child;
            return;
          } else if (child is FhirUriBuilder) {
            // Add single element to existing list or create new list
            instantiatesUri = [
              ...(instantiatesUri ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirUriBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirUriBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              instantiatesUri = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                instantiatesUri = [
                  ...(instantiatesUri ?? []),
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
      case 'ingredientLabel':
        {
          if (child is List<NutritionIntakeIngredientLabelBuilder>) {
            // Replace or create new list
            ingredientLabel = child;
            return;
          } else if (child is NutritionIntakeIngredientLabelBuilder) {
            // Add single element to existing list or create new list
            ingredientLabel = [
              ...(ingredientLabel ?? []),
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
      case 'instantiatesCanonical':
        return ['FhirCanonicalBuilder'];
      case 'instantiatesUri':
        return ['FhirUriBuilder'];
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
      case 'consumedItem':
        return ['NutritionIntakeConsumedItemBuilder'];
      case 'ingredientLabel':
        return ['NutritionIntakeIngredientLabelBuilder'];
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
      case 'instantiatesCanonical':
        {
          instantiatesCanonical = <FhirCanonicalBuilder>[];
          return;
        }
      case 'instantiatesUri':
        {
          instantiatesUri = <FhirUriBuilder>[];
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
      case 'consumedItem':
        {
          consumedItem = <NutritionIntakeConsumedItemBuilder>[];
          return;
        }
      case 'ingredientLabel':
        {
          ingredientLabel = <NutritionIntakeIngredientLabelBuilder>[];
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
    List<FhirCanonicalBuilder>? instantiatesCanonical,
    List<FhirUriBuilder>? instantiatesUri,
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
    List<NutritionIntakeConsumedItemBuilder>? consumedItem,
    List<NutritionIntakeIngredientLabelBuilder>? ingredientLabel,
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
      instantiatesCanonical:
          instantiatesCanonical ?? this.instantiatesCanonical,
      instantiatesUri: instantiatesUri ?? this.instantiatesUri,
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
      consumedItem: consumedItem ?? this.consumedItem,
      ingredientLabel: ingredientLabel ?? this.ingredientLabel,
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
    if (!listEquals<FhirCanonicalBuilder>(
      instantiatesCanonical,
      o.instantiatesCanonical,
    )) {
      return false;
    }
    if (!listEquals<FhirUriBuilder>(
      instantiatesUri,
      o.instantiatesUri,
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
    if (!listEquals<NutritionIntakeConsumedItemBuilder>(
      consumedItem,
      o.consumedItem,
    )) {
      return false;
    }
    if (!listEquals<NutritionIntakeIngredientLabelBuilder>(
      ingredientLabel,
      o.ingredientLabel,
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

/// [NutritionIntakeConsumedItemBuilder]
/// What food or fluid product or item was consumed.
class NutritionIntakeConsumedItemBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [NutritionIntakeConsumedItemBuilder]

  NutritionIntakeConsumedItemBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.nutritionProduct,
    this.schedule,
    this.amount,
    this.rate,
    this.notConsumed,
    this.notConsumedReason,
    super.disallowExtensions,
  }) : super(
          objectPath: 'NutritionIntake.consumedItem',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory NutritionIntakeConsumedItemBuilder.empty() =>
      NutritionIntakeConsumedItemBuilder(
        type: CodeableConceptBuilder.empty(),
        nutritionProduct: CodeableReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionIntakeConsumedItemBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'NutritionIntake.consumedItem';
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
      rate: JsonParser.parseObject<QuantityBuilder>(
        json,
        'rate',
        QuantityBuilder.fromJson,
        '$objectPath.rate',
      ),
      notConsumed: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'notConsumed',
        FhirBooleanBuilder.fromJson,
        '$objectPath.notConsumed',
      ),
      notConsumedReason: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'notConsumedReason',
        CodeableConceptBuilder.fromJson,
        '$objectPath.notConsumedReason',
      ),
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

  /// [type]
  /// Indicates what a category of item that was consumed: e.g., food, fluid,
  /// enteral, etc.
  CodeableConceptBuilder? type;

  /// [nutritionProduct]
  /// Identifies the food or fluid product that was consumed. This is
  /// potentially a link to a resource representing the details of the food
  /// product (TBD) or a simple attribute carrying a code that identifies the
  /// food from a known list of foods.
  CodeableReferenceBuilder? nutritionProduct;

  /// [schedule]
  /// Scheduled frequency of consumption.
  TimingBuilder? schedule;

  /// [amount]
  /// Quantity of the specified food.
  QuantityBuilder? amount;

  /// [rate]
  /// Rate at which enteral feeding was administered.
  QuantityBuilder? rate;

  /// [notConsumed]
  /// Indicator when a patient is in a setting where it is helpful to know if
  /// food was not consumed, such as it was refused, held (as in tube
  /// feedings), or otherwise not provided. If a consumption is being
  /// recorded from an app, such as MyFitnessPal, this indicator will likely
  /// not be used.
  FhirBooleanBuilder? notConsumed;

  /// [notConsumedReason]
  /// Document the reason the food or fluid was not consumed, such as
  /// refused, held, etc.
  CodeableConceptBuilder? notConsumedReason;

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
    addField('type', type);
    addField('nutritionProduct', nutritionProduct);
    addField('schedule', schedule);
    addField('amount', amount);
    addField('rate', rate);
    addField('notConsumed', notConsumed);
    addField('notConsumedReason', notConsumedReason);
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
      'schedule',
      'amount',
      'rate',
      'notConsumed',
      'notConsumedReason',
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
      case 'schedule':
        if (schedule != null) {
          fields.add(schedule!);
        }
      case 'amount':
        if (amount != null) {
          fields.add(amount!);
        }
      case 'rate':
        if (rate != null) {
          fields.add(rate!);
        }
      case 'notConsumed':
        if (notConsumed != null) {
          fields.add(notConsumed!);
        }
      case 'notConsumedReason':
        if (notConsumedReason != null) {
          fields.add(notConsumedReason!);
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
        {
          if (child is QuantityBuilder) {
            rate = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'notConsumed':
        {
          if (child is FhirBooleanBuilder) {
            notConsumed = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                notConsumed = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'notConsumedReason':
        {
          if (child is CodeableConceptBuilder) {
            notConsumedReason = child;
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
      case 'schedule':
        return ['TimingBuilder'];
      case 'amount':
        return ['QuantityBuilder'];
      case 'rate':
        return ['QuantityBuilder'];
      case 'notConsumed':
        return ['FhirBooleanBuilder'];
      case 'notConsumedReason':
        return ['CodeableConceptBuilder'];
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
        {
          rate = QuantityBuilder.empty();
          return;
        }
      case 'notConsumed':
        {
          notConsumed = FhirBooleanBuilder.empty();
          return;
        }
      case 'notConsumedReason':
        {
          notConsumedReason = CodeableConceptBuilder.empty();
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
    CodeableConceptBuilder? type,
    CodeableReferenceBuilder? nutritionProduct,
    TimingBuilder? schedule,
    QuantityBuilder? amount,
    QuantityBuilder? rate,
    FhirBooleanBuilder? notConsumed,
    CodeableConceptBuilder? notConsumedReason,
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
      type: type ?? this.type,
      nutritionProduct: nutritionProduct ?? this.nutritionProduct,
      schedule: schedule ?? this.schedule,
      amount: amount ?? this.amount,
      rate: rate ?? this.rate,
      notConsumed: notConsumed ?? this.notConsumed,
      notConsumedReason: notConsumedReason ?? this.notConsumedReason,
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
      rate,
      o.rate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      notConsumed,
      o.notConsumed,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      notConsumedReason,
      o.notConsumedReason,
    )) {
      return false;
    }
    return true;
  }
}

/// [NutritionIntakeIngredientLabelBuilder]
/// Total nutrient amounts for the whole meal, product, serving, etc.
class NutritionIntakeIngredientLabelBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [NutritionIntakeIngredientLabelBuilder]

  NutritionIntakeIngredientLabelBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.nutrient,
    this.amount,
    super.disallowExtensions,
  }) : super(
          objectPath: 'NutritionIntake.ingredientLabel',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory NutritionIntakeIngredientLabelBuilder.empty() =>
      NutritionIntakeIngredientLabelBuilder(
        nutrient: CodeableReferenceBuilder.empty(),
        amount: QuantityBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionIntakeIngredientLabelBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'NutritionIntake.ingredientLabel';
    return NutritionIntakeIngredientLabelBuilder(
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
    );
  }

  /// Deserialize [NutritionIntakeIngredientLabelBuilder]
  /// from a [String] or [YamlMap] object
  factory NutritionIntakeIngredientLabelBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionIntakeIngredientLabelBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionIntakeIngredientLabelBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionIntakeIngredientLabelBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionIntakeIngredientLabelBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionIntakeIngredientLabelBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return NutritionIntakeIngredientLabelBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'NutritionIntakeIngredientLabel';

  /// [nutrient]
  /// Total nutrient consumed. This could be a macronutrient (protein, fat,
  /// carbohydrate), or a vitamin and mineral.
  CodeableReferenceBuilder? nutrient;

  /// [amount]
  /// Total amount of nutrient consumed.
  QuantityBuilder? amount;

  /// Converts a [NutritionIntakeIngredientLabelBuilder]
  /// to [NutritionIntakeIngredientLabel]
  @override
  NutritionIntakeIngredientLabel build() =>
      NutritionIntakeIngredientLabel.fromJson(toJson());

  /// Converts a [NutritionIntakeIngredientLabelBuilder]
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
      default:
        return <String>[];
    }
  }

  /// Creates a new [NutritionIntakeIngredientLabelBuilder]
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
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  NutritionIntakeIngredientLabelBuilder clone() => throw UnimplementedError();
  @override
  NutritionIntakeIngredientLabelBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableReferenceBuilder? nutrient,
    QuantityBuilder? amount,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = NutritionIntakeIngredientLabelBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      nutrient: nutrient ?? this.nutrient,
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
    if (o is! NutritionIntakeIngredientLabelBuilder) {
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
    return true;
  }
}

/// [NutritionIntakePerformerBuilder]
/// Who performed the intake and how they were involved.
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
  /// Type of performer.
  CodeableConceptBuilder? function_;

  /// [actor]
  /// Who performed the intake.
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
