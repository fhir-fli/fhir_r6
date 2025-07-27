// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'encounter.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $EncounterCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    EncounterStatus? status,
    List<CodeableConcept>? class_,
    CodeableConcept? priority,
    List<CodeableConcept>? type,
    List<CodeableReference>? serviceType,
    Reference? subject,
    CodeableConcept? subjectStatus,
    List<Reference>? episodeOfCare,
    List<Reference>? basedOn,
    List<Reference>? careTeam,
    Reference? partOf,
    Reference? serviceProvider,
    List<EncounterParticipant>? participant,
    List<Reference>? appointment,
    List<VirtualServiceDetail>? virtualService,
    Period? actualPeriod,
    FhirDateTime? plannedStartDate,
    FhirDateTime? plannedEndDate,
    FhirDuration? length,
    List<EncounterReason>? reason,
    List<EncounterDiagnosis>? diagnosis,
    List<Reference>? account,
    List<CodeableConcept>? dietPreference,
    List<CodeableConcept>? specialArrangement,
    List<CodeableConcept>? specialCourtesy,
    EncounterAdmission? admission,
    List<EncounterLocation>? location,
    bool? disallowExtensions,
  });
}

class _$EncounterCopyWithImpl<T> implements $EncounterCopyWith<T> {
  final Encounter _value;
  final T Function(Encounter) _then;

  _$EncounterCopyWithImpl(this._value, this._then);

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
    Object? status = fhirSentinel,
    Object? class_ = fhirSentinel,
    Object? priority = fhirSentinel,
    Object? type = fhirSentinel,
    Object? serviceType = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? subjectStatus = fhirSentinel,
    Object? episodeOfCare = fhirSentinel,
    Object? basedOn = fhirSentinel,
    Object? careTeam = fhirSentinel,
    Object? partOf = fhirSentinel,
    Object? serviceProvider = fhirSentinel,
    Object? participant = fhirSentinel,
    Object? appointment = fhirSentinel,
    Object? virtualService = fhirSentinel,
    Object? actualPeriod = fhirSentinel,
    Object? plannedStartDate = fhirSentinel,
    Object? plannedEndDate = fhirSentinel,
    Object? length = fhirSentinel,
    Object? reason = fhirSentinel,
    Object? diagnosis = fhirSentinel,
    Object? account = fhirSentinel,
    Object? dietPreference = fhirSentinel,
    Object? specialArrangement = fhirSentinel,
    Object? specialCourtesy = fhirSentinel,
    Object? admission = fhirSentinel,
    Object? location = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Encounter(
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
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as EncounterStatus?) ?? _value.status,
        class_: identical(class_, fhirSentinel)
            ? _value.class_
            : class_ as List<CodeableConcept>?,
        priority: identical(priority, fhirSentinel)
            ? _value.priority
            : priority as CodeableConcept?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as List<CodeableConcept>?,
        serviceType: identical(serviceType, fhirSentinel)
            ? _value.serviceType
            : serviceType as List<CodeableReference>?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : subject as Reference?,
        subjectStatus: identical(subjectStatus, fhirSentinel)
            ? _value.subjectStatus
            : subjectStatus as CodeableConcept?,
        episodeOfCare: identical(episodeOfCare, fhirSentinel)
            ? _value.episodeOfCare
            : episodeOfCare as List<Reference>?,
        basedOn: identical(basedOn, fhirSentinel)
            ? _value.basedOn
            : basedOn as List<Reference>?,
        careTeam: identical(careTeam, fhirSentinel)
            ? _value.careTeam
            : careTeam as List<Reference>?,
        partOf: identical(partOf, fhirSentinel)
            ? _value.partOf
            : partOf as Reference?,
        serviceProvider: identical(serviceProvider, fhirSentinel)
            ? _value.serviceProvider
            : serviceProvider as Reference?,
        participant: identical(participant, fhirSentinel)
            ? _value.participant
            : participant as List<EncounterParticipant>?,
        appointment: identical(appointment, fhirSentinel)
            ? _value.appointment
            : appointment as List<Reference>?,
        virtualService: identical(virtualService, fhirSentinel)
            ? _value.virtualService
            : virtualService as List<VirtualServiceDetail>?,
        actualPeriod: identical(actualPeriod, fhirSentinel)
            ? _value.actualPeriod
            : actualPeriod as Period?,
        plannedStartDate: identical(plannedStartDate, fhirSentinel)
            ? _value.plannedStartDate
            : plannedStartDate as FhirDateTime?,
        plannedEndDate: identical(plannedEndDate, fhirSentinel)
            ? _value.plannedEndDate
            : plannedEndDate as FhirDateTime?,
        length: identical(length, fhirSentinel)
            ? _value.length
            : length as FhirDuration?,
        reason: identical(reason, fhirSentinel)
            ? _value.reason
            : reason as List<EncounterReason>?,
        diagnosis: identical(diagnosis, fhirSentinel)
            ? _value.diagnosis
            : diagnosis as List<EncounterDiagnosis>?,
        account: identical(account, fhirSentinel)
            ? _value.account
            : account as List<Reference>?,
        dietPreference: identical(dietPreference, fhirSentinel)
            ? _value.dietPreference
            : dietPreference as List<CodeableConcept>?,
        specialArrangement: identical(specialArrangement, fhirSentinel)
            ? _value.specialArrangement
            : specialArrangement as List<CodeableConcept>?,
        specialCourtesy: identical(specialCourtesy, fhirSentinel)
            ? _value.specialCourtesy
            : specialCourtesy as List<CodeableConcept>?,
        admission: identical(admission, fhirSentinel)
            ? _value.admission
            : admission as EncounterAdmission?,
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as List<EncounterLocation>?,
      ),
    );
  }
}

