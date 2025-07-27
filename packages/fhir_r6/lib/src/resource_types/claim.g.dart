// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'claim.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ClaimCopyWith<T> extends $DomainResourceCopyWith<T> {
  @override
  T call({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    AllLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<Identifier>? traceNumber,
    FinancialResourceStatusCodes? status,
    CodeableConcept? type,
    CodeableConcept? subType,
    Use? use,
    Reference? patient,
    Period? billablePeriod,
    FhirDateTime? created,
    Reference? enterer,
    Reference? insurer,
    Reference? provider,
    CodeableConcept? priority,
    CodeableConcept? fundsReserve,
    List<ClaimRelated>? related,
    Reference? prescription,
    Reference? originalPrescription,
    ClaimPayee? payee,
    Reference? referral,
    List<Reference>? encounter,
    Reference? facility,
    CodeableConcept? diagnosisRelatedGroup,
    List<ClaimEvent>? event,
    List<ClaimCareTeam>? careTeam,
    List<ClaimSupportingInfo>? supportingInfo,
    List<ClaimDiagnosis>? diagnosis,
    List<ClaimProcedure>? procedure,
    List<ClaimInsurance>? insurance,
    ClaimAccident? accident,
    Money? patientPaid,
    List<ClaimItem>? item,
    Money? total,
    bool? disallowExtensions,
  });
}

class _$ClaimCopyWithImpl<T> implements $ClaimCopyWith<T> {
  final Claim _value;
  final T Function(Claim) _then;

