// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'clinical_impression.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ClinicalImpressionCopyWith<T>
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
    EventStatus? status,
    CodeableConcept? statusReason,
    FhirString? description,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? effectiveX,
    FhirDateTime? date,
    Reference? performer,
    Reference? previous,
    List<Reference>? problem,
    CodeableConcept? changePattern,
    List<FhirUri>? protocol,
    FhirString? summary,
    List<ClinicalImpressionFinding>? finding,
    List<CodeableConcept>? prognosisCodeableConcept,
    List<Reference>? prognosisReference,
    List<Reference>? supportingInfo,
    List<Annotation>? note,
    bool? disallowExtensions,
  });
}

class _$ClinicalImpressionCopyWithImpl<T>
    implements $ClinicalImpressionCopyWith<T> {
  final ClinicalImpression _value;
  final T Function(ClinicalImpression) _then;

  _$ClinicalImpressionCopyWithImpl(this._value, this._then);

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
    Object? statusReason = fhirSentinel,
    Object? description = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? effectiveX = fhirSentinel,
    Object? date = fhirSentinel,
    Object? performer = fhirSentinel,
    Object? previous = fhirSentinel,
    Object? problem = fhirSentinel,
    Object? changePattern = fhirSentinel,
    Object? protocol = fhirSentinel,
    Object? summary = fhirSentinel,
    Object? finding = fhirSentinel,
    Object? prognosisCodeableConcept = fhirSentinel,
    Object? prognosisReference = fhirSentinel,
    Object? supportingInfo = fhirSentinel,
    Object? note = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClinicalImpression(
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
            : (status as EventStatus?) ?? _value.status,
        statusReason: identical(statusReason, fhirSentinel)
            ? _value.statusReason
            : statusReason as CodeableConcept?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : (subject as Reference?) ?? _value.subject,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as Reference?,
        effectiveX: identical(effectiveX, fhirSentinel)
            ? _value.effectiveX
            : effectiveX as FhirDateTime?,
        date:
            identical(date, fhirSentinel) ? _value.date : date as FhirDateTime?,
        performer: identical(performer, fhirSentinel)
            ? _value.performer
            : performer as Reference?,
        previous: identical(previous, fhirSentinel)
            ? _value.previous
            : previous as Reference?,
        problem: identical(problem, fhirSentinel)
            ? _value.problem
            : problem as List<Reference>?,
        changePattern: identical(changePattern, fhirSentinel)
            ? _value.changePattern
            : changePattern as CodeableConcept?,
        protocol: identical(protocol, fhirSentinel)
            ? _value.protocol
            : protocol as List<FhirUri>?,
        summary: identical(summary, fhirSentinel)
            ? _value.summary
            : summary as FhirString?,
        finding: identical(finding, fhirSentinel)
            ? _value.finding
            : finding as List<ClinicalImpressionFinding>?,
        prognosisCodeableConcept:
            identical(prognosisCodeableConcept, fhirSentinel)
                ? _value.prognosisCodeableConcept
                : prognosisCodeableConcept as List<CodeableConcept>?,
        prognosisReference: identical(prognosisReference, fhirSentinel)
            ? _value.prognosisReference
            : prognosisReference as List<Reference>?,
        supportingInfo: identical(supportingInfo, fhirSentinel)
            ? _value.supportingInfo
            : supportingInfo as List<Reference>?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
      ),
    );
  }
}

extension ClinicalImpressionCopyWithExtension on ClinicalImpression {
  $ClinicalImpressionCopyWith<ClinicalImpression> get copyWith =>
      _$ClinicalImpressionCopyWithImpl<ClinicalImpression>(
        this,
        (value) => value,
      );
}

abstract class $ClinicalImpressionFindingCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? item,
    FhirString? basis,
    bool? disallowExtensions,
  });
}

class _$ClinicalImpressionFindingCopyWithImpl<T>
    implements $ClinicalImpressionFindingCopyWith<T> {
  final ClinicalImpressionFinding _value;
  final T Function(ClinicalImpressionFinding) _then;

  _$ClinicalImpressionFindingCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? item = fhirSentinel,
    Object? basis = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ClinicalImpressionFinding(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        item: identical(item, fhirSentinel)
            ? _value.item
            : item as CodeableReference?,
        basis: identical(basis, fhirSentinel)
            ? _value.basis
            : basis as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ClinicalImpressionFindingCopyWithExtension
    on ClinicalImpressionFinding {
  $ClinicalImpressionFindingCopyWith<ClinicalImpressionFinding> get copyWith =>
      _$ClinicalImpressionFindingCopyWithImpl<ClinicalImpressionFinding>(
        this,
        (value) => value,
      );
}