extension EncounterCopyWithExtension on Encounter {
  $EncounterCopyWith<Encounter> get copyWith =>
      _$EncounterCopyWithImpl<Encounter>(
        this,
        (value) => value,
      );
}

abstract class $EncounterParticipantCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? type,
    Period? period,
    Reference? actor,
    bool? disallowExtensions,
  });
}

class _$EncounterParticipantCopyWithImpl<T>
    implements $EncounterParticipantCopyWith<T> {
  final EncounterParticipant _value;
  final T Function(EncounterParticipant) _then;

  _$EncounterParticipantCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? period = fhirSentinel,
    Object? actor = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EncounterParticipant(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as List<CodeableConcept>?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        actor:
            identical(actor, fhirSentinel) ? _value.actor : actor as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension EncounterParticipantCopyWithExtension on EncounterParticipant {
  $EncounterParticipantCopyWith<EncounterParticipant> get copyWith =>
      _$EncounterParticipantCopyWithImpl<EncounterParticipant>(
        this,
        (value) => value,
      );
}

abstract class $EncounterReasonCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? use,
    List<CodeableReference>? value,
    bool? disallowExtensions,
  });
}

class _$EncounterReasonCopyWithImpl<T> implements $EncounterReasonCopyWith<T> {
  final EncounterReason _value;
  final T Function(EncounterReason) _then;

  _$EncounterReasonCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? use = fhirSentinel,
    Object? value = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EncounterReason(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        use: identical(use, fhirSentinel)
            ? _value.use
            : use as List<CodeableConcept>?,
        value: identical(value, fhirSentinel)
            ? _value.value
            : value as List<CodeableReference>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension EncounterReasonCopyWithExtension on EncounterReason {
  $EncounterReasonCopyWith<EncounterReason> get copyWith =>
      _$EncounterReasonCopyWithImpl<EncounterReason>(
        this,
        (value) => value,
      );
}

abstract class $EncounterDiagnosisCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableReference>? condition,
    List<CodeableConcept>? use,
    bool? disallowExtensions,
  });
}

