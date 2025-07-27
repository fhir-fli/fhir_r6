import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        MedicationStatement,
        MedicationStatementAdherence,
        R5ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [MedicationStatementBuilder]
/// A record of a medication that is being consumed by a patient. A
/// MedicationStatement may indicate that the patient may be taking the
/// medication now or has taken the medication in the past or will be
/// taking the medication in the future. The source of this information can
/// be the patient, significant other (such as a family member or spouse),
/// or a clinician. A common scenario where this information is captured is
/// during the history taking process during a patient visit or stay. The
/// medication information may come from sources such as the patient's
/// memory, from a prescription bottle, or from a list of medications the
/// patient, clinician or other party maintains.
///
/// The primary difference between a medicationstatement and a
/// medicationadministration is that the medication administration has
/// complete administration information and is based on actual
/// administration information from the person who administered the
/// medication. A medicationstatement is often, if not always, less
/// specific. There is no required date/time when the medication was
/// administered, in fact we only know that a source has reported the
/// patient is taking this medication, where details such as time,
/// quantity, or rate or even medication product may be incomplete or
/// missing or less precise. As stated earlier, the Medication Statement
/// information may come from the patient's memory, from a prescription
/// bottle or from a list of medications the patient, clinician or other
/// party maintains. Medication administration is more formal and is not
/// missing detailed information.
///
/// The MedicationStatement resource was previously called
/// MedicationStatement.
class MedicationStatementBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [MedicationStatementBuilder]

  MedicationStatementBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.partOf,
    this.status,
    this.category,
    this.medication,
    this.subject,
    this.encounter,
    EffectiveXMedicationStatementBuilder? effectiveX,
    FhirDateTimeBuilder? effectiveDateTime,
    PeriodBuilder? effectivePeriod,
    TimingBuilder? effectiveTiming,
    this.dateAsserted,
    this.informationSource,
    this.derivedFrom,
    this.reason,
    this.note,
    this.relatedClinicalInformation,
    this.renderedDosageInstruction,
    this.dosage,
    this.adherence,
  })  : effectiveX = effectiveX ??
            effectiveDateTime ??
            effectivePeriod ??
            effectiveTiming,
        super(
          objectPath: 'MedicationStatement',
          resourceType: R5ResourceType.MedicationStatement,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicationStatementBuilder.empty() => MedicationStatementBuilder(
        status: MedicationStatementStatusCodesBuilder.values.first,
        medication: CodeableReferenceBuilder.empty(),
        subject: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationStatementBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationStatement';
    return MedicationStatementBuilder(
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
      status: JsonParser.parsePrimitive<MedicationStatementStatusCodesBuilder>(
        json,
        'status',
        MedicationStatementStatusCodesBuilder.fromJson,
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
      medication: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'medication',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.medication',
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
      effectiveX:
          JsonParser.parsePolymorphic<EffectiveXMedicationStatementBuilder>(
        json,
        {
          'effectiveDateTime': FhirDateTimeBuilder.fromJson,
          'effectivePeriod': PeriodBuilder.fromJson,
          'effectiveTiming': TimingBuilder.fromJson,
        },
        objectPath,
      ),
      dateAsserted: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'dateAsserted',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.dateAsserted',
      ),
      informationSource: (json['informationSource'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.informationSource',
              },
            ),
          )
          .toList(),
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
      relatedClinicalInformation:
          (json['relatedClinicalInformation'] as List<dynamic>?)
              ?.map<ReferenceBuilder>(
                (v) => ReferenceBuilder.fromJson(
                  {
                    ...v as Map<String, dynamic>,
                    'objectPath': '$objectPath.relatedClinicalInformation',
                  },
                ),
              )
              .toList(),
      renderedDosageInstruction: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'renderedDosageInstruction',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.renderedDosageInstruction',
      ),
      dosage: (json['dosage'] as List<dynamic>?)
          ?.map<DosageBuilder>(
            (v) => DosageBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.dosage',
              },
            ),
          )
          .toList(),
      adherence: JsonParser.parseObject<MedicationStatementAdherenceBuilder>(
        json,
        'adherence',
        MedicationStatementAdherenceBuilder.fromJson,
        '$objectPath.adherence',
      ),
    );
  }

  /// Deserialize [MedicationStatementBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicationStatementBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationStatementBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationStatementBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationStatementBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationStatementBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationStatementBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationStatementBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationStatement';

  /// [identifier]
  /// Identifiers associated with this Medication Statement that are defined
  /// by business processes and/or used to refer to it when a direct URL
  /// reference to the resource itself is not appropriate. They are business
  /// identifiers assigned to this resource by the performer or other systems
  /// and remain constant as the resource is updated and propagates from
  /// server to server.
  List<IdentifierBuilder>? identifier;

  /// [partOf]
  /// A larger event of which this particular MedicationStatement is a
  /// component or step.
  List<ReferenceBuilder>? partOf;

  /// [status]
  /// A code representing the status of recording the medication statement.
  MedicationStatementStatusCodesBuilder? status;

  /// [category]
  /// Type of medication statement (for example, drug classification like
  /// ATC, where meds would be administered, legal category of the
  /// medication.).
  List<CodeableConceptBuilder>? category;

  /// [medication]
  /// Identifies the medication being administered. This is either a link to
  /// a resource representing the details of the medication or a simple
  /// attribute carrying a code that identifies the medication from a known
  /// list of medications.
  CodeableReferenceBuilder? medication;

  /// [subject]
  /// The person, animal or group who is/was taking the medication.
  ReferenceBuilder? subject;

  /// [encounter]
  /// The encounter that establishes the context for this
  /// MedicationStatement.
  ReferenceBuilder? encounter;

  /// [effectiveX]
  /// The interval of time during which it is being asserted that the patient
  /// is/was/will be taking the medication (or was not taking, when the
  /// MedicationStatement.adherence element is Not Taking).
  EffectiveXMedicationStatementBuilder? effectiveX;

  /// Getter for [effectiveDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get effectiveDateTime =>
      effectiveX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [effectivePeriod] as a PeriodBuilder
  PeriodBuilder? get effectivePeriod => effectiveX?.isAs<PeriodBuilder>();

  /// Getter for [effectiveTiming] as a TimingBuilder
  TimingBuilder? get effectiveTiming => effectiveX?.isAs<TimingBuilder>();

  /// [dateAsserted]
  /// The date when the Medication Statement was asserted by the information
  /// source.
  FhirDateTimeBuilder? dateAsserted;

  /// [informationSource]
  /// The person or organization that provided the information about the
  /// taking of this medication. Note: Use derivedFrom when a
  /// MedicationStatement is derived from other resources, e.g. Claim or
  /// MedicationRequest.
  List<ReferenceBuilder>? informationSource;

  /// [derivedFrom]
  /// Allows linking the MedicationStatement to the underlying
  /// MedicationRequest, or to other information that supports or is used to
  /// derive the MedicationStatement.
  List<ReferenceBuilder>? derivedFrom;

  /// [reason]
  /// A concept, Condition or observation that supports why the medication is
  /// being/was taken.
  List<CodeableReferenceBuilder>? reason;

  /// [note]
  /// Provides extra information about the Medication Statement that is not
  /// conveyed by the other attributes.
  List<AnnotationBuilder>? note;

  /// [relatedClinicalInformation]
  /// Link to information that is relevant to a medication statement, for
  /// example, illicit drug use, gestational age, etc.
  List<ReferenceBuilder>? relatedClinicalInformation;

  /// [renderedDosageInstruction]
  /// The full representation of the dose of the medication included in all
  /// dosage instructions. To be used when multiple dosage instructions are
  /// included to represent complex dosing such as increasing or tapering
  /// doses.
  FhirMarkdownBuilder? renderedDosageInstruction;

  /// [dosage]
  /// Indicates how the medication is/was or should be taken by the patient.
  List<DosageBuilder>? dosage;

  /// [adherence]
  /// Indicates whether the medication is or is not being consumed or
  /// administered.
  MedicationStatementAdherenceBuilder? adherence;

  /// Converts a [MedicationStatementBuilder]
  /// to [MedicationStatement]
  @override
  MedicationStatement build() => MedicationStatement.fromJson(toJson());

  /// Converts a [MedicationStatementBuilder]
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
    addField('partOf', partOf);
    addField('status', status);
    addField('category', category);
    addField('medication', medication);
    addField('subject', subject);
    addField('encounter', encounter);
    if (effectiveX != null) {
      final fhirType = effectiveX!.fhirType;
      addField('effective${fhirType.capitalizeFirstLetter()}', effectiveX);
    }

    addField('dateAsserted', dateAsserted);
    addField('informationSource', informationSource);
    addField('derivedFrom', derivedFrom);
    addField('reason', reason);
    addField('note', note);
    addField('relatedClinicalInformation', relatedClinicalInformation);
    addField('renderedDosageInstruction', renderedDosageInstruction);
    addField('dosage', dosage);
    addField('adherence', adherence);
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
      'partOf',
      'status',
      'category',
      'medication',
      'subject',
      'encounter',
      'effectiveX',
      'dateAsserted',
      'informationSource',
      'derivedFrom',
      'reason',
      'note',
      'relatedClinicalInformation',
      'renderedDosageInstruction',
      'dosage',
      'adherence',
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
      case 'partOf':
        if (partOf != null) {
          fields.addAll(partOf!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'medication':
        if (medication != null) {
          fields.add(medication!);
        }
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'effective':
        if (effectiveX != null) {
          fields.add(effectiveX!);
        }
      case 'effectiveX':
        if (effectiveX != null) {
          fields.add(effectiveX!);
        }
      case 'effectiveDateTime':
        if (effectiveX is FhirDateTimeBuilder) {
          fields.add(effectiveX!);
        }
      case 'effectivePeriod':
        if (effectiveX is PeriodBuilder) {
          fields.add(effectiveX!);
        }
      case 'effectiveTiming':
        if (effectiveX is TimingBuilder) {
          fields.add(effectiveX!);
        }
      case 'dateAsserted':
        if (dateAsserted != null) {
          fields.add(dateAsserted!);
        }
      case 'informationSource':
        if (informationSource != null) {
          fields.addAll(informationSource!);
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
      case 'relatedClinicalInformation':
        if (relatedClinicalInformation != null) {
          fields.addAll(relatedClinicalInformation!);
        }
      case 'renderedDosageInstruction':
        if (renderedDosageInstruction != null) {
          fields.add(renderedDosageInstruction!);
        }
      case 'dosage':
        if (dosage != null) {
          fields.addAll(dosage!);
        }
      case 'adherence':
        if (adherence != null) {
          fields.add(adherence!);
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
          if (child is MedicationStatementStatusCodesBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted =
                    MedicationStatementStatusCodesBuilder(stringValue);
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
      case 'medication':
        {
          if (child is CodeableReferenceBuilder) {
            medication = child;
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
      case 'effective':
      case 'effectiveX':
        {
          if (child is EffectiveXMedicationStatementBuilder) {
            effectiveX = child;
            return;
          } else {
            if (child is FhirDateTimeBuilder) {
              effectiveX = child;
              return;
            }
            if (child is PeriodBuilder) {
              effectiveX = child;
              return;
            }
            if (child is TimingBuilder) {
              effectiveX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'effectiveDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            effectiveX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'effectivePeriod':
        {
          if (child is PeriodBuilder) {
            effectiveX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'effectiveTiming':
        {
          if (child is TimingBuilder) {
            effectiveX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'dateAsserted':
        {
          if (child is FhirDateTimeBuilder) {
            dateAsserted = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                dateAsserted = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'informationSource':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            informationSource = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            informationSource = [
              ...(informationSource ?? []),
              child,
            ];
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
      case 'relatedClinicalInformation':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            relatedClinicalInformation = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            relatedClinicalInformation = [
              ...(relatedClinicalInformation ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'renderedDosageInstruction':
        {
          if (child is FhirMarkdownBuilder) {
            renderedDosageInstruction = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                renderedDosageInstruction = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'dosage':
        {
          if (child is List<DosageBuilder>) {
            // Replace or create new list
            dosage = child;
            return;
          } else if (child is DosageBuilder) {
            // Add single element to existing list or create new list
            dosage = [
              ...(dosage ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'adherence':
        {
          if (child is MedicationStatementAdherenceBuilder) {
            adherence = child;
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
      case 'partOf':
        return ['ReferenceBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'medication':
        return ['CodeableReferenceBuilder'];
      case 'subject':
        return ['ReferenceBuilder'];
      case 'encounter':
        return ['ReferenceBuilder'];
      case 'effective':
      case 'effectiveX':
        return [
          'FhirDateTimeBuilder',
          'PeriodBuilder',
          'TimingBuilder',
        ];
      case 'effectiveDateTime':
        return ['FhirDateTimeBuilder'];
      case 'effectivePeriod':
        return ['PeriodBuilder'];
      case 'effectiveTiming':
        return ['TimingBuilder'];
      case 'dateAsserted':
        return ['FhirDateTimeBuilder'];
      case 'informationSource':
        return ['ReferenceBuilder'];
      case 'derivedFrom':
        return ['ReferenceBuilder'];
      case 'reason':
        return ['CodeableReferenceBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      case 'relatedClinicalInformation':
        return ['ReferenceBuilder'];
      case 'renderedDosageInstruction':
        return ['FhirMarkdownBuilder'];
      case 'dosage':
        return ['DosageBuilder'];
      case 'adherence':
        return ['MedicationStatementAdherenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationStatementBuilder]
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
      case 'partOf':
        {
          partOf = <ReferenceBuilder>[];
          return;
        }
      case 'status':
        {
          status = MedicationStatementStatusCodesBuilder.empty();
          return;
        }
      case 'category':
        {
          category = <CodeableConceptBuilder>[];
          return;
        }
      case 'medication':
        {
          medication = CodeableReferenceBuilder.empty();
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
      case 'effective':
      case 'effectiveX':
      case 'effectiveDateTime':
        {
          effectiveX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'effectivePeriod':
        {
          effectiveX = PeriodBuilder.empty();
          return;
        }
      case 'effectiveTiming':
        {
          effectiveX = TimingBuilder.empty();
          return;
        }
      case 'dateAsserted':
        {
          dateAsserted = FhirDateTimeBuilder.empty();
          return;
        }
      case 'informationSource':
        {
          informationSource = <ReferenceBuilder>[];
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
      case 'relatedClinicalInformation':
        {
          relatedClinicalInformation = <ReferenceBuilder>[];
          return;
        }
      case 'renderedDosageInstruction':
        {
          renderedDosageInstruction = FhirMarkdownBuilder.empty();
          return;
        }
      case 'dosage':
        {
          dosage = <DosageBuilder>[];
          return;
        }
      case 'adherence':
        {
          adherence = MedicationStatementAdherenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MedicationStatementBuilder clone() => throw UnimplementedError();
  @override
  MedicationStatementBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    AllLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    List<ReferenceBuilder>? partOf,
    MedicationStatementStatusCodesBuilder? status,
    List<CodeableConceptBuilder>? category,
    CodeableReferenceBuilder? medication,
    ReferenceBuilder? subject,
    ReferenceBuilder? encounter,
    EffectiveXMedicationStatementBuilder? effectiveX,
    FhirDateTimeBuilder? dateAsserted,
    List<ReferenceBuilder>? informationSource,
    List<ReferenceBuilder>? derivedFrom,
    List<CodeableReferenceBuilder>? reason,
    List<AnnotationBuilder>? note,
    List<ReferenceBuilder>? relatedClinicalInformation,
    FhirMarkdownBuilder? renderedDosageInstruction,
    List<DosageBuilder>? dosage,
    MedicationStatementAdherenceBuilder? adherence,
    FhirDateTimeBuilder? effectiveDateTime,
    PeriodBuilder? effectivePeriod,
    TimingBuilder? effectiveTiming,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = MedicationStatementBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      partOf: partOf ?? this.partOf,
      status: status ?? this.status,
      category: category ?? this.category,
      medication: medication ?? this.medication,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      effectiveX: effectiveX ??
          effectiveDateTime ??
          effectivePeriod ??
          effectiveTiming ??
          this.effectiveX,
      dateAsserted: dateAsserted ?? this.dateAsserted,
      informationSource: informationSource ?? this.informationSource,
      derivedFrom: derivedFrom ?? this.derivedFrom,
      reason: reason ?? this.reason,
      note: note ?? this.note,
      relatedClinicalInformation:
          relatedClinicalInformation ?? this.relatedClinicalInformation,
      renderedDosageInstruction:
          renderedDosageInstruction ?? this.renderedDosageInstruction,
      dosage: dosage ?? this.dosage,
      adherence: adherence ?? this.adherence,
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
    if (o is! MedicationStatementBuilder) {
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
      category,
      o.category,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      medication,
      o.medication,
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
      effectiveX,
      o.effectiveX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      dateAsserted,
      o.dateAsserted,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      informationSource,
      o.informationSource,
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
    if (!listEquals<ReferenceBuilder>(
      relatedClinicalInformation,
      o.relatedClinicalInformation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      renderedDosageInstruction,
      o.renderedDosageInstruction,
    )) {
      return false;
    }
    if (!listEquals<DosageBuilder>(
      dosage,
      o.dosage,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      adherence,
      o.adherence,
    )) {
      return false;
    }
    return true;
  }
}

/// [MedicationStatementAdherenceBuilder]
/// Indicates whether the medication is or is not being consumed or
/// administered.
class MedicationStatementAdherenceBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MedicationStatementAdherenceBuilder]

  MedicationStatementAdherenceBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.reason,
    super.disallowExtensions,
  }) : super(
          objectPath: 'MedicationStatement.adherence',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory MedicationStatementAdherenceBuilder.empty() =>
      MedicationStatementAdherenceBuilder(
        code: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationStatementAdherenceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MedicationStatement.adherence';
    return MedicationStatementAdherenceBuilder(
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
      reason: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'reason',
        CodeableConceptBuilder.fromJson,
        '$objectPath.reason',
      ),
    );
  }

  /// Deserialize [MedicationStatementAdherenceBuilder]
  /// from a [String] or [YamlMap] object
  factory MedicationStatementAdherenceBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationStatementAdherenceBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationStatementAdherenceBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationStatementAdherenceBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationStatementAdherenceBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationStatementAdherenceBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationStatementAdherenceBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationStatementAdherence';

  /// [code]
  /// Type of the adherence for the medication.
  CodeableConceptBuilder? code;

  /// [reason]
  /// Captures the reason for the current use or adherence of a medication.
  CodeableConceptBuilder? reason;

  /// Converts a [MedicationStatementAdherenceBuilder]
  /// to [MedicationStatementAdherence]
  @override
  MedicationStatementAdherence build() =>
      MedicationStatementAdherence.fromJson(toJson());

  /// Converts a [MedicationStatementAdherenceBuilder]
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
    addField('reason', reason);
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
      'reason',
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
      case 'reason':
        if (reason != null) {
          fields.add(reason!);
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
      case 'reason':
        {
          if (child is CodeableConceptBuilder) {
            reason = child;
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
      case 'reason':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MedicationStatementAdherenceBuilder]
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
      case 'reason':
        {
          reason = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  MedicationStatementAdherenceBuilder clone() => throw UnimplementedError();
  @override
  MedicationStatementAdherenceBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? code,
    CodeableConceptBuilder? reason,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MedicationStatementAdherenceBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      reason: reason ?? this.reason,
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
    if (o is! MedicationStatementAdherenceBuilder) {
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
      reason,
      o.reason,
    )) {
      return false;
    }
    return true;
  }
}
