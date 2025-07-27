import 'dart:convert';
import 'package:fhir_r6/fhir_r6.dart';
import 'package:yaml/yaml.dart';

part 'immunization.g.dart';

/// [Immunization]
/// Describes the event of a patient being administered a vaccine or a
/// record of an immunization as reported by a patient, a clinician or
/// another party.
class Immunization extends DomainResource {
  /// Primary constructor for
  /// [Immunization]

  const Immunization({
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
    required this.status,
    this.statusReason,
    required this.vaccineCode,
    this.administeredProduct,
    this.manufacturer,
    this.lotNumber,
    this.expirationDate,
    required this.patient,
    this.encounter,
    this.supportingInformation,
    required this.occurrenceX,
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
  }) : super(
          resourceType: R5ResourceType.Immunization,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Immunization.fromJson(
    Map<String, dynamic> json,
  ) {
    return Immunization(
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
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<ImmunizationStatusCodes>(
        json,
        'status',
        ImmunizationStatusCodes.fromJson,
      )!,
      statusReason: JsonParser.parseObject<CodeableConcept>(
        json,
        'statusReason',
        CodeableConcept.fromJson,
      ),
      vaccineCode: JsonParser.parseObject<CodeableConcept>(
        json,
        'vaccineCode',
        CodeableConcept.fromJson,
      )!,
      administeredProduct: JsonParser.parseObject<CodeableReference>(
        json,
        'administeredProduct',
        CodeableReference.fromJson,
      ),
      manufacturer: JsonParser.parseObject<CodeableReference>(
        json,
        'manufacturer',
        CodeableReference.fromJson,
      ),
      lotNumber: JsonParser.parsePrimitive<FhirString>(
        json,
        'lotNumber',
        FhirString.fromJson,
      ),
      expirationDate: JsonParser.parsePrimitive<FhirDate>(
        json,
        'expirationDate',
        FhirDate.fromJson,
      ),
      patient: JsonParser.parseObject<Reference>(
        json,
        'patient',
        Reference.fromJson,
      )!,
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
      ),
      supportingInformation: (json['supportingInformation'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      occurrenceX: JsonParser.parsePolymorphic<OccurrenceXImmunization>(
        json,
        {
          'occurrenceDateTime': FhirDateTime.fromJson,
          'occurrenceString': FhirString.fromJson,
        },
      )!,
      primarySource: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'primarySource',
        FhirBoolean.fromJson,
      ),
      informationSource: JsonParser.parseObject<CodeableReference>(
        json,
        'informationSource',
        CodeableReference.fromJson,
      ),
      location: JsonParser.parseObject<Reference>(
        json,
        'location',
        Reference.fromJson,
      ),
      site: JsonParser.parseObject<CodeableConcept>(
        json,
        'site',
        CodeableConcept.fromJson,
      ),
      route: JsonParser.parseObject<CodeableConcept>(
        json,
        'route',
        CodeableConcept.fromJson,
      ),
      doseQuantity: JsonParser.parseObject<Quantity>(
        json,
        'doseQuantity',
        Quantity.fromJson,
      ),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<ImmunizationPerformer>(
            (v) => ImmunizationPerformer.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      reason: (json['reason'] as List<dynamic>?)
          ?.map<CodeableReference>(
            (v) => CodeableReference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      isSubpotent: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'isSubpotent',
        FhirBoolean.fromJson,
      ),
      subpotentReason: (json['subpotentReason'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      programEligibility: (json['programEligibility'] as List<dynamic>?)
          ?.map<ImmunizationProgramEligibility>(
            (v) => ImmunizationProgramEligibility.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      fundingSource: JsonParser.parseObject<CodeableConcept>(
        json,
        'fundingSource',
        CodeableConcept.fromJson,
      ),
      reaction: (json['reaction'] as List<dynamic>?)
          ?.map<ImmunizationReaction>(
            (v) => ImmunizationReaction.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      protocolApplied: (json['protocolApplied'] as List<dynamic>?)
          ?.map<ImmunizationProtocolApplied>(
            (v) => ImmunizationProtocolApplied.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [Immunization]
  /// from a [String] or [YamlMap] object
  factory Immunization.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Immunization.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Immunization.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Immunization '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Immunization]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Immunization.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Immunization.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Immunization';

  /// [identifier]
  /// A unique identifier assigned to this immunization record.
  final List<Identifier>? identifier;

  /// [basedOn]
  /// A plan, order or recommendation fulfilled in whole or in part by this
  /// immunization.
  final List<Reference>? basedOn;

  /// [status]
  /// Indicates the current status of the immunization event.
  final ImmunizationStatusCodes status;

  /// [statusReason]
  /// Indicates the reason the immunization event was not performed.
  final CodeableConcept? statusReason;

  /// [vaccineCode]
  /// Vaccine that was administered or was to be administered.
  final CodeableConcept vaccineCode;

  /// [administeredProduct]
  /// An indication of which product was administered to the patient. This is
  /// typically a more detailed representation of the concept conveyed by the
  /// vaccineCode data element. If a Medication resource is referenced, it
  /// may be to a stand-alone resource or a contained resource within the
  /// Immunization resource.
  final CodeableReference? administeredProduct;

  /// [manufacturer]
  /// Name of vaccine manufacturer.
  final CodeableReference? manufacturer;

  /// [lotNumber]
  /// Lot number of the vaccine product.
  final FhirString? lotNumber;

  /// [expirationDate]
  /// Date vaccine batch expires.
  final FhirDate? expirationDate;

  /// [patient]
  /// The patient who either received or did not receive the immunization.
  final Reference patient;

  /// [encounter]
  /// The visit or admission or other contact between patient and health care
  /// provider the immunization was performed as part of.
  final Reference? encounter;

  /// [supportingInformation]
  /// Additional information that is relevant to the immunization (e.g. for a
  /// vaccine recipient who is pregnant, the gestational age of the fetus).
  /// The reason why a vaccine was given (e.g. occupation, underlying medical
  /// condition) should be conveyed in Immunization.reason, not as supporting
  /// information. The reason why a vaccine was not given (e.g.
  /// contraindication) should be conveyed in Immunization.statusReason, not
  /// as supporting information.
  final List<Reference>? supportingInformation;

  /// [occurrenceX]
  /// Date vaccine administered or was to be administered.
  final OccurrenceXImmunization occurrenceX;

  /// Getter for [occurrenceDateTime] as a FhirDateTime
  FhirDateTime? get occurrenceDateTime => occurrenceX.isAs<FhirDateTime>();

  /// Getter for [occurrenceString] as a FhirString
  FhirString? get occurrenceString => occurrenceX.isAs<FhirString>();

  /// [primarySource]
  /// Indicates whether the data contained in the resource was captured by
  /// the individual/organization which was responsible for the
  /// administration of the vaccine rather than as 'secondary reported' data
  /// documented by a third party. A value of 'true' means this data
  /// originated with the individual/organization which was responsible for
  /// the administration of the vaccine.
  final FhirBoolean? primarySource;

  /// [informationSource]
  /// Typically the source of the data when the report of the immunization
  /// event is not based on information from the person who administered the
  /// vaccine.
  final CodeableReference? informationSource;

  /// [location]
  /// The service delivery location where the vaccine administration
  /// occurred.
  final Reference? location;

  /// [site]
  /// Body site where vaccine was administered.
  final CodeableConcept? site;

  /// [route]
  /// The path by which the vaccine product is taken into the body.
  final CodeableConcept? route;

  /// [doseQuantity]
  /// The quantity of vaccine product that was administered.
  final Quantity? doseQuantity;

  /// [performer]
  /// Indicates who performed the immunization event.
  final List<ImmunizationPerformer>? performer;

  /// [note]
  /// Extra information about the immunization that is not conveyed by the
  /// other attributes.
  final List<Annotation>? note;

  /// [reason]
  /// Describes why the immunization occurred in coded or textual form, or
  /// Indicates another resource (Condition, Observation or DiagnosticReport)
  /// whose existence justifies this immunization.
  final List<CodeableReference>? reason;

  /// [isSubpotent]
  /// Indication if a dose is considered to be subpotent. By default, a dose
  /// should be considered to be potent.
  final FhirBoolean? isSubpotent;

  /// [subpotentReason]
  /// Reason why a dose is considered to be subpotent.
  final List<CodeableConcept>? subpotentReason;

  /// [programEligibility]
  /// Indicates a patient's eligibility for a funding program.
  final List<ImmunizationProgramEligibility>? programEligibility;

  /// [fundingSource]
  /// Indicates the source of the vaccine actually administered. This may be
  /// different than the patient eligibility (e.g. the patient may be
  /// eligible for a publically purchased vaccine but due to inventory
  /// issues, vaccine purchased with private funds was actually
  /// administered).
  final CodeableConcept? fundingSource;

  /// [reaction]
  /// Categorical data indicating that an adverse event is associated in time
  /// to an immunization.
  final List<ImmunizationReaction>? reaction;

  /// [protocolApplied]
  /// The protocol (set of recommendations) being followed by the provider
  /// who administered the dose.
  final List<ImmunizationProtocolApplied>? protocolApplied;
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
      'basedOn',
      basedOn,
    );
    addField(
      'status',
      status,
    );
    addField(
      'statusReason',
      statusReason,
    );
    addField(
      'vaccineCode',
      vaccineCode,
    );
    addField(
      'administeredProduct',
      administeredProduct,
    );
    addField(
      'manufacturer',
      manufacturer,
    );
    addField(
      'lotNumber',
      lotNumber,
    );
    addField(
      'expirationDate',
      expirationDate,
    );
    addField(
      'patient',
      patient,
    );
    addField(
      'encounter',
      encounter,
    );
    addField(
      'supportingInformation',
      supportingInformation,
    );
    final occurrenceXFhirType = occurrenceX.fhirType;
    addField(
      'occurrence${occurrenceXFhirType.capitalize()}',
      occurrenceX,
    );

    addField(
      'primarySource',
      primarySource,
    );
    addField(
      'informationSource',
      informationSource,
    );
    addField(
      'location',
      location,
    );
    addField(
      'site',
      site,
    );
    addField(
      'route',
      route,
    );
    addField(
      'doseQuantity',
      doseQuantity,
    );
    addField(
      'performer',
      performer,
    );
    addField(
      'note',
      note,
    );
    addField(
      'reason',
      reason,
    );
    addField(
      'isSubpotent',
      isSubpotent,
    );
    addField(
      'subpotentReason',
      subpotentReason,
    );
    addField(
      'programEligibility',
      programEligibility,
    );
    addField(
      'fundingSource',
      fundingSource,
    );
    addField(
      'reaction',
      reaction,
    );
    addField(
      'protocolApplied',
      protocolApplied,
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
      case 'basedOn':
        if (basedOn != null) {
          fields.addAll(basedOn!);
        }
      case 'status':
        fields.add(status);
      case 'statusReason':
        if (statusReason != null) {
          fields.add(statusReason!);
        }
      case 'vaccineCode':
        fields.add(vaccineCode);
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
        fields.add(patient);
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'supportingInformation':
        if (supportingInformation != null) {
          fields.addAll(supportingInformation!);
        }
      case 'occurrence':
        fields.add(occurrenceX);
      case 'occurrenceX':
        fields.add(occurrenceX);
      case 'occurrenceDateTime':
        if (occurrenceX is FhirDateTime) {
          fields.add(occurrenceX);
        }
      case 'occurrenceString':
        if (occurrenceX is FhirString) {
          fields.add(occurrenceX);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  Immunization clone() => copyWith();

  /// Copy function for [Immunization]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ImmunizationCopyWith<Immunization> get copyWith =>
      _$ImmunizationCopyWithImpl<Immunization>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Immunization) {
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
    if (!listEquals<Reference>(
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
    if (!listEquals<ImmunizationPerformer>(
      performer,
      o.performer,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<CodeableReference>(
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
    if (!listEquals<CodeableConcept>(
      subpotentReason,
      o.subpotentReason,
    )) {
      return false;
    }
    if (!listEquals<ImmunizationProgramEligibility>(
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
    if (!listEquals<ImmunizationReaction>(
      reaction,
      o.reaction,
    )) {
      return false;
    }
    if (!listEquals<ImmunizationProtocolApplied>(
      protocolApplied,
      o.protocolApplied,
    )) {
      return false;
    }
    return true;
  }
}

/// [ImmunizationPerformer]
/// Indicates who performed the immunization event.
class ImmunizationPerformer extends BackboneElement {
  /// Primary constructor for
  /// [ImmunizationPerformer]

  const ImmunizationPerformer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    required this.actor,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationPerformer.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImmunizationPerformer(
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
      function_: JsonParser.parseObject<CodeableConcept>(
        json,
        'function',
        CodeableConcept.fromJson,
      ),
      actor: JsonParser.parseObject<Reference>(
        json,
        'actor',
        Reference.fromJson,
      )!,
    );
  }

  /// Deserialize [ImmunizationPerformer]
  /// from a [String] or [YamlMap] object
  factory ImmunizationPerformer.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImmunizationPerformer.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImmunizationPerformer.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImmunizationPerformer '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImmunizationPerformer]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImmunizationPerformer.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImmunizationPerformer.fromJson(json);
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
  final CodeableConcept? function_;

  /// [actor]
  /// The practitioner or organization who performed the action.
  final Reference actor;
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
      'function',
      function_,
    );
    addField(
      'actor',
      actor,
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
      'function',
      'actor',
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
      case 'function':
        if (function_ != null) {
          fields.add(function_!);
        }
      case 'actor':
        fields.add(actor);
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
  ImmunizationPerformer clone() => copyWith();

  /// Copy function for [ImmunizationPerformer]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ImmunizationPerformerCopyWith<ImmunizationPerformer> get copyWith =>
      _$ImmunizationPerformerCopyWithImpl<ImmunizationPerformer>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ImmunizationPerformer) {
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

/// [ImmunizationProgramEligibility]
/// Indicates a patient's eligibility for a funding program.
class ImmunizationProgramEligibility extends BackboneElement {
  /// Primary constructor for
  /// [ImmunizationProgramEligibility]

  const ImmunizationProgramEligibility({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.program,
    required this.programStatus,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationProgramEligibility.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImmunizationProgramEligibility(
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
      program: JsonParser.parseObject<CodeableConcept>(
        json,
        'program',
        CodeableConcept.fromJson,
      )!,
      programStatus: JsonParser.parseObject<CodeableConcept>(
        json,
        'programStatus',
        CodeableConcept.fromJson,
      )!,
    );
  }

  /// Deserialize [ImmunizationProgramEligibility]
  /// from a [String] or [YamlMap] object
  factory ImmunizationProgramEligibility.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImmunizationProgramEligibility.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImmunizationProgramEligibility.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImmunizationProgramEligibility '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImmunizationProgramEligibility]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImmunizationProgramEligibility.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImmunizationProgramEligibility.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImmunizationProgramEligibility';

  /// [program]
  /// Indicates which program the patient had their eligility evaluated for.
  final CodeableConcept program;

  /// [programStatus]
  /// Indicates the patient's eligility status for for a specific payment
  /// program.
  final CodeableConcept programStatus;
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
      'program',
      program,
    );
    addField(
      'programStatus',
      programStatus,
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
      'program',
      'programStatus',
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
      case 'program':
        fields.add(program);
      case 'programStatus':
        fields.add(programStatus);
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
  ImmunizationProgramEligibility clone() => copyWith();

  /// Copy function for [ImmunizationProgramEligibility]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ImmunizationProgramEligibilityCopyWith<ImmunizationProgramEligibility>
      get copyWith => _$ImmunizationProgramEligibilityCopyWithImpl<
              ImmunizationProgramEligibility>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ImmunizationProgramEligibility) {
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

/// [ImmunizationReaction]
/// Categorical data indicating that an adverse event is associated in time
/// to an immunization.
class ImmunizationReaction extends BackboneElement {
  /// Primary constructor for
  /// [ImmunizationReaction]

  const ImmunizationReaction({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.date,
    this.manifestation,
    this.reported,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationReaction.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImmunizationReaction(
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
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
      ),
      manifestation: JsonParser.parseObject<CodeableReference>(
        json,
        'manifestation',
        CodeableReference.fromJson,
      ),
      reported: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'reported',
        FhirBoolean.fromJson,
      ),
    );
  }

  /// Deserialize [ImmunizationReaction]
  /// from a [String] or [YamlMap] object
  factory ImmunizationReaction.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImmunizationReaction.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImmunizationReaction.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImmunizationReaction '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImmunizationReaction]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImmunizationReaction.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImmunizationReaction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImmunizationReaction';

  /// [date]
  /// Date of reaction to the immunization.
  final FhirDateTime? date;

  /// [manifestation]
  /// Details of the reaction.
  final CodeableReference? manifestation;

  /// [reported]
  /// Self-reported indicator.
  final FhirBoolean? reported;
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
      'date',
      date,
    );
    addField(
      'manifestation',
      manifestation,
    );
    addField(
      'reported',
      reported,
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
      'date',
      'manifestation',
      'reported',
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ImmunizationReaction clone() => copyWith();

  /// Copy function for [ImmunizationReaction]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ImmunizationReactionCopyWith<ImmunizationReaction> get copyWith =>
      _$ImmunizationReactionCopyWithImpl<ImmunizationReaction>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ImmunizationReaction) {
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

/// [ImmunizationProtocolApplied]
/// The protocol (set of recommendations) being followed by the provider
/// who administered the dose.
class ImmunizationProtocolApplied extends BackboneElement {
  /// Primary constructor for
  /// [ImmunizationProtocolApplied]

  const ImmunizationProtocolApplied({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.series,
    this.authority,
    this.targetDisease,
    required this.doseNumber,
    this.seriesDoses,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationProtocolApplied.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImmunizationProtocolApplied(
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
      series: JsonParser.parsePrimitive<FhirString>(
        json,
        'series',
        FhirString.fromJson,
      ),
      authority: JsonParser.parseObject<Reference>(
        json,
        'authority',
        Reference.fromJson,
      ),
      targetDisease: (json['targetDisease'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      doseNumber: JsonParser.parsePrimitive<FhirString>(
        json,
        'doseNumber',
        FhirString.fromJson,
      )!,
      seriesDoses: JsonParser.parsePrimitive<FhirString>(
        json,
        'seriesDoses',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [ImmunizationProtocolApplied]
  /// from a [String] or [YamlMap] object
  factory ImmunizationProtocolApplied.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImmunizationProtocolApplied.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImmunizationProtocolApplied.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImmunizationProtocolApplied '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImmunizationProtocolApplied]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImmunizationProtocolApplied.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImmunizationProtocolApplied.fromJson(json);
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
  final FhirString? series;

  /// [authority]
  /// Indicates the authority who published the protocol (e.g. ACIP) that is
  /// being followed.
  final Reference? authority;

  /// [targetDisease]
  /// The vaccine preventable disease the dose is being administered against.
  final List<CodeableConcept>? targetDisease;

  /// [doseNumber]
  /// Nominal position in a series as intended by the practitioner
  /// administering the dose.
  final FhirString doseNumber;

  /// [seriesDoses]
  /// The recommended number of doses to achieve immunity as intended by the
  /// practitioner administering the dose.
  final FhirString? seriesDoses;
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
      'series',
      series,
    );
    addField(
      'authority',
      authority,
    );
    addField(
      'targetDisease',
      targetDisease,
    );
    addField(
      'doseNumber',
      doseNumber,
    );
    addField(
      'seriesDoses',
      seriesDoses,
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
        fields.add(doseNumber);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ImmunizationProtocolApplied clone() => copyWith();

  /// Copy function for [ImmunizationProtocolApplied]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ImmunizationProtocolAppliedCopyWith<ImmunizationProtocolApplied>
      get copyWith => _$ImmunizationProtocolAppliedCopyWithImpl<
              ImmunizationProtocolApplied>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ImmunizationProtocolApplied) {
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
    if (!listEquals<CodeableConcept>(
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