class _$EncounterDiagnosisCopyWithImpl<T>
    implements $EncounterDiagnosisCopyWith<T> {
  final EncounterDiagnosis _value;
  final T Function(EncounterDiagnosis) _then;

  _$EncounterDiagnosisCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? condition = fhirSentinel,
    Object? use = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EncounterDiagnosis(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        condition: identical(condition, fhirSentinel)
            ? _value.condition
            : condition as List<CodeableReference>?,
        use: identical(use, fhirSentinel)
            ? _value.use
            : use as List<CodeableConcept>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension EncounterDiagnosisCopyWithExtension on EncounterDiagnosis {
  $EncounterDiagnosisCopyWith<EncounterDiagnosis> get copyWith =>
      _$EncounterDiagnosisCopyWithImpl<EncounterDiagnosis>(
        this,
        (value) => value,
      );
}

abstract class $EncounterAdmissionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? preAdmissionIdentifier,
    Reference? origin,
    CodeableConcept? admitSource,
    CodeableConcept? reAdmission,
    Reference? destination,
    CodeableConcept? dischargeDisposition,
    bool? disallowExtensions,
  });
}

class _$EncounterAdmissionCopyWithImpl<T>
    implements $EncounterAdmissionCopyWith<T> {
  final EncounterAdmission _value;
  final T Function(EncounterAdmission) _then;

  _$EncounterAdmissionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? preAdmissionIdentifier = fhirSentinel,
    Object? origin = fhirSentinel,
    Object? admitSource = fhirSentinel,
    Object? reAdmission = fhirSentinel,
    Object? destination = fhirSentinel,
    Object? dischargeDisposition = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EncounterAdmission(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        preAdmissionIdentifier: identical(preAdmissionIdentifier, fhirSentinel)
            ? _value.preAdmissionIdentifier
            : preAdmissionIdentifier as Identifier?,
        origin: identical(origin, fhirSentinel)
            ? _value.origin
            : origin as Reference?,
        admitSource: identical(admitSource, fhirSentinel)
            ? _value.admitSource
            : admitSource as CodeableConcept?,
        reAdmission: identical(reAdmission, fhirSentinel)
            ? _value.reAdmission
            : reAdmission as CodeableConcept?,
        destination: identical(destination, fhirSentinel)
            ? _value.destination
            : destination as Reference?,
        dischargeDisposition: identical(dischargeDisposition, fhirSentinel)
            ? _value.dischargeDisposition
            : dischargeDisposition as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension EncounterAdmissionCopyWithExtension on EncounterAdmission {
  $EncounterAdmissionCopyWith<EncounterAdmission> get copyWith =>
      _$EncounterAdmissionCopyWithImpl<EncounterAdmission>(
        this,
        (value) => value,
      );
}

abstract class $EncounterLocationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? location,
    EncounterLocationStatus? status,
    CodeableConcept? form,
    Period? period,
    bool? disallowExtensions,
  });
}

class _$EncounterLocationCopyWithImpl<T>
    implements $EncounterLocationCopyWith<T> {
  final EncounterLocation _value;
  final T Function(EncounterLocation) _then;

  _$EncounterLocationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? location = fhirSentinel,
    Object? status = fhirSentinel,
    Object? form = fhirSentinel,
    Object? period = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EncounterLocation(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        location: identical(location, fhirSentinel)
            ? _value.location
            : (location as Reference?) ?? _value.location,
        status: identical(status, fhirSentinel)
            ? _value.status
            : status as EncounterLocationStatus?,
        form: identical(form, fhirSentinel)
            ? _value.form
            : form as CodeableConcept?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension EncounterLocationCopyWithExtension on EncounterLocation {
  $EncounterLocationCopyWith<EncounterLocation> get copyWith =>
      _$EncounterLocationCopyWithImpl<EncounterLocation>(
        this,
        (value) => value,
      );
}
