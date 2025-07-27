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
    List<ResearchSubjectProgress>? progress,
    Period? period,
    Reference? study,
    Reference? subject,
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
    Object? progress = fhirSentinel,
    Object? period = fhirSentinel,
    Object? study = fhirSentinel,
    Object? subject = fhirSentinel,
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
        progress: identical(progress, fhirSentinel)
            ? _value.progress
            : progress as List<ResearchSubjectProgress>?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        study: identical(study, fhirSentinel)
            ? _value.study
            : (study as Reference?) ?? _value.study,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : (subject as Reference?) ?? _value.subject,
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

abstract class $ResearchSubjectProgressCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    CodeableConcept? subjectState,
    CodeableConcept? milestone,
    CodeableConcept? reason,
    FhirDateTime? startDate,
    FhirDateTime? endDate,
    bool? disallowExtensions,
  });
}

class _$ResearchSubjectProgressCopyWithImpl<T>
    implements $ResearchSubjectProgressCopyWith<T> {
  final ResearchSubjectProgress _value;
  final T Function(ResearchSubjectProgress) _then;

  _$ResearchSubjectProgressCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? subjectState = fhirSentinel,
    Object? milestone = fhirSentinel,
    Object? reason = fhirSentinel,
    Object? startDate = fhirSentinel,
    Object? endDate = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ResearchSubjectProgress(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        subjectState: identical(subjectState, fhirSentinel)
            ? _value.subjectState
            : subjectState as CodeableConcept?,
        milestone: identical(milestone, fhirSentinel)
            ? _value.milestone
            : milestone as CodeableConcept?,
        reason: identical(reason, fhirSentinel)
            ? _value.reason
            : reason as CodeableConcept?,
        startDate: identical(startDate, fhirSentinel)
            ? _value.startDate
            : startDate as FhirDateTime?,
        endDate: identical(endDate, fhirSentinel)
            ? _value.endDate
            : endDate as FhirDateTime?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ResearchSubjectProgressCopyWithExtension on ResearchSubjectProgress {
  $ResearchSubjectProgressCopyWith<ResearchSubjectProgress> get copyWith =>
      _$ResearchSubjectProgressCopyWithImpl<ResearchSubjectProgress>(
        this,
        (value) => value,
      );
}