  _$ClaimCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? meta = fhirSentinel,
    Object? implicitRules = fhirSentinel,
    Object? language = fhirSentinel,
    Object? text = fhirSentinel,
    Object? contained = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? traceNumber = fhirSentinel,
    Object? status = fhirSentinel,
    Object? type = fhirSentinel,
    Object? subType = fhirSentinel,
    Object? use = fhirSentinel,
    Object? patient = fhirSentinel,
    Object? billablePeriod = fhirSentinel,
    Object? created = fhirSentinel,
    Object? enterer = fhirSentinel,
    Object? insurer = fhirSentinel,
    Object? provider = fhirSentinel,
    Object? priority = fhirSentinel,
    Object? fundsReserve = fhirSentinel,
    Object? related = fhirSentinel,
    Object? prescription = fhirSentinel,
    Object? originalPrescription = fhirSentinel,
    Object? payee = fhirSentinel,
    Object? referral = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? facility = fhirSentinel,
    Object? diagnosisRelatedGroup = fhirSentinel,
    Object? event = fhirSentinel,
    Object? careTeam = fhirSentinel,
    Object? supportingInfo = fhirSentinel,
    Object? diagnosis = fhirSentinel,
    Object? procedure = fhirSentinel,
    Object? insurance = fhirSentinel,
    Object? accident = fhirSentinel,
    Object? patientPaid = fhirSentinel,
    Object? item = fhirSentinel,
    Object? total = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Claim(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        meta: identical(meta, fhirSentinel) ? _value.meta : meta as FhirMeta?,
        implicitRules: identical(implicitRules, fhirSentinel)
            ? _value.implicitRules
            : implicitRules as FhirUri?,
        language: identical(language, fhirSentinel)
            ? _value.language
            : language as AllLanguages?,
        text: identical(text, fhirSentinel) ? _value.text : text as Narrative?,
        contained: identical(contained, fhirSentinel)
            ? _value.contained
            : contained as List<Resource>?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as List<Identifier>?,
        traceNumber: identical(traceNumber, fhirSentinel)
            ? _value.traceNumber
            : traceNumber as List<Identifier>?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as FinancialResourceStatusCodes?) ?? _value.status,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as CodeableConcept?) ?? _value.type,
        subType: identical(subType, fhirSentinel)
            ? _value.subType
            : subType as CodeableConcept?,
        use: identical(use, fhirSentinel)
            ? _value.use
            : (use as Use?) ?? _value.use,
        patient: identical(patient, fhirSentinel)
            ? _value.patient
            : (patient as Reference?) ?? _value.patient,
        billablePeriod: identical(billablePeriod, fhirSentinel)
            ? _value.billablePeriod
            : billablePeriod as Period?,
        created: identical(created, fhirSentinel)
            ? _value.created
            : (created as FhirDateTime?) ?? _value.created,
        enterer: identical(enterer, fhirSentinel)
            ? _value.enterer
            : enterer as Reference?,
        insurer: identical(insurer, fhirSentinel)
            ? _value.insurer
            : insurer as Reference?,
        provider: identical(provider, fhirSentinel)
            ? _value.provider
            : provider as Reference?,
        priority: identical(priority, fhirSentinel)
            ? _value.priority
            : priority as CodeableConcept?,
        fundsReserve: identical(fundsReserve, fhirSentinel)
            ? _value.fundsReserve
            : fundsReserve as CodeableConcept?,
        related: identical(related, fhirSentinel)
            ? _value.related
            : related as List<ClaimRelated>?,
        prescription: identical(prescription, fhirSentinel)
            ? _value.prescription
            : prescription as Reference?,
        originalPrescription: identical(originalPrescription, fhirSentinel)
            ? _value.originalPrescription
            : originalPrescription as Reference?,
        payee: identical(payee, fhirSentinel)
            ? _value.payee
            : payee as ClaimPayee?,
        referral: identical(referral, fhirSentinel)
            ? _value.referral
            : referral as Reference?,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as List<Reference>?,
        facility: identical(facility, fhirSentinel)
            ? _value.facility
            : facility as Reference?,
        diagnosisRelatedGroup: identical(diagnosisRelatedGroup, fhirSentinel)
            ? _value.diagnosisRelatedGroup
            : diagnosisRelatedGroup as CodeableConcept?,
        event: identical(event, fhirSentinel)
            ? _value.event
            : event as List<ClaimEvent>?,
        careTeam: identical(careTeam, fhirSentinel)
            ? _value.careTeam
            : careTeam as List<ClaimCareTeam>?,
        supportingInfo: identical(supportingInfo, fhirSentinel)
            ? _value.supportingInfo
            : supportingInfo as List<ClaimSupportingInfo>?,
        diagnosis: identical(diagnosis, fhirSentinel)
            ? _value.diagnosis
            : diagnosis as List<ClaimDiagnosis>?,
        procedure: identical(procedure, fhirSentinel)
            ? _value.procedure
            : procedure as List<ClaimProcedure>?,
        insurance: identical(insurance, fhirSentinel)
            ? _value.insurance
            : insurance as List<ClaimInsurance>?,
        accident: identical(accident, fhirSentinel)
            ? _value.accident
            : accident as ClaimAccident?,
        patientPaid: identical(patientPaid, fhirSentinel)
            ? _value.patientPaid
            : patientPaid as Money?,
        item: identical(item, fhirSentinel)
            ? _value.item
            : item as List<ClaimItem>?,
        total: identical(total, fhirSentinel) ? _value.total : total as Money?,
      ),
    );
  }
}

extension ClaimCopyWithExtension on Claim {
  $ClaimCopyWith<Claim> get copyWith => _$ClaimCopyWithImpl<Claim>(
        this,
        (value) => value,
      );
}

abstract class $ClaimRelatedCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? claim,
    CodeableConcept? relationship,
    Identifier? reference,
    bool? disallowExtensions,
  });
}

class _$ClaimRelatedCopyWithImpl<T> implements $ClaimRelatedCopyWith<T> {
  final ClaimRelated _value;
  final T Function(ClaimRelated) _then;

