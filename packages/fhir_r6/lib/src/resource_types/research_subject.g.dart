// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'research_subject.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ResearchSubjectCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    PublicationStatus? status,
    Period? period,
    Reference? study,
    Reference? subject,
    List<ResearchSubjectSubjectState>? subjectState,
    List<ResearchSubjectSubjectMilestone>? subjectMilestone,
    FhirId? assignedComparisonGroup,
    FhirId? actualComparisonGroup,
    List<Reference>? consent,
    bool? disallowExtensions,
  });
}

class _$ResearchSubjectCopyWithImpl<T> implements $ResearchSubjectCopyWith<T> {
  final ResearchSubject _value;
  final T Function(ResearchSubject) _then;

  _$ResearchSubjectCopyWithImpl(this._value, this._then);

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
    Object? period = fhirSentinel,
    Object? study = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? subjectState = fhirSentinel,
    Object? subjectMilestone = fhirSentinel,
    Object? assignedComparisonGroup = fhirSentinel,
    Object? actualComparisonGroup = fhirSentinel,
    Object? consent = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ResearchSubject(
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
            : (status as PublicationStatus?) ?? _value.status,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        study: identical(study, fhirSentinel)
            ? _value.study
            : (study as Reference?) ?? _value.study,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : (subject as Reference?) ?? _value.subject,
        subjectState: identical(subjectState, fhirSentinel)
            ? _value.subjectState
            : subjectState as List<ResearchSubjectSubjectState>?,
        subjectMilestone: identical(subjectMilestone, fhirSentinel)
            ? _value.subjectMilestone
            : subjectMilestone as List<ResearchSubjectSubjectMilestone>?,
        assignedComparisonGroup:
            identical(assignedComparisonGroup, fhirSentinel)
                ? _value.assignedComparisonGroup
                : assignedComparisonGroup as FhirId?,
        actualComparisonGroup: identical(actualComparisonGroup, fhirSentinel)
            ? _value.actualComparisonGroup
            : actualComparisonGroup as FhirId?,
        consent: identical(consent, fhirSentinel)
            ? _value.consent
            : consent as List<Reference>?,
      ),
    );
  }
}

extension ResearchSubjectCopyWithExtension on ResearchSubject {
  $ResearchSubjectCopyWith<ResearchSubject> get copyWith =>
      _$ResearchSubjectCopyWithImpl<ResearchSubject>(
        this,
        (value) => value,
      );
}

abstract class $ResearchSubjectSubjectStateCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    FhirDateTime? startDate,
    FhirDateTime? endDate,
    CodeableConcept? reason,
    bool? disallowExtensions,
  });
}

class _$ResearchSubjectSubjectStateCopyWithImpl<T>
    implements $ResearchSubjectSubjectStateCopyWith<T> {
  final ResearchSubjectSubjectState _value;
  final T Function(ResearchSubjectSubjectState) _then;

  _$ResearchSubjectSubjectStateCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? startDate = fhirSentinel,
    Object? endDate = fhirSentinel,
    Object? reason = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ResearchSubjectSubjectState(
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
        startDate: identical(startDate, fhirSentinel)
            ? _value.startDate
            : (startDate as FhirDateTime?) ?? _value.startDate,
        endDate: identical(endDate, fhirSentinel)
            ? _value.endDate
            : endDate as FhirDateTime?,
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

extension ResearchSubjectSubjectStateCopyWithExtension
    on ResearchSubjectSubjectState {
  $ResearchSubjectSubjectStateCopyWith<ResearchSubjectSubjectState>
      get copyWith => _$ResearchSubjectSubjectStateCopyWithImpl<
              ResearchSubjectSubjectState>(
            this,
            (value) => value,
          );
}

abstract class $ResearchSubjectSubjectMilestoneCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? milestone,
    FhirDateTime? date,
    CodeableConcept? reason,
    bool? disallowExtensions,
  });
}

class _$ResearchSubjectSubjectMilestoneCopyWithImpl<T>
    implements $ResearchSubjectSubjectMilestoneCopyWith<T> {
  final ResearchSubjectSubjectMilestone _value;
  final T Function(ResearchSubjectSubjectMilestone) _then;

  _$ResearchSubjectSubjectMilestoneCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? milestone = fhirSentinel,
    Object? date = fhirSentinel,
    Object? reason = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ResearchSubjectSubjectMilestone(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        milestone: identical(milestone, fhirSentinel)
            ? _value.milestone
            : (milestone as List<CodeableConcept>?) ?? _value.milestone,
        date:
            identical(date, fhirSentinel) ? _value.date : date as FhirDateTime?,
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

extension ResearchSubjectSubjectMilestoneCopyWithExtension
    on ResearchSubjectSubjectMilestone {
  $ResearchSubjectSubjectMilestoneCopyWith<ResearchSubjectSubjectMilestone>
      get copyWith => _$ResearchSubjectSubjectMilestoneCopyWithImpl<
              ResearchSubjectSubjectMilestone>(
            this,
            (value) => value,
          );
}
