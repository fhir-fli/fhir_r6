// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fhir_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FhirReadRequestImpl _$$FhirReadRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$FhirReadRequestImpl(
      base: Uri.parse(json['base'] as String),
      type: $enumDecode(_$R6ResourceTypeEnumMap, json['type']),
      id: json['id'] as String,
      pretty: json['pretty'] as bool?,
      summary: $enumDecodeNullable(_$SummaryEnumMap, json['summary']) ??
          Summary.none,
      format: json['format'] as String? ?? 'json',
      elements: (json['elements'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      parameters: (json['parameters'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      mimeType:
          $enumDecodeNullable(_$SupportedMimeTypeEnumMap, json['mimeType']),
      accept: json['accept'] as String? ?? 'application/fhir+json',
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FhirReadRequestImplToJson(
    _$FhirReadRequestImpl instance) {
  final val = <String, dynamic>{
    'base': instance.base.toString(),
    'type': instance.type.toJson(),
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pretty', instance.pretty);
  val['summary'] = _$SummaryEnumMap[instance.summary]!;
  writeNotNull('format', instance.format);
  val['elements'] = instance.elements;
  val['parameters'] = instance.parameters;
  writeNotNull('mimeType', _$SupportedMimeTypeEnumMap[instance.mimeType]);
  val['accept'] = instance.accept;
  writeNotNull('headers', instance.headers);
  val['runtimeType'] = instance.$type;
  return val;
}

const _$R6ResourceTypeEnumMap = {
  R6ResourceType.Account: 'Account',
  R6ResourceType.ActivityDefinition: 'ActivityDefinition',
  R6ResourceType.ActorDefinition: 'ActorDefinition',
  R6ResourceType.AdministrableProductDefinition:
      'AdministrableProductDefinition',
  R6ResourceType.AdverseEvent: 'AdverseEvent',
  R6ResourceType.AllergyIntolerance: 'AllergyIntolerance',
  R6ResourceType.Appointment: 'Appointment',
  R6ResourceType.AppointmentResponse: 'AppointmentResponse',
  R6ResourceType.ArtifactAssessment: 'ArtifactAssessment',
  R6ResourceType.AuditEvent: 'AuditEvent',
  R6ResourceType.Basic: 'Basic',
  R6ResourceType.Binary: 'Binary',
  R6ResourceType.BiologicallyDerivedProduct: 'BiologicallyDerivedProduct',
  R6ResourceType.BiologicallyDerivedProductDispense:
      'BiologicallyDerivedProductDispense',
  R6ResourceType.BodyStructure: 'BodyStructure',
  R6ResourceType.Bundle: 'Bundle',
  R6ResourceType.CapabilityStatement: 'CapabilityStatement',
  R6ResourceType.CarePlan: 'CarePlan',
  R6ResourceType.CareTeam: 'CareTeam',
  R6ResourceType.ChargeItem: 'ChargeItem',
  R6ResourceType.ChargeItemDefinition: 'ChargeItemDefinition',
  R6ResourceType.Citation: 'Citation',
  R6ResourceType.Claim: 'Claim',
  R6ResourceType.ClaimResponse: 'ClaimResponse',
  R6ResourceType.ClinicalImpression: 'ClinicalImpression',
  R6ResourceType.ClinicalUseDefinition: 'ClinicalUseDefinition',
  R6ResourceType.CodeSystem: 'CodeSystem',
  R6ResourceType.Communication: 'Communication',
  R6ResourceType.CommunicationRequest: 'CommunicationRequest',
  R6ResourceType.CompartmentDefinition: 'CompartmentDefinition',
  R6ResourceType.Composition: 'Composition',
  R6ResourceType.ConceptMap: 'ConceptMap',
  R6ResourceType.Condition: 'Condition',
  R6ResourceType.ConditionDefinition: 'ConditionDefinition',
  R6ResourceType.Consent: 'Consent',
  R6ResourceType.Contract: 'Contract',
  R6ResourceType.Coverage: 'Coverage',
  R6ResourceType.CoverageEligibilityRequest: 'CoverageEligibilityRequest',
  R6ResourceType.CoverageEligibilityResponse: 'CoverageEligibilityResponse',
  R6ResourceType.DetectedIssue: 'DetectedIssue',
  R6ResourceType.Device: 'Device',
  R6ResourceType.DeviceAssociation: 'DeviceAssociation',
  R6ResourceType.DeviceDefinition: 'DeviceDefinition',
  R6ResourceType.DeviceDispense: 'DeviceDispense',
  R6ResourceType.DeviceMetric: 'DeviceMetric',
  R6ResourceType.DeviceRequest: 'DeviceRequest',
  R6ResourceType.DeviceUsage: 'DeviceUsage',
  R6ResourceType.DiagnosticReport: 'DiagnosticReport',
  R6ResourceType.DocumentReference: 'DocumentReference',
  R6ResourceType.Encounter: 'Encounter',
  R6ResourceType.EncounterHistory: 'EncounterHistory',
  R6ResourceType.Endpoint: 'Endpoint',
  R6ResourceType.EnrollmentRequest: 'EnrollmentRequest',
  R6ResourceType.EnrollmentResponse: 'EnrollmentResponse',
  R6ResourceType.EpisodeOfCare: 'EpisodeOfCare',
  R6ResourceType.EventDefinition: 'EventDefinition',
  R6ResourceType.Evidence: 'Evidence',
  R6ResourceType.EvidenceReport: 'EvidenceReport',
  R6ResourceType.EvidenceVariable: 'EvidenceVariable',
  R6ResourceType.ExampleScenario: 'ExampleScenario',
  R6ResourceType.ExplanationOfBenefit: 'ExplanationOfBenefit',
  R6ResourceType.FamilyMemberHistory: 'FamilyMemberHistory',
  R6ResourceType.Flag: 'Flag',
  R6ResourceType.FormularyItem: 'FormularyItem',
  R6ResourceType.GenomicStudy: 'GenomicStudy',
  R6ResourceType.Goal: 'Goal',
  R6ResourceType.GraphDefinition: 'GraphDefinition',
  R6ResourceType.Group: 'Group',
  R6ResourceType.GuidanceResponse: 'GuidanceResponse',
  R6ResourceType.HealthcareService: 'HealthcareService',
  R6ResourceType.ImagingSelection: 'ImagingSelection',
  R6ResourceType.ImagingStudy: 'ImagingStudy',
  R6ResourceType.Immunization: 'Immunization',
  R6ResourceType.ImmunizationEvaluation: 'ImmunizationEvaluation',
  R6ResourceType.ImmunizationRecommendation: 'ImmunizationRecommendation',
  R6ResourceType.ImplementationGuide: 'ImplementationGuide',
  R6ResourceType.Ingredient: 'Ingredient',
  R6ResourceType.InsurancePlan: 'InsurancePlan',
  R6ResourceType.InsuranceProduct: 'InsuranceProduct',
  R6ResourceType.InventoryItem: 'InventoryItem',
  R6ResourceType.InventoryReport: 'InventoryReport',
  R6ResourceType.Invoice: 'Invoice',
  R6ResourceType.Library: 'Library',
  R6ResourceType.Linkage: 'Linkage',
  R6ResourceType.FhirList: 'List',
  R6ResourceType.Location: 'Location',
  R6ResourceType.ManufacturedItemDefinition: 'ManufacturedItemDefinition',
  R6ResourceType.Measure: 'Measure',
  R6ResourceType.MeasureReport: 'MeasureReport',
  R6ResourceType.Medication: 'Medication',
  R6ResourceType.MedicationAdministration: 'MedicationAdministration',
  R6ResourceType.MedicationDispense: 'MedicationDispense',
  R6ResourceType.MedicationKnowledge: 'MedicationKnowledge',
  R6ResourceType.MedicationRequest: 'MedicationRequest',
  R6ResourceType.MedicationStatement: 'MedicationStatement',
  R6ResourceType.MedicinalProductDefinition: 'MedicinalProductDefinition',
  R6ResourceType.MessageDefinition: 'MessageDefinition',
  R6ResourceType.MessageHeader: 'MessageHeader',
  R6ResourceType.MolecularSequence: 'MolecularSequence',
  R6ResourceType.NamingSystem: 'NamingSystem',
  R6ResourceType.NutritionIntake: 'NutritionIntake',
  R6ResourceType.NutritionOrder: 'NutritionOrder',
  R6ResourceType.NutritionProduct: 'NutritionProduct',
  R6ResourceType.Observation: 'Observation',
  R6ResourceType.ObservationDefinition: 'ObservationDefinition',
  R6ResourceType.OperationDefinition: 'OperationDefinition',
  R6ResourceType.OperationOutcome: 'OperationOutcome',
  R6ResourceType.Organization: 'Organization',
  R6ResourceType.OrganizationAffiliation: 'OrganizationAffiliation',
  R6ResourceType.PackagedProductDefinition: 'PackagedProductDefinition',
  R6ResourceType.Parameters: 'Parameters',
  R6ResourceType.Patient: 'Patient',
  R6ResourceType.PaymentNotice: 'PaymentNotice',
  R6ResourceType.PaymentReconciliation: 'PaymentReconciliation',
  R6ResourceType.Permission: 'Permission',
  R6ResourceType.Person: 'Person',
  R6ResourceType.PlanDefinition: 'PlanDefinition',
  R6ResourceType.Practitioner: 'Practitioner',
  R6ResourceType.PractitionerRole: 'PractitionerRole',
  R6ResourceType.Procedure: 'Procedure',
  R6ResourceType.Provenance: 'Provenance',
  R6ResourceType.Questionnaire: 'Questionnaire',
  R6ResourceType.QuestionnaireResponse: 'QuestionnaireResponse',
  R6ResourceType.RegulatedAuthorization: 'RegulatedAuthorization',
  R6ResourceType.RelatedPerson: 'RelatedPerson',
  R6ResourceType.RequestOrchestration: 'RequestOrchestration',
  R6ResourceType.Requirements: 'Requirements',
  R6ResourceType.ResearchStudy: 'ResearchStudy',
  R6ResourceType.ResearchSubject: 'ResearchSubject',
  R6ResourceType.RiskAssessment: 'RiskAssessment',
  R6ResourceType.Schedule: 'Schedule',
  R6ResourceType.SearchParameter: 'SearchParameter',
  R6ResourceType.ServiceRequest: 'ServiceRequest',
  R6ResourceType.Slot: 'Slot',
  R6ResourceType.Specimen: 'Specimen',
  R6ResourceType.SpecimenDefinition: 'SpecimenDefinition',
  R6ResourceType.StructureDefinition: 'StructureDefinition',
  R6ResourceType.StructureMap: 'StructureMap',
  R6ResourceType.Subscription: 'Subscription',
  R6ResourceType.SubscriptionStatus: 'SubscriptionStatus',
  R6ResourceType.SubscriptionTopic: 'SubscriptionTopic',
  R6ResourceType.Substance: 'Substance',
  R6ResourceType.SubstanceDefinition: 'SubstanceDefinition',
  R6ResourceType.SubstanceNucleicAcid: 'SubstanceNucleicAcid',
  R6ResourceType.SubstancePolymer: 'SubstancePolymer',
  R6ResourceType.SubstanceProtein: 'SubstanceProtein',
  R6ResourceType.SubstanceReferenceInformation: 'SubstanceReferenceInformation',
  R6ResourceType.SubstanceSourceMaterial: 'SubstanceSourceMaterial',
  R6ResourceType.SupplyDelivery: 'SupplyDelivery',
  R6ResourceType.SupplyRequest: 'SupplyRequest',
  R6ResourceType.Task: 'Task',
  R6ResourceType.TerminologyCapabilities: 'TerminologyCapabilities',
  R6ResourceType.TestPlan: 'TestPlan',
  R6ResourceType.TestReport: 'TestReport',
  R6ResourceType.TestScript: 'TestScript',
  R6ResourceType.Transport: 'Transport',
  R6ResourceType.ValueSet: 'ValueSet',
  R6ResourceType.VerificationResult: 'VerificationResult',
  R6ResourceType.VisionPrescription: 'VisionPrescription',
};

const _$SummaryEnumMap = {
  Summary.true_: 'true_',
  Summary.false_: 'false_',
  Summary.text: 'text',
  Summary.count: 'count',
  Summary.data: 'data',
  Summary.none: 'none',
};

const _$SupportedMimeTypeEnumMap = {
  SupportedMimeType.fhir_json: 'fhir_json',
  SupportedMimeType.json_fhir: 'json_fhir',
  SupportedMimeType.json: 'json',
  SupportedMimeType.x_www_form_urlencoded: 'x_www_form_urlencoded',
};

_$FhirVReadRequestImpl _$$FhirVReadRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$FhirVReadRequestImpl(
      base: Uri.parse(json['base'] as String),
      type: $enumDecode(_$R6ResourceTypeEnumMap, json['type']),
      id: json['id'] as String,
      vid: FhirId.fromJson(json['vid']),
      pretty: json['pretty'] as bool?,
      summary: $enumDecodeNullable(_$SummaryEnumMap, json['summary']) ??
          Summary.none,
      format: json['format'] as String? ?? 'json',
      elements: (json['elements'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      parameters: (json['parameters'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      mimeType:
          $enumDecodeNullable(_$SupportedMimeTypeEnumMap, json['mimeType']),
      accept: json['accept'] as String? ?? 'application/fhir+json',
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FhirVReadRequestImplToJson(
    _$FhirVReadRequestImpl instance) {
  final val = <String, dynamic>{
    'base': instance.base.toString(),
    'type': instance.type.toJson(),
    'id': instance.id,
    'vid': instance.vid.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pretty', instance.pretty);
  val['summary'] = _$SummaryEnumMap[instance.summary]!;
  writeNotNull('format', instance.format);
  val['elements'] = instance.elements;
  val['parameters'] = instance.parameters;
  writeNotNull('mimeType', _$SupportedMimeTypeEnumMap[instance.mimeType]);
  val['accept'] = instance.accept;
  writeNotNull('headers', instance.headers);
  val['runtimeType'] = instance.$type;
  return val;
}

_$FhirUpdateRequestImpl _$$FhirUpdateRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$FhirUpdateRequestImpl(
      base: Uri.parse(json['base'] as String),
      resource: Resource.fromJson(json['resource'] as Map<String, dynamic>),
      pretty: json['pretty'] as bool?,
      summary: $enumDecodeNullable(_$SummaryEnumMap, json['summary']) ??
          Summary.none,
      format: json['format'] as String? ?? 'json',
      elements: (json['elements'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      parameters: (json['parameters'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      mimeType:
          $enumDecodeNullable(_$SupportedMimeTypeEnumMap, json['mimeType']),
      accept: json['accept'] as String? ?? 'application/fhir+json',
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FhirUpdateRequestImplToJson(
    _$FhirUpdateRequestImpl instance) {
  final val = <String, dynamic>{
    'base': instance.base.toString(),
    'resource': instance.resource.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pretty', instance.pretty);
  val['summary'] = _$SummaryEnumMap[instance.summary]!;
  writeNotNull('format', instance.format);
  val['elements'] = instance.elements;
  val['parameters'] = instance.parameters;
  writeNotNull('mimeType', _$SupportedMimeTypeEnumMap[instance.mimeType]);
  val['accept'] = instance.accept;
  writeNotNull('headers', instance.headers);
  val['runtimeType'] = instance.$type;
  return val;
}

_$FhirPatchRequestImpl _$$FhirPatchRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$FhirPatchRequestImpl(
      base: Uri.parse(json['base'] as String),
      resource: Resource.fromJson(json['resource'] as Map<String, dynamic>),
      pretty: json['pretty'] as bool?,
      summary: $enumDecodeNullable(_$SummaryEnumMap, json['summary']) ??
          Summary.none,
      format: json['format'] as String? ?? 'json',
      elements: (json['elements'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      parameters: (json['parameters'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      mimeType:
          $enumDecodeNullable(_$SupportedMimeTypeEnumMap, json['mimeType']),
      accept: json['accept'] as String? ?? 'application/fhir+json',
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FhirPatchRequestImplToJson(
    _$FhirPatchRequestImpl instance) {
  final val = <String, dynamic>{
    'base': instance.base.toString(),
    'resource': instance.resource.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pretty', instance.pretty);
  val['summary'] = _$SummaryEnumMap[instance.summary]!;
  writeNotNull('format', instance.format);
  val['elements'] = instance.elements;
  val['parameters'] = instance.parameters;
  writeNotNull('mimeType', _$SupportedMimeTypeEnumMap[instance.mimeType]);
  val['accept'] = instance.accept;
  writeNotNull('headers', instance.headers);
  val['runtimeType'] = instance.$type;
  return val;
}

_$FhirDeleteRequestImpl _$$FhirDeleteRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$FhirDeleteRequestImpl(
      base: Uri.parse(json['base'] as String),
      type: $enumDecode(_$R6ResourceTypeEnumMap, json['type']),
      id: json['id'] as String,
      pretty: json['pretty'] as bool?,
      summary: $enumDecodeNullable(_$SummaryEnumMap, json['summary']) ??
          Summary.none,
      format: json['format'] as String? ?? 'json',
      elements: (json['elements'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      parameters: (json['parameters'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      mimeType:
          $enumDecodeNullable(_$SupportedMimeTypeEnumMap, json['mimeType']),
      accept: json['accept'] as String? ?? 'application/fhir+json',
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FhirDeleteRequestImplToJson(
    _$FhirDeleteRequestImpl instance) {
  final val = <String, dynamic>{
    'base': instance.base.toString(),
    'type': instance.type.toJson(),
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pretty', instance.pretty);
  val['summary'] = _$SummaryEnumMap[instance.summary]!;
  writeNotNull('format', instance.format);
  val['elements'] = instance.elements;
  val['parameters'] = instance.parameters;
  writeNotNull('mimeType', _$SupportedMimeTypeEnumMap[instance.mimeType]);
  val['accept'] = instance.accept;
  writeNotNull('headers', instance.headers);
  val['runtimeType'] = instance.$type;
  return val;
}

_$FhirCreateRequestImpl _$$FhirCreateRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$FhirCreateRequestImpl(
      base: Uri.parse(json['base'] as String),
      resource: Resource.fromJson(json['resource'] as Map<String, dynamic>),
      pretty: json['pretty'] as bool?,
      summary: $enumDecodeNullable(_$SummaryEnumMap, json['summary']) ??
          Summary.none,
      format: json['format'] as String? ?? 'json',
      elements: (json['elements'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      parameters: (json['parameters'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      mimeType:
          $enumDecodeNullable(_$SupportedMimeTypeEnumMap, json['mimeType']),
      accept: json['accept'] as String? ?? 'application/fhir+json',
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FhirCreateRequestImplToJson(
    _$FhirCreateRequestImpl instance) {
  final val = <String, dynamic>{
    'base': instance.base.toString(),
    'resource': instance.resource.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pretty', instance.pretty);
  val['summary'] = _$SummaryEnumMap[instance.summary]!;
  writeNotNull('format', instance.format);
  val['elements'] = instance.elements;
  val['parameters'] = instance.parameters;
  writeNotNull('mimeType', _$SupportedMimeTypeEnumMap[instance.mimeType]);
  val['accept'] = instance.accept;
  writeNotNull('headers', instance.headers);
  val['runtimeType'] = instance.$type;
  return val;
}

_$FhirSearchRequestImpl _$$FhirSearchRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$FhirSearchRequestImpl(
      base: Uri.parse(json['base'] as String),
      type: $enumDecode(_$R6ResourceTypeEnumMap, json['type']),
      pretty: json['pretty'] as bool?,
      summary: $enumDecodeNullable(_$SummaryEnumMap, json['summary']) ??
          Summary.none,
      format: json['format'] as String? ?? 'json',
      elements: (json['elements'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      parameters: (json['parameters'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      usePost: json['usePost'] as bool? ?? false,
      restfulRequest: $enumDecodeNullable(
              _$RestfulRequestEnumMap, json['restfulRequest']) ??
          RestfulRequest.get_,
      mimeType:
          $enumDecodeNullable(_$SupportedMimeTypeEnumMap, json['mimeType']),
      accept: json['accept'] as String? ?? 'application/fhir+json',
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FhirSearchRequestImplToJson(
    _$FhirSearchRequestImpl instance) {
  final val = <String, dynamic>{
    'base': instance.base.toString(),
    'type': instance.type.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pretty', instance.pretty);
  val['summary'] = _$SummaryEnumMap[instance.summary]!;
  writeNotNull('format', instance.format);
  val['elements'] = instance.elements;
  val['parameters'] = instance.parameters;
  val['usePost'] = instance.usePost;
  val['restfulRequest'] = _$RestfulRequestEnumMap[instance.restfulRequest]!;
  writeNotNull('mimeType', _$SupportedMimeTypeEnumMap[instance.mimeType]);
  val['accept'] = instance.accept;
  writeNotNull('headers', instance.headers);
  val['runtimeType'] = instance.$type;
  return val;
}

const _$RestfulRequestEnumMap = {
  RestfulRequest.get_: 'GET',
  RestfulRequest.put_: 'PUT',
  RestfulRequest.delete_: 'DELETE',
  RestfulRequest.post_: 'POST',
  RestfulRequest.patch_: 'PATCH',
};

_$FhirSearchAllRequestImpl _$$FhirSearchAllRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$FhirSearchAllRequestImpl(
      base: Uri.parse(json['base'] as String),
      pretty: json['pretty'] as bool?,
      summary: $enumDecodeNullable(_$SummaryEnumMap, json['summary']) ??
          Summary.none,
      format: json['format'] as String? ?? 'json',
      elements: (json['elements'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      parameters: (json['parameters'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      mimeType:
          $enumDecodeNullable(_$SupportedMimeTypeEnumMap, json['mimeType']),
      accept: json['accept'] as String? ?? 'application/fhir+json',
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FhirSearchAllRequestImplToJson(
    _$FhirSearchAllRequestImpl instance) {
  final val = <String, dynamic>{
    'base': instance.base.toString(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pretty', instance.pretty);
  val['summary'] = _$SummaryEnumMap[instance.summary]!;
  writeNotNull('format', instance.format);
  val['elements'] = instance.elements;
  val['parameters'] = instance.parameters;
  writeNotNull('mimeType', _$SupportedMimeTypeEnumMap[instance.mimeType]);
  val['accept'] = instance.accept;
  writeNotNull('headers', instance.headers);
  val['runtimeType'] = instance.$type;
  return val;
}

_$FhirCapabilitiesRequestImpl _$$FhirCapabilitiesRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$FhirCapabilitiesRequestImpl(
      base: Uri.parse(json['base'] as String),
      pretty: json['pretty'] as bool?,
      summary: $enumDecodeNullable(_$SummaryEnumMap, json['summary']) ??
          Summary.none,
      format: json['format'] as String? ?? 'json',
      elements: (json['elements'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      parameters: (json['parameters'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      mode: $enumDecodeNullable(_$ModeEnumMap, json['mode']) ?? Mode.full,
      mimeType:
          $enumDecodeNullable(_$SupportedMimeTypeEnumMap, json['mimeType']),
      accept: json['accept'] as String? ?? 'application/fhir+json',
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FhirCapabilitiesRequestImplToJson(
    _$FhirCapabilitiesRequestImpl instance) {
  final val = <String, dynamic>{
    'base': instance.base.toString(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pretty', instance.pretty);
  val['summary'] = _$SummaryEnumMap[instance.summary]!;
  writeNotNull('format', instance.format);
  val['elements'] = instance.elements;
  val['parameters'] = instance.parameters;
  val['mode'] = _$ModeEnumMap[instance.mode]!;
  writeNotNull('mimeType', _$SupportedMimeTypeEnumMap[instance.mimeType]);
  val['accept'] = instance.accept;
  writeNotNull('headers', instance.headers);
  val['runtimeType'] = instance.$type;
  return val;
}

const _$ModeEnumMap = {
  Mode.full: 'full',
  Mode.normative: 'normative',
  Mode.terminology: 'terminology',
};

_$FhirTransactionRequestImpl _$$FhirTransactionRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$FhirTransactionRequestImpl(
      base: Uri.parse(json['base'] as String),
      pretty: json['pretty'] as bool?,
      summary: $enumDecodeNullable(_$SummaryEnumMap, json['summary']) ??
          Summary.none,
      format: json['format'] as String? ?? 'json',
      elements: (json['elements'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      parameters: (json['parameters'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      bundle: Bundle.fromJson(json['bundle'] as Map<String, dynamic>),
      mimeType:
          $enumDecodeNullable(_$SupportedMimeTypeEnumMap, json['mimeType']),
      accept: json['accept'] as String? ?? 'application/fhir+json',
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FhirTransactionRequestImplToJson(
    _$FhirTransactionRequestImpl instance) {
  final val = <String, dynamic>{
    'base': instance.base.toString(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pretty', instance.pretty);
  val['summary'] = _$SummaryEnumMap[instance.summary]!;
  writeNotNull('format', instance.format);
  val['elements'] = instance.elements;
  val['parameters'] = instance.parameters;
  val['bundle'] = instance.bundle.toJson();
  writeNotNull('mimeType', _$SupportedMimeTypeEnumMap[instance.mimeType]);
  val['accept'] = instance.accept;
  writeNotNull('headers', instance.headers);
  val['runtimeType'] = instance.$type;
  return val;
}

_$FhirBatchRequestImpl _$$FhirBatchRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$FhirBatchRequestImpl(
      base: Uri.parse(json['base'] as String),
      pretty: json['pretty'] as bool?,
      summary: $enumDecodeNullable(_$SummaryEnumMap, json['summary']) ??
          Summary.none,
      format: json['format'] as String? ?? 'json',
      elements: (json['elements'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      parameters: (json['parameters'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      bundle: Bundle.fromJson(json['bundle'] as Map<String, dynamic>),
      mimeType:
          $enumDecodeNullable(_$SupportedMimeTypeEnumMap, json['mimeType']),
      accept: json['accept'] as String? ?? 'application/fhir+json',
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FhirBatchRequestImplToJson(
    _$FhirBatchRequestImpl instance) {
  final val = <String, dynamic>{
    'base': instance.base.toString(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pretty', instance.pretty);
  val['summary'] = _$SummaryEnumMap[instance.summary]!;
  writeNotNull('format', instance.format);
  val['elements'] = instance.elements;
  val['parameters'] = instance.parameters;
  val['bundle'] = instance.bundle.toJson();
  writeNotNull('mimeType', _$SupportedMimeTypeEnumMap[instance.mimeType]);
  val['accept'] = instance.accept;
  writeNotNull('headers', instance.headers);
  val['runtimeType'] = instance.$type;
  return val;
}

_$FhirHistoryRequestImpl _$$FhirHistoryRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$FhirHistoryRequestImpl(
      base: Uri.parse(json['base'] as String),
      type: $enumDecode(_$R6ResourceTypeEnumMap, json['type']),
      id: json['id'] as String,
      pretty: json['pretty'] as bool?,
      summary: $enumDecodeNullable(_$SummaryEnumMap, json['summary']) ??
          Summary.none,
      format: json['format'] as String? ?? 'json',
      elements: (json['elements'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      parameters: (json['parameters'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      count: (json['count'] as num?)?.toInt(),
      since: json['since'] == null
          ? null
          : FhirInstant.fromJson(json['since'] as String),
      at: json['at'] == null
          ? null
          : FhirDateTime.fromJson(json['at'] as String),
      reference: json['reference'] as String?,
      mimeType:
          $enumDecodeNullable(_$SupportedMimeTypeEnumMap, json['mimeType']),
      accept: json['accept'] as String? ?? 'application/fhir+json',
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FhirHistoryRequestImplToJson(
    _$FhirHistoryRequestImpl instance) {
  final val = <String, dynamic>{
    'base': instance.base.toString(),
    'type': instance.type.toJson(),
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pretty', instance.pretty);
  val['summary'] = _$SummaryEnumMap[instance.summary]!;
  writeNotNull('format', instance.format);
  val['elements'] = instance.elements;
  val['parameters'] = instance.parameters;
  writeNotNull('count', instance.count);
  writeNotNull('since', instance.since?.toJson());
  writeNotNull('at', instance.at?.toJson());
  writeNotNull('reference', instance.reference);
  writeNotNull('mimeType', _$SupportedMimeTypeEnumMap[instance.mimeType]);
  val['accept'] = instance.accept;
  writeNotNull('headers', instance.headers);
  val['runtimeType'] = instance.$type;
  return val;
}

_$FhirHistoryTypeRequestImpl _$$FhirHistoryTypeRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$FhirHistoryTypeRequestImpl(
      base: Uri.parse(json['base'] as String),
      type: $enumDecode(_$R6ResourceTypeEnumMap, json['type']),
      pretty: json['pretty'] as bool?,
      summary: $enumDecodeNullable(_$SummaryEnumMap, json['summary']) ??
          Summary.none,
      format: json['format'] as String? ?? 'json',
      elements: (json['elements'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      parameters: (json['parameters'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      count: (json['count'] as num?)?.toInt(),
      since: json['since'] == null
          ? null
          : FhirInstant.fromJson(json['since'] as String),
      at: json['at'] == null
          ? null
          : FhirDateTime.fromJson(json['at'] as String),
      reference: json['reference'] as String?,
      mimeType:
          $enumDecodeNullable(_$SupportedMimeTypeEnumMap, json['mimeType']),
      accept: json['accept'] as String? ?? 'application/fhir+json',
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FhirHistoryTypeRequestImplToJson(
    _$FhirHistoryTypeRequestImpl instance) {
  final val = <String, dynamic>{
    'base': instance.base.toString(),
    'type': instance.type.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pretty', instance.pretty);
  val['summary'] = _$SummaryEnumMap[instance.summary]!;
  writeNotNull('format', instance.format);
  val['elements'] = instance.elements;
  val['parameters'] = instance.parameters;
  writeNotNull('count', instance.count);
  writeNotNull('since', instance.since?.toJson());
  writeNotNull('at', instance.at?.toJson());
  writeNotNull('reference', instance.reference);
  writeNotNull('mimeType', _$SupportedMimeTypeEnumMap[instance.mimeType]);
  val['accept'] = instance.accept;
  writeNotNull('headers', instance.headers);
  val['runtimeType'] = instance.$type;
  return val;
}

_$FhirHistoryAllRequestImpl _$$FhirHistoryAllRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$FhirHistoryAllRequestImpl(
      base: Uri.parse(json['base'] as String),
      pretty: json['pretty'] as bool?,
      summary: $enumDecodeNullable(_$SummaryEnumMap, json['summary']) ??
          Summary.none,
      format: json['format'] as String? ?? 'json',
      elements: (json['elements'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      parameters: (json['parameters'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      count: (json['count'] as num?)?.toInt(),
      since: json['since'] == null
          ? null
          : FhirInstant.fromJson(json['since'] as String),
      at: json['at'] == null
          ? null
          : FhirDateTime.fromJson(json['at'] as String),
      reference: json['reference'] as String?,
      mimeType:
          $enumDecodeNullable(_$SupportedMimeTypeEnumMap, json['mimeType']),
      accept: json['accept'] as String? ?? 'application/fhir+json',
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FhirHistoryAllRequestImplToJson(
    _$FhirHistoryAllRequestImpl instance) {
  final val = <String, dynamic>{
    'base': instance.base.toString(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pretty', instance.pretty);
  val['summary'] = _$SummaryEnumMap[instance.summary]!;
  writeNotNull('format', instance.format);
  val['elements'] = instance.elements;
  val['parameters'] = instance.parameters;
  writeNotNull('count', instance.count);
  writeNotNull('since', instance.since?.toJson());
  writeNotNull('at', instance.at?.toJson());
  writeNotNull('reference', instance.reference);
  writeNotNull('mimeType', _$SupportedMimeTypeEnumMap[instance.mimeType]);
  val['accept'] = instance.accept;
  writeNotNull('headers', instance.headers);
  val['runtimeType'] = instance.$type;
  return val;
}

_$FhirOperationRequestImpl _$$FhirOperationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$FhirOperationRequestImpl(
      base: Uri.parse(json['base'] as String),
      type: $enumDecodeNullable(_$R6ResourceTypeEnumMap, json['type']),
      id: json['id'] as String?,
      pretty: json['pretty'] as bool?,
      summary: $enumDecodeNullable(_$SummaryEnumMap, json['summary']) ??
          Summary.none,
      format: json['format'] as String? ?? 'json',
      elements: (json['elements'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      parameters: (json['parameters'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      fhirParameter: json['fhirParameter'] == null
          ? null
          : Parameters.fromJson(json['fhirParameter'] as Map<String, dynamic>),
      operation: json['operation'] as String,
      usePost: json['usePost'] as bool? ?? false,
      useFormData: json['useFormData'] as bool? ?? false,
      mimeType:
          $enumDecodeNullable(_$SupportedMimeTypeEnumMap, json['mimeType']),
      accept: json['accept'] as String? ?? 'application/fhir+json',
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FhirOperationRequestImplToJson(
    _$FhirOperationRequestImpl instance) {
  final val = <String, dynamic>{
    'base': instance.base.toString(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type?.toJson());
  writeNotNull('id', instance.id);
  writeNotNull('pretty', instance.pretty);
  val['summary'] = _$SummaryEnumMap[instance.summary]!;
  writeNotNull('format', instance.format);
  val['elements'] = instance.elements;
  val['parameters'] = instance.parameters;
  writeNotNull('fhirParameter', instance.fhirParameter?.toJson());
  val['operation'] = instance.operation;
  val['usePost'] = instance.usePost;
  val['useFormData'] = instance.useFormData;
  writeNotNull('mimeType', _$SupportedMimeTypeEnumMap[instance.mimeType]);
  val['accept'] = instance.accept;
  writeNotNull('headers', instance.headers);
  val['runtimeType'] = instance.$type;
  return val;
}

_$FhirHttpRequestImpl _$$FhirHttpRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$FhirHttpRequestImpl(
      type: $enumDecode(_$RestfulRequestEnumMap, json['type']),
      url: json['url'] as String,
      headers: Map<String, String>.from(json['headers'] as Map),
      body: json['body'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$FhirHttpRequestImplToJson(
    _$FhirHttpRequestImpl instance) {
  final val = <String, dynamic>{
    'type': _$RestfulRequestEnumMap[instance.type]!,
    'url': instance.url,
    'headers': instance.headers,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('body', instance.body);
  return val;
}