  _$ClaimRelatedCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? claim = fhirSentinel,
    Object? relationship = fhirSentinel,
    Object? reference = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimRelated(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        claim:
            identical(claim, fhirSentinel) ? _value.claim : claim as Reference?,
        relationship: identical(relationship, fhirSentinel)
            ? _value.relationship
            : relationship as CodeableConcept?,
        reference: identical(reference, fhirSentinel)
            ? _value.reference
            : reference as Identifier?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClaimRelatedCopyWithExtension on ClaimRelated {
  $ClaimRelatedCopyWith<ClaimRelated> get copyWith =>
      _$ClaimRelatedCopyWithImpl<ClaimRelated>(
        this,
        (value) => value,
      );
}

abstract class $ClaimPayeeCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    Reference? party,
    bool? disallowExtensions,
  });
}

class _$ClaimPayeeCopyWithImpl<T> implements $ClaimPayeeCopyWith<T> {
  final ClaimPayee _value;
  final T Function(ClaimPayee) _then;

  _$ClaimPayeeCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? party = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimPayee(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as CodeableConcept?) ?? _value.type,
        party:
            identical(party, fhirSentinel) ? _value.party : party as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClaimPayeeCopyWithExtension on ClaimPayee {
  $ClaimPayeeCopyWith<ClaimPayee> get copyWith =>
      _$ClaimPayeeCopyWithImpl<ClaimPayee>(
        this,
        (value) => value,
      );
}

abstract class $ClaimEventCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirDateTime? whenX,
    bool? disallowExtensions,
  });
}

class _$ClaimEventCopyWithImpl<T> implements $ClaimEventCopyWith<T> {
  final ClaimEvent _value;
  final T Function(ClaimEvent) _then;

  _$ClaimEventCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? whenX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimEvent(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as CodeableConcept?) ?? _value.type,
        whenX: identical(whenX, fhirSentinel)
            ? _value.whenX
            : (whenX as FhirDateTime?) ?? _value.whenX,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClaimEventCopyWithExtension on ClaimEvent {
  $ClaimEventCopyWith<ClaimEvent> get copyWith =>
      _$ClaimEventCopyWithImpl<ClaimEvent>(
        this,
        (value) => value,
      );
}

abstract class $ClaimCareTeamCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    Reference? provider,
    FhirBoolean? responsible,
    CodeableConcept? role,
    CodeableConcept? specialty,
    bool? disallowExtensions,
  });
}

class _$ClaimCareTeamCopyWithImpl<T> implements $ClaimCareTeamCopyWith<T> {
  final ClaimCareTeam _value;
  final T Function(ClaimCareTeam) _then;

  _$ClaimCareTeamCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? sequence = fhirSentinel,
    Object? provider = fhirSentinel,
    Object? responsible = fhirSentinel,
    Object? role = fhirSentinel,
    Object? specialty = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimCareTeam(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        sequence: identical(sequence, fhirSentinel)
            ? _value.sequence
            : (sequence as FhirPositiveInt?) ?? _value.sequence,
        provider: identical(provider, fhirSentinel)
            ? _value.provider
            : (provider as Reference?) ?? _value.provider,
        responsible: identical(responsible, fhirSentinel)
            ? _value.responsible
            : responsible as FhirBoolean?,
        role: identical(role, fhirSentinel)
            ? _value.role
            : role as CodeableConcept?,
        specialty: identical(specialty, fhirSentinel)
            ? _value.specialty
            : specialty as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClaimCareTeamCopyWithExtension on ClaimCareTeam {
  $ClaimCareTeamCopyWith<ClaimCareTeam> get copyWith =>
      _$ClaimCareTeamCopyWithImpl<ClaimCareTeam>(
        this,
        (value) => value,
      );
}

abstract class $ClaimSupportingInfoCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    CodeableConcept? category,
    CodeableConcept? code,
    FhirDate? timingX,
    FhirBoolean? valueX,
    CodeableConcept? reason,
    bool? disallowExtensions,
  });
}

