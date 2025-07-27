// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'family_member_history.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $FamilyMemberHistoryCopyWith<T>
    extends $DomainResourceCopyWith<T> {
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
    List<FhirCanonical>? instantiatesCanonical,
    List<FhirUri>? instantiatesUri,
    FamilyHistoryStatus? status,
    CodeableConcept? dataAbsentReason,
    Reference? patient,
    FhirDateTime? date,
    List<FamilyMemberHistoryParticipant>? participant,
    FhirString? name,
    CodeableConcept? relationship,
    CodeableConcept? sex,
    Period? bornX,
    Age? ageX,
    FhirBoolean? estimatedAge,
    FhirBoolean? deceasedX,
    List<CodeableReference>? reason,
    List<Annotation>? note,
    List<FamilyMemberHistoryCondition>? condition,
    List<FamilyMemberHistoryProcedure>? procedure,
    bool? disallowExtensions,
  });
}

class _$FamilyMemberHistoryCopyWithImpl<T>
    implements $FamilyMemberHistoryCopyWith<T> {
  final FamilyMemberHistory _value;
  final T Function(FamilyMemberHistory) _then;

  _$FamilyMemberHistoryCopyWithImpl(this._value, this._then);

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
    Object? instantiatesCanonical = fhirSentinel,
    Object? instantiatesUri = fhirSentinel,
    Object? status = fhirSentinel,
    Object? dataAbsentReason = fhirSentinel,
    Object? patient = fhirSentinel,
    Object? date = fhirSentinel,
    Object? participant = fhirSentinel,
    Object? name = fhirSentinel,
    Object? relationship = fhirSentinel,
    Object? sex = fhirSentinel,
    Object? bornX = fhirSentinel,
    Object? ageX = fhirSentinel,
    Object? estimatedAge = fhirSentinel,
    Object? deceasedX = fhirSentinel,
    Object? reason = fhirSentinel,
    Object? note = fhirSentinel,
    Object? condition = fhirSentinel,
    Object? procedure = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      FamilyMemberHistory(
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
        instantiatesCanonical: identical(instantiatesCanonical, fhirSentinel)
            ? _value.instantiatesCanonical
            : instantiatesCanonical as List<FhirCanonical>?,
        instantiatesUri: identical(instantiatesUri, fhirSentinel)
            ? _value.instantiatesUri
            : instantiatesUri as List<FhirUri>?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as FamilyHistoryStatus?) ?? _value.status,
        dataAbsentReason: identical(dataAbsentReason, fhirSentinel)
            ? _value.dataAbsentReason
            : dataAbsentReason as CodeableConcept?,
        patient: identical(patient, fhirSentinel)
            ? _value.patient
            : (patient as Reference?) ?? _value.patient,
        date:
            identical(date, fhirSentinel) ? _value.date : date as FhirDateTime?,
        participant: identical(participant, fhirSentinel)
            ? _value.participant
            : participant as List<FamilyMemberHistoryParticipant>?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        relationship: identical(relationship, fhirSentinel)
            ? _value.relationship
            : (relationship as CodeableConcept?) ?? _value.relationship,
        sex:
            identical(sex, fhirSentinel) ? _value.sex : sex as CodeableConcept?,
        bornX: identical(bornX, fhirSentinel) ? _value.bornX : bornX as Period?,
        ageX: identical(ageX, fhirSentinel) ? _value.ageX : ageX as Age?,
        estimatedAge: identical(estimatedAge, fhirSentinel)
            ? _value.estimatedAge
            : estimatedAge as FhirBoolean?,
        deceasedX: identical(deceasedX, fhirSentinel)
            ? _value.deceasedX
            : deceasedX as FhirBoolean?,
        reason: identical(reason, fhirSentinel)
            ? _value.reason
            : reason as List<CodeableReference>?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        condition: identical(condition, fhirSentinel)
            ? _value.condition
            : condition as List<FamilyMemberHistoryCondition>?,
        procedure: identical(procedure, fhirSentinel)
            ? _value.procedure
            : procedure as List<FamilyMemberHistoryProcedure>?,
      ),
    );
  }
}

extension FamilyMemberHistoryCopyWithExtension on FamilyMemberHistory {
  $FamilyMemberHistoryCopyWith<FamilyMemberHistory> get copyWith =>
      _$FamilyMemberHistoryCopyWithImpl<FamilyMemberHistory>(
        this,
        (value) => value,
      );
}

abstract class $FamilyMemberHistoryParticipantCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? function_,
    Reference? actor,
    bool? disallowExtensions,
  });
}

class _$FamilyMemberHistoryParticipantCopyWithImpl<T>
    implements $FamilyMemberHistoryParticipantCopyWith<T> {
  final FamilyMemberHistoryParticipant _value;
  final T Function(FamilyMemberHistoryParticipant) _then;

  _$FamilyMemberHistoryParticipantCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? function_ = fhirSentinel,
    Object? actor = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      FamilyMemberHistoryParticipant(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        function_: identical(function_, fhirSentinel)
            ? _value.function_
            : function_ as CodeableConcept?,
        actor: identical(actor, fhirSentinel)
            ? _value.actor
            : (actor as Reference?) ?? _value.actor,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension FamilyMemberHistoryParticipantCopyWithExtension
    on FamilyMemberHistoryParticipant {
  $FamilyMemberHistoryParticipantCopyWith<FamilyMemberHistoryParticipant>
      get copyWith => _$FamilyMemberHistoryParticipantCopyWithImpl<
              FamilyMemberHistoryParticipant>(
            this,
            (value) => value,
          );
}

abstract class $FamilyMemberHistoryConditionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    CodeableConcept? outcome,
    FhirBoolean? contributedToDeath,
    Age? onsetX,
    List<Annotation>? note,
    bool? disallowExtensions,
  });
}

class _$FamilyMemberHistoryConditionCopyWithImpl<T>
    implements $FamilyMemberHistoryConditionCopyWith<T> {
  final FamilyMemberHistoryCondition _value;
  final T Function(FamilyMemberHistoryCondition) _then;

  _$FamilyMemberHistoryConditionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? outcome = fhirSentinel,
    Object? contributedToDeath = fhirSentinel,
    Object? onsetX = fhirSentinel,
    Object? note = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      FamilyMemberHistoryCondition(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as CodeableConcept?) ?? _value.code,
        outcome: identical(outcome, fhirSentinel)
            ? _value.outcome
            : outcome as CodeableConcept?,
        contributedToDeath: identical(contributedToDeath, fhirSentinel)
            ? _value.contributedToDeath
            : contributedToDeath as FhirBoolean?,
        onsetX:
            identical(onsetX, fhirSentinel) ? _value.onsetX : onsetX as Age?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension FamilyMemberHistoryConditionCopyWithExtension
    on FamilyMemberHistoryCondition {
  $FamilyMemberHistoryConditionCopyWith<FamilyMemberHistoryCondition>
      get copyWith => _$FamilyMemberHistoryConditionCopyWithImpl<
              FamilyMemberHistoryCondition>(
            this,
            (value) => value,
          );
}

abstract class $FamilyMemberHistoryProcedureCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    CodeableConcept? outcome,
    FhirBoolean? contributedToDeath,
    Age? performedX,
    List<Annotation>? note,
    bool? disallowExtensions,
  });
}

class _$FamilyMemberHistoryProcedureCopyWithImpl<T>
    implements $FamilyMemberHistoryProcedureCopyWith<T> {
  final FamilyMemberHistoryProcedure _value;
  final T Function(FamilyMemberHistoryProcedure) _then;

  _$FamilyMemberHistoryProcedureCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? outcome = fhirSentinel,
    Object? contributedToDeath = fhirSentinel,
    Object? performedX = fhirSentinel,
    Object? note = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      FamilyMemberHistoryProcedure(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as CodeableConcept?) ?? _value.code,
        outcome: identical(outcome, fhirSentinel)
            ? _value.outcome
            : outcome as CodeableConcept?,
        contributedToDeath: identical(contributedToDeath, fhirSentinel)
            ? _value.contributedToDeath
            : contributedToDeath as FhirBoolean?,
        performedX: identical(performedX, fhirSentinel)
            ? _value.performedX
            : performedX as Age?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension FamilyMemberHistoryProcedureCopyWithExtension
    on FamilyMemberHistoryProcedure {
  $FamilyMemberHistoryProcedureCopyWith<FamilyMemberHistoryProcedure>
      get copyWith => _$FamilyMemberHistoryProcedureCopyWithImpl<
              FamilyMemberHistoryProcedure>(
            this,
            (value) => value,
          );
}
