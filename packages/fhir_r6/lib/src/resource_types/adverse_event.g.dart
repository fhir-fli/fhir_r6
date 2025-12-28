// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'adverse_event.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $AdverseEventCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    AdverseEventStatus? status,
    AdverseEventActuality? actuality,
    List<CodeableConcept>? category,
    CodeableConcept? code,
    Reference? subject,
    Reference? encounter,
    CauseXAdverseEvent? causeX,
    EffectXAdverseEvent? effectX,
    FhirDateTime? detected,
    FhirDateTime? recordedDate,
    List<CodeableReference>? resultingEffect,
    Reference? location,
    CodeableConcept? seriousness,
    List<CodeableConcept>? outcome,
    Reference? recorder,
    List<AdverseEventParticipant>? participant,
    List<Reference>? study,
    FhirBoolean? expectedInResearchStudy,
    List<AdverseEventSuspectEntity>? suspectEntity,
    List<CodeableReference>? contributingFactor,
    List<CodeableReference>? preventiveAction,
    List<CodeableReference>? mitigatingAction,
    List<CodeableReference>? supportingInfo,
    List<Annotation>? note,
    bool? disallowExtensions,
  });
}

class _$AdverseEventCopyWithImpl<T> implements $AdverseEventCopyWith<T> {
  final AdverseEvent _value;
  final T Function(AdverseEvent) _then;

  _$AdverseEventCopyWithImpl(this._value, this._then);

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
    Object? actuality = fhirSentinel,
    Object? category = fhirSentinel,
    Object? code = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? causeX = fhirSentinel,
    Object? effectX = fhirSentinel,
    Object? detected = fhirSentinel,
    Object? recordedDate = fhirSentinel,
    Object? resultingEffect = fhirSentinel,
    Object? location = fhirSentinel,
    Object? seriousness = fhirSentinel,
    Object? outcome = fhirSentinel,
    Object? recorder = fhirSentinel,
    Object? participant = fhirSentinel,
    Object? study = fhirSentinel,
    Object? expectedInResearchStudy = fhirSentinel,
    Object? suspectEntity = fhirSentinel,
    Object? contributingFactor = fhirSentinel,
    Object? preventiveAction = fhirSentinel,
    Object? mitigatingAction = fhirSentinel,
    Object? supportingInfo = fhirSentinel,
    Object? note = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AdverseEvent(
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
            : (status as AdverseEventStatus?) ?? _value.status,
        actuality: identical(actuality, fhirSentinel)
            ? _value.actuality
            : (actuality as AdverseEventActuality?) ?? _value.actuality,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as List<CodeableConcept>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : (subject as Reference?) ?? _value.subject,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as Reference?,
        causeX: identical(causeX, fhirSentinel)
            ? _value.causeX
            : causeX as CauseXAdverseEvent?,
        effectX: identical(effectX, fhirSentinel)
            ? _value.effectX
            : effectX as EffectXAdverseEvent?,
        detected: identical(detected, fhirSentinel)
            ? _value.detected
            : detected as FhirDateTime?,
        recordedDate: identical(recordedDate, fhirSentinel)
            ? _value.recordedDate
            : recordedDate as FhirDateTime?,
        resultingEffect: identical(resultingEffect, fhirSentinel)
            ? _value.resultingEffect
            : resultingEffect as List<CodeableReference>?,
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as Reference?,
        seriousness: identical(seriousness, fhirSentinel)
            ? _value.seriousness
            : seriousness as CodeableConcept?,
        outcome: identical(outcome, fhirSentinel)
            ? _value.outcome
            : outcome as List<CodeableConcept>?,
        recorder: identical(recorder, fhirSentinel)
            ? _value.recorder
            : recorder as Reference?,
        participant: identical(participant, fhirSentinel)
            ? _value.participant
            : participant as List<AdverseEventParticipant>?,
        study: identical(study, fhirSentinel)
            ? _value.study
            : study as List<Reference>?,
        expectedInResearchStudy:
            identical(expectedInResearchStudy, fhirSentinel)
                ? _value.expectedInResearchStudy
                : expectedInResearchStudy as FhirBoolean?,
        suspectEntity: identical(suspectEntity, fhirSentinel)
            ? _value.suspectEntity
            : suspectEntity as List<AdverseEventSuspectEntity>?,
        contributingFactor: identical(contributingFactor, fhirSentinel)
            ? _value.contributingFactor
            : contributingFactor as List<CodeableReference>?,
        preventiveAction: identical(preventiveAction, fhirSentinel)
            ? _value.preventiveAction
            : preventiveAction as List<CodeableReference>?,
        mitigatingAction: identical(mitigatingAction, fhirSentinel)
            ? _value.mitigatingAction
            : mitigatingAction as List<CodeableReference>?,
        supportingInfo: identical(supportingInfo, fhirSentinel)
            ? _value.supportingInfo
            : supportingInfo as List<CodeableReference>?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
      ),
    );
  }
}