class _$ClaimSupportingInfoCopyWithImpl<T>
    implements $ClaimSupportingInfoCopyWith<T> {
  final ClaimSupportingInfo _value;
  final T Function(ClaimSupportingInfo) _then;

  _$ClaimSupportingInfoCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? sequence = fhirSentinel,
    Object? category = fhirSentinel,
    Object? code = fhirSentinel,
    Object? timingX = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? reason = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimSupportingInfo(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        sequence: identical(sequence, fhirSentinel)
            ? _value.sequence
            : (sequence as FhirPositiveInt?) ?? _value.sequence,
        category: identical(category, fhirSentinel)
            ? _value.category
            : (category as CodeableConcept?) ?? _value.category,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        timingX: identical(timingX, fhirSentinel)
            ? _value.timingX
            : timingX as FhirDate?,
        valueX: identical(valueX, fhirSentinel)
            ? _value.valueX
            : valueX as FhirBoolean?,
        reason: identical(reason, fhirSentinel)
            ? _value.reason
            : reason as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClaimSupportingInfoCopyWithExtension on ClaimSupportingInfo {
  $ClaimSupportingInfoCopyWith<ClaimSupportingInfo> get copyWith =>
      _$ClaimSupportingInfoCopyWithImpl<ClaimSupportingInfo>(
        this,
        (value) => value,
      );
}

abstract class $ClaimDiagnosisCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    CodeableConcept? diagnosisX,
    List<CodeableConcept>? type,
    CodeableConcept? onAdmission,
    bool? disallowExtensions,
  });
}

class _$ClaimDiagnosisCopyWithImpl<T> implements $ClaimDiagnosisCopyWith<T> {
  final ClaimDiagnosis _value;
  final T Function(ClaimDiagnosis) _then;

  _$ClaimDiagnosisCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? sequence = fhirSentinel,
    Object? diagnosisX = fhirSentinel,
    Object? type = fhirSentinel,
    Object? onAdmission = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimDiagnosis(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        sequence: identical(sequence, fhirSentinel)
            ? _value.sequence
            : (sequence as FhirPositiveInt?) ?? _value.sequence,
        diagnosisX: identical(diagnosisX, fhirSentinel)
            ? _value.diagnosisX
            : (diagnosisX as CodeableConcept?) ?? _value.diagnosisX,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as List<CodeableConcept>?,
        onAdmission: identical(onAdmission, fhirSentinel)
            ? _value.onAdmission
            : onAdmission as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClaimDiagnosisCopyWithExtension on ClaimDiagnosis {
  $ClaimDiagnosisCopyWith<ClaimDiagnosis> get copyWith =>
      _$ClaimDiagnosisCopyWithImpl<ClaimDiagnosis>(
        this,
        (value) => value,
      );
}

abstract class $ClaimProcedureCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    List<CodeableConcept>? type,
    FhirDateTime? date,
    CodeableConcept? procedureX,
    List<Reference>? udi,
    bool? disallowExtensions,
  });
}

class _$ClaimProcedureCopyWithImpl<T> implements $ClaimProcedureCopyWith<T> {
  final ClaimProcedure _value;
  final T Function(ClaimProcedure) _then;

  _$ClaimProcedureCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? sequence = fhirSentinel,
    Object? type = fhirSentinel,
    Object? date = fhirSentinel,
    Object? procedureX = fhirSentinel,
    Object? udi = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimProcedure(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        sequence: identical(sequence, fhirSentinel)
            ? _value.sequence
            : (sequence as FhirPositiveInt?) ?? _value.sequence,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as List<CodeableConcept>?,
        date:
            identical(date, fhirSentinel) ? _value.date : date as FhirDateTime?,
        procedureX: identical(procedureX, fhirSentinel)
            ? _value.procedureX
            : (procedureX as CodeableConcept?) ?? _value.procedureX,
        udi:
            identical(udi, fhirSentinel) ? _value.udi : udi as List<Reference>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClaimProcedureCopyWithExtension on ClaimProcedure {
  $ClaimProcedureCopyWith<ClaimProcedure> get copyWith =>
      _$ClaimProcedureCopyWithImpl<ClaimProcedure>(
        this,
        (value) => value,
      );
}

abstract class $ClaimInsuranceCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    FhirBoolean? focal,
    Identifier? identifier,
    Reference? coverage,
    FhirString? businessArrangement,
    List<FhirString>? preAuthRef,
    Reference? claimResponse,
    bool? disallowExtensions,
  });
}

