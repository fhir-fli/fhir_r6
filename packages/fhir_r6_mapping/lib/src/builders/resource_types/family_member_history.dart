import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        FamilyMemberHistory,
        FamilyMemberHistoryCondition,
        FamilyMemberHistoryParticipant,
        FamilyMemberHistoryProcedure,
        R5ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [FamilyMemberHistoryBuilder]
/// Significant health conditions for a person related to the patient
/// relevant in the context of care for the patient.
class FamilyMemberHistoryBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [FamilyMemberHistoryBuilder]

  FamilyMemberHistoryBuilder({
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
    this.status,
    this.dataAbsentReason,
    this.patient,
    this.date,
    this.participant,
    this.name,
    this.relationship,
    this.sex,
    BornXFamilyMemberHistoryBuilder? bornX,
    PeriodBuilder? bornPeriod,
    FhirDateBuilder? bornDate,
    FhirStringBuilder? bornString,
    AgeXFamilyMemberHistoryBuilder? ageX,
    AgeBuilder? ageAge,
    RangeBuilder? ageRange,
    FhirStringBuilder? ageString,
    this.estimatedAge,
    DeceasedXFamilyMemberHistoryBuilder? deceasedX,
    FhirBooleanBuilder? deceasedBoolean,
    AgeBuilder? deceasedAge,
    RangeBuilder? deceasedRange,
    FhirDateBuilder? deceasedDate,
    FhirStringBuilder? deceasedString,
    this.reason,
    this.note,
    this.condition,
    this.procedure,
  })  : bornX = bornX ?? bornPeriod ?? bornDate ?? bornString,
        ageX = ageX ?? ageAge ?? ageRange ?? ageString,
        deceasedX = deceasedX ??
            deceasedBoolean ??
            deceasedAge ??
            deceasedRange ??
            deceasedDate ??
            deceasedString,
        super(
          objectPath: 'FamilyMemberHistory',
          resourceType: R5ResourceType.FamilyMemberHistory,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory FamilyMemberHistoryBuilder.empty() => FamilyMemberHistoryBuilder(
        status: FamilyHistoryStatusBuilder.values.first,
        patient: ReferenceBuilder.empty(),
        relationship: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory FamilyMemberHistoryBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'FamilyMemberHistory';
    return FamilyMemberHistoryBuilder(
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
      status: JsonParser.parsePrimitive<FamilyHistoryStatusBuilder>(
        json,
        'status',
        FamilyHistoryStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      dataAbsentReason: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'dataAbsentReason',
        CodeableConceptBuilder.fromJson,
        '$objectPath.dataAbsentReason',
      ),
      patient: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'patient',
        ReferenceBuilder.fromJson,
        '$objectPath.patient',
      ),
      date: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'date',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.date',
      ),
      participant: (json['participant'] as List<dynamic>?)
          ?.map<FamilyMemberHistoryParticipantBuilder>(
            (v) => FamilyMemberHistoryParticipantBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.participant',
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
      relationship: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'relationship',
        CodeableConceptBuilder.fromJson,
        '$objectPath.relationship',
      ),
      sex: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'sex',
        CodeableConceptBuilder.fromJson,
        '$objectPath.sex',
      ),
      bornX: JsonParser.parsePolymorphic<BornXFamilyMemberHistoryBuilder>(
        json,
        {
          'bornPeriod': PeriodBuilder.fromJson,
          'bornDate': FhirDateBuilder.fromJson,
          'bornString': FhirStringBuilder.fromJson,
        },
        objectPath,
      ),
      ageX: JsonParser.parsePolymorphic<AgeXFamilyMemberHistoryBuilder>(
        json,
        {
          'ageAge': AgeBuilder.fromJson,
          'ageRange': RangeBuilder.fromJson,
          'ageString': FhirStringBuilder.fromJson,
        },
        objectPath,
      ),
      estimatedAge: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'estimatedAge',
        FhirBooleanBuilder.fromJson,
        '$objectPath.estimatedAge',
      ),
      deceasedX:
          JsonParser.parsePolymorphic<DeceasedXFamilyMemberHistoryBuilder>(
        json,
        {
          'deceasedBoolean': FhirBooleanBuilder.fromJson,
          'deceasedAge': AgeBuilder.fromJson,
          'deceasedRange': RangeBuilder.fromJson,
          'deceasedDate': FhirDateBuilder.fromJson,
          'deceasedString': FhirStringBuilder.fromJson,
        },
        objectPath,
      ),
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
      condition: (json['condition'] as List<dynamic>?)
          ?.map<FamilyMemberHistoryConditionBuilder>(
            (v) => FamilyMemberHistoryConditionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.condition',
              },
            ),
          )
          .toList(),
      procedure: (json['procedure'] as List<dynamic>?)
          ?.map<FamilyMemberHistoryProcedureBuilder>(
            (v) => FamilyMemberHistoryProcedureBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.procedure',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [FamilyMemberHistoryBuilder]
  /// from a [String] or [YamlMap] object
  factory FamilyMemberHistoryBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return FamilyMemberHistoryBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return FamilyMemberHistoryBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'FamilyMemberHistoryBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [FamilyMemberHistoryBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory FamilyMemberHistoryBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return FamilyMemberHistoryBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'FamilyMemberHistory';

  /// [identifier]
  /// Business identifiers assigned to this family member history by the
  /// performer or other systems which remain constant as the resource is
  /// updated and propagates from server to server.
  List<IdentifierBuilder>? identifier;

  /// [instantiatesCanonical]
  /// The URL pointing to a FHIR-defined protocol, guideline, orderset or
  /// other definition that is adhered to in whole or in part by this
  /// FamilyMemberHistory.
  List<FhirCanonicalBuilder>? instantiatesCanonical;

  /// [instantiatesUri]
  /// The URL pointing to an externally maintained protocol, guideline,
  /// orderset or other definition that is adhered to in whole or in part by
  /// this FamilyMemberHistory.
  List<FhirUriBuilder>? instantiatesUri;

  /// [status]
  /// A code specifying the status of the record of the family history of a
  /// specific family member.
  FamilyHistoryStatusBuilder? status;

  /// [dataAbsentReason]
  /// Describes why the family member's history is not available.
  CodeableConceptBuilder? dataAbsentReason;

  /// [patient]
  /// The person who this history concerns.
  ReferenceBuilder? patient;

  /// [date]
  /// The date (and possibly time) when the family member history was
  /// recorded or last updated.
  FhirDateTimeBuilder? date;

  /// [participant]
  /// Indicates who or what participated in the activities related to the
  /// family member history and how they were involved.
  List<FamilyMemberHistoryParticipantBuilder>? participant;

  /// [name]
  /// This will either be a name or a description; e.g. "Aunt Susan", "my
  /// cousin with the red hair".
  FhirStringBuilder? name;

  /// [relationship]
  /// The type of relationship this person has to the patient (father,
  /// mother, brother etc.).
  CodeableConceptBuilder? relationship;

  /// [sex]
  /// The birth sex of the family member.
  CodeableConceptBuilder? sex;

  /// [bornX]
  /// The actual or approximate date of birth of the relative.
  BornXFamilyMemberHistoryBuilder? bornX;

  /// Getter for [bornPeriod] as a PeriodBuilder
  PeriodBuilder? get bornPeriod => bornX?.isAs<PeriodBuilder>();

  /// Getter for [bornDate] as a FhirDateBuilder
  FhirDateBuilder? get bornDate => bornX?.isAs<FhirDateBuilder>();

  /// Getter for [bornString] as a FhirStringBuilder
  FhirStringBuilder? get bornString => bornX?.isAs<FhirStringBuilder>();

  /// [ageX]
  /// The age of the relative at the time the family member history is
  /// recorded.
  AgeXFamilyMemberHistoryBuilder? ageX;

  /// Getter for [ageAge] as a AgeBuilder
  AgeBuilder? get ageAge => ageX?.isAs<AgeBuilder>();

  /// Getter for [ageRange] as a RangeBuilder
  RangeBuilder? get ageRange => ageX?.isAs<RangeBuilder>();

  /// Getter for [ageString] as a FhirStringBuilder
  FhirStringBuilder? get ageString => ageX?.isAs<FhirStringBuilder>();

  /// [estimatedAge]
  /// If true, indicates that the age value specified is an estimated value.
  FhirBooleanBuilder? estimatedAge;

  /// [deceasedX]
  /// Deceased flag or the actual or approximate age of the relative at the
  /// time of death for the family member history record.
  DeceasedXFamilyMemberHistoryBuilder? deceasedX;

  /// Getter for [deceasedBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get deceasedBoolean =>
      deceasedX?.isAs<FhirBooleanBuilder>();

  /// Getter for [deceasedAge] as a AgeBuilder
  AgeBuilder? get deceasedAge => deceasedX?.isAs<AgeBuilder>();

  /// Getter for [deceasedRange] as a RangeBuilder
  RangeBuilder? get deceasedRange => deceasedX?.isAs<RangeBuilder>();

  /// Getter for [deceasedDate] as a FhirDateBuilder
  FhirDateBuilder? get deceasedDate => deceasedX?.isAs<FhirDateBuilder>();

  /// Getter for [deceasedString] as a FhirStringBuilder
  FhirStringBuilder? get deceasedString => deceasedX?.isAs<FhirStringBuilder>();

  /// [reason]
  /// Describes why the family member history occurred in coded or textual
  /// form, or Indicates a Condition, Observation, AllergyIntolerance, or
  /// QuestionnaireResponse that justifies this family member history event.
  List<CodeableReferenceBuilder>? reason;

  /// [note]
  /// This property allows a non condition-specific note to the made about
  /// the related person. Ideally, the note would be in the condition
  /// property, but this is not always possible.
  List<AnnotationBuilder>? note;

  /// [condition]
  /// The significant Conditions (or condition) that the family member had.
  /// This is a repeating section to allow a system to represent more than
  /// one condition per resource, though there is nothing stopping multiple
  /// resources - one per condition.
  List<FamilyMemberHistoryConditionBuilder>? condition;

  /// [procedure]
  /// The significant Procedures (or procedure) that the family member had.
  /// This is a repeating section to allow a system to represent more than
  /// one procedure per resource, though there is nothing stopping multiple
  /// resources - one per procedure.
  List<FamilyMemberHistoryProcedureBuilder>? procedure;

  /// Converts a [FamilyMemberHistoryBuilder]
  /// to [FamilyMemberHistory]
  @override
  FamilyMemberHistory build() => FamilyMemberHistory.fromJson(toJson());

  /// Converts a [FamilyMemberHistoryBuilder]
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
    addField('status', status);
    addField('dataAbsentReason', dataAbsentReason);
    addField('patient', patient);
    addField('date', date);
    addField('participant', participant);
    addField('name', name);
    addField('relationship', relationship);
    addField('sex', sex);
    if (bornX != null) {
      final fhirType = bornX!.fhirType;
      addField('born${fhirType.capitalizeFirstLetter()}', bornX);
    }

    if (ageX != null) {
      final fhirType = ageX!.fhirType;
      addField('age${fhirType.capitalizeFirstLetter()}', ageX);
    }

    addField('estimatedAge', estimatedAge);
    if (deceasedX != null) {
      final fhirType = deceasedX!.fhirType;
      addField('deceased${fhirType.capitalizeFirstLetter()}', deceasedX);
    }

    addField('reason', reason);
    addField('note', note);
    addField('condition', condition);
    addField('procedure', procedure);
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
      'status',
      'dataAbsentReason',
      'patient',
      'date',
      'participant',
      'name',
      'relationship',
      'sex',
      'bornX',
      'ageX',
      'estimatedAge',
      'deceasedX',
      'reason',
      'note',
      'condition',
      'procedure',
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
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'dataAbsentReason':
        if (dataAbsentReason != null) {
          fields.add(dataAbsentReason!);
        }
      case 'patient':
        if (patient != null) {
          fields.add(patient!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'participant':
        if (participant != null) {
          fields.addAll(participant!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'relationship':
        if (relationship != null) {
          fields.add(relationship!);
        }
      case 'sex':
        if (sex != null) {
          fields.add(sex!);
        }
      case 'born':
        if (bornX != null) {
          fields.add(bornX!);
        }
      case 'bornX':
        if (bornX != null) {
          fields.add(bornX!);
        }
      case 'bornPeriod':
        if (bornX is PeriodBuilder) {
          fields.add(bornX!);
        }
      case 'bornDate':
        if (bornX is FhirDateBuilder) {
          fields.add(bornX!);
        }
      case 'bornString':
        if (bornX is FhirStringBuilder) {
          fields.add(bornX!);
        }
      case 'age':
        if (ageX != null) {
          fields.add(ageX!);
        }
      case 'ageX':
        if (ageX != null) {
          fields.add(ageX!);
        }
      case 'ageAge':
        if (ageX is AgeBuilder) {
          fields.add(ageX!);
        }
      case 'ageRange':
        if (ageX is RangeBuilder) {
          fields.add(ageX!);
        }
      case 'ageString':
        if (ageX is FhirStringBuilder) {
          fields.add(ageX!);
        }
      case 'estimatedAge':
        if (estimatedAge != null) {
          fields.add(estimatedAge!);
        }
      case 'deceased':
        if (deceasedX != null) {
          fields.add(deceasedX!);
        }
      case 'deceasedX':
        if (deceasedX != null) {
          fields.add(deceasedX!);
        }
      case 'deceasedBoolean':
        if (deceasedX is FhirBooleanBuilder) {
          fields.add(deceasedX!);
        }
      case 'deceasedAge':
        if (deceasedX is AgeBuilder) {
          fields.add(deceasedX!);
        }
      case 'deceasedRange':
        if (deceasedX is RangeBuilder) {
          fields.add(deceasedX!);
        }
      case 'deceasedDate':
        if (deceasedX is FhirDateBuilder) {
          fields.add(deceasedX!);
        }
      case 'deceasedString':
        if (deceasedX is FhirStringBuilder) {
          fields.add(deceasedX!);
        }
      case 'reason':
        if (reason != null) {
          fields.addAll(reason!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'condition':
        if (condition != null) {
          fields.addAll(condition!);
        }
      case 'procedure':
        if (procedure != null) {
          fields.addAll(procedure!);
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
      case 'status':
        {
          if (child is FamilyHistoryStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = FamilyHistoryStatusBuilder(stringValue);
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
      case 'dataAbsentReason':
        {
          if (child is CodeableConceptBuilder) {
            dataAbsentReason = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'patient':
        {
          if (child is ReferenceBuilder) {
            patient = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'date':
        {
          if (child is FhirDateTimeBuilder) {
            date = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
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
      case 'participant':
        {
          if (child is List<FamilyMemberHistoryParticipantBuilder>) {
            // Replace or create new list
            participant = child;
            return;
          } else if (child is FamilyMemberHistoryParticipantBuilder) {
            // Add single element to existing list or create new list
            participant = [
              ...(participant ?? []),
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
      case 'relationship':
        {
          if (child is CodeableConceptBuilder) {
            relationship = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'sex':
        {
          if (child is CodeableConceptBuilder) {
            sex = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'born':
      case 'bornX':
        {
          if (child is BornXFamilyMemberHistoryBuilder) {
            bornX = child;
            return;
          } else {
            if (child is PeriodBuilder) {
              bornX = child;
              return;
            }
            if (child is FhirDateBuilder) {
              bornX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              bornX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'bornPeriod':
        {
          if (child is PeriodBuilder) {
            bornX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'bornDate':
        {
          if (child is FhirDateBuilder) {
            bornX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'bornString':
        {
          if (child is FhirStringBuilder) {
            bornX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'age':
      case 'ageX':
        {
          if (child is AgeXFamilyMemberHistoryBuilder) {
            ageX = child;
            return;
          } else {
            if (child is AgeBuilder) {
              ageX = child;
              return;
            }
            if (child is RangeBuilder) {
              ageX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              ageX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'ageAge':
        {
          if (child is AgeBuilder) {
            ageX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'ageRange':
        {
          if (child is RangeBuilder) {
            ageX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'ageString':
        {
          if (child is FhirStringBuilder) {
            ageX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'estimatedAge':
        {
          if (child is FhirBooleanBuilder) {
            estimatedAge = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                estimatedAge = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'deceased':
      case 'deceasedX':
        {
          if (child is DeceasedXFamilyMemberHistoryBuilder) {
            deceasedX = child;
            return;
          } else {
            if (child is FhirBooleanBuilder) {
              deceasedX = child;
              return;
            }
            if (child is AgeBuilder) {
              deceasedX = child;
              return;
            }
            if (child is RangeBuilder) {
              deceasedX = child;
              return;
            }
            if (child is FhirDateBuilder) {
              deceasedX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              deceasedX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'deceasedBoolean':
        {
          if (child is FhirBooleanBuilder) {
            deceasedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'deceasedAge':
        {
          if (child is AgeBuilder) {
            deceasedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'deceasedRange':
        {
          if (child is RangeBuilder) {
            deceasedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'deceasedDate':
        {
          if (child is FhirDateBuilder) {
            deceasedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'deceasedString':
        {
          if (child is FhirStringBuilder) {
            deceasedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
      case 'condition':
        {
          if (child is List<FamilyMemberHistoryConditionBuilder>) {
            // Replace or create new list
            condition = child;
            return;
          } else if (child is FamilyMemberHistoryConditionBuilder) {
            // Add single element to existing list or create new list
            condition = [
              ...(condition ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'procedure':
        {
          if (child is List<FamilyMemberHistoryProcedureBuilder>) {
            // Replace or create new list
            procedure = child;
            return;
          } else if (child is FamilyMemberHistoryProcedureBuilder) {
            // Add single element to existing list or create new list
            procedure = [
              ...(procedure ?? []),
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
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'dataAbsentReason':
        return ['CodeableConceptBuilder'];
      case 'patient':
        return ['ReferenceBuilder'];
      case 'date':
        return ['FhirDateTimeBuilder'];
      case 'participant':
        return ['FamilyMemberHistoryParticipantBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      case 'relationship':
        return ['CodeableConceptBuilder'];
      case 'sex':
        return ['CodeableConceptBuilder'];
      case 'born':
      case 'bornX':
        return [
          'PeriodBuilder',
          'FhirDateBuilder',
          'FhirStringBuilder',
        ];
      case 'bornPeriod':
        return ['PeriodBuilder'];
      case 'bornDate':
        return ['FhirDateBuilder'];
      case 'bornString':
        return ['FhirStringBuilder'];
      case 'age':
      case 'ageX':
        return [
          'AgeBuilder',
          'RangeBuilder',
          'FhirStringBuilder',
        ];
      case 'ageAge':
        return ['AgeBuilder'];
      case 'ageRange':
        return ['RangeBuilder'];
      case 'ageString':
        return ['FhirStringBuilder'];
      case 'estimatedAge':
        return ['FhirBooleanBuilder'];
      case 'deceased':
      case 'deceasedX':
        return [
          'FhirBooleanBuilder',
          'AgeBuilder',
          'RangeBuilder',
          'FhirDateBuilder',
          'FhirStringBuilder',
        ];
      case 'deceasedBoolean':
        return ['FhirBooleanBuilder'];
      case 'deceasedAge':
        return ['AgeBuilder'];
      case 'deceasedRange':
        return ['RangeBuilder'];
      case 'deceasedDate':
        return ['FhirDateBuilder'];
      case 'deceasedString':
        return ['FhirStringBuilder'];
      case 'reason':
        return ['CodeableReferenceBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      case 'condition':
        return ['FamilyMemberHistoryConditionBuilder'];
      case 'procedure':
        return ['FamilyMemberHistoryProcedureBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [FamilyMemberHistoryBuilder]
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
      case 'status':
        {
          status = FamilyHistoryStatusBuilder.empty();
          return;
        }
      case 'dataAbsentReason':
        {
          dataAbsentReason = CodeableConceptBuilder.empty();
          return;
        }
      case 'patient':
        {
          patient = ReferenceBuilder.empty();
          return;
        }
      case 'date':
        {
          date = FhirDateTimeBuilder.empty();
          return;
        }
      case 'participant':
        {
          participant = <FamilyMemberHistoryParticipantBuilder>[];
          return;
        }
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'relationship':
        {
          relationship = CodeableConceptBuilder.empty();
          return;
        }
      case 'sex':
        {
          sex = CodeableConceptBuilder.empty();
          return;
        }
      case 'born':
      case 'bornX':
      case 'bornPeriod':
        {
          bornX = PeriodBuilder.empty();
          return;
        }
      case 'bornDate':
        {
          bornX = FhirDateBuilder.empty();
          return;
        }
      case 'bornString':
        {
          bornX = FhirStringBuilder.empty();
          return;
        }
      case 'age':
      case 'ageX':
      case 'ageAge':
        {
          ageX = AgeBuilder.empty();
          return;
        }
      case 'ageRange':
        {
          ageX = RangeBuilder.empty();
          return;
        }
      case 'ageString':
        {
          ageX = FhirStringBuilder.empty();
          return;
        }
      case 'estimatedAge':
        {
          estimatedAge = FhirBooleanBuilder.empty();
          return;
        }
      case 'deceased':
      case 'deceasedX':
      case 'deceasedBoolean':
        {
          deceasedX = FhirBooleanBuilder.empty();
          return;
        }
      case 'deceasedAge':
        {
          deceasedX = AgeBuilder.empty();
          return;
        }
      case 'deceasedRange':
        {
          deceasedX = RangeBuilder.empty();
          return;
        }
      case 'deceasedDate':
        {
          deceasedX = FhirDateBuilder.empty();
          return;
        }
      case 'deceasedString':
        {
          deceasedX = FhirStringBuilder.empty();
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
      case 'condition':
        {
          condition = <FamilyMemberHistoryConditionBuilder>[];
          return;
        }
      case 'procedure':
        {
          procedure = <FamilyMemberHistoryProcedureBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  FamilyMemberHistoryBuilder clone() => throw UnimplementedError();
  @override
  FamilyMemberHistoryBuilder copyWith({
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
    FamilyHistoryStatusBuilder? status,
    CodeableConceptBuilder? dataAbsentReason,
    ReferenceBuilder? patient,
    FhirDateTimeBuilder? date,
    List<FamilyMemberHistoryParticipantBuilder>? participant,
    FhirStringBuilder? name,
    CodeableConceptBuilder? relationship,
    CodeableConceptBuilder? sex,
    BornXFamilyMemberHistoryBuilder? bornX,
    AgeXFamilyMemberHistoryBuilder? ageX,
    FhirBooleanBuilder? estimatedAge,
    DeceasedXFamilyMemberHistoryBuilder? deceasedX,
    List<CodeableReferenceBuilder>? reason,
    List<AnnotationBuilder>? note,
    List<FamilyMemberHistoryConditionBuilder>? condition,
    List<FamilyMemberHistoryProcedureBuilder>? procedure,
    PeriodBuilder? bornPeriod,
    FhirDateBuilder? bornDate,
    FhirStringBuilder? bornString,
    AgeBuilder? ageAge,
    RangeBuilder? ageRange,
    FhirStringBuilder? ageString,
    FhirBooleanBuilder? deceasedBoolean,
    AgeBuilder? deceasedAge,
    RangeBuilder? deceasedRange,
    FhirDateBuilder? deceasedDate,
    FhirStringBuilder? deceasedString,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = FamilyMemberHistoryBuilder(
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
      status: status ?? this.status,
      dataAbsentReason: dataAbsentReason ?? this.dataAbsentReason,
      patient: patient ?? this.patient,
      date: date ?? this.date,
      participant: participant ?? this.participant,
      name: name ?? this.name,
      relationship: relationship ?? this.relationship,
      sex: sex ?? this.sex,
      bornX: bornX ?? bornPeriod ?? bornDate ?? bornString ?? this.bornX,
      ageX: ageX ?? ageAge ?? ageRange ?? ageString ?? this.ageX,
      estimatedAge: estimatedAge ?? this.estimatedAge,
      deceasedX: deceasedX ??
          deceasedBoolean ??
          deceasedAge ??
          deceasedRange ??
          deceasedDate ??
          deceasedString ??
          this.deceasedX,
      reason: reason ?? this.reason,
      note: note ?? this.note,
      condition: condition ?? this.condition,
      procedure: procedure ?? this.procedure,
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
    if (o is! FamilyMemberHistoryBuilder) {
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
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      dataAbsentReason,
      o.dataAbsentReason,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      patient,
      o.patient,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      date,
      o.date,
    )) {
      return false;
    }
    if (!listEquals<FamilyMemberHistoryParticipantBuilder>(
      participant,
      o.participant,
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
      relationship,
      o.relationship,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sex,
      o.sex,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      bornX,
      o.bornX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      ageX,
      o.ageX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      estimatedAge,
      o.estimatedAge,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      deceasedX,
      o.deceasedX,
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
    if (!listEquals<FamilyMemberHistoryConditionBuilder>(
      condition,
      o.condition,
    )) {
      return false;
    }
    if (!listEquals<FamilyMemberHistoryProcedureBuilder>(
      procedure,
      o.procedure,
    )) {
      return false;
    }
    return true;
  }
}

/// [FamilyMemberHistoryParticipantBuilder]
/// Indicates who or what participated in the activities related to the
/// family member history and how they were involved.
class FamilyMemberHistoryParticipantBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [FamilyMemberHistoryParticipantBuilder]

  FamilyMemberHistoryParticipantBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    this.actor,
    super.disallowExtensions,
  }) : super(
          objectPath: 'FamilyMemberHistory.participant',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory FamilyMemberHistoryParticipantBuilder.empty() =>
      FamilyMemberHistoryParticipantBuilder(
        actor: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory FamilyMemberHistoryParticipantBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'FamilyMemberHistory.participant';
    return FamilyMemberHistoryParticipantBuilder(
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

  /// Deserialize [FamilyMemberHistoryParticipantBuilder]
  /// from a [String] or [YamlMap] object
  factory FamilyMemberHistoryParticipantBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return FamilyMemberHistoryParticipantBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return FamilyMemberHistoryParticipantBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'FamilyMemberHistoryParticipantBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [FamilyMemberHistoryParticipantBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory FamilyMemberHistoryParticipantBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return FamilyMemberHistoryParticipantBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'FamilyMemberHistoryParticipant';

  /// [function_]
  /// Distinguishes the type of involvement of the actor in the activities
  /// related to the family member history.
  CodeableConceptBuilder? function_;

  /// [actor]
  /// Indicates who or what participated in the activities related to the
  /// family member history.
  ReferenceBuilder? actor;

  /// Converts a [FamilyMemberHistoryParticipantBuilder]
  /// to [FamilyMemberHistoryParticipant]
  @override
  FamilyMemberHistoryParticipant build() =>
      FamilyMemberHistoryParticipant.fromJson(toJson());

  /// Converts a [FamilyMemberHistoryParticipantBuilder]
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

  /// Creates a new [FamilyMemberHistoryParticipantBuilder]
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
  FamilyMemberHistoryParticipantBuilder clone() => throw UnimplementedError();
  @override
  FamilyMemberHistoryParticipantBuilder copyWith({
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
    final newResult = FamilyMemberHistoryParticipantBuilder(
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
    if (o is! FamilyMemberHistoryParticipantBuilder) {
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

/// [FamilyMemberHistoryConditionBuilder]
/// The significant Conditions (or condition) that the family member had.
/// This is a repeating section to allow a system to represent more than
/// one condition per resource, though there is nothing stopping multiple
/// resources - one per condition.
class FamilyMemberHistoryConditionBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [FamilyMemberHistoryConditionBuilder]

  FamilyMemberHistoryConditionBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.outcome,
    this.contributedToDeath,
    OnsetXFamilyMemberHistoryConditionBuilder? onsetX,
    AgeBuilder? onsetAge,
    RangeBuilder? onsetRange,
    PeriodBuilder? onsetPeriod,
    FhirStringBuilder? onsetString,
    this.note,
    super.disallowExtensions,
  })  : onsetX = onsetX ?? onsetAge ?? onsetRange ?? onsetPeriod ?? onsetString,
        super(
          objectPath: 'FamilyMemberHistory.condition',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory FamilyMemberHistoryConditionBuilder.empty() =>
      FamilyMemberHistoryConditionBuilder(
        code: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory FamilyMemberHistoryConditionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'FamilyMemberHistory.condition';
    return FamilyMemberHistoryConditionBuilder(
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
      outcome: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'outcome',
        CodeableConceptBuilder.fromJson,
        '$objectPath.outcome',
      ),
      contributedToDeath: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'contributedToDeath',
        FhirBooleanBuilder.fromJson,
        '$objectPath.contributedToDeath',
      ),
      onsetX: JsonParser.parsePolymorphic<
          OnsetXFamilyMemberHistoryConditionBuilder>(
        json,
        {
          'onsetAge': AgeBuilder.fromJson,
          'onsetRange': RangeBuilder.fromJson,
          'onsetPeriod': PeriodBuilder.fromJson,
          'onsetString': FhirStringBuilder.fromJson,
        },
        objectPath,
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

  /// Deserialize [FamilyMemberHistoryConditionBuilder]
  /// from a [String] or [YamlMap] object
  factory FamilyMemberHistoryConditionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return FamilyMemberHistoryConditionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return FamilyMemberHistoryConditionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'FamilyMemberHistoryConditionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [FamilyMemberHistoryConditionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory FamilyMemberHistoryConditionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return FamilyMemberHistoryConditionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'FamilyMemberHistoryCondition';

  /// [code]
  /// The actual condition specified. Could be a coded condition (like MI or
  /// Diabetes) or a less specific string like 'cancer' depending on how much
  /// is known about the condition and the capabilities of the creating
  /// system.
  CodeableConceptBuilder? code;

  /// [outcome]
  /// Indicates what happened following the condition. If the condition
  /// resulted in death, deceased date is captured on the relation.
  CodeableConceptBuilder? outcome;

  /// [contributedToDeath]
  /// This condition contributed to the cause of death of the related person.
  /// If contributedToDeath is not populated, then it is unknown.
  FhirBooleanBuilder? contributedToDeath;

  /// [onsetX]
  /// Either the age of onset, range of approximate age or descriptive string
  /// can be recorded. For conditions with multiple occurrences, this
  /// describes the first known occurrence.
  OnsetXFamilyMemberHistoryConditionBuilder? onsetX;

  /// Getter for [onsetAge] as a AgeBuilder
  AgeBuilder? get onsetAge => onsetX?.isAs<AgeBuilder>();

  /// Getter for [onsetRange] as a RangeBuilder
  RangeBuilder? get onsetRange => onsetX?.isAs<RangeBuilder>();

  /// Getter for [onsetPeriod] as a PeriodBuilder
  PeriodBuilder? get onsetPeriod => onsetX?.isAs<PeriodBuilder>();

  /// Getter for [onsetString] as a FhirStringBuilder
  FhirStringBuilder? get onsetString => onsetX?.isAs<FhirStringBuilder>();

  /// [note]
  /// An area where general notes can be placed about this specific
  /// condition.
  List<AnnotationBuilder>? note;

  /// Converts a [FamilyMemberHistoryConditionBuilder]
  /// to [FamilyMemberHistoryCondition]
  @override
  FamilyMemberHistoryCondition build() =>
      FamilyMemberHistoryCondition.fromJson(toJson());

  /// Converts a [FamilyMemberHistoryConditionBuilder]
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
    addField('outcome', outcome);
    addField('contributedToDeath', contributedToDeath);
    if (onsetX != null) {
      final fhirType = onsetX!.fhirType;
      addField('onset${fhirType.capitalizeFirstLetter()}', onsetX);
    }

    addField('note', note);
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
      'outcome',
      'contributedToDeath',
      'onsetX',
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
      case 'outcome':
        if (outcome != null) {
          fields.add(outcome!);
        }
      case 'contributedToDeath':
        if (contributedToDeath != null) {
          fields.add(contributedToDeath!);
        }
      case 'onset':
        if (onsetX != null) {
          fields.add(onsetX!);
        }
      case 'onsetX':
        if (onsetX != null) {
          fields.add(onsetX!);
        }
      case 'onsetAge':
        if (onsetX is AgeBuilder) {
          fields.add(onsetX!);
        }
      case 'onsetRange':
        if (onsetX is RangeBuilder) {
          fields.add(onsetX!);
        }
      case 'onsetPeriod':
        if (onsetX is PeriodBuilder) {
          fields.add(onsetX!);
        }
      case 'onsetString':
        if (onsetX is FhirStringBuilder) {
          fields.add(onsetX!);
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
      case 'outcome':
        {
          if (child is CodeableConceptBuilder) {
            outcome = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contributedToDeath':
        {
          if (child is FhirBooleanBuilder) {
            contributedToDeath = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                contributedToDeath = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'onset':
      case 'onsetX':
        {
          if (child is OnsetXFamilyMemberHistoryConditionBuilder) {
            onsetX = child;
            return;
          } else {
            if (child is AgeBuilder) {
              onsetX = child;
              return;
            }
            if (child is RangeBuilder) {
              onsetX = child;
              return;
            }
            if (child is PeriodBuilder) {
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
      case 'onsetAge':
        {
          if (child is AgeBuilder) {
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
      case 'onsetPeriod':
        {
          if (child is PeriodBuilder) {
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
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'outcome':
        return ['CodeableConceptBuilder'];
      case 'contributedToDeath':
        return ['FhirBooleanBuilder'];
      case 'onset':
      case 'onsetX':
        return [
          'AgeBuilder',
          'RangeBuilder',
          'PeriodBuilder',
          'FhirStringBuilder',
        ];
      case 'onsetAge':
        return ['AgeBuilder'];
      case 'onsetRange':
        return ['RangeBuilder'];
      case 'onsetPeriod':
        return ['PeriodBuilder'];
      case 'onsetString':
        return ['FhirStringBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [FamilyMemberHistoryConditionBuilder]
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
      case 'outcome':
        {
          outcome = CodeableConceptBuilder.empty();
          return;
        }
      case 'contributedToDeath':
        {
          contributedToDeath = FhirBooleanBuilder.empty();
          return;
        }
      case 'onset':
      case 'onsetX':
      case 'onsetAge':
        {
          onsetX = AgeBuilder.empty();
          return;
        }
      case 'onsetRange':
        {
          onsetX = RangeBuilder.empty();
          return;
        }
      case 'onsetPeriod':
        {
          onsetX = PeriodBuilder.empty();
          return;
        }
      case 'onsetString':
        {
          onsetX = FhirStringBuilder.empty();
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
  FamilyMemberHistoryConditionBuilder clone() => throw UnimplementedError();
  @override
  FamilyMemberHistoryConditionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? code,
    CodeableConceptBuilder? outcome,
    FhirBooleanBuilder? contributedToDeath,
    OnsetXFamilyMemberHistoryConditionBuilder? onsetX,
    List<AnnotationBuilder>? note,
    AgeBuilder? onsetAge,
    RangeBuilder? onsetRange,
    PeriodBuilder? onsetPeriod,
    FhirStringBuilder? onsetString,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = FamilyMemberHistoryConditionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      outcome: outcome ?? this.outcome,
      contributedToDeath: contributedToDeath ?? this.contributedToDeath,
      onsetX: onsetX ??
          onsetAge ??
          onsetRange ??
          onsetPeriod ??
          onsetString ??
          this.onsetX,
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
    if (o is! FamilyMemberHistoryConditionBuilder) {
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
      outcome,
      o.outcome,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      contributedToDeath,
      o.contributedToDeath,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      onsetX,
      o.onsetX,
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

/// [FamilyMemberHistoryProcedureBuilder]
/// The significant Procedures (or procedure) that the family member had.
/// This is a repeating section to allow a system to represent more than
/// one procedure per resource, though there is nothing stopping multiple
/// resources - one per procedure.
class FamilyMemberHistoryProcedureBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [FamilyMemberHistoryProcedureBuilder]

  FamilyMemberHistoryProcedureBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.outcome,
    this.contributedToDeath,
    PerformedXFamilyMemberHistoryProcedureBuilder? performedX,
    AgeBuilder? performedAge,
    RangeBuilder? performedRange,
    PeriodBuilder? performedPeriod,
    FhirStringBuilder? performedString,
    FhirDateTimeBuilder? performedDateTime,
    this.note,
    super.disallowExtensions,
  })  : performedX = performedX ??
            performedAge ??
            performedRange ??
            performedPeriod ??
            performedString ??
            performedDateTime,
        super(
          objectPath: 'FamilyMemberHistory.procedure',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory FamilyMemberHistoryProcedureBuilder.empty() =>
      FamilyMemberHistoryProcedureBuilder(
        code: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory FamilyMemberHistoryProcedureBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'FamilyMemberHistory.procedure';
    return FamilyMemberHistoryProcedureBuilder(
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
      outcome: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'outcome',
        CodeableConceptBuilder.fromJson,
        '$objectPath.outcome',
      ),
      contributedToDeath: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'contributedToDeath',
        FhirBooleanBuilder.fromJson,
        '$objectPath.contributedToDeath',
      ),
      performedX: JsonParser.parsePolymorphic<
          PerformedXFamilyMemberHistoryProcedureBuilder>(
        json,
        {
          'performedAge': AgeBuilder.fromJson,
          'performedRange': RangeBuilder.fromJson,
          'performedPeriod': PeriodBuilder.fromJson,
          'performedString': FhirStringBuilder.fromJson,
          'performedDateTime': FhirDateTimeBuilder.fromJson,
        },
        objectPath,
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

  /// Deserialize [FamilyMemberHistoryProcedureBuilder]
  /// from a [String] or [YamlMap] object
  factory FamilyMemberHistoryProcedureBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return FamilyMemberHistoryProcedureBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return FamilyMemberHistoryProcedureBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'FamilyMemberHistoryProcedureBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [FamilyMemberHistoryProcedureBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory FamilyMemberHistoryProcedureBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return FamilyMemberHistoryProcedureBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'FamilyMemberHistoryProcedure';

  /// [code]
  /// The actual procedure specified. Could be a coded procedure or a less
  /// specific string depending on how much is known about the procedure and
  /// the capabilities of the creating system.
  CodeableConceptBuilder? code;

  /// [outcome]
  /// Indicates what happened following the procedure. If the procedure
  /// resulted in death, deceased date is captured on the relation.
  CodeableConceptBuilder? outcome;

  /// [contributedToDeath]
  /// This procedure contributed to the cause of death of the related person.
  /// If contributedToDeath is not populated, then it is unknown.
  FhirBooleanBuilder? contributedToDeath;

  /// [performedX]
  /// Estimated or actual date, date-time, period, or age when the procedure
  /// was performed. Allows a period to support complex procedures that span
  /// more than one date, and also allows for the length of the procedure to
  /// be captured.
  PerformedXFamilyMemberHistoryProcedureBuilder? performedX;

  /// Getter for [performedAge] as a AgeBuilder
  AgeBuilder? get performedAge => performedX?.isAs<AgeBuilder>();

  /// Getter for [performedRange] as a RangeBuilder
  RangeBuilder? get performedRange => performedX?.isAs<RangeBuilder>();

  /// Getter for [performedPeriod] as a PeriodBuilder
  PeriodBuilder? get performedPeriod => performedX?.isAs<PeriodBuilder>();

  /// Getter for [performedString] as a FhirStringBuilder
  FhirStringBuilder? get performedString =>
      performedX?.isAs<FhirStringBuilder>();

  /// Getter for [performedDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get performedDateTime =>
      performedX?.isAs<FhirDateTimeBuilder>();

  /// [note]
  /// An area where general notes can be placed about this specific
  /// procedure.
  List<AnnotationBuilder>? note;

  /// Converts a [FamilyMemberHistoryProcedureBuilder]
  /// to [FamilyMemberHistoryProcedure]
  @override
  FamilyMemberHistoryProcedure build() =>
      FamilyMemberHistoryProcedure.fromJson(toJson());

  /// Converts a [FamilyMemberHistoryProcedureBuilder]
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
    addField('outcome', outcome);
    addField('contributedToDeath', contributedToDeath);
    if (performedX != null) {
      final fhirType = performedX!.fhirType;
      addField('performed${fhirType.capitalizeFirstLetter()}', performedX);
    }

    addField('note', note);
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
      'outcome',
      'contributedToDeath',
      'performedX',
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
      case 'outcome':
        if (outcome != null) {
          fields.add(outcome!);
        }
      case 'contributedToDeath':
        if (contributedToDeath != null) {
          fields.add(contributedToDeath!);
        }
      case 'performed':
        if (performedX != null) {
          fields.add(performedX!);
        }
      case 'performedX':
        if (performedX != null) {
          fields.add(performedX!);
        }
      case 'performedAge':
        if (performedX is AgeBuilder) {
          fields.add(performedX!);
        }
      case 'performedRange':
        if (performedX is RangeBuilder) {
          fields.add(performedX!);
        }
      case 'performedPeriod':
        if (performedX is PeriodBuilder) {
          fields.add(performedX!);
        }
      case 'performedString':
        if (performedX is FhirStringBuilder) {
          fields.add(performedX!);
        }
      case 'performedDateTime':
        if (performedX is FhirDateTimeBuilder) {
          fields.add(performedX!);
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
      case 'outcome':
        {
          if (child is CodeableConceptBuilder) {
            outcome = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contributedToDeath':
        {
          if (child is FhirBooleanBuilder) {
            contributedToDeath = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                contributedToDeath = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'performed':
      case 'performedX':
        {
          if (child is PerformedXFamilyMemberHistoryProcedureBuilder) {
            performedX = child;
            return;
          } else {
            if (child is AgeBuilder) {
              performedX = child;
              return;
            }
            if (child is RangeBuilder) {
              performedX = child;
              return;
            }
            if (child is PeriodBuilder) {
              performedX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              performedX = child;
              return;
            }
            if (child is FhirDateTimeBuilder) {
              performedX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'performedAge':
        {
          if (child is AgeBuilder) {
            performedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'performedRange':
        {
          if (child is RangeBuilder) {
            performedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'performedPeriod':
        {
          if (child is PeriodBuilder) {
            performedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'performedString':
        {
          if (child is FhirStringBuilder) {
            performedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'performedDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            performedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'outcome':
        return ['CodeableConceptBuilder'];
      case 'contributedToDeath':
        return ['FhirBooleanBuilder'];
      case 'performed':
      case 'performedX':
        return [
          'AgeBuilder',
          'RangeBuilder',
          'PeriodBuilder',
          'FhirStringBuilder',
          'FhirDateTimeBuilder',
        ];
      case 'performedAge':
        return ['AgeBuilder'];
      case 'performedRange':
        return ['RangeBuilder'];
      case 'performedPeriod':
        return ['PeriodBuilder'];
      case 'performedString':
        return ['FhirStringBuilder'];
      case 'performedDateTime':
        return ['FhirDateTimeBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [FamilyMemberHistoryProcedureBuilder]
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
      case 'outcome':
        {
          outcome = CodeableConceptBuilder.empty();
          return;
        }
      case 'contributedToDeath':
        {
          contributedToDeath = FhirBooleanBuilder.empty();
          return;
        }
      case 'performed':
      case 'performedX':
      case 'performedAge':
        {
          performedX = AgeBuilder.empty();
          return;
        }
      case 'performedRange':
        {
          performedX = RangeBuilder.empty();
          return;
        }
      case 'performedPeriod':
        {
          performedX = PeriodBuilder.empty();
          return;
        }
      case 'performedString':
        {
          performedX = FhirStringBuilder.empty();
          return;
        }
      case 'performedDateTime':
        {
          performedX = FhirDateTimeBuilder.empty();
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
  FamilyMemberHistoryProcedureBuilder clone() => throw UnimplementedError();
  @override
  FamilyMemberHistoryProcedureBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? code,
    CodeableConceptBuilder? outcome,
    FhirBooleanBuilder? contributedToDeath,
    PerformedXFamilyMemberHistoryProcedureBuilder? performedX,
    List<AnnotationBuilder>? note,
    AgeBuilder? performedAge,
    RangeBuilder? performedRange,
    PeriodBuilder? performedPeriod,
    FhirStringBuilder? performedString,
    FhirDateTimeBuilder? performedDateTime,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = FamilyMemberHistoryProcedureBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      outcome: outcome ?? this.outcome,
      contributedToDeath: contributedToDeath ?? this.contributedToDeath,
      performedX: performedX ??
          performedAge ??
          performedRange ??
          performedPeriod ??
          performedString ??
          performedDateTime ??
          this.performedX,
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
    if (o is! FamilyMemberHistoryProcedureBuilder) {
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
      outcome,
      o.outcome,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      contributedToDeath,
      o.contributedToDeath,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      performedX,
      o.performedX,
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
