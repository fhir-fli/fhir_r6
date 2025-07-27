// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'condition.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ConditionCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    CodeableConcept? clinicalStatus,
    CodeableConcept? verificationStatus,
    List<CodeableConcept>? category,
    CodeableConcept? severity,
    CodeableConcept? code,
    List<CodeableConcept>? bodySite,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? onsetX,
    FhirDateTime? abatementX,
    FhirDateTime? recordedDate,
    List<ConditionParticipant>? participant,
    List<ConditionStage>? stage,
    List<CodeableReference>? evidence,
    List<Annotation>? note,
    bool? disallowExtensions,
  });
}

class _$ConditionCopyWithImpl<T> implements $ConditionCopyWith<T> {
  final Condition _value;
  final T Function(Condition) _then;

  _$ConditionCopyWithImpl(this._value, this._then);

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
    Object? clinicalStatus = fhirSentinel,
    Object? verificationStatus = fhirSentinel,
    Object? category = fhirSentinel,
    Object? severity = fhirSentinel,
    Object? code = fhirSentinel,
    Object? bodySite = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? onsetX = fhirSentinel,
    Object? abatementX = fhirSentinel,
    Object? recordedDate = fhirSentinel,
    Object? participant = fhirSentinel,
    Object? stage = fhirSentinel,
    Object? evidence = fhirSentinel,
    Object? note = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Condition(
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
        clinicalStatus: identical(clinicalStatus, fhirSentinel)
            ? _value.clinicalStatus
            : (clinicalStatus as CodeableConcept?) ?? _value.clinicalStatus,
        verificationStatus: identical(verificationStatus, fhirSentinel)
            ? _value.verificationStatus
            : verificationStatus as CodeableConcept?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as List<CodeableConcept>?,
        severity: identical(severity, fhirSentinel)
            ? _value.severity
            : severity as CodeableConcept?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        bodySite: identical(bodySite, fhirSentinel)
            ? _value.bodySite
            : bodySite as List<CodeableConcept>?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : (subject as Reference?) ?? _value.subject,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as Reference?,
        onsetX: identical(onsetX, fhirSentinel)
            ? _value.onsetX
            : onsetX as FhirDateTime?,
        abatementX: identical(abatementX, fhirSentinel)
            ? _value.abatementX
            : abatementX as FhirDateTime?,
        recordedDate: identical(recordedDate, fhirSentinel)
            ? _value.recordedDate
            : recordedDate as FhirDateTime?,
        participant: identical(participant, fhirSentinel)
            ? _value.participant
            : participant as List<ConditionParticipant>?,
        stage: identical(stage, fhirSentinel)
            ? _value.stage
            : stage as List<ConditionStage>?,
        evidence: identical(evidence, fhirSentinel)
            ? _value.evidence
            : evidence as List<CodeableReference>?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
      ),
    );
  }
}

extension ConditionCopyWithExtension on Condition {
  $ConditionCopyWith<Condition> get copyWith =>
      _$ConditionCopyWithImpl<Condition>(
        this,
        (value) => value,
      );
}

abstract class $ConditionParticipantCopyWith<T>
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

class _$ConditionParticipantCopyWithImpl<T>
    implements $ConditionParticipantCopyWith<T> {
  final ConditionParticipant _value;
  final T Function(ConditionParticipant) _then;

  _$ConditionParticipantCopyWithImpl(this._value, this._then);

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
      ConditionParticipant(
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

extension ConditionParticipantCopyWithExtension on ConditionParticipant {
  $ConditionParticipantCopyWith<ConditionParticipant> get copyWith =>
      _$ConditionParticipantCopyWithImpl<ConditionParticipant>(
        this,
        (value) => value,
      );
}

abstract class $ConditionStageCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? summary,
    List<Reference>? assessment,
    CodeableConcept? type,
    bool? disallowExtensions,
  });
}

class _$ConditionStageCopyWithImpl<T> implements $ConditionStageCopyWith<T> {
  final ConditionStage _value;
  final T Function(ConditionStage) _then;

  _$ConditionStageCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? summary = fhirSentinel,
    Object? assessment = fhirSentinel,
    Object? type = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ConditionStage(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        summary: identical(summary, fhirSentinel)
            ? _value.summary
            : summary as CodeableConcept?,
        assessment: identical(assessment, fhirSentinel)
            ? _value.assessment
            : assessment as List<Reference>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ConditionStageCopyWithExtension on ConditionStage {
  $ConditionStageCopyWith<ConditionStage> get copyWith =>
      _$ConditionStageCopyWithImpl<ConditionStage>(
        this,
        (value) => value,
      );
}
