import 'dart:convert';
import 'package:fhir_r5/fhir_r5.dart'
    show
        Immunization,
        ImmunizationPerformer,
        ImmunizationProgramEligibility,
        ImmunizationProtocolApplied,
        ImmunizationReaction,
        R5ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r5_mapping/fhir_r5_mapping.dart';
import 'package:yaml/yaml.dart';

/// [ImmunizationBuilder]
/// Describes the event of a patient being administered a vaccine or a
/// record of an immunization as reported by a patient, a clinician or
/// another party.
class ImmunizationBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [ImmunizationBuilder]

  ImmunizationBuilder({
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
    this.status,
    this.statusReason,
    this.vaccineCode,
    this.administeredProduct,
    this.manufacturer,
    this.lotNumber,
    this.expirationDate,
    this.patient,
    this.encounter,
    this.supportingInformation,
    OccurrenceXImmunizationBuilder? occurrenceX,
    FhirDateTimeBuilder? occurrenceDateTime,
    FhirStringBuilder? occurrenceString,
    this.primarySource,
    this.informationSource,
    this.location,
    this.site,
    this.route,
    this.doseQuantity,
    this.performer,
    this.note,
    this.reason,
    this.isSubpotent,
    this.subpotentReason,
    this.programEligibility,
    this.fundingSource,
    this.reaction,
    this.protocolApplied,
  })  : occurrenceX = occurrenceX ?? occurrenceDateTime ?? occurrenceString,
        super(
          objectPath: 'Immunization',
          resourceType: R5ResourceType.Immunization,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ImmunizationBuilder.empty() => ImmunizationBuilder(
        status: ImmunizationStatusCodesBuilder.values.first,
        vaccineCode: CodeableConceptBuilder.empty(),
        patient: ReferenceBuilder.empty(),
        occurrenceX: FhirDateTimeBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Immunization';
    return ImmunizationBuilder(
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
      status: JsonParser.parsePrimitive<ImmunizationStatusCodesBuilder>(
        json,
        'status',
        ImmunizationStatusCodesBuilder.fromJson,
        '$objectPath.status',
      ),
      statusReason: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'statusReason',
        CodeableConceptBuilder.fromJson,
        '$objectPath.statusReason',
      ),
      vaccineCode: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'vaccineCode',
        CodeableConceptBuilder.fromJson,
        '$objectPath.vaccineCode',
      ),
      administeredProduct: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'administeredProduct',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.administeredProduct',
      ),
      manufacturer: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'manufacturer',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.manufacturer',
      ),
      lotNumber: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'lotNumber',
        FhirStringBuilder.fromJson,
        '$objectPath.lotNumber',
      ),
      expirationDate: JsonParser.parsePrimitive<FhirDateBuilder>(
        json,
        'expirationDate',
        FhirDateBuilder.fromJson,
        '$objectPath.expirationDate',
      ),
      patient: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'patient',
        ReferenceBuilder.fromJson,
        '$objectPath.patient',
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
      occurrenceX: JsonParser.parsePolymorphic<OccurrenceXImmunizationBuilder>(
        json,
        {
          'occurrenceDateTime': FhirDateTimeBuilder.fromJson,
          'occurrenceString': FhirStringBuilder.fromJson,
        },
        objectPath,
      ),
      primarySource: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'primarySource',
        FhirBooleanBuilder.fromJson,
        '$objectPath.primarySource',
      ),
      informationSource: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'informationSource',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.informationSource',
      ),
      location: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'location',
        ReferenceBuilder.fromJson,
        '$objectPath.location',
      ),
      site: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'site',
        CodeableConceptBuilder.fromJson,
        '$objectPath.site',
      ),
      route: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'route',
        CodeableConceptBuilder.fromJson,
        '$objectPath.route',
      ),
      doseQuantity: JsonParser.parseObject<QuantityBuilder>(
        json,
        'doseQuantity',
        QuantityBuilder.fromJson,
        '$objectPath.doseQuantity',
      ),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<ImmunizationPerformerBuilder>(
            (v) => ImmunizationPerformerBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.performer',
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
      isSubpotent: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'isSubpotent',
        FhirBooleanBuilder.fromJson,
        '$objectPath.isSubpotent',
      ),
      subpotentReason: (json['subpotentReason'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subpotentReason',
              },
            ),
          )
          .toList(),
      programEligibility: (json['programEligibility'] as List<dynamic>?)
          ?.map<ImmunizationProgramEligibilityBuilder>(
            (v) => ImmunizationProgramEligibilityBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.programEligibility',
              },
            ),
          )
          .toList(),
      fundingSource: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'fundingSource',
        CodeableConceptBuilder.fromJson,
        '$objectPath.fundingSource',
      ),
      reaction: (json['reaction'] as List<dynamic>?)
          ?.map<ImmunizationReactionBuilder>(
            (v) => ImmunizationReactionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reaction',
              },
            ),
          )
          .toList(),
      protocolApplied: (json['protocolApplied'] as List<dynamic>?)
          ?.map<ImmunizationProtocolAppliedBuilder>(
            (v) => ImmunizationProtocolAppliedBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.protocolApplied',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ImmunizationBuilder]
  /// from a [String] or [YamlMap] object
  factory ImmunizationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImmunizationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImmunizationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImmunizationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImmunizationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImmunizationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImmunizationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Immunization';

  /// [identifier]
  /// A unique identifier assigned to this immunization record.
  List<IdentifierBuilder>? identifier;

  /// [basedOn]
  /// A plan, order or recommendation fulfilled in whole or in part by this
  /// immunization.
  List<ReferenceBuilder>? basedOn;

  /// [status]
  /// Indicates the current status of the immunization event.
  ImmunizationStatusCodesBuilder? status;

  /// [statusReason]
  /// Indicates the reason the immunization event was not performed.
  CodeableConceptBuilder? statusReason;

  /// [vaccineCode]
  /// Vaccine that was administered or was to be administered.
  CodeableConceptBuilder? vaccineCode;

  /// [administeredProduct]
  /// An indication of which product was administered to the patient. This is
  /// typically a more detailed representation of the concept conveyed by the
  /// vaccineCode data element. If a Medication resource is referenced, it
  /// may be to a stand-alone resource or a contained resource within the
  /// Immunization resource.
  CodeableReferenceBuilder? administeredProduct;

  /// [manufacturer]
  /// Name of vaccine manufacturer.
  CodeableReferenceBuilder? manufacturer;

  /// [lotNumber]
  /// Lot number of the vaccine product.
  FhirStringBuilder? lotNumber;

  /// [expirationDate]
  /// Date vaccine batch expires.
  FhirDateBuilder? expirationDate;

  /// [patient]
  /// The patient who either received or did not receive the immunization.
  ReferenceBuilder? patient;

  /// [encounter]
  /// The visit or admission or other contact between patient and health care
  /// provider the immunization was performed as part of.
  ReferenceBuilder? encounter;

  /// [supportingInformation]
  /// Additional information that is relevant to the immunization (e.g. for a
  /// vaccine recipient who is pregnant, the gestational age of the fetus).
  /// The reason why a vaccine was given (e.g. occupation, underlying medical
  /// condition) should be conveyed in Immunization.reason, not as supporting
  /// information. The reason why a vaccine was not given (e.g.
  /// contraindication) should be conveyed in Immunization.statusReason, not
  /// as supporting information.
  List<ReferenceBuilder>? supportingInformation;

  /// [occurrenceX]
  /// Date vaccine administered or was to be administered.
  OccurrenceXImmunizationBuilder? occurrenceX;

  /// Getter for [occurrenceDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get occurrenceDateTime =>
      occurrenceX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [occurrenceString] as a FhirStringBuilder
  FhirStringBuilder? get occurrenceString =>
      occurrenceX?.isAs<FhirStringBuilder>();

  /// [primarySource]
  /// Indicates whether the data contained in the resource was captured by
  /// the individual/organization which was responsible for the
  /// administration of the vaccine rather than as 'secondary reported' data
  /// documented by a third party. A value of 'true' means this data
  /// originated with the individual/organization which was responsible for
  /// the administration of the vaccine.
  FhirBooleanBuilder? primarySource;

  /// [informationSource]
  /// Typically the source of the data when the report of the immunization
  /// event is not based on information from the person who administered the
  /// vaccine.
  CodeableReferenceBuilder? informationSource;

  /// [location]
  /// The service delivery location where the vaccine administration
  /// occurred.
  ReferenceBuilder? location;

  /// [site]
  /// Body site where vaccine was administered.
  CodeableConceptBuilder? site;

  /// [route]
  /// The path by which the vaccine product is taken into the body.
  CodeableConceptBuilder? route;

  /// [doseQuantity]
  /// The quantity of vaccine product that was administered.
  QuantityBuilder? doseQuantity;

  /// [performer]
  /// Indicates who performed the immunization event.
  List<ImmunizationPerformerBuilder>? performer;

  /// [note]
  /// Extra information about the immunization that is not conveyed by the
  /// other attributes.
  List<AnnotationBuilder>? note;

  /// [reason]
  /// Describes why the immunization occurred in coded or textual form, or
  /// Indicates another resource (Condition, Observation or DiagnosticReport)
  /// whose existence justifies this immunization.
  List<CodeableReferenceBuilder>? reason;

  /// [isSubpotent]
  /// Indication if a dose is considered to be subpotent. By default, a dose
  /// should be considered to be potent.
  FhirBooleanBuilder? isSubpotent;

  /// [subpotentReason]
  /// Reason why a dose is considered to be subpotent.
  List<CodeableConceptBuilder>? subpotentReason;

  /// [programEligibility]
  /// Indicates a patient's eligibility for a funding program.
  List<ImmunizationProgramEligibilityBuilder>? programEligibility;

  /// [fundingSource]
  /// Indicates the source of the vaccine actually administered. This may be
  /// different than the patient eligibility (e.g. the patient may be
  /// eligible for a publically purchased vaccine but due to inventory
  /// issues, vaccine purchased with private funds was actually
  /// administered).
  CodeableConceptBuilder? fundingSource;

  /// [reaction]
  /// Categorical data indicating that an adverse event is associated in time
  /// to an immunization.
  List<ImmunizationReactionBuilder>? reaction;

  /// [protocolApplied]
  /// The protocol (set of recommendations) being followed by the provider
  /// who administered the dose.
  List<ImmunizationProtocolAppliedBuilder>? protocolApplied;

  /// Converts a [ImmunizationBuilder]
  /// to [Immunization]
  @override
  Immunization build() => Immunization.fromJson(toJson());

  /// Converts a [ImmunizationBuilder]
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
    addField('status', status);
    addField('statusReason', statusReason);
    addField('vaccineCode', vaccineCode);
    addField('administeredProduct', administeredProduct);
    addField('manufacturer', manufacturer);
    addField('lotNumber', lotNumber);
    addField('expirationDate', expirationDate);
    addField('patient', patient);
    addField('encounter', encounter);
    addField('supportingInformation', supportingInformation);
    if (occurrenceX != null) {
      final fhirType = occurrenceX!.fhirType;
      addField('occurrence${fhirType.capitalizeFirstLetter()}', occurrenceX);
    }

    addField('primarySource', primarySource);
    addField('informationSource', informationSource);
    addField('location', location);
    addField('site', site);
    addField('route', route);
    addField('doseQuantity', doseQuantity);
    addField('performer', performer);
    addField('note', note);
    addField('reason', reason);
    addField('isSubpotent', isSubpotent);
    addField('subpotentReason', subpotentReason);
    addField('programEligibility', programEligibility);
    addField('fundingSource', fundingSource);
    addField('reaction', reaction);
    addField('protocolApplied', protocolApplied);
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
      'status',
      'statusReason',
      'vaccineCode',
      'administeredProduct',
      'manufacturer',
      'lotNumber',
      'expirationDate',
      'patient',
      'encounter',
      'supportingInformation',
      'occurrenceX',
      'primarySource',
      'informationSource',
      'location',
      'site',
      'route',
      'doseQuantity',
      'performer',
      'note',
      'reason',
      'isSubpotent',
      'subpotentReason',
      'programEligibility',
      'fundingSource',
      'reaction',
      'protocolApplied',
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
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'statusReason':
        if (statusReason != null) {
          fields.add(statusReason!);
        }
      case 'vaccineCode':
        if (vaccineCode != null) {
          fields.add(vaccineCode!);
        }
      case 'administeredProduct':
        if (administeredProduct != null) {
          fields.add(administeredProduct!);
        }
      case 'manufacturer':
        if (manufacturer != null) {
          fields.add(manufacturer!);
        }
      case 'lotNumber':
        if (lotNumber != null) {
          fields.add(lotNumber!);
        }
      case 'expirationDate':
        if (expirationDate != null) {
          fields.add(expirationDate!);
        }
      case 'patient':
        if (patient != null) {
          fields.add(patient!);
        }
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'supportingInformation':
        if (supportingInformation != null) {
          fields.addAll(supportingInformation!);
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
      case 'occurrenceString':
        if (occurrenceX is FhirStringBuilder) {
          fields.add(occurrenceX!);
        }
      case 'primarySource':
        if (primarySource != null) {
          fields.add(primarySource!);
        }
      case 'informationSource':
        if (informationSource != null) {
          fields.add(informationSource!);
        }
      case 'location':
        if (location != null) {
          fields.add(location!);
        }
      case 'site':
        if (site != null) {
          fields.add(site!);
        }
      case 'route':
        if (route != null) {
          fields.add(route!);
        }
      case 'doseQuantity':
        if (doseQuantity != null) {
          fields.add(doseQuantity!);
        }
      case 'performer':
        if (performer != null) {
          fields.addAll(performer!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'reason':
        if (reason != null) {
          fields.addAll(reason!);
        }
      case 'isSubpotent':
        if (isSubpotent != null) {
          fields.add(isSubpotent!);
        }
      case 'subpotentReason':
        if (subpotentReason != null) {
          fields.addAll(subpotentReason!);
        }
      case 'programEligibility':
        if (programEligibility != null) {
          fields.addAll(programEligibility!);
        }
      case 'fundingSource':
        if (fundingSource != null) {
          fields.add(fundingSource!);
        }
      case 'reaction':
        if (reaction != null) {
          fields.addAll(reaction!);
        }
      case 'protocolApplied':
        if (protocolApplied != null) {
          fields.addAll(protocolApplied!);
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
      case 'status':
        {
          if (child is ImmunizationStatusCodesBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ImmunizationStatusCodesBuilder(stringValue);
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
          if (child is CodeableConceptBuilder) {
            statusReason = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'vaccineCode':
        {
          if (child is CodeableConceptBuilder) {
            vaccineCode = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'administeredProduct':
        {
          if (child is CodeableReferenceBuilder) {
            administeredProduct = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'manufacturer':
        {
          if (child is CodeableReferenceBuilder) {
            manufacturer = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'lotNumber':
        {
          if (child is FhirStringBuilder) {
            lotNumber = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                lotNumber = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'expirationDate':
        {
          if (child is FhirDateBuilder) {
            expirationDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateBuilder.tryParse(stringValue);
              if (converted != null) {
                expirationDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
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
      case 'occurrence':
      case 'occurrenceX':
        {
          if (child is OccurrenceXImmunizationBuilder) {
            occurrenceX = child;
            return;
          } else {
            if (child is FhirDateTimeBuilder) {
              occurrenceX = child;
              return;
            }
            if (child is FhirStringBuilder) {
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
      case 'occurrenceString':
        {
          if (child is FhirStringBuilder) {
            occurrenceX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'primarySource':
        {
          if (child is FhirBooleanBuilder) {
            primarySource = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                primarySource = converted;
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
          if (child is CodeableReferenceBuilder) {
            informationSource = child;
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
      case 'site':
        {
          if (child is CodeableConceptBuilder) {
            site = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'route':
        {
          if (child is CodeableConceptBuilder) {
            route = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'doseQuantity':
        {
          if (child is QuantityBuilder) {
            doseQuantity = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'performer':
        {
          if (child is List<ImmunizationPerformerBuilder>) {
            // Replace or create new list
            performer = child;
            return;
          } else if (child is ImmunizationPerformerBuilder) {
            // Add single element to existing list or create new list
            performer = [
              ...(performer ?? []),
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
      case 'isSubpotent':
        {
          if (child is FhirBooleanBuilder) {
            isSubpotent = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                isSubpotent = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subpotentReason':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            subpotentReason = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            subpotentReason = [
              ...(subpotentReason ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'programEligibility':
        {
          if (child is List<ImmunizationProgramEligibilityBuilder>) {
            // Replace or create new list
            programEligibility = child;
            return;
          } else if (child is ImmunizationProgramEligibilityBuilder) {
            // Add single element to existing list or create new list
            programEligibility = [
              ...(programEligibility ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'fundingSource':
        {
          if (child is CodeableConceptBuilder) {
            fundingSource = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reaction':
        {
          if (child is List<ImmunizationReactionBuilder>) {
            // Replace or create new list
            reaction = child;
            return;
          } else if (child is ImmunizationReactionBuilder) {
            // Add single element to existing list or create new list
            reaction = [
              ...(reaction ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'protocolApplied':
        {
          if (child is List<ImmunizationProtocolAppliedBuilder>) {
            // Replace or create new list
            protocolApplied = child;
            return;
          } else if (child is ImmunizationProtocolAppliedBuilder) {
            // Add single element to existing list or create new list
            protocolApplied = [
              ...(protocolApplied ?? []),
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
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'statusReason':
        return ['CodeableConceptBuilder'];
      case 'vaccineCode':
        return ['CodeableConceptBuilder'];
      case 'administeredProduct':
        return ['CodeableReferenceBuilder'];
      case 'manufacturer':
        return ['CodeableReferenceBuilder'];
      case 'lotNumber':
        return ['FhirStringBuilder'];
      case 'expirationDate':
        return ['FhirDateBuilder'];
      case 'patient':
        return ['ReferenceBuilder'];
      case 'encounter':
        return ['ReferenceBuilder'];
      case 'supportingInformation':
        return ['ReferenceBuilder'];
      case 'occurrence':
      case 'occurrenceX':
        return [
          'FhirDateTimeBuilder',
          'FhirStringBuilder',
        ];
      case 'occurrenceDateTime':
        return ['FhirDateTimeBuilder'];
      case 'occurrenceString':
        return ['FhirStringBuilder'];
      case 'primarySource':
        return ['FhirBooleanBuilder'];
      case 'informationSource':
        return ['CodeableReferenceBuilder'];
      case 'location':
        return ['ReferenceBuilder'];
      case 'site':
        return ['CodeableConceptBuilder'];
      case 'route':
        return ['CodeableConceptBuilder'];
      case 'doseQuantity':
        return ['QuantityBuilder'];
      case 'performer':
        return ['ImmunizationPerformerBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      case 'reason':
        return ['CodeableReferenceBuilder'];
      case 'isSubpotent':
        return ['FhirBooleanBuilder'];
      case 'subpotentReason':
        return ['CodeableConceptBuilder'];
      case 'programEligibility':
        return ['ImmunizationProgramEligibilityBuilder'];
      case 'fundingSource':
        return ['CodeableConceptBuilder'];
      case 'reaction':
        return ['ImmunizationReactionBuilder'];
      case 'protocolApplied':
        return ['ImmunizationProtocolAppliedBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ImmunizationBuilder]
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
      case 'status':
        {
          status = ImmunizationStatusCodesBuilder.empty();
          return;
        }
      case 'statusReason':
        {
          statusReason = CodeableConceptBuilder.empty();
          return;
        }
      case 'vaccineCode':
        {
          vaccineCode = CodeableConceptBuilder.empty();
          return;
        }
      case 'administeredProduct':
        {
          administeredProduct = CodeableReferenceBuilder.empty();
          return;
        }
      case 'manufacturer':
        {
          manufacturer = CodeableReferenceBuilder.empty();
          return;
        }
      case 'lotNumber':
        {
          lotNumber = FhirStringBuilder.empty();
          return;
        }
      case 'expirationDate':
        {
          expirationDate = FhirDateBuilder.empty();
          return;
        }
      case 'patient':
        {
          patient = ReferenceBuilder.empty();
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
      case 'occurrence':
      case 'occurrenceX':
      case 'occurrenceDateTime':
        {
          occurrenceX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'occurrenceString':
        {
          occurrenceX = FhirStringBuilder.empty();
          return;
        }
      case 'primarySource':
        {
          primarySource = FhirBooleanBuilder.empty();
          return;
        }
      case 'informationSource':
        {
          informationSource = CodeableReferenceBuilder.empty();
          return;
        }
      case 'location':
        {
          location = ReferenceBuilder.empty();
          return;
        }
      case 'site':
        {
          site = CodeableConceptBuilder.empty();
          return;
        }
      case 'route':
        {
          route = CodeableConceptBuilder.empty();
          return;
        }
      case 'doseQuantity':
        {
          doseQuantity = QuantityBuilder.empty();
          return;
        }
      case 'performer':
        {
          performer = <ImmunizationPerformerBuilder>[];
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      case 'reason':
        {
          reason = <CodeableReferenceBuilder>[];
          return;
        }
      case 'isSubpotent':
        {
          isSubpotent = FhirBooleanBuilder.empty();
          return;
        }
      case 'subpotentReason':
        {
          subpotentReason = <CodeableConceptBuilder>[];
          return;
        }
      case 'programEligibility':
        {
          programEligibility = <ImmunizationProgramEligibilityBuilder>[];
          return;
        }
      case 'fundingSource':
        {
          fundingSource = CodeableConceptBuilder.empty();
          return;
        }
      case 'reaction':
        {
          reaction = <ImmunizationReactionBuilder>[];
          return;
        }
      case 'protocolApplied':
        {
          protocolApplied = <ImmunizationProtocolAppliedBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ImmunizationBuilder clone() => throw UnimplementedError();
  @override
  ImmunizationBuilder copyWith({
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
    ImmunizationStatusCodesBuilder? status,
    CodeableConceptBuilder? statusReason,
    CodeableConceptBuilder? vaccineCode,
    CodeableReferenceBuilder? administeredProduct,
    CodeableReferenceBuilder? manufacturer,
    FhirStringBuilder? lotNumber,
    FhirDateBuilder? expirationDate,
    ReferenceBuilder? patient,
    ReferenceBuilder? encounter,
    List<ReferenceBuilder>? supportingInformation,
    OccurrenceXImmunizationBuilder? occurrenceX,
    FhirBooleanBuilder? primarySource,
    CodeableReferenceBuilder? informationSource,
    ReferenceBuilder? location,
    CodeableConceptBuilder? site,
    CodeableConceptBuilder? route,
    QuantityBuilder? doseQuantity,
    List<ImmunizationPerformerBuilder>? performer,
    List<AnnotationBuilder>? note,
    List<CodeableReferenceBuilder>? reason,
    FhirBooleanBuilder? isSubpotent,
    List<CodeableConceptBuilder>? subpotentReason,
    List<ImmunizationProgramEligibilityBuilder>? programEligibility,
    CodeableConceptBuilder? fundingSource,
    List<ImmunizationReactionBuilder>? reaction,
    List<ImmunizationProtocolAppliedBuilder>? protocolApplied,
    FhirDateTimeBuilder? occurrenceDateTime,
    FhirStringBuilder? occurrenceString,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = ImmunizationBuilder(
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
      status: status ?? this.status,
      statusReason: statusReason ?? this.statusReason,
      vaccineCode: vaccineCode ?? this.vaccineCode,
      administeredProduct: administeredProduct ?? this.administeredProduct,
      manufacturer: manufacturer ?? this.manufacturer,
      lotNumber: lotNumber ?? this.lotNumber,
      expirationDate: expirationDate ?? this.expirationDate,
      patient: patient ?? this.patient,
      encounter: encounter ?? this.encounter,
      supportingInformation:
          supportingInformation ?? this.supportingInformation,
      occurrenceX: occurrenceX ??
          occurrenceDateTime ??
          occurrenceString ??
          this.occurrenceX,
      primarySource: primarySource ?? this.primarySource,
      informationSource: informationSource ?? this.informationSource,
      location: location ?? this.location,
      site: site ?? this.site,
      route: route ?? this.route,
      doseQuantity: doseQuantity ?? this.doseQuantity,
      performer: performer ?? this.performer,
      note: note ?? this.note,
      reason: reason ?? this.reason,
      isSubpotent: isSubpotent ?? this.isSubpotent,
      subpotentReason: subpotentReason ?? this.subpotentReason,
      programEligibility: programEligibility ?? this.programEligibility,
      fundingSource: fundingSource ?? this.fundingSource,
      reaction: reaction ?? this.reaction,
      protocolApplied: protocolApplied ?? this.protocolApplied,
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
    if (o is! ImmunizationBuilder) {
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
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      statusReason,
      o.statusReason,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      vaccineCode,
      o.vaccineCode,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      administeredProduct,
      o.administeredProduct,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      manufacturer,
      o.manufacturer,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      lotNumber,
      o.lotNumber,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      expirationDate,
      o.expirationDate,
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
      occurrenceX,
      o.occurrenceX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      primarySource,
      o.primarySource,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      informationSource,
      o.informationSource,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      location,
      o.location,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      site,
      o.site,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      route,
      o.route,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      doseQuantity,
      o.doseQuantity,
    )) {
      return false;
    }
    if (!listEquals<ImmunizationPerformerBuilder>(
      performer,
      o.performer,
    )) {
      return false;
    }
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<CodeableReferenceBuilder>(
      reason,
      o.reason,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      isSubpotent,
      o.isSubpotent,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      subpotentReason,
      o.subpotentReason,
    )) {
      return false;
    }
    if (!listEquals<ImmunizationProgramEligibilityBuilder>(
      programEligibility,
      o.programEligibility,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      fundingSource,
      o.fundingSource,
    )) {
      return false;
    }
    if (!listEquals<ImmunizationReactionBuilder>(
      reaction,
      o.reaction,
    )) {
      return false;
    }
    if (!listEquals<ImmunizationProtocolAppliedBuilder>(
      protocolApplied,
      o.protocolApplied,
    )) {
      return false;
    }
    return true;
  }
}

/// [ImmunizationPerformerBuilder]
/// Indicates who performed the immunization event.
class ImmunizationPerformerBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ImmunizationPerformerBuilder]

  ImmunizationPerformerBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    this.actor,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Immunization.performer',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ImmunizationPerformerBuilder.empty() => ImmunizationPerformerBuilder(
        actor: ReferenceBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationPerformerBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Immunization.performer';
    return ImmunizationPerformerBuilder(
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

  /// Deserialize [ImmunizationPerformerBuilder]
  /// from a [String] or [YamlMap] object
  factory ImmunizationPerformerBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImmunizationPerformerBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImmunizationPerformerBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImmunizationPerformerBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImmunizationPerformerBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImmunizationPerformerBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImmunizationPerformerBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImmunizationPerformer';

  /// [function_]
  /// Describes the type of performance (e.g. ordering provider,
  /// administering provider, etc.).
  CodeableConceptBuilder? function_;

  /// [actor]
  /// The practitioner or organization who performed the action.
  ReferenceBuilder? actor;

  /// Converts a [ImmunizationPerformerBuilder]
  /// to [ImmunizationPerformer]
  @override
  ImmunizationPerformer build() => ImmunizationPerformer.fromJson(toJson());

  /// Converts a [ImmunizationPerformerBuilder]
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

  /// Creates a new [ImmunizationPerformerBuilder]
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
  ImmunizationPerformerBuilder clone() => throw UnimplementedError();
  @override
  ImmunizationPerformerBuilder copyWith({
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
    final newResult = ImmunizationPerformerBuilder(
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
    if (o is! ImmunizationPerformerBuilder) {
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

/// [ImmunizationProgramEligibilityBuilder]
/// Indicates a patient's eligibility for a funding program.
class ImmunizationProgramEligibilityBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ImmunizationProgramEligibilityBuilder]

  ImmunizationProgramEligibilityBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.program,
    this.programStatus,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Immunization.programEligibility',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ImmunizationProgramEligibilityBuilder.empty() =>
      ImmunizationProgramEligibilityBuilder(
        program: CodeableConceptBuilder.empty(),
        programStatus: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationProgramEligibilityBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Immunization.programEligibility';
    return ImmunizationProgramEligibilityBuilder(
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
      program: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'program',
        CodeableConceptBuilder.fromJson,
        '$objectPath.program',
      ),
      programStatus: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'programStatus',
        CodeableConceptBuilder.fromJson,
        '$objectPath.programStatus',
      ),
    );
  }

  /// Deserialize [ImmunizationProgramEligibilityBuilder]
  /// from a [String] or [YamlMap] object
  factory ImmunizationProgramEligibilityBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImmunizationProgramEligibilityBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImmunizationProgramEligibilityBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImmunizationProgramEligibilityBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImmunizationProgramEligibilityBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImmunizationProgramEligibilityBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImmunizationProgramEligibilityBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImmunizationProgramEligibility';

  /// [program]
  /// Indicates which program the patient had their eligility evaluated for.
  CodeableConceptBuilder? program;

  /// [programStatus]
  /// Indicates the patient's eligility status for for a specific payment
  /// program.
  CodeableConceptBuilder? programStatus;

  /// Converts a [ImmunizationProgramEligibilityBuilder]
  /// to [ImmunizationProgramEligibility]
  @override
  ImmunizationProgramEligibility build() =>
      ImmunizationProgramEligibility.fromJson(toJson());

  /// Converts a [ImmunizationProgramEligibilityBuilder]
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
    addField('program', program);
    addField('programStatus', programStatus);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'program',
      'programStatus',
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
      case 'program':
        if (program != null) {
          fields.add(program!);
        }
      case 'programStatus':
        if (programStatus != null) {
          fields.add(programStatus!);
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
      case 'program':
        {
          if (child is CodeableConceptBuilder) {
            program = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'programStatus':
        {
          if (child is CodeableConceptBuilder) {
            programStatus = child;
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
      case 'program':
        return ['CodeableConceptBuilder'];
      case 'programStatus':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ImmunizationProgramEligibilityBuilder]
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
      case 'program':
        {
          program = CodeableConceptBuilder.empty();
          return;
        }
      case 'programStatus':
        {
          programStatus = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ImmunizationProgramEligibilityBuilder clone() => throw UnimplementedError();
  @override
  ImmunizationProgramEligibilityBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? program,
    CodeableConceptBuilder? programStatus,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ImmunizationProgramEligibilityBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      program: program ?? this.program,
      programStatus: programStatus ?? this.programStatus,
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
    if (o is! ImmunizationProgramEligibilityBuilder) {
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
      program,
      o.program,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      programStatus,
      o.programStatus,
    )) {
      return false;
    }
    return true;
  }
}

/// [ImmunizationReactionBuilder]
/// Categorical data indicating that an adverse event is associated in time
/// to an immunization.
class ImmunizationReactionBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ImmunizationReactionBuilder]

  ImmunizationReactionBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.date,
    this.manifestation,
    this.reported,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Immunization.reaction',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ImmunizationReactionBuilder.empty() => ImmunizationReactionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationReactionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Immunization.reaction';
    return ImmunizationReactionBuilder(
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
      date: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'date',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.date',
      ),
      manifestation: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'manifestation',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.manifestation',
      ),
      reported: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'reported',
        FhirBooleanBuilder.fromJson,
        '$objectPath.reported',
      ),
    );
  }

  /// Deserialize [ImmunizationReactionBuilder]
  /// from a [String] or [YamlMap] object
  factory ImmunizationReactionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImmunizationReactionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImmunizationReactionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImmunizationReactionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImmunizationReactionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImmunizationReactionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImmunizationReactionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImmunizationReaction';

  /// [date]
  /// Date of reaction to the immunization.
  FhirDateTimeBuilder? date;

  /// [manifestation]
  /// Details of the reaction.
  CodeableReferenceBuilder? manifestation;

  /// [reported]
  /// Self-reported indicator.
  FhirBooleanBuilder? reported;

  /// Converts a [ImmunizationReactionBuilder]
  /// to [ImmunizationReaction]
  @override
  ImmunizationReaction build() => ImmunizationReaction.fromJson(toJson());

  /// Converts a [ImmunizationReactionBuilder]
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
    addField('date', date);
    addField('manifestation', manifestation);
    addField('reported', reported);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'date',
      'manifestation',
      'reported',
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
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'manifestation':
        if (manifestation != null) {
          fields.add(manifestation!);
        }
      case 'reported':
        if (reported != null) {
          fields.add(reported!);
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
      case 'manifestation':
        {
          if (child is CodeableReferenceBuilder) {
            manifestation = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reported':
        {
          if (child is FhirBooleanBuilder) {
            reported = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                reported = converted;
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
      case 'date':
        return ['FhirDateTimeBuilder'];
      case 'manifestation':
        return ['CodeableReferenceBuilder'];
      case 'reported':
        return ['FhirBooleanBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ImmunizationReactionBuilder]
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
      case 'date':
        {
          date = FhirDateTimeBuilder.empty();
          return;
        }
      case 'manifestation':
        {
          manifestation = CodeableReferenceBuilder.empty();
          return;
        }
      case 'reported':
        {
          reported = FhirBooleanBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ImmunizationReactionBuilder clone() => throw UnimplementedError();
  @override
  ImmunizationReactionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirDateTimeBuilder? date,
    CodeableReferenceBuilder? manifestation,
    FhirBooleanBuilder? reported,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ImmunizationReactionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      date: date ?? this.date,
      manifestation: manifestation ?? this.manifestation,
      reported: reported ?? this.reported,
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
    if (o is! ImmunizationReactionBuilder) {
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
      date,
      o.date,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      manifestation,
      o.manifestation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reported,
      o.reported,
    )) {
      return false;
    }
    return true;
  }
}

/// [ImmunizationProtocolAppliedBuilder]
/// The protocol (set of recommendations) being followed by the provider
/// who administered the dose.
class ImmunizationProtocolAppliedBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ImmunizationProtocolAppliedBuilder]

  ImmunizationProtocolAppliedBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.series,
    this.authority,
    this.targetDisease,
    this.doseNumber,
    this.seriesDoses,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Immunization.protocolApplied',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ImmunizationProtocolAppliedBuilder.empty() =>
      ImmunizationProtocolAppliedBuilder(
        doseNumber: FhirStringBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationProtocolAppliedBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Immunization.protocolApplied';
    return ImmunizationProtocolAppliedBuilder(
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
      series: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'series',
        FhirStringBuilder.fromJson,
        '$objectPath.series',
      ),
      authority: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'authority',
        ReferenceBuilder.fromJson,
        '$objectPath.authority',
      ),
      targetDisease: (json['targetDisease'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.targetDisease',
              },
            ),
          )
          .toList(),
      doseNumber: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'doseNumber',
        FhirStringBuilder.fromJson,
        '$objectPath.doseNumber',
      ),
      seriesDoses: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'seriesDoses',
        FhirStringBuilder.fromJson,
        '$objectPath.seriesDoses',
      ),
    );
  }

  /// Deserialize [ImmunizationProtocolAppliedBuilder]
  /// from a [String] or [YamlMap] object
  factory ImmunizationProtocolAppliedBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImmunizationProtocolAppliedBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImmunizationProtocolAppliedBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImmunizationProtocolAppliedBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImmunizationProtocolAppliedBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImmunizationProtocolAppliedBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImmunizationProtocolAppliedBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImmunizationProtocolApplied';

  /// [series]
  /// One possible path to achieve presumed immunity against a disease -
  /// within the context of an authority.
  FhirStringBuilder? series;

  /// [authority]
  /// Indicates the authority who published the protocol (e.g. ACIP) that is
  /// being followed.
  ReferenceBuilder? authority;

  /// [targetDisease]
  /// The vaccine preventable disease the dose is being administered against.
  List<CodeableConceptBuilder>? targetDisease;

  /// [doseNumber]
  /// Nominal position in a series as intended by the practitioner
  /// administering the dose.
  FhirStringBuilder? doseNumber;

  /// [seriesDoses]
  /// The recommended number of doses to achieve immunity as intended by the
  /// practitioner administering the dose.
  FhirStringBuilder? seriesDoses;

  /// Converts a [ImmunizationProtocolAppliedBuilder]
  /// to [ImmunizationProtocolApplied]
  @override
  ImmunizationProtocolApplied build() =>
      ImmunizationProtocolApplied.fromJson(toJson());

  /// Converts a [ImmunizationProtocolAppliedBuilder]
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
    addField('series', series);
    addField('authority', authority);
    addField('targetDisease', targetDisease);
    addField('doseNumber', doseNumber);
    addField('seriesDoses', seriesDoses);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'series',
      'authority',
      'targetDisease',
      'doseNumber',
      'seriesDoses',
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
      case 'series':
        if (series != null) {
          fields.add(series!);
        }
      case 'authority':
        if (authority != null) {
          fields.add(authority!);
        }
      case 'targetDisease':
        if (targetDisease != null) {
          fields.addAll(targetDisease!);
        }
      case 'doseNumber':
        if (doseNumber != null) {
          fields.add(doseNumber!);
        }
      case 'seriesDoses':
        if (seriesDoses != null) {
          fields.add(seriesDoses!);
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
      case 'series':
        {
          if (child is FhirStringBuilder) {
            series = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                series = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'authority':
        {
          if (child is ReferenceBuilder) {
            authority = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'targetDisease':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            targetDisease = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            targetDisease = [
              ...(targetDisease ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'doseNumber':
        {
          if (child is FhirStringBuilder) {
            doseNumber = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                doseNumber = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'seriesDoses':
        {
          if (child is FhirStringBuilder) {
            seriesDoses = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                seriesDoses = converted;
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
      case 'series':
        return ['FhirStringBuilder'];
      case 'authority':
        return ['ReferenceBuilder'];
      case 'targetDisease':
        return ['CodeableConceptBuilder'];
      case 'doseNumber':
        return ['FhirStringBuilder'];
      case 'seriesDoses':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ImmunizationProtocolAppliedBuilder]
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
      case 'series':
        {
          series = FhirStringBuilder.empty();
          return;
        }
      case 'authority':
        {
          authority = ReferenceBuilder.empty();
          return;
        }
      case 'targetDisease':
        {
          targetDisease = <CodeableConceptBuilder>[];
          return;
        }
      case 'doseNumber':
        {
          doseNumber = FhirStringBuilder.empty();
          return;
        }
      case 'seriesDoses':
        {
          seriesDoses = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  ImmunizationProtocolAppliedBuilder clone() => throw UnimplementedError();
  @override
  ImmunizationProtocolAppliedBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? series,
    ReferenceBuilder? authority,
    List<CodeableConceptBuilder>? targetDisease,
    FhirStringBuilder? doseNumber,
    FhirStringBuilder? seriesDoses,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ImmunizationProtocolAppliedBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      series: series ?? this.series,
      authority: authority ?? this.authority,
      targetDisease: targetDisease ?? this.targetDisease,
      doseNumber: doseNumber ?? this.doseNumber,
      seriesDoses: seriesDoses ?? this.seriesDoses,
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
    if (o is! ImmunizationProtocolAppliedBuilder) {
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
      series,
      o.series,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      authority,
      o.authority,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      targetDisease,
      o.targetDisease,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      doseNumber,
      o.doseNumber,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      seriesDoses,
      o.seriesDoses,
    )) {
      return false;
    }
    return true;
  }
}
