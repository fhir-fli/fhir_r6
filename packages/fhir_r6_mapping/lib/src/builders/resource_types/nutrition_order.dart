import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        NutritionOrder,
        NutritionOrderAdditive,
        NutritionOrderAdministration,
        NutritionOrderEnteralFormula,
        NutritionOrderNutrient,
        NutritionOrderOralDiet,
        NutritionOrderSchedule,
        NutritionOrderSchedule1,
        NutritionOrderSchedule2,
        NutritionOrderSupplement,
        NutritionOrderTexture,
        R5ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [NutritionOrderBuilder]
/// A request to supply a diet, formula feeding (enteral) or oral
/// nutritional supplement to a patient/resident.
class NutritionOrderBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [NutritionOrderBuilder]

  NutritionOrderBuilder({
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
    this.instantiates,
    this.basedOn,
    this.groupIdentifier,
    this.status,
    this.intent,
    this.priority,
    this.subject,
    this.encounter,
    this.supportingInformation,
    this.dateTime,
    this.orderer,
    this.performer,
    this.allergyIntolerance,
    this.foodPreferenceModifier,
    this.excludeFoodModifier,
    this.outsideFoodAllowed,
    this.oralDiet,
    this.supplement,
    this.enteralFormula,
    this.note,
  }) : super(
          objectPath: 'NutritionOrder',
          resourceType: R5ResourceType.NutritionOrder,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory NutritionOrderBuilder.empty() => NutritionOrderBuilder(
        status: RequestStatusBuilder.values.first,
        intent: RequestIntentBuilder.values.first,
        subject: ReferenceBuilder.empty(),
        dateTime: FhirDateTimeBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionOrderBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'NutritionOrder';
    return NutritionOrderBuilder(
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
      instantiates: JsonParser.parsePrimitiveList<FhirUriBuilder>(
        json,
        'instantiates',
        FhirUriBuilder.fromJson,
        '$objectPath.instantiates',
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
      groupIdentifier: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'groupIdentifier',
        IdentifierBuilder.fromJson,
        '$objectPath.groupIdentifier',
      ),
      status: JsonParser.parsePrimitive<RequestStatusBuilder>(
        json,
        'status',
        RequestStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      intent: JsonParser.parsePrimitive<RequestIntentBuilder>(
        json,
        'intent',
        RequestIntentBuilder.fromJson,
        '$objectPath.intent',
      ),
      priority: JsonParser.parsePrimitive<RequestPriorityBuilder>(
        json,
        'priority',
        RequestPriorityBuilder.fromJson,
        '$objectPath.priority',
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
      supportingInformation: (json['supportingInformation'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.supportingInformation',
              },
            ),
          )
          .toList(),
      dateTime: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'dateTime',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.dateTime',
      ),
      orderer: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'orderer',
        ReferenceBuilder.fromJson,
        '$objectPath.orderer',
      ),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<CodeableReferenceBuilder>(
            (v) => CodeableReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.performer',
              },
            ),
          )
          .toList(),
      allergyIntolerance: (json['allergyIntolerance'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.allergyIntolerance',
              },
            ),
          )
          .toList(),
      foodPreferenceModifier: (json['foodPreferenceModifier'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.foodPreferenceModifier',
              },
            ),
          )
          .toList(),
      excludeFoodModifier: (json['excludeFoodModifier'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.excludeFoodModifier',
              },
            ),
          )
          .toList(),
      outsideFoodAllowed: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'outsideFoodAllowed',
        FhirBooleanBuilder.fromJson,
        '$objectPath.outsideFoodAllowed',
      ),
      oralDiet: JsonParser.parseObject<NutritionOrderOralDietBuilder>(
        json,
        'oralDiet',
        NutritionOrderOralDietBuilder.fromJson,
        '$objectPath.oralDiet',
      ),
      supplement: (json['supplement'] as List<dynamic>?)
          ?.map<NutritionOrderSupplementBuilder>(
            (v) => NutritionOrderSupplementBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.supplement',
              },
            ),
          )
          .toList(),
      enteralFormula:
          JsonParser.parseObject<NutritionOrderEnteralFormulaBuilder>(
        json,
        'enteralFormula',
        NutritionOrderEnteralFormulaBuilder.fromJson,
        '$objectPath.enteralFormula',
      ),
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

  /// Deserialize [NutritionOrderBuilder]
  /// from a [String] or [YamlMap] object
  factory NutritionOrderBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionOrderBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionOrderBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionOrderBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionOrderBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionOrderBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return NutritionOrderBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'NutritionOrder';

  /// [identifier]
  /// Identifiers assigned to this order by the order sender or by the order
  /// receiver.
  List<IdentifierBuilder>? identifier;

  /// [instantiatesCanonical]
  /// The URL pointing to a FHIR-defined protocol, guideline, orderset or
  /// other definition that is adhered to in whole or in part by this
  /// NutritionOrder.
  List<FhirCanonicalBuilder>? instantiatesCanonical;

  /// [instantiatesUri]
  /// The URL pointing to an externally maintained protocol, guideline,
  /// orderset or other definition that is adhered to in whole or in part by
  /// this NutritionOrder.
  List<FhirUriBuilder>? instantiatesUri;

  /// [instantiates]
  /// The URL pointing to a protocol, guideline, orderset or other definition
  /// that is adhered to in whole or in part by this NutritionOrder.
  List<FhirUriBuilder>? instantiates;

  /// [basedOn]
  /// A plan or request that is fulfilled in whole or in part by this
  /// nutrition order.
  List<ReferenceBuilder>? basedOn;

  /// [groupIdentifier]
  /// A shared identifier common to all nutrition orders that were authorized
  /// more or less simultaneously by a single author, representing the
  /// composite or group identifier.
  IdentifierBuilder? groupIdentifier;

  /// [status]
  /// The workflow status of the nutrition order/request.
  RequestStatusBuilder? status;

  /// [intent]
  /// Indicates the level of authority/intentionality associated with the
  /// NutrionOrder and where the request fits into the workflow chain.
  RequestIntentBuilder? intent;

  /// [priority]
  /// Indicates how quickly the Nutrition Order should be addressed with
  /// respect to other requests.
  RequestPriorityBuilder? priority;

  /// [subject]
  /// The person or set of individuals who needs the nutrition order for an
  /// oral diet, nutritional supplement and/or enteral or formula feeding.
  ReferenceBuilder? subject;

  /// [encounter]
  /// An encounter that provides additional information about the healthcare
  /// context in which this request is made.
  ReferenceBuilder? encounter;

  /// [supportingInformation]
  /// Information to support fulfilling (i.e. dispensing or administering) of
  /// the nutrition, for example, patient height and weight).
  List<ReferenceBuilder>? supportingInformation;

  /// [dateTime]
  /// The date and time that this nutrition order was requested.
  FhirDateTimeBuilder? dateTime;

  /// [orderer]
  /// The practitioner that holds legal responsibility for ordering the diet,
  /// nutritional supplement, or formula feedings.
  ReferenceBuilder? orderer;

  /// [performer]
  /// The specified desired performer of the nutrition order.
  List<CodeableReferenceBuilder>? performer;

  /// [allergyIntolerance]
  /// A link to a record of allergies or intolerances which should be
  /// included in the nutrition order.
  List<ReferenceBuilder>? allergyIntolerance;

  /// [foodPreferenceModifier]
  /// This modifier is used to convey order-specific modifiers about the type
  /// of food that should be given. These can be derived from patient
  /// allergies, intolerances, or preferences such as Halal, Vegan or Kosher.
  /// This modifier applies to the entire nutrition order inclusive of the
  /// oral diet, nutritional supplements and enteral formula feedings.
  List<CodeableConceptBuilder>? foodPreferenceModifier;

  /// [excludeFoodModifier]
  /// This modifier is used to convey Order-specific modifier about the type
  /// of oral food or oral fluids that should not be given. These can be
  /// derived from patient allergies, intolerances, or preferences such as No
  /// Red Meat, No Soy or No Wheat or Gluten-Free. While it should not be
  /// necessary to repeat allergy or intolerance information captured in the
  /// referenced AllergyIntolerance resource in the excludeFoodModifier, this
  /// element may be used to convey additional specificity related to foods
  /// that should be eliminated from the patient’s diet for any reason. This
  /// modifier applies to the entire nutrition order inclusive of the oral
  /// diet, nutritional supplements and enteral formula feedings.
  List<CodeableConceptBuilder>? excludeFoodModifier;

  /// [outsideFoodAllowed]
  /// This modifier is used to convey whether a food item is allowed to be
  /// brought in by the patient and/or family. If set to true, indicates that
  /// the receiving system does not need to supply the food item.
  FhirBooleanBuilder? outsideFoodAllowed;

  /// [oralDiet]
  /// Diet given orally in contrast to enteral (tube) feeding.
  NutritionOrderOralDietBuilder? oralDiet;

  /// [supplement]
  /// Oral nutritional products given in order to add further nutritional
  /// value to the patient's diet.
  List<NutritionOrderSupplementBuilder>? supplement;

  /// [enteralFormula]
  /// Feeding provided through the gastrointestinal tract via a tube,
  /// catheter, or stoma that delivers nutrition distal to the oral cavity.
  NutritionOrderEnteralFormulaBuilder? enteralFormula;

  /// [note]
  /// Comments made about the {{title}} by the requester, performer, subject
  /// or other participants.
  List<AnnotationBuilder>? note;

  /// Converts a [NutritionOrderBuilder]
  /// to [NutritionOrder]
  @override
  NutritionOrder build() => NutritionOrder.fromJson(toJson());

  /// Converts a [NutritionOrderBuilder]
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
    addField('instantiates', instantiates);
    addField('basedOn', basedOn);
    addField('groupIdentifier', groupIdentifier);
    addField('status', status);
    addField('intent', intent);
    addField('priority', priority);
    addField('subject', subject);
    addField('encounter', encounter);
    addField('supportingInformation', supportingInformation);
    addField('dateTime', dateTime);
    addField('orderer', orderer);
    addField('performer', performer);
    addField('allergyIntolerance', allergyIntolerance);
    addField('foodPreferenceModifier', foodPreferenceModifier);
    addField('excludeFoodModifier', excludeFoodModifier);
    addField('outsideFoodAllowed', outsideFoodAllowed);
    addField('oralDiet', oralDiet);
    addField('supplement', supplement);
    addField('enteralFormula', enteralFormula);
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
      'instantiates',
      'basedOn',
      'groupIdentifier',
      'status',
      'intent',
      'priority',
      'subject',
      'encounter',
      'supportingInformation',
      'dateTime',
      'orderer',
      'performer',
      'allergyIntolerance',
      'foodPreferenceModifier',
      'excludeFoodModifier',
      'outsideFoodAllowed',
      'oralDiet',
      'supplement',
      'enteralFormula',
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
      case 'instantiates':
        if (instantiates != null) {
          fields.addAll(instantiates!);
        }
      case 'basedOn':
        if (basedOn != null) {
          fields.addAll(basedOn!);
        }
      case 'groupIdentifier':
        if (groupIdentifier != null) {
          fields.add(groupIdentifier!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'intent':
        if (intent != null) {
          fields.add(intent!);
        }
      case 'priority':
        if (priority != null) {
          fields.add(priority!);
        }
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'supportingInformation':
        if (supportingInformation != null) {
          fields.addAll(supportingInformation!);
        }
      case 'dateTime':
        if (dateTime != null) {
          fields.add(dateTime!);
        }
      case 'orderer':
        if (orderer != null) {
          fields.add(orderer!);
        }
      case 'performer':
        if (performer != null) {
          fields.addAll(performer!);
        }
      case 'allergyIntolerance':
        if (allergyIntolerance != null) {
          fields.addAll(allergyIntolerance!);
        }
      case 'foodPreferenceModifier':
        if (foodPreferenceModifier != null) {
          fields.addAll(foodPreferenceModifier!);
        }
      case 'excludeFoodModifier':
        if (excludeFoodModifier != null) {
          fields.addAll(excludeFoodModifier!);
        }
      case 'outsideFoodAllowed':
        if (outsideFoodAllowed != null) {
          fields.add(outsideFoodAllowed!);
        }
      case 'oralDiet':
        if (oralDiet != null) {
          fields.add(oralDiet!);
        }
      case 'supplement':
        if (supplement != null) {
          fields.addAll(supplement!);
        }
      case 'enteralFormula':
        if (enteralFormula != null) {
          fields.add(enteralFormula!);
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
      case 'instantiates':
        {
          if (child is List<FhirUriBuilder>) {
            // Replace or create new list
            instantiates = child;
            return;
          } else if (child is FhirUriBuilder) {
            // Add single element to existing list or create new list
            instantiates = [
              ...(instantiates ?? []),
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
              instantiates = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                instantiates = [
                  ...(instantiates ?? []),
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
      case 'groupIdentifier':
        {
          if (child is IdentifierBuilder) {
            groupIdentifier = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is RequestStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = RequestStatusBuilder(stringValue);
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
      case 'intent':
        {
          if (child is RequestIntentBuilder) {
            intent = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = RequestIntentBuilder(stringValue);
                intent = converted;
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
      case 'priority':
        {
          if (child is RequestPriorityBuilder) {
            priority = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = RequestPriorityBuilder(stringValue);
                priority = converted;
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
      case 'supportingInformation':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            supportingInformation = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            supportingInformation = [
              ...(supportingInformation ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'dateTime':
        {
          if (child is FhirDateTimeBuilder) {
            dateTime = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                dateTime = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'orderer':
        {
          if (child is ReferenceBuilder) {
            orderer = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'performer':
        {
          if (child is List<CodeableReferenceBuilder>) {
            // Replace or create new list
            performer = child;
            return;
          } else if (child is CodeableReferenceBuilder) {
            // Add single element to existing list or create new list
            performer = [
              ...(performer ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'allergyIntolerance':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            allergyIntolerance = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            allergyIntolerance = [
              ...(allergyIntolerance ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'foodPreferenceModifier':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            foodPreferenceModifier = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            foodPreferenceModifier = [
              ...(foodPreferenceModifier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'excludeFoodModifier':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            excludeFoodModifier = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            excludeFoodModifier = [
              ...(excludeFoodModifier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'outsideFoodAllowed':
        {
          if (child is FhirBooleanBuilder) {
            outsideFoodAllowed = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                outsideFoodAllowed = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'oralDiet':
        {
          if (child is NutritionOrderOralDietBuilder) {
            oralDiet = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'supplement':
        {
          if (child is List<NutritionOrderSupplementBuilder>) {
            // Replace or create new list
            supplement = child;
            return;
          } else if (child is NutritionOrderSupplementBuilder) {
            // Add single element to existing list or create new list
            supplement = [
              ...(supplement ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'enteralFormula':
        {
          if (child is NutritionOrderEnteralFormulaBuilder) {
            enteralFormula = child;
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
      case 'instantiates':
        return ['FhirUriBuilder'];
      case 'basedOn':
        return ['ReferenceBuilder'];
      case 'groupIdentifier':
        return ['IdentifierBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'intent':
        return ['FhirCodeEnumBuilder'];
      case 'priority':
        return ['FhirCodeEnumBuilder'];
      case 'subject':
        return ['ReferenceBuilder'];
      case 'encounter':
        return ['ReferenceBuilder'];
      case 'supportingInformation':
        return ['ReferenceBuilder'];
      case 'dateTime':
        return ['FhirDateTimeBuilder'];
      case 'orderer':
        return ['ReferenceBuilder'];
      case 'performer':
        return ['CodeableReferenceBuilder'];
      case 'allergyIntolerance':
        return ['ReferenceBuilder'];
      case 'foodPreferenceModifier':
        return ['CodeableConceptBuilder'];
      case 'excludeFoodModifier':
        return ['CodeableConceptBuilder'];
      case 'outsideFoodAllowed':
        return ['FhirBooleanBuilder'];
      case 'oralDiet':
        return ['NutritionOrderOralDietBuilder'];
      case 'supplement':
        return ['NutritionOrderSupplementBuilder'];
      case 'enteralFormula':
        return ['NutritionOrderEnteralFormulaBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [NutritionOrderBuilder]
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
      case 'instantiates':
        {
          instantiates = <FhirUriBuilder>[];
          return;
        }
      case 'basedOn':
        {
          basedOn = <ReferenceBuilder>[];
          return;
        }
      case 'groupIdentifier':
        {
          groupIdentifier = IdentifierBuilder.empty();
          return;
        }
      case 'status':
        {
          status = RequestStatusBuilder.empty();
          return;
        }
      case 'intent':
        {
          intent = RequestIntentBuilder.empty();
          return;
        }
      case 'priority':
        {
          priority = RequestPriorityBuilder.empty();
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
      case 'supportingInformation':
        {
          supportingInformation = <ReferenceBuilder>[];
          return;
        }
      case 'dateTime':
        {
          dateTime = FhirDateTimeBuilder.empty();
          return;
        }
      case 'orderer':
        {
          orderer = ReferenceBuilder.empty();
          return;
        }
      case 'performer':
        {
          performer = <CodeableReferenceBuilder>[];
          return;
        }
      case 'allergyIntolerance':
        {
          allergyIntolerance = <ReferenceBuilder>[];
          return;
        }
      case 'foodPreferenceModifier':
        {
          foodPreferenceModifier = <CodeableConceptBuilder>[];
          return;
        }
      case 'excludeFoodModifier':
        {
          excludeFoodModifier = <CodeableConceptBuilder>[];
          return;
        }
      case 'outsideFoodAllowed':
        {
          outsideFoodAllowed = FhirBooleanBuilder.empty();
          return;
        }
      case 'oralDiet':
        {
          oralDiet = NutritionOrderOralDietBuilder.empty();
          return;
        }
      case 'supplement':
        {
          supplement = <NutritionOrderSupplementBuilder>[];
          return;
        }
      case 'enteralFormula':
        {
          enteralFormula = NutritionOrderEnteralFormulaBuilder.empty();
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
  NutritionOrderBuilder clone() => throw UnimplementedError();
  @override
  NutritionOrderBuilder copyWith({
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
    List<FhirUriBuilder>? instantiates,
    List<ReferenceBuilder>? basedOn,
    IdentifierBuilder? groupIdentifier,
    RequestStatusBuilder? status,
    RequestIntentBuilder? intent,
    RequestPriorityBuilder? priority,
    ReferenceBuilder? subject,
    ReferenceBuilder? encounter,
    List<ReferenceBuilder>? supportingInformation,
    FhirDateTimeBuilder? dateTime,
    ReferenceBuilder? orderer,
    List<CodeableReferenceBuilder>? performer,
    List<ReferenceBuilder>? allergyIntolerance,
    List<CodeableConceptBuilder>? foodPreferenceModifier,
    List<CodeableConceptBuilder>? excludeFoodModifier,
    FhirBooleanBuilder? outsideFoodAllowed,
    NutritionOrderOralDietBuilder? oralDiet,
    List<NutritionOrderSupplementBuilder>? supplement,
    NutritionOrderEnteralFormulaBuilder? enteralFormula,
    List<AnnotationBuilder>? note,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = NutritionOrderBuilder(
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
      instantiates: instantiates ?? this.instantiates,
      basedOn: basedOn ?? this.basedOn,
      groupIdentifier: groupIdentifier ?? this.groupIdentifier,
      status: status ?? this.status,
      intent: intent ?? this.intent,
      priority: priority ?? this.priority,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      supportingInformation:
          supportingInformation ?? this.supportingInformation,
      dateTime: dateTime ?? this.dateTime,
      orderer: orderer ?? this.orderer,
      performer: performer ?? this.performer,
      allergyIntolerance: allergyIntolerance ?? this.allergyIntolerance,
      foodPreferenceModifier:
          foodPreferenceModifier ?? this.foodPreferenceModifier,
      excludeFoodModifier: excludeFoodModifier ?? this.excludeFoodModifier,
      outsideFoodAllowed: outsideFoodAllowed ?? this.outsideFoodAllowed,
      oralDiet: oralDiet ?? this.oralDiet,
      supplement: supplement ?? this.supplement,
      enteralFormula: enteralFormula ?? this.enteralFormula,
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
    if (o is! NutritionOrderBuilder) {
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
    if (!listEquals<FhirUriBuilder>(
      instantiates,
      o.instantiates,
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
      groupIdentifier,
      o.groupIdentifier,
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
      intent,
      o.intent,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      priority,
      o.priority,
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
    if (!listEquals<ReferenceBuilder>(
      supportingInformation,
      o.supportingInformation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      dateTime,
      o.dateTime,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      orderer,
      o.orderer,
    )) {
      return false;
    }
    if (!listEquals<CodeableReferenceBuilder>(
      performer,
      o.performer,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      allergyIntolerance,
      o.allergyIntolerance,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      foodPreferenceModifier,
      o.foodPreferenceModifier,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      excludeFoodModifier,
      o.excludeFoodModifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      outsideFoodAllowed,
      o.outsideFoodAllowed,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      oralDiet,
      o.oralDiet,
    )) {
      return false;
    }
    if (!listEquals<NutritionOrderSupplementBuilder>(
      supplement,
      o.supplement,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      enteralFormula,
      o.enteralFormula,
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

/// [NutritionOrderOralDietBuilder]
/// Diet given orally in contrast to enteral (tube) feeding.
class NutritionOrderOralDietBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [NutritionOrderOralDietBuilder]

  NutritionOrderOralDietBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.schedule,
    this.nutrient,
    this.texture,
    this.fluidConsistencyType,
    this.instruction,
    super.disallowExtensions,
  }) : super(
          objectPath: 'NutritionOrder.oralDiet',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory NutritionOrderOralDietBuilder.empty() =>
      NutritionOrderOralDietBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionOrderOralDietBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'NutritionOrder.oralDiet';
    return NutritionOrderOralDietBuilder(
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
      schedule: JsonParser.parseObject<NutritionOrderScheduleBuilder>(
        json,
        'schedule',
        NutritionOrderScheduleBuilder.fromJson,
        '$objectPath.schedule',
      ),
      nutrient: (json['nutrient'] as List<dynamic>?)
          ?.map<NutritionOrderNutrientBuilder>(
            (v) => NutritionOrderNutrientBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.nutrient',
              },
            ),
          )
          .toList(),
      texture: (json['texture'] as List<dynamic>?)
          ?.map<NutritionOrderTextureBuilder>(
            (v) => NutritionOrderTextureBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.texture',
              },
            ),
          )
          .toList(),
      fluidConsistencyType: (json['fluidConsistencyType'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.fluidConsistencyType',
              },
            ),
          )
          .toList(),
      instruction: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'instruction',
        FhirStringBuilder.fromJson,
        '$objectPath.instruction',
      ),
    );
  }

  /// Deserialize [NutritionOrderOralDietBuilder]
  /// from a [String] or [YamlMap] object
  factory NutritionOrderOralDietBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionOrderOralDietBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionOrderOralDietBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionOrderOralDietBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionOrderOralDietBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionOrderOralDietBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return NutritionOrderOralDietBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'NutritionOrderOralDiet';

  /// [type]
  /// The kind of diet or dietary restriction such as fiber restricted diet
  /// or diabetic diet.
  List<CodeableConceptBuilder>? type;

  /// [schedule]
  /// Schedule information for an oral diet.
  NutritionOrderScheduleBuilder? schedule;

  /// [nutrient]
  /// Class that defines the quantity and type of nutrient modifications (for
  /// example carbohydrate, fiber or sodium) required for the oral diet.
  List<NutritionOrderNutrientBuilder>? nutrient;

  /// [texture]
  /// Class that describes any texture modifications required for the patient
  /// to safely consume various types of solid foods.
  List<NutritionOrderTextureBuilder>? texture;

  /// [fluidConsistencyType]
  /// The required consistency (e.g. honey-thick, nectar-thick, thin,
  /// thickened.) of liquids or fluids served to the patient.
  List<CodeableConceptBuilder>? fluidConsistencyType;

  /// [instruction]
  /// Free text or additional instructions or information pertaining to the
  /// oral diet.
  FhirStringBuilder? instruction;

  /// Converts a [NutritionOrderOralDietBuilder]
  /// to [NutritionOrderOralDiet]
  @override
  NutritionOrderOralDiet build() => NutritionOrderOralDiet.fromJson(toJson());

  /// Converts a [NutritionOrderOralDietBuilder]
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
    addField('schedule', schedule);
    addField('nutrient', nutrient);
    addField('texture', texture);
    addField('fluidConsistencyType', fluidConsistencyType);
    addField('instruction', instruction);
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
      'schedule',
      'nutrient',
      'texture',
      'fluidConsistencyType',
      'instruction',
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
          fields.addAll(type!);
        }
      case 'schedule':
        if (schedule != null) {
          fields.add(schedule!);
        }
      case 'nutrient':
        if (nutrient != null) {
          fields.addAll(nutrient!);
        }
      case 'texture':
        if (texture != null) {
          fields.addAll(texture!);
        }
      case 'fluidConsistencyType':
        if (fluidConsistencyType != null) {
          fields.addAll(fluidConsistencyType!);
        }
      case 'instruction':
        if (instruction != null) {
          fields.add(instruction!);
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
      case 'schedule':
        {
          if (child is NutritionOrderScheduleBuilder) {
            schedule = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'nutrient':
        {
          if (child is List<NutritionOrderNutrientBuilder>) {
            // Replace or create new list
            nutrient = child;
            return;
          } else if (child is NutritionOrderNutrientBuilder) {
            // Add single element to existing list or create new list
            nutrient = [
              ...(nutrient ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'texture':
        {
          if (child is List<NutritionOrderTextureBuilder>) {
            // Replace or create new list
            texture = child;
            return;
          } else if (child is NutritionOrderTextureBuilder) {
            // Add single element to existing list or create new list
            texture = [
              ...(texture ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'fluidConsistencyType':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            fluidConsistencyType = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            fluidConsistencyType = [
              ...(fluidConsistencyType ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'instruction':
        {
          if (child is FhirStringBuilder) {
            instruction = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                instruction = converted;
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
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'schedule':
        return ['NutritionOrderScheduleBuilder'];
      case 'nutrient':
        return ['NutritionOrderNutrientBuilder'];
      case 'texture':
        return ['NutritionOrderTextureBuilder'];
      case 'fluidConsistencyType':
        return ['CodeableConceptBuilder'];
      case 'instruction':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [NutritionOrderOralDietBuilder]
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
          type = <CodeableConceptBuilder>[];
          return;
        }
      case 'schedule':
        {
          schedule = NutritionOrderScheduleBuilder.empty();
          return;
        }
      case 'nutrient':
        {
          nutrient = <NutritionOrderNutrientBuilder>[];
          return;
        }
      case 'texture':
        {
          texture = <NutritionOrderTextureBuilder>[];
          return;
        }
      case 'fluidConsistencyType':
        {
          fluidConsistencyType = <CodeableConceptBuilder>[];
          return;
        }
      case 'instruction':
        {
          instruction = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  NutritionOrderOralDietBuilder clone() => throw UnimplementedError();
  @override
  NutritionOrderOralDietBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<CodeableConceptBuilder>? type,
    NutritionOrderScheduleBuilder? schedule,
    List<NutritionOrderNutrientBuilder>? nutrient,
    List<NutritionOrderTextureBuilder>? texture,
    List<CodeableConceptBuilder>? fluidConsistencyType,
    FhirStringBuilder? instruction,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = NutritionOrderOralDietBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      schedule: schedule ?? this.schedule,
      nutrient: nutrient ?? this.nutrient,
      texture: texture ?? this.texture,
      fluidConsistencyType: fluidConsistencyType ?? this.fluidConsistencyType,
      instruction: instruction ?? this.instruction,
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
    if (o is! NutritionOrderOralDietBuilder) {
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
    if (!listEquals<CodeableConceptBuilder>(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      schedule,
      o.schedule,
    )) {
      return false;
    }
    if (!listEquals<NutritionOrderNutrientBuilder>(
      nutrient,
      o.nutrient,
    )) {
      return false;
    }
    if (!listEquals<NutritionOrderTextureBuilder>(
      texture,
      o.texture,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      fluidConsistencyType,
      o.fluidConsistencyType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      instruction,
      o.instruction,
    )) {
      return false;
    }
    return true;
  }
}

/// [NutritionOrderScheduleBuilder]
/// Schedule information for an oral diet.
class NutritionOrderScheduleBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [NutritionOrderScheduleBuilder]

  NutritionOrderScheduleBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.timing,
    this.asNeeded,
    this.asNeededFor,
    super.disallowExtensions,
  }) : super(
          objectPath: 'NutritionOrder.oralDiet.schedule',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory NutritionOrderScheduleBuilder.empty() =>
      NutritionOrderScheduleBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionOrderScheduleBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'NutritionOrder.oralDiet.schedule';
    return NutritionOrderScheduleBuilder(
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
      timing: (json['timing'] as List<dynamic>?)
          ?.map<TimingBuilder>(
            (v) => TimingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.timing',
              },
            ),
          )
          .toList(),
      asNeeded: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'asNeeded',
        FhirBooleanBuilder.fromJson,
        '$objectPath.asNeeded',
      ),
      asNeededFor: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'asNeededFor',
        CodeableConceptBuilder.fromJson,
        '$objectPath.asNeededFor',
      ),
    );
  }

  /// Deserialize [NutritionOrderScheduleBuilder]
  /// from a [String] or [YamlMap] object
  factory NutritionOrderScheduleBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionOrderScheduleBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionOrderScheduleBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionOrderScheduleBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionOrderScheduleBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionOrderScheduleBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return NutritionOrderScheduleBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'NutritionOrderSchedule';

  /// [timing]
  /// The time period and frequency at which the diet should be given. The
  /// diet should be given for the combination of all schedules if more than
  /// one schedule is present.
  List<TimingBuilder>? timing;

  /// [asNeeded]
  /// Indicates whether the product is only taken when needed within a
  /// specific dosing schedule.
  FhirBooleanBuilder? asNeeded;

  /// [asNeededFor]
  /// Indicates whether the product is only taken based on a precondition for
  /// taking the product.
  CodeableConceptBuilder? asNeededFor;

  /// Converts a [NutritionOrderScheduleBuilder]
  /// to [NutritionOrderSchedule]
  @override
  NutritionOrderSchedule build() => NutritionOrderSchedule.fromJson(toJson());

  /// Converts a [NutritionOrderScheduleBuilder]
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
    addField('timing', timing);
    addField('asNeeded', asNeeded);
    addField('asNeededFor', asNeededFor);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'timing',
      'asNeeded',
      'asNeededFor',
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
      case 'timing':
        if (timing != null) {
          fields.addAll(timing!);
        }
      case 'asNeeded':
        if (asNeeded != null) {
          fields.add(asNeeded!);
        }
      case 'asNeededFor':
        if (asNeededFor != null) {
          fields.add(asNeededFor!);
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
      case 'timing':
        {
          if (child is List<TimingBuilder>) {
            // Replace or create new list
            timing = child;
            return;
          } else if (child is TimingBuilder) {
            // Add single element to existing list or create new list
            timing = [
              ...(timing ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'asNeeded':
        {
          if (child is FhirBooleanBuilder) {
            asNeeded = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                asNeeded = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'asNeededFor':
        {
          if (child is CodeableConceptBuilder) {
            asNeededFor = child;
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
      case 'timing':
        return ['TimingBuilder'];
      case 'asNeeded':
        return ['FhirBooleanBuilder'];
      case 'asNeededFor':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [NutritionOrderScheduleBuilder]
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
      case 'timing':
        {
          timing = <TimingBuilder>[];
          return;
        }
      case 'asNeeded':
        {
          asNeeded = FhirBooleanBuilder.empty();
          return;
        }
      case 'asNeededFor':
        {
          asNeededFor = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  NutritionOrderScheduleBuilder clone() => throw UnimplementedError();
  @override
  NutritionOrderScheduleBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<TimingBuilder>? timing,
    FhirBooleanBuilder? asNeeded,
    CodeableConceptBuilder? asNeededFor,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = NutritionOrderScheduleBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      timing: timing ?? this.timing,
      asNeeded: asNeeded ?? this.asNeeded,
      asNeededFor: asNeededFor ?? this.asNeededFor,
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
    if (o is! NutritionOrderScheduleBuilder) {
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
    if (!listEquals<TimingBuilder>(
      timing,
      o.timing,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      asNeeded,
      o.asNeeded,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      asNeededFor,
      o.asNeededFor,
    )) {
      return false;
    }
    return true;
  }
}

/// [NutritionOrderNutrientBuilder]
/// Class that defines the quantity and type of nutrient modifications (for
/// example carbohydrate, fiber or sodium) required for the oral diet.
class NutritionOrderNutrientBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [NutritionOrderNutrientBuilder]

  NutritionOrderNutrientBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.modifier,
    this.amount,
    super.disallowExtensions,
  }) : super(
          objectPath: 'NutritionOrder.oralDiet.nutrient',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory NutritionOrderNutrientBuilder.empty() =>
      NutritionOrderNutrientBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionOrderNutrientBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'NutritionOrder.oralDiet.nutrient';
    return NutritionOrderNutrientBuilder(
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
      modifier: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'modifier',
        CodeableConceptBuilder.fromJson,
        '$objectPath.modifier',
      ),
      amount: JsonParser.parseObject<QuantityBuilder>(
        json,
        'amount',
        QuantityBuilder.fromJson,
        '$objectPath.amount',
      ),
    );
  }

  /// Deserialize [NutritionOrderNutrientBuilder]
  /// from a [String] or [YamlMap] object
  factory NutritionOrderNutrientBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionOrderNutrientBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionOrderNutrientBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionOrderNutrientBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionOrderNutrientBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionOrderNutrientBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return NutritionOrderNutrientBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'NutritionOrderNutrient';

  /// [modifier]
  /// The nutrient that is being modified such as carbohydrate or sodium.
  CodeableConceptBuilder? modifier;

  /// [amount]
  /// The quantity of the specified nutrient to include in diet.
  QuantityBuilder? amount;

  /// Converts a [NutritionOrderNutrientBuilder]
  /// to [NutritionOrderNutrient]
  @override
  NutritionOrderNutrient build() => NutritionOrderNutrient.fromJson(toJson());

  /// Converts a [NutritionOrderNutrientBuilder]
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
    addField('modifier', modifier);
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
      'modifier',
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
      case 'modifier':
        if (modifier != null) {
          fields.add(modifier!);
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
      case 'modifier':
        {
          if (child is CodeableConceptBuilder) {
            modifier = child;
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
      case 'modifier':
        return ['CodeableConceptBuilder'];
      case 'amount':
        return ['QuantityBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [NutritionOrderNutrientBuilder]
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
      case 'modifier':
        {
          modifier = CodeableConceptBuilder.empty();
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
  NutritionOrderNutrientBuilder clone() => throw UnimplementedError();
  @override
  NutritionOrderNutrientBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? modifier,
    QuantityBuilder? amount,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = NutritionOrderNutrientBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      modifier: modifier ?? this.modifier,
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
    if (o is! NutritionOrderNutrientBuilder) {
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
      modifier,
      o.modifier,
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

/// [NutritionOrderTextureBuilder]
/// Class that describes any texture modifications required for the patient
/// to safely consume various types of solid foods.
class NutritionOrderTextureBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [NutritionOrderTextureBuilder]

  NutritionOrderTextureBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.modifier,
    this.foodType,
    super.disallowExtensions,
  }) : super(
          objectPath: 'NutritionOrder.oralDiet.texture',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory NutritionOrderTextureBuilder.empty() =>
      NutritionOrderTextureBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionOrderTextureBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'NutritionOrder.oralDiet.texture';
    return NutritionOrderTextureBuilder(
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
      modifier: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'modifier',
        CodeableConceptBuilder.fromJson,
        '$objectPath.modifier',
      ),
      foodType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'foodType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.foodType',
      ),
    );
  }

  /// Deserialize [NutritionOrderTextureBuilder]
  /// from a [String] or [YamlMap] object
  factory NutritionOrderTextureBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionOrderTextureBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionOrderTextureBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionOrderTextureBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionOrderTextureBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionOrderTextureBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return NutritionOrderTextureBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'NutritionOrderTexture';

  /// [modifier]
  /// Any texture modifications (for solid foods) that should be made, e.g.
  /// easy to chew, chopped, ground, and pureed.
  CodeableConceptBuilder? modifier;

  /// [foodType]
  /// The food type(s) (e.g. meats, all foods) that the texture modification
  /// applies to. This could be all foods types.
  CodeableConceptBuilder? foodType;

  /// Converts a [NutritionOrderTextureBuilder]
  /// to [NutritionOrderTexture]
  @override
  NutritionOrderTexture build() => NutritionOrderTexture.fromJson(toJson());

  /// Converts a [NutritionOrderTextureBuilder]
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
    addField('modifier', modifier);
    addField('foodType', foodType);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'modifier',
      'foodType',
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
      case 'modifier':
        if (modifier != null) {
          fields.add(modifier!);
        }
      case 'foodType':
        if (foodType != null) {
          fields.add(foodType!);
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
      case 'modifier':
        {
          if (child is CodeableConceptBuilder) {
            modifier = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'foodType':
        {
          if (child is CodeableConceptBuilder) {
            foodType = child;
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
      case 'modifier':
        return ['CodeableConceptBuilder'];
      case 'foodType':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [NutritionOrderTextureBuilder]
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
      case 'modifier':
        {
          modifier = CodeableConceptBuilder.empty();
          return;
        }
      case 'foodType':
        {
          foodType = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  NutritionOrderTextureBuilder clone() => throw UnimplementedError();
  @override
  NutritionOrderTextureBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? modifier,
    CodeableConceptBuilder? foodType,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = NutritionOrderTextureBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      modifier: modifier ?? this.modifier,
      foodType: foodType ?? this.foodType,
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
    if (o is! NutritionOrderTextureBuilder) {
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
      modifier,
      o.modifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      foodType,
      o.foodType,
    )) {
      return false;
    }
    return true;
  }
}

/// [NutritionOrderSupplementBuilder]
/// Oral nutritional products given in order to add further nutritional
/// value to the patient's diet.
class NutritionOrderSupplementBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [NutritionOrderSupplementBuilder]

  NutritionOrderSupplementBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.productName,
    this.schedule,
    this.quantity,
    this.instruction,
    super.disallowExtensions,
  }) : super(
          objectPath: 'NutritionOrder.supplement',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory NutritionOrderSupplementBuilder.empty() =>
      NutritionOrderSupplementBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionOrderSupplementBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'NutritionOrder.supplement';
    return NutritionOrderSupplementBuilder(
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
      type: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'type',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.type',
      ),
      productName: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'productName',
        FhirStringBuilder.fromJson,
        '$objectPath.productName',
      ),
      schedule: JsonParser.parseObject<NutritionOrderScheduleBuilder>(
        json,
        'schedule',
        NutritionOrderScheduleBuilder.fromJson,
        '$objectPath.schedule',
      ),
      quantity: JsonParser.parseObject<QuantityBuilder>(
        json,
        'quantity',
        QuantityBuilder.fromJson,
        '$objectPath.quantity',
      ),
      instruction: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'instruction',
        FhirStringBuilder.fromJson,
        '$objectPath.instruction',
      ),
    );
  }

  /// Deserialize [NutritionOrderSupplementBuilder]
  /// from a [String] or [YamlMap] object
  factory NutritionOrderSupplementBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionOrderSupplementBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionOrderSupplementBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionOrderSupplementBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionOrderSupplementBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionOrderSupplementBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return NutritionOrderSupplementBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'NutritionOrderSupplement';

  /// [type]
  /// The kind of nutritional supplement product required such as a high
  /// protein or pediatric clear liquid supplement.
  CodeableReferenceBuilder? type;

  /// [productName]
  /// The product or brand name of the nutritional supplement such as "Acme
  /// Protein Shake".
  FhirStringBuilder? productName;

  /// [schedule]
  /// Schedule information for a supplement.
  NutritionOrderScheduleBuilder? schedule;

  /// [quantity]
  /// The amount of the nutritional supplement to be given.
  QuantityBuilder? quantity;

  /// [instruction]
  /// Free text or additional instructions or information pertaining to the
  /// oral supplement.
  FhirStringBuilder? instruction;

  /// Converts a [NutritionOrderSupplementBuilder]
  /// to [NutritionOrderSupplement]
  @override
  NutritionOrderSupplement build() =>
      NutritionOrderSupplement.fromJson(toJson());

  /// Converts a [NutritionOrderSupplementBuilder]
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
    addField('productName', productName);
    addField('schedule', schedule);
    addField('quantity', quantity);
    addField('instruction', instruction);
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
      'productName',
      'schedule',
      'quantity',
      'instruction',
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
      case 'productName':
        if (productName != null) {
          fields.add(productName!);
        }
      case 'schedule':
        if (schedule != null) {
          fields.add(schedule!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'instruction':
        if (instruction != null) {
          fields.add(instruction!);
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
          if (child is CodeableReferenceBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'productName':
        {
          if (child is FhirStringBuilder) {
            productName = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                productName = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'schedule':
        {
          if (child is NutritionOrderScheduleBuilder) {
            schedule = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'quantity':
        {
          if (child is QuantityBuilder) {
            quantity = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'instruction':
        {
          if (child is FhirStringBuilder) {
            instruction = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                instruction = converted;
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
      case 'type':
        return ['CodeableReferenceBuilder'];
      case 'productName':
        return ['FhirStringBuilder'];
      case 'schedule':
        return ['NutritionOrderScheduleBuilder'];
      case 'quantity':
        return ['QuantityBuilder'];
      case 'instruction':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [NutritionOrderSupplementBuilder]
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
          type = CodeableReferenceBuilder.empty();
          return;
        }
      case 'productName':
        {
          productName = FhirStringBuilder.empty();
          return;
        }
      case 'schedule':
        {
          schedule = NutritionOrderScheduleBuilder.empty();
          return;
        }
      case 'quantity':
        {
          quantity = QuantityBuilder.empty();
          return;
        }
      case 'instruction':
        {
          instruction = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  NutritionOrderSupplementBuilder clone() => throw UnimplementedError();
  @override
  NutritionOrderSupplementBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableReferenceBuilder? type,
    FhirStringBuilder? productName,
    NutritionOrderScheduleBuilder? schedule,
    QuantityBuilder? quantity,
    FhirStringBuilder? instruction,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = NutritionOrderSupplementBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      productName: productName ?? this.productName,
      schedule: schedule ?? this.schedule,
      quantity: quantity ?? this.quantity,
      instruction: instruction ?? this.instruction,
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
    if (o is! NutritionOrderSupplementBuilder) {
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
      productName,
      o.productName,
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
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      instruction,
      o.instruction,
    )) {
      return false;
    }
    return true;
  }
}

/// [NutritionOrderSchedule1Builder]
/// Schedule information for a supplement.
class NutritionOrderSchedule1Builder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [NutritionOrderSchedule1Builder]

  NutritionOrderSchedule1Builder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.timing,
    this.asNeeded,
    this.asNeededFor,
    super.disallowExtensions,
  }) : super(
          objectPath: 'NutritionOrder.supplement.schedule',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory NutritionOrderSchedule1Builder.empty() =>
      NutritionOrderSchedule1Builder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionOrderSchedule1Builder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'NutritionOrder.supplement.schedule';
    return NutritionOrderSchedule1Builder(
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
      timing: (json['timing'] as List<dynamic>?)
          ?.map<TimingBuilder>(
            (v) => TimingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.timing',
              },
            ),
          )
          .toList(),
      asNeeded: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'asNeeded',
        FhirBooleanBuilder.fromJson,
        '$objectPath.asNeeded',
      ),
      asNeededFor: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'asNeededFor',
        CodeableConceptBuilder.fromJson,
        '$objectPath.asNeededFor',
      ),
    );
  }

  /// Deserialize [NutritionOrderSchedule1Builder]
  /// from a [String] or [YamlMap] object
  factory NutritionOrderSchedule1Builder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionOrderSchedule1Builder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionOrderSchedule1Builder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionOrderSchedule1Builder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionOrderSchedule1Builder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionOrderSchedule1Builder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return NutritionOrderSchedule1Builder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'NutritionOrderSchedule1';

  /// [timing]
  /// The time period and frequency at which the supplement should be given.
  /// The supplement should be given for the combination of all schedules if
  /// more than one schedule is present.
  List<TimingBuilder>? timing;

  /// [asNeeded]
  /// Indicates whether the supplement is only taken when needed within a
  /// specific dosing schedule.
  FhirBooleanBuilder? asNeeded;

  /// [asNeededFor]
  /// Indicates whether the supplement is only taken based on a precondition
  /// for taking the supplement.
  CodeableConceptBuilder? asNeededFor;

  /// Converts a [NutritionOrderSchedule1Builder]
  /// to [NutritionOrderSchedule1]
  @override
  NutritionOrderSchedule1 build() => NutritionOrderSchedule1.fromJson(toJson());

  /// Converts a [NutritionOrderSchedule1Builder]
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
    addField('timing', timing);
    addField('asNeeded', asNeeded);
    addField('asNeededFor', asNeededFor);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'timing',
      'asNeeded',
      'asNeededFor',
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
      case 'timing':
        if (timing != null) {
          fields.addAll(timing!);
        }
      case 'asNeeded':
        if (asNeeded != null) {
          fields.add(asNeeded!);
        }
      case 'asNeededFor':
        if (asNeededFor != null) {
          fields.add(asNeededFor!);
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
      case 'timing':
        {
          if (child is List<TimingBuilder>) {
            // Replace or create new list
            timing = child;
            return;
          } else if (child is TimingBuilder) {
            // Add single element to existing list or create new list
            timing = [
              ...(timing ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'asNeeded':
        {
          if (child is FhirBooleanBuilder) {
            asNeeded = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                asNeeded = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'asNeededFor':
        {
          if (child is CodeableConceptBuilder) {
            asNeededFor = child;
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
      case 'timing':
        return ['TimingBuilder'];
      case 'asNeeded':
        return ['FhirBooleanBuilder'];
      case 'asNeededFor':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [NutritionOrderSchedule1Builder]
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
      case 'timing':
        {
          timing = <TimingBuilder>[];
          return;
        }
      case 'asNeeded':
        {
          asNeeded = FhirBooleanBuilder.empty();
          return;
        }
      case 'asNeededFor':
        {
          asNeededFor = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  NutritionOrderSchedule1Builder clone() => throw UnimplementedError();
  @override
  NutritionOrderSchedule1Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<TimingBuilder>? timing,
    FhirBooleanBuilder? asNeeded,
    CodeableConceptBuilder? asNeededFor,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = NutritionOrderSchedule1Builder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      timing: timing ?? this.timing,
      asNeeded: asNeeded ?? this.asNeeded,
      asNeededFor: asNeededFor ?? this.asNeededFor,
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
    if (o is! NutritionOrderSchedule1Builder) {
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
    if (!listEquals<TimingBuilder>(
      timing,
      o.timing,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      asNeeded,
      o.asNeeded,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      asNeededFor,
      o.asNeededFor,
    )) {
      return false;
    }
    return true;
  }
}

/// [NutritionOrderEnteralFormulaBuilder]
/// Feeding provided through the gastrointestinal tract via a tube,
/// catheter, or stoma that delivers nutrition distal to the oral cavity.
class NutritionOrderEnteralFormulaBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [NutritionOrderEnteralFormulaBuilder]

  NutritionOrderEnteralFormulaBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.baseFormulaType,
    this.baseFormulaProductName,
    this.deliveryDevice,
    this.additive,
    this.caloricDensity,
    this.routeOfAdministration,
    this.administration,
    this.maxVolumeToDeliver,
    this.administrationInstruction,
    super.disallowExtensions,
  }) : super(
          objectPath: 'NutritionOrder.enteralFormula',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory NutritionOrderEnteralFormulaBuilder.empty() =>
      NutritionOrderEnteralFormulaBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionOrderEnteralFormulaBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'NutritionOrder.enteralFormula';
    return NutritionOrderEnteralFormulaBuilder(
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
      baseFormulaType: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'baseFormulaType',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.baseFormulaType',
      ),
      baseFormulaProductName: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'baseFormulaProductName',
        FhirStringBuilder.fromJson,
        '$objectPath.baseFormulaProductName',
      ),
      deliveryDevice: (json['deliveryDevice'] as List<dynamic>?)
          ?.map<CodeableReferenceBuilder>(
            (v) => CodeableReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.deliveryDevice',
              },
            ),
          )
          .toList(),
      additive: (json['additive'] as List<dynamic>?)
          ?.map<NutritionOrderAdditiveBuilder>(
            (v) => NutritionOrderAdditiveBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.additive',
              },
            ),
          )
          .toList(),
      caloricDensity: JsonParser.parseObject<QuantityBuilder>(
        json,
        'caloricDensity',
        QuantityBuilder.fromJson,
        '$objectPath.caloricDensity',
      ),
      routeOfAdministration: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'routeOfAdministration',
        CodeableConceptBuilder.fromJson,
        '$objectPath.routeOfAdministration',
      ),
      administration: (json['administration'] as List<dynamic>?)
          ?.map<NutritionOrderAdministrationBuilder>(
            (v) => NutritionOrderAdministrationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.administration',
              },
            ),
          )
          .toList(),
      maxVolumeToDeliver: JsonParser.parseObject<QuantityBuilder>(
        json,
        'maxVolumeToDeliver',
        QuantityBuilder.fromJson,
        '$objectPath.maxVolumeToDeliver',
      ),
      administrationInstruction: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'administrationInstruction',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.administrationInstruction',
      ),
    );
  }

  /// Deserialize [NutritionOrderEnteralFormulaBuilder]
  /// from a [String] or [YamlMap] object
  factory NutritionOrderEnteralFormulaBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionOrderEnteralFormulaBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionOrderEnteralFormulaBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionOrderEnteralFormulaBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionOrderEnteralFormulaBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionOrderEnteralFormulaBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return NutritionOrderEnteralFormulaBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'NutritionOrderEnteralFormula';

  /// [baseFormulaType]
  /// The type of enteral or infant formula such as an adult standard formula
  /// with fiber or a soy-based infant formula.
  CodeableReferenceBuilder? baseFormulaType;

  /// [baseFormulaProductName]
  /// The product or brand name of the enteral or infant formula product such
  /// as "ACME Adult Standard Formula".
  FhirStringBuilder? baseFormulaProductName;

  /// [deliveryDevice]
  /// The intended type of device that is to be used for the administration
  /// of the enteral formula.
  List<CodeableReferenceBuilder>? deliveryDevice;

  /// [additive]
  /// Indicates modular components to be provided in addition or mixed with
  /// the base formula.
  List<NutritionOrderAdditiveBuilder>? additive;

  /// [caloricDensity]
  /// The amount of energy (calories) that the formula should provide per
  /// specified volume, typically per mL or fluid oz. For example, an infant
  /// may require a formula that provides 24 calories per fluid ounce or an
  /// adult may require an enteral formula that provides 1.5 calorie/mL.
  QuantityBuilder? caloricDensity;

  /// [routeOfAdministration]
  /// The route or physiological path of administration into the patient's
  /// gastrointestinal tract for purposes of providing the formula feeding,
  /// e.g. nasogastric tube.
  CodeableConceptBuilder? routeOfAdministration;

  /// [administration]
  /// Formula administration instructions as structured data. This repeating
  /// structure allows for changing the administration rate or volume over
  /// time for both bolus and continuous feeding. An example of this would be
  /// an instruction to increase the rate of continuous feeding every 2
  /// hours.
  List<NutritionOrderAdministrationBuilder>? administration;

  /// [maxVolumeToDeliver]
  /// The maximum total quantity of formula that may be administered to a
  /// subject over the period of time, e.g. 1440 mL over 24 hours.
  QuantityBuilder? maxVolumeToDeliver;

  /// [administrationInstruction]
  /// Free text formula administration, feeding instructions or additional
  /// instructions or information.
  FhirMarkdownBuilder? administrationInstruction;

  /// Converts a [NutritionOrderEnteralFormulaBuilder]
  /// to [NutritionOrderEnteralFormula]
  @override
  NutritionOrderEnteralFormula build() =>
      NutritionOrderEnteralFormula.fromJson(toJson());

  /// Converts a [NutritionOrderEnteralFormulaBuilder]
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
    addField('baseFormulaType', baseFormulaType);
    addField('baseFormulaProductName', baseFormulaProductName);
    addField('deliveryDevice', deliveryDevice);
    addField('additive', additive);
    addField('caloricDensity', caloricDensity);
    addField('routeOfAdministration', routeOfAdministration);
    addField('administration', administration);
    addField('maxVolumeToDeliver', maxVolumeToDeliver);
    addField('administrationInstruction', administrationInstruction);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'baseFormulaType',
      'baseFormulaProductName',
      'deliveryDevice',
      'additive',
      'caloricDensity',
      'routeOfAdministration',
      'administration',
      'maxVolumeToDeliver',
      'administrationInstruction',
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
      case 'baseFormulaType':
        if (baseFormulaType != null) {
          fields.add(baseFormulaType!);
        }
      case 'baseFormulaProductName':
        if (baseFormulaProductName != null) {
          fields.add(baseFormulaProductName!);
        }
      case 'deliveryDevice':
        if (deliveryDevice != null) {
          fields.addAll(deliveryDevice!);
        }
      case 'additive':
        if (additive != null) {
          fields.addAll(additive!);
        }
      case 'caloricDensity':
        if (caloricDensity != null) {
          fields.add(caloricDensity!);
        }
      case 'routeOfAdministration':
        if (routeOfAdministration != null) {
          fields.add(routeOfAdministration!);
        }
      case 'administration':
        if (administration != null) {
          fields.addAll(administration!);
        }
      case 'maxVolumeToDeliver':
        if (maxVolumeToDeliver != null) {
          fields.add(maxVolumeToDeliver!);
        }
      case 'administrationInstruction':
        if (administrationInstruction != null) {
          fields.add(administrationInstruction!);
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
      case 'baseFormulaType':
        {
          if (child is CodeableReferenceBuilder) {
            baseFormulaType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'baseFormulaProductName':
        {
          if (child is FhirStringBuilder) {
            baseFormulaProductName = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                baseFormulaProductName = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'deliveryDevice':
        {
          if (child is List<CodeableReferenceBuilder>) {
            // Replace or create new list
            deliveryDevice = child;
            return;
          } else if (child is CodeableReferenceBuilder) {
            // Add single element to existing list or create new list
            deliveryDevice = [
              ...(deliveryDevice ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'additive':
        {
          if (child is List<NutritionOrderAdditiveBuilder>) {
            // Replace or create new list
            additive = child;
            return;
          } else if (child is NutritionOrderAdditiveBuilder) {
            // Add single element to existing list or create new list
            additive = [
              ...(additive ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'caloricDensity':
        {
          if (child is QuantityBuilder) {
            caloricDensity = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'routeOfAdministration':
        {
          if (child is CodeableConceptBuilder) {
            routeOfAdministration = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'administration':
        {
          if (child is List<NutritionOrderAdministrationBuilder>) {
            // Replace or create new list
            administration = child;
            return;
          } else if (child is NutritionOrderAdministrationBuilder) {
            // Add single element to existing list or create new list
            administration = [
              ...(administration ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'maxVolumeToDeliver':
        {
          if (child is QuantityBuilder) {
            maxVolumeToDeliver = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'administrationInstruction':
        {
          if (child is FhirMarkdownBuilder) {
            administrationInstruction = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                administrationInstruction = converted;
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
      case 'baseFormulaType':
        return ['CodeableReferenceBuilder'];
      case 'baseFormulaProductName':
        return ['FhirStringBuilder'];
      case 'deliveryDevice':
        return ['CodeableReferenceBuilder'];
      case 'additive':
        return ['NutritionOrderAdditiveBuilder'];
      case 'caloricDensity':
        return ['QuantityBuilder'];
      case 'routeOfAdministration':
        return ['CodeableConceptBuilder'];
      case 'administration':
        return ['NutritionOrderAdministrationBuilder'];
      case 'maxVolumeToDeliver':
        return ['QuantityBuilder'];
      case 'administrationInstruction':
        return ['FhirMarkdownBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [NutritionOrderEnteralFormulaBuilder]
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
      case 'baseFormulaType':
        {
          baseFormulaType = CodeableReferenceBuilder.empty();
          return;
        }
      case 'baseFormulaProductName':
        {
          baseFormulaProductName = FhirStringBuilder.empty();
          return;
        }
      case 'deliveryDevice':
        {
          deliveryDevice = <CodeableReferenceBuilder>[];
          return;
        }
      case 'additive':
        {
          additive = <NutritionOrderAdditiveBuilder>[];
          return;
        }
      case 'caloricDensity':
        {
          caloricDensity = QuantityBuilder.empty();
          return;
        }
      case 'routeOfAdministration':
        {
          routeOfAdministration = CodeableConceptBuilder.empty();
          return;
        }
      case 'administration':
        {
          administration = <NutritionOrderAdministrationBuilder>[];
          return;
        }
      case 'maxVolumeToDeliver':
        {
          maxVolumeToDeliver = QuantityBuilder.empty();
          return;
        }
      case 'administrationInstruction':
        {
          administrationInstruction = FhirMarkdownBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  NutritionOrderEnteralFormulaBuilder clone() => throw UnimplementedError();
  @override
  NutritionOrderEnteralFormulaBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableReferenceBuilder? baseFormulaType,
    FhirStringBuilder? baseFormulaProductName,
    List<CodeableReferenceBuilder>? deliveryDevice,
    List<NutritionOrderAdditiveBuilder>? additive,
    QuantityBuilder? caloricDensity,
    CodeableConceptBuilder? routeOfAdministration,
    List<NutritionOrderAdministrationBuilder>? administration,
    QuantityBuilder? maxVolumeToDeliver,
    FhirMarkdownBuilder? administrationInstruction,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = NutritionOrderEnteralFormulaBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      baseFormulaType: baseFormulaType ?? this.baseFormulaType,
      baseFormulaProductName:
          baseFormulaProductName ?? this.baseFormulaProductName,
      deliveryDevice: deliveryDevice ?? this.deliveryDevice,
      additive: additive ?? this.additive,
      caloricDensity: caloricDensity ?? this.caloricDensity,
      routeOfAdministration:
          routeOfAdministration ?? this.routeOfAdministration,
      administration: administration ?? this.administration,
      maxVolumeToDeliver: maxVolumeToDeliver ?? this.maxVolumeToDeliver,
      administrationInstruction:
          administrationInstruction ?? this.administrationInstruction,
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
    if (o is! NutritionOrderEnteralFormulaBuilder) {
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
      baseFormulaType,
      o.baseFormulaType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      baseFormulaProductName,
      o.baseFormulaProductName,
    )) {
      return false;
    }
    if (!listEquals<CodeableReferenceBuilder>(
      deliveryDevice,
      o.deliveryDevice,
    )) {
      return false;
    }
    if (!listEquals<NutritionOrderAdditiveBuilder>(
      additive,
      o.additive,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      caloricDensity,
      o.caloricDensity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      routeOfAdministration,
      o.routeOfAdministration,
    )) {
      return false;
    }
    if (!listEquals<NutritionOrderAdministrationBuilder>(
      administration,
      o.administration,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      maxVolumeToDeliver,
      o.maxVolumeToDeliver,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      administrationInstruction,
      o.administrationInstruction,
    )) {
      return false;
    }
    return true;
  }
}

/// [NutritionOrderAdditiveBuilder]
/// Indicates modular components to be provided in addition or mixed with
/// the base formula.
class NutritionOrderAdditiveBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [NutritionOrderAdditiveBuilder]

  NutritionOrderAdditiveBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.productName,
    this.quantity,
    super.disallowExtensions,
  }) : super(
          objectPath: 'NutritionOrder.enteralFormula.additive',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory NutritionOrderAdditiveBuilder.empty() =>
      NutritionOrderAdditiveBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionOrderAdditiveBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'NutritionOrder.enteralFormula.additive';
    return NutritionOrderAdditiveBuilder(
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
      type: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'type',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.type',
      ),
      productName: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'productName',
        FhirStringBuilder.fromJson,
        '$objectPath.productName',
      ),
      quantity: JsonParser.parseObject<QuantityBuilder>(
        json,
        'quantity',
        QuantityBuilder.fromJson,
        '$objectPath.quantity',
      ),
    );
  }

  /// Deserialize [NutritionOrderAdditiveBuilder]
  /// from a [String] or [YamlMap] object
  factory NutritionOrderAdditiveBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionOrderAdditiveBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionOrderAdditiveBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionOrderAdditiveBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionOrderAdditiveBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionOrderAdditiveBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return NutritionOrderAdditiveBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'NutritionOrderAdditive';

  /// [type]
  /// Indicates the type of modular component such as protein, carbohydrate,
  /// fat or fiber to be provided in addition to or mixed with the base
  /// formula.
  CodeableReferenceBuilder? type;

  /// [productName]
  /// The product or brand name of the type of modular component to be added
  /// to the formula.
  FhirStringBuilder? productName;

  /// [quantity]
  /// The amount of additive to be given in addition or to be mixed in with
  /// the base formula.
  QuantityBuilder? quantity;

  /// Converts a [NutritionOrderAdditiveBuilder]
  /// to [NutritionOrderAdditive]
  @override
  NutritionOrderAdditive build() => NutritionOrderAdditive.fromJson(toJson());

  /// Converts a [NutritionOrderAdditiveBuilder]
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
    addField('productName', productName);
    addField('quantity', quantity);
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
      'productName',
      'quantity',
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
      case 'productName':
        if (productName != null) {
          fields.add(productName!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
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
          if (child is CodeableReferenceBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'productName':
        {
          if (child is FhirStringBuilder) {
            productName = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                productName = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'quantity':
        {
          if (child is QuantityBuilder) {
            quantity = child;
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
        return ['CodeableReferenceBuilder'];
      case 'productName':
        return ['FhirStringBuilder'];
      case 'quantity':
        return ['QuantityBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [NutritionOrderAdditiveBuilder]
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
          type = CodeableReferenceBuilder.empty();
          return;
        }
      case 'productName':
        {
          productName = FhirStringBuilder.empty();
          return;
        }
      case 'quantity':
        {
          quantity = QuantityBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  NutritionOrderAdditiveBuilder clone() => throw UnimplementedError();
  @override
  NutritionOrderAdditiveBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableReferenceBuilder? type,
    FhirStringBuilder? productName,
    QuantityBuilder? quantity,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = NutritionOrderAdditiveBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      productName: productName ?? this.productName,
      quantity: quantity ?? this.quantity,
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
    if (o is! NutritionOrderAdditiveBuilder) {
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
      productName,
      o.productName,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    return true;
  }
}

/// [NutritionOrderAdministrationBuilder]
/// Formula administration instructions as structured data. This repeating
/// structure allows for changing the administration rate or volume over
/// time for both bolus and continuous feeding. An example of this would be
/// an instruction to increase the rate of continuous feeding every 2
/// hours.
class NutritionOrderAdministrationBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [NutritionOrderAdministrationBuilder]

  NutritionOrderAdministrationBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.schedule,
    this.quantity,
    RateXNutritionOrderAdministrationBuilder? rateX,
    QuantityBuilder? rateQuantity,
    RatioBuilder? rateRatio,
    super.disallowExtensions,
  })  : rateX = rateX ?? rateQuantity ?? rateRatio,
        super(
          objectPath: 'NutritionOrder.enteralFormula.administration',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory NutritionOrderAdministrationBuilder.empty() =>
      NutritionOrderAdministrationBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionOrderAdministrationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'NutritionOrder.enteralFormula.administration';
    return NutritionOrderAdministrationBuilder(
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
      schedule: JsonParser.parseObject<NutritionOrderScheduleBuilder>(
        json,
        'schedule',
        NutritionOrderScheduleBuilder.fromJson,
        '$objectPath.schedule',
      ),
      quantity: JsonParser.parseObject<QuantityBuilder>(
        json,
        'quantity',
        QuantityBuilder.fromJson,
        '$objectPath.quantity',
      ),
      rateX:
          JsonParser.parsePolymorphic<RateXNutritionOrderAdministrationBuilder>(
        json,
        {
          'rateQuantity': QuantityBuilder.fromJson,
          'rateRatio': RatioBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [NutritionOrderAdministrationBuilder]
  /// from a [String] or [YamlMap] object
  factory NutritionOrderAdministrationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionOrderAdministrationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionOrderAdministrationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionOrderAdministrationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionOrderAdministrationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionOrderAdministrationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return NutritionOrderAdministrationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'NutritionOrderAdministration';

  /// [schedule]
  /// Schedule information for an enteral formula.
  NutritionOrderScheduleBuilder? schedule;

  /// [quantity]
  /// The volume of formula to provide to the patient per the specified
  /// administration schedule.
  QuantityBuilder? quantity;

  /// [rateX]
  /// The rate of administration of formula via a feeding pump, e.g. 60 mL
  /// per hour, according to the specified schedule.
  RateXNutritionOrderAdministrationBuilder? rateX;

  /// Getter for [rateQuantity] as a QuantityBuilder
  QuantityBuilder? get rateQuantity => rateX?.isAs<QuantityBuilder>();

  /// Getter for [rateRatio] as a RatioBuilder
  RatioBuilder? get rateRatio => rateX?.isAs<RatioBuilder>();

  /// Converts a [NutritionOrderAdministrationBuilder]
  /// to [NutritionOrderAdministration]
  @override
  NutritionOrderAdministration build() =>
      NutritionOrderAdministration.fromJson(toJson());

  /// Converts a [NutritionOrderAdministrationBuilder]
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
    addField('quantity', quantity);
    if (rateX != null) {
      final fhirType = rateX!.fhirType;
      addField('rate${fhirType.capitalizeFirstLetter()}', rateX);
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
      'schedule',
      'quantity',
      'rateX',
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
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
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
          if (child is NutritionOrderScheduleBuilder) {
            schedule = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'quantity':
        {
          if (child is QuantityBuilder) {
            quantity = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'rate':
      case 'rateX':
        {
          if (child is RateXNutritionOrderAdministrationBuilder) {
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
        return ['NutritionOrderScheduleBuilder'];
      case 'quantity':
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
      default:
        return <String>[];
    }
  }

  /// Creates a new [NutritionOrderAdministrationBuilder]
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
          schedule = NutritionOrderScheduleBuilder.empty();
          return;
        }
      case 'quantity':
        {
          quantity = QuantityBuilder.empty();
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
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  NutritionOrderAdministrationBuilder clone() => throw UnimplementedError();
  @override
  NutritionOrderAdministrationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    NutritionOrderScheduleBuilder? schedule,
    QuantityBuilder? quantity,
    RateXNutritionOrderAdministrationBuilder? rateX,
    QuantityBuilder? rateQuantity,
    RatioBuilder? rateRatio,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = NutritionOrderAdministrationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      schedule: schedule ?? this.schedule,
      quantity: quantity ?? this.quantity,
      rateX: rateX ?? rateQuantity ?? rateRatio ?? this.rateX,
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
    if (o is! NutritionOrderAdministrationBuilder) {
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
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      rateX,
      o.rateX,
    )) {
      return false;
    }
    return true;
  }
}

/// [NutritionOrderSchedule2Builder]
/// Schedule information for an enteral formula.
class NutritionOrderSchedule2Builder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [NutritionOrderSchedule2Builder]

  NutritionOrderSchedule2Builder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.timing,
    this.asNeeded,
    this.asNeededFor,
    super.disallowExtensions,
  }) : super(
          objectPath: 'NutritionOrder.enteralFormula.administration.schedule',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory NutritionOrderSchedule2Builder.empty() =>
      NutritionOrderSchedule2Builder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionOrderSchedule2Builder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'NutritionOrder.enteralFormula.administration.schedule';
    return NutritionOrderSchedule2Builder(
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
      timing: (json['timing'] as List<dynamic>?)
          ?.map<TimingBuilder>(
            (v) => TimingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.timing',
              },
            ),
          )
          .toList(),
      asNeeded: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'asNeeded',
        FhirBooleanBuilder.fromJson,
        '$objectPath.asNeeded',
      ),
      asNeededFor: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'asNeededFor',
        CodeableConceptBuilder.fromJson,
        '$objectPath.asNeededFor',
      ),
    );
  }

  /// Deserialize [NutritionOrderSchedule2Builder]
  /// from a [String] or [YamlMap] object
  factory NutritionOrderSchedule2Builder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionOrderSchedule2Builder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionOrderSchedule2Builder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionOrderSchedule2Builder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionOrderSchedule2Builder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionOrderSchedule2Builder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return NutritionOrderSchedule2Builder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'NutritionOrderSchedule2';

  /// [timing]
  /// The time period and frequency at which the enteral formula should be
  /// given. The enteral formula should be given for the combination of all
  /// schedules if more than one schedule is present.
  List<TimingBuilder>? timing;

  /// [asNeeded]
  /// Indicates whether the enteral formula is only taken when needed within
  /// a specific dosing schedule.
  FhirBooleanBuilder? asNeeded;

  /// [asNeededFor]
  /// Indicates whether the enteral formula is only taken based on a
  /// precondition for taking the enteral formula.
  CodeableConceptBuilder? asNeededFor;

  /// Converts a [NutritionOrderSchedule2Builder]
  /// to [NutritionOrderSchedule2]
  @override
  NutritionOrderSchedule2 build() => NutritionOrderSchedule2.fromJson(toJson());

  /// Converts a [NutritionOrderSchedule2Builder]
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
    addField('timing', timing);
    addField('asNeeded', asNeeded);
    addField('asNeededFor', asNeededFor);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'timing',
      'asNeeded',
      'asNeededFor',
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
      case 'timing':
        if (timing != null) {
          fields.addAll(timing!);
        }
      case 'asNeeded':
        if (asNeeded != null) {
          fields.add(asNeeded!);
        }
      case 'asNeededFor':
        if (asNeededFor != null) {
          fields.add(asNeededFor!);
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
      case 'timing':
        {
          if (child is List<TimingBuilder>) {
            // Replace or create new list
            timing = child;
            return;
          } else if (child is TimingBuilder) {
            // Add single element to existing list or create new list
            timing = [
              ...(timing ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'asNeeded':
        {
          if (child is FhirBooleanBuilder) {
            asNeeded = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                asNeeded = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'asNeededFor':
        {
          if (child is CodeableConceptBuilder) {
            asNeededFor = child;
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
      case 'timing':
        return ['TimingBuilder'];
      case 'asNeeded':
        return ['FhirBooleanBuilder'];
      case 'asNeededFor':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [NutritionOrderSchedule2Builder]
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
      case 'timing':
        {
          timing = <TimingBuilder>[];
          return;
        }
      case 'asNeeded':
        {
          asNeeded = FhirBooleanBuilder.empty();
          return;
        }
      case 'asNeededFor':
        {
          asNeededFor = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  NutritionOrderSchedule2Builder clone() => throw UnimplementedError();
  @override
  NutritionOrderSchedule2Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<TimingBuilder>? timing,
    FhirBooleanBuilder? asNeeded,
    CodeableConceptBuilder? asNeededFor,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = NutritionOrderSchedule2Builder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      timing: timing ?? this.timing,
      asNeeded: asNeeded ?? this.asNeeded,
      asNeededFor: asNeededFor ?? this.asNeededFor,
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
    if (o is! NutritionOrderSchedule2Builder) {
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
    if (!listEquals<TimingBuilder>(
      timing,
      o.timing,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      asNeeded,
      o.asNeeded,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      asNeededFor,
      o.asNeededFor,
    )) {
      return false;
    }
    return true;
  }
}