class _$ClaimInsuranceCopyWithImpl<T> implements $ClaimInsuranceCopyWith<T> {
  final ClaimInsurance _value;
  final T Function(ClaimInsurance) _then;

  _$ClaimInsuranceCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? sequence = fhirSentinel,
    Object? focal = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? coverage = fhirSentinel,
    Object? businessArrangement = fhirSentinel,
    Object? preAuthRef = fhirSentinel,
    Object? claimResponse = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimInsurance(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        sequence: identical(sequence, fhirSentinel)
            ? _value.sequence
            : (sequence as FhirPositiveInt?) ?? _value.sequence,
        focal: identical(focal, fhirSentinel)
            ? _value.focal
            : (focal as FhirBoolean?) ?? _value.focal,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as Identifier?,
        coverage: identical(coverage, fhirSentinel)
            ? _value.coverage
            : (coverage as Reference?) ?? _value.coverage,
        businessArrangement: identical(businessArrangement, fhirSentinel)
            ? _value.businessArrangement
            : businessArrangement as FhirString?,
        preAuthRef: identical(preAuthRef, fhirSentinel)
            ? _value.preAuthRef
            : preAuthRef as List<FhirString>?,
        claimResponse: identical(claimResponse, fhirSentinel)
            ? _value.claimResponse
            : claimResponse as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClaimInsuranceCopyWithExtension on ClaimInsurance {
  $ClaimInsuranceCopyWith<ClaimInsurance> get copyWith =>
      _$ClaimInsuranceCopyWithImpl<ClaimInsurance>(
        this,
        (value) => value,
      );
}

abstract class $ClaimAccidentCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirDate? date,
    CodeableConcept? type,
    Address? locationX,
    bool? disallowExtensions,
  });
}

class _$ClaimAccidentCopyWithImpl<T> implements $ClaimAccidentCopyWith<T> {
  final ClaimAccident _value;
  final T Function(ClaimAccident) _then;

  _$ClaimAccidentCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? date = fhirSentinel,
    Object? type = fhirSentinel,
    Object? locationX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimAccident(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        date: identical(date, fhirSentinel)
            ? _value.date
            : (date as FhirDate?) ?? _value.date,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        locationX: identical(locationX, fhirSentinel)
            ? _value.locationX
            : locationX as Address?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClaimAccidentCopyWithExtension on ClaimAccident {
  $ClaimAccidentCopyWith<ClaimAccident> get copyWith =>
      _$ClaimAccidentCopyWithImpl<ClaimAccident>(
        this,
        (value) => value,
      );
}

abstract class $ClaimItemCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    List<Identifier>? traceNumber,
    List<FhirPositiveInt>? careTeamSequence,
    List<FhirPositiveInt>? diagnosisSequence,
    List<FhirPositiveInt>? procedureSequence,
    List<FhirPositiveInt>? informationSequence,
    CodeableConcept? revenue,
    CodeableConcept? category,
    CodeableConcept? productOrService,
    CodeableConcept? productOrServiceEnd,
    List<Reference>? request,
    List<CodeableConcept>? modifier,
    List<CodeableConcept>? programCode,
    FhirDate? servicedX,
    CodeableConcept? locationX,
    Money? patientPaid,
    Quantity? quantity,
    Money? unitPrice,
    FhirDecimal? factor,
    Money? tax,
    Money? net,
    List<Reference>? udi,
    List<ClaimBodySite>? bodySite,
    List<Reference>? encounter,
    List<ClaimDetail>? detail,
    bool? disallowExtensions,
  });
}

class _$ClaimItemCopyWithImpl<T> implements $ClaimItemCopyWith<T> {
  final ClaimItem _value;
  final T Function(ClaimItem) _then;