extension AdverseEventCopyWithExtension on AdverseEvent {
  $AdverseEventCopyWith<AdverseEvent> get copyWith =>
      _$AdverseEventCopyWithImpl<AdverseEvent>(
        this,
        (value) => value,
      );
}

abstract class $AdverseEventParticipantCopyWith<T>
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

class _$AdverseEventParticipantCopyWithImpl<T>
    implements $AdverseEventParticipantCopyWith<T> {
  final AdverseEventParticipant _value;
  final T Function(AdverseEventParticipant) _then;

  _$AdverseEventParticipantCopyWithImpl(this._value, this._then);

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
      AdverseEventParticipant(
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

extension AdverseEventParticipantCopyWithExtension on AdverseEventParticipant {
  $AdverseEventParticipantCopyWith<AdverseEventParticipant> get copyWith =>
      _$AdverseEventParticipantCopyWithImpl<AdverseEventParticipant>(
        this,
        (value) => value,
      );
}

abstract class $AdverseEventSuspectEntityCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? instance,
    AdverseEventCausality? causality,
    bool? disallowExtensions,
  });
}

class _$AdverseEventSuspectEntityCopyWithImpl<T>
    implements $AdverseEventSuspectEntityCopyWith<T> {
  final AdverseEventSuspectEntity _value;
  final T Function(AdverseEventSuspectEntity) _then;

  _$AdverseEventSuspectEntityCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? instance = fhirSentinel,
    Object? causality = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AdverseEventSuspectEntity(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        instance: identical(instance, fhirSentinel)
            ? _value.instance
            : (instance as CodeableReference?) ?? _value.instance,
        causality: identical(causality, fhirSentinel)
            ? _value.causality
            : causality as AdverseEventCausality?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension AdverseEventSuspectEntityCopyWithExtension
    on AdverseEventSuspectEntity {
  $AdverseEventSuspectEntityCopyWith<AdverseEventSuspectEntity> get copyWith =>
      _$AdverseEventSuspectEntityCopyWithImpl<AdverseEventSuspectEntity>(
        this,
        (value) => value,
      );
}

abstract class $AdverseEventCausalityCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? assessmentMethod,
    CodeableConcept? entityRelatedness,
    Reference? author,
    bool? disallowExtensions,
  });
}

class _$AdverseEventCausalityCopyWithImpl<T>
    implements $AdverseEventCausalityCopyWith<T> {
  final AdverseEventCausality _value;
  final T Function(AdverseEventCausality) _then;

  _$AdverseEventCausalityCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? assessmentMethod = fhirSentinel,
    Object? entityRelatedness = fhirSentinel,
    Object? author = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AdverseEventCausality(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        assessmentMethod: identical(assessmentMethod, fhirSentinel)
            ? _value.assessmentMethod
            : assessmentMethod as CodeableConcept?,
        entityRelatedness: identical(entityRelatedness, fhirSentinel)
            ? _value.entityRelatedness
            : entityRelatedness as CodeableConcept?,
        author: identical(author, fhirSentinel)
            ? _value.author
            : author as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension AdverseEventCausalityCopyWithExtension on AdverseEventCausality {
  $AdverseEventCausalityCopyWith<AdverseEventCausality> get copyWith =>
      _$AdverseEventCausalityCopyWithImpl<AdverseEventCausality>(
        this,
        (value) => value,
      );
}