  _$ClaimItemCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? sequence = fhirSentinel,
    Object? traceNumber = fhirSentinel,
    Object? careTeamSequence = fhirSentinel,
    Object? diagnosisSequence = fhirSentinel,
    Object? procedureSequence = fhirSentinel,
    Object? informationSequence = fhirSentinel,
    Object? revenue = fhirSentinel,
    Object? category = fhirSentinel,
    Object? productOrService = fhirSentinel,
    Object? productOrServiceEnd = fhirSentinel,
    Object? request = fhirSentinel,
    Object? modifier = fhirSentinel,
    Object? programCode = fhirSentinel,
    Object? servicedX = fhirSentinel,
    Object? locationX = fhirSentinel,
    Object? patientPaid = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? unitPrice = fhirSentinel,
    Object? factor = fhirSentinel,
    Object? tax = fhirSentinel,
    Object? net = fhirSentinel,
    Object? udi = fhirSentinel,
    Object? bodySite = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? detail = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimItem(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        sequence: identical(sequence, fhirSentinel)
            ? _value.sequence
            : (sequence as FhirPositiveInt?) ?? _value.sequence,
        traceNumber: identical(traceNumber, fhirSentinel)
            ? _value.traceNumber
            : traceNumber as List<Identifier>?,
        careTeamSequence: identical(careTeamSequence, fhirSentinel)
            ? _value.careTeamSequence
            : careTeamSequence as List<FhirPositiveInt>?,
        diagnosisSequence: identical(diagnosisSequence, fhirSentinel)
            ? _value.diagnosisSequence
            : diagnosisSequence as List<FhirPositiveInt>?,
        procedureSequence: identical(procedureSequence, fhirSentinel)
            ? _value.procedureSequence
            : procedureSequence as List<FhirPositiveInt>?,
        informationSequence: identical(informationSequence, fhirSentinel)
            ? _value.informationSequence
            : informationSequence as List<FhirPositiveInt>?,
        revenue: identical(revenue, fhirSentinel)
            ? _value.revenue
            : revenue as CodeableConcept?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as CodeableConcept?,
        productOrService: identical(productOrService, fhirSentinel)
            ? _value.productOrService
            : productOrService as CodeableConcept?,
        productOrServiceEnd: identical(productOrServiceEnd, fhirSentinel)
            ? _value.productOrServiceEnd
            : productOrServiceEnd as CodeableConcept?,
        request: identical(request, fhirSentinel)
            ? _value.request
            : request as List<Reference>?,
        modifier: identical(modifier, fhirSentinel)
            ? _value.modifier
            : modifier as List<CodeableConcept>?,
        programCode: identical(programCode, fhirSentinel)
            ? _value.programCode
            : programCode as List<CodeableConcept>?,
        servicedX: identical(servicedX, fhirSentinel)
            ? _value.servicedX
            : servicedX as FhirDate?,
        locationX: identical(locationX, fhirSentinel)
            ? _value.locationX
            : locationX as CodeableConcept?,
        patientPaid: identical(patientPaid, fhirSentinel)
            ? _value.patientPaid
            : patientPaid as Money?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as Quantity?,
        unitPrice: identical(unitPrice, fhirSentinel)
            ? _value.unitPrice
            : unitPrice as Money?,
        factor: identical(factor, fhirSentinel)
            ? _value.factor
            : factor as FhirDecimal?,
        tax: identical(tax, fhirSentinel) ? _value.tax : tax as Money?,
        net: identical(net, fhirSentinel) ? _value.net : net as Money?,
        udi:
            identical(udi, fhirSentinel) ? _value.udi : udi as List<Reference>?,
        bodySite: identical(bodySite, fhirSentinel)
            ? _value.bodySite
            : bodySite as List<ClaimBodySite>?,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as List<Reference>?,
        detail: identical(detail, fhirSentinel)
            ? _value.detail
            : detail as List<ClaimDetail>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClaimItemCopyWithExtension on ClaimItem {
  $ClaimItemCopyWith<ClaimItem> get copyWith =>
      _$ClaimItemCopyWithImpl<ClaimItem>(
        this,
        (value) => value,
      );
}

abstract class $ClaimBodySiteCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableReference>? site,
    List<CodeableConcept>? subSite,
    bool? disallowExtensions,
  });
}

class _$ClaimBodySiteCopyWithImpl<T> implements $ClaimBodySiteCopyWith<T> {
  final ClaimBodySite _value;
  final T Function(ClaimBodySite) _then;

  _$ClaimBodySiteCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? site = fhirSentinel,
    Object? subSite = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimBodySite(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        site: identical(site, fhirSentinel)
            ? _value.site
            : (site as List<CodeableReference>?) ?? _value.site,
        subSite: identical(subSite, fhirSentinel)
            ? _value.subSite
            : subSite as List<CodeableConcept>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClaimBodySiteCopyWithExtension on ClaimBodySite {
  $ClaimBodySiteCopyWith<ClaimBodySite> get copyWith =>
      _$ClaimBodySiteCopyWithImpl<ClaimBodySite>(
        this,
        (value) => value,
      );
}

abstract class $ClaimDetailCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    List<Identifier>? traceNumber,
    CodeableConcept? revenue,
    CodeableConcept? category,
    CodeableConcept? productOrService,
    CodeableConcept? productOrServiceEnd,
    List<CodeableConcept>? modifier,
    List<CodeableConcept>? programCode,
    Money? patientPaid,
    Quantity? quantity,
    Money? unitPrice,
    FhirDecimal? factor,
    Money? tax,
    Money? net,
    List<Reference>? udi,
    List<ClaimSubDetail>? subDetail,
    bool? disallowExtensions,
  });
}

class _$ClaimDetailCopyWithImpl<T> implements $ClaimDetailCopyWith<T> {
  final ClaimDetail _value;
  final T Function(ClaimDetail) _then;

  _$ClaimDetailCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? sequence = fhirSentinel,
    Object? traceNumber = fhirSentinel,
    Object? revenue = fhirSentinel,
    Object? category = fhirSentinel,
    Object? productOrService = fhirSentinel,
    Object? productOrServiceEnd = fhirSentinel,
    Object? modifier = fhirSentinel,
    Object? programCode = fhirSentinel,
    Object? patientPaid = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? unitPrice = fhirSentinel,
    Object? factor = fhirSentinel,
    Object? tax = fhirSentinel,
    Object? net = fhirSentinel,
    Object? udi = fhirSentinel,
    Object? subDetail = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimDetail(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        sequence: identical(sequence, fhirSentinel)
            ? _value.sequence
            : (sequence as FhirPositiveInt?) ?? _value.sequence,
        traceNumber: identical(traceNumber, fhirSentinel)
            ? _value.traceNumber
            : traceNumber as List<Identifier>?,
        revenue: identical(revenue, fhirSentinel)
            ? _value.revenue
            : revenue as CodeableConcept?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as CodeableConcept?,
        productOrService: identical(productOrService, fhirSentinel)
            ? _value.productOrService
            : productOrService as CodeableConcept?,
        productOrServiceEnd: identical(productOrServiceEnd, fhirSentinel)
            ? _value.productOrServiceEnd
            : productOrServiceEnd as CodeableConcept?,
        modifier: identical(modifier, fhirSentinel)
            ? _value.modifier
            : modifier as List<CodeableConcept>?,
        programCode: identical(programCode, fhirSentinel)
            ? _value.programCode
            : programCode as List<CodeableConcept>?,
        patientPaid: identical(patientPaid, fhirSentinel)
            ? _value.patientPaid
            : patientPaid as Money?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as Quantity?,
        unitPrice: identical(unitPrice, fhirSentinel)
            ? _value.unitPrice
            : unitPrice as Money?,
        factor: identical(factor, fhirSentinel)
            ? _value.factor
            : factor as FhirDecimal?,
        tax: identical(tax, fhirSentinel) ? _value.tax : tax as Money?,
        net: identical(net, fhirSentinel) ? _value.net : net as Money?,
        udi:
            identical(udi, fhirSentinel) ? _value.udi : udi as List<Reference>?,
        subDetail: identical(subDetail, fhirSentinel)
            ? _value.subDetail
            : subDetail as List<ClaimSubDetail>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClaimDetailCopyWithExtension on ClaimDetail {
  $ClaimDetailCopyWith<ClaimDetail> get copyWith =>
      _$ClaimDetailCopyWithImpl<ClaimDetail>(
        this,
        (value) => value,
      );
}

abstract class $ClaimSubDetailCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    List<Identifier>? traceNumber,
    CodeableConcept? revenue,
    CodeableConcept? category,
    CodeableConcept? productOrService,
    CodeableConcept? productOrServiceEnd,
    List<CodeableConcept>? modifier,
    List<CodeableConcept>? programCode,
    Money? patientPaid,
    Quantity? quantity,
    Money? unitPrice,
    FhirDecimal? factor,
    Money? tax,
    Money? net,
    List<Reference>? udi,
    bool? disallowExtensions,
  });
}

class _$ClaimSubDetailCopyWithImpl<T> implements $ClaimSubDetailCopyWith<T> {
  final ClaimSubDetail _value;
  final T Function(ClaimSubDetail) _then;

  _$ClaimSubDetailCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? sequence = fhirSentinel,
    Object? traceNumber = fhirSentinel,
    Object? revenue = fhirSentinel,
    Object? category = fhirSentinel,
    Object? productOrService = fhirSentinel,
    Object? productOrServiceEnd = fhirSentinel,
    Object? modifier = fhirSentinel,
    Object? programCode = fhirSentinel,
    Object? patientPaid = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? unitPrice = fhirSentinel,
    Object? factor = fhirSentinel,
    Object? tax = fhirSentinel,
    Object? net = fhirSentinel,
    Object? udi = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClaimSubDetail(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        sequence: identical(sequence, fhirSentinel)
            ? _value.sequence
            : (sequence as FhirPositiveInt?) ?? _value.sequence,
        traceNumber: identical(traceNumber, fhirSentinel)
            ? _value.traceNumber
            : traceNumber as List<Identifier>?,
        revenue: identical(revenue, fhirSentinel)
            ? _value.revenue
            : revenue as CodeableConcept?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as CodeableConcept?,
        productOrService: identical(productOrService, fhirSentinel)
            ? _value.productOrService
            : productOrService as CodeableConcept?,
        productOrServiceEnd: identical(productOrServiceEnd, fhirSentinel)
            ? _value.productOrServiceEnd
            : productOrServiceEnd as CodeableConcept?,
        modifier: identical(modifier, fhirSentinel)
            ? _value.modifier
            : modifier as List<CodeableConcept>?,
        programCode: identical(programCode, fhirSentinel)
            ? _value.programCode
            : programCode as List<CodeableConcept>?,
        patientPaid: identical(patientPaid, fhirSentinel)
            ? _value.patientPaid
            : patientPaid as Money?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as Quantity?,
        unitPrice: identical(unitPrice, fhirSentinel)
            ? _value.unitPrice
            : unitPrice as Money?,
        factor: identical(factor, fhirSentinel)
            ? _value.factor
            : factor as FhirDecimal?,
        tax: identical(tax, fhirSentinel) ? _value.tax : tax as Money?,
        net: identical(net, fhirSentinel) ? _value.net : net as Money?,
        udi:
            identical(udi, fhirSentinel) ? _value.udi : udi as List<Reference>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClaimSubDetailCopyWithExtension on ClaimSubDetail {
  $ClaimSubDetailCopyWith<ClaimSubDetail> get copyWith =>
      _$ClaimSubDetailCopyWithImpl<ClaimSubDetail>(
        this,
        (value) => value,
      );
}
