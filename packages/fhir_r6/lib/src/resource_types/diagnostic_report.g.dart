// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'diagnostic_report.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $DiagnosticReportCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    List<Reference>? basedOn,
    DiagnosticReportStatus? status,
    List<CodeableConcept>? category,
    CodeableConcept? code,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? effectiveX,
    FhirInstant? issued,
    List<Reference>? performer,
    List<Reference>? resultsInterpreter,
    List<Reference>? specimen,
    List<Reference>? result,
    List<Annotation>? note,
    List<Reference>? study,
    List<DiagnosticReportSupportingInfo>? supportingInfo,
    List<DiagnosticReportMedia>? media,
    Reference? composition,
    FhirMarkdown? conclusion,
    List<CodeableConcept>? conclusionCode,
    List<Attachment>? presentedForm,
    bool? disallowExtensions,
  });
}

class _$DiagnosticReportCopyWithImpl<T>
    implements $DiagnosticReportCopyWith<T> {
  final DiagnosticReport _value;
  final T Function(DiagnosticReport) _then;

  _$DiagnosticReportCopyWithImpl(this._value, this._then);

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
    Object? basedOn = fhirSentinel,
    Object? status = fhirSentinel,
    Object? category = fhirSentinel,
    Object? code = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? effectiveX = fhirSentinel,
    Object? issued = fhirSentinel,
    Object? performer = fhirSentinel,
    Object? resultsInterpreter = fhirSentinel,
    Object? specimen = fhirSentinel,
    Object? result = fhirSentinel,
    Object? note = fhirSentinel,
    Object? study = fhirSentinel,
    Object? supportingInfo = fhirSentinel,
    Object? media = fhirSentinel,
    Object? composition = fhirSentinel,
    Object? conclusion = fhirSentinel,
    Object? conclusionCode = fhirSentinel,
    Object? presentedForm = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DiagnosticReport(
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
        basedOn: identical(basedOn, fhirSentinel)
            ? _value.basedOn
            : basedOn as List<Reference>?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as DiagnosticReportStatus?) ?? _value.status,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as List<CodeableConcept>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as CodeableConcept?) ?? _value.code,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : subject as Reference?,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as Reference?,
        effectiveX: identical(effectiveX, fhirSentinel)
            ? _value.effectiveX
            : effectiveX as FhirDateTime?,
        issued: identical(issued, fhirSentinel)
            ? _value.issued
            : issued as FhirInstant?,
        performer: identical(performer, fhirSentinel)
            ? _value.performer
            : performer as List<Reference>?,
        resultsInterpreter: identical(resultsInterpreter, fhirSentinel)
            ? _value.resultsInterpreter
            : resultsInterpreter as List<Reference>?,
        specimen: identical(specimen, fhirSentinel)
            ? _value.specimen
            : specimen as List<Reference>?,
        result: identical(result, fhirSentinel)
            ? _value.result
            : result as List<Reference>?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        study: identical(study, fhirSentinel)
            ? _value.study
            : study as List<Reference>?,
        supportingInfo: identical(supportingInfo, fhirSentinel)
            ? _value.supportingInfo
            : supportingInfo as List<DiagnosticReportSupportingInfo>?,
        media: identical(media, fhirSentinel)
            ? _value.media
            : media as List<DiagnosticReportMedia>?,
        composition: identical(composition, fhirSentinel)
            ? _value.composition
            : composition as Reference?,
        conclusion: identical(conclusion, fhirSentinel)
            ? _value.conclusion
            : conclusion as FhirMarkdown?,
        conclusionCode: identical(conclusionCode, fhirSentinel)
            ? _value.conclusionCode
            : conclusionCode as List<CodeableConcept>?,
        presentedForm: identical(presentedForm, fhirSentinel)
            ? _value.presentedForm
            : presentedForm as List<Attachment>?,
      ),
    );
  }
}

extension DiagnosticReportCopyWithExtension on DiagnosticReport {
  $DiagnosticReportCopyWith<DiagnosticReport> get copyWith =>
      _$DiagnosticReportCopyWithImpl<DiagnosticReport>(
        this,
        (value) => value,
      );
}

abstract class $DiagnosticReportSupportingInfoCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    Reference? reference,
    bool? disallowExtensions,
  });
}

class _$DiagnosticReportSupportingInfoCopyWithImpl<T>
    implements $DiagnosticReportSupportingInfoCopyWith<T> {
  final DiagnosticReportSupportingInfo _value;
  final T Function(DiagnosticReportSupportingInfo) _then;

  _$DiagnosticReportSupportingInfoCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? reference = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DiagnosticReportSupportingInfo(
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
        reference: identical(reference, fhirSentinel)
            ? _value.reference
            : (reference as Reference?) ?? _value.reference,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DiagnosticReportSupportingInfoCopyWithExtension
    on DiagnosticReportSupportingInfo {
  $DiagnosticReportSupportingInfoCopyWith<DiagnosticReportSupportingInfo>
      get copyWith => _$DiagnosticReportSupportingInfoCopyWithImpl<
              DiagnosticReportSupportingInfo>(
            this,
            (value) => value,
          );
}

abstract class $DiagnosticReportMediaCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? comment,
    Reference? link,
    bool? disallowExtensions,
  });
}

class _$DiagnosticReportMediaCopyWithImpl<T>
    implements $DiagnosticReportMediaCopyWith<T> {
  final DiagnosticReportMedia _value;
  final T Function(DiagnosticReportMedia) _then;

  _$DiagnosticReportMediaCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? comment = fhirSentinel,
    Object? link = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DiagnosticReportMedia(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        comment: identical(comment, fhirSentinel)
            ? _value.comment
            : comment as FhirString?,
        link: identical(link, fhirSentinel)
            ? _value.link
            : (link as Reference?) ?? _value.link,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DiagnosticReportMediaCopyWithExtension on DiagnosticReportMedia {
  $DiagnosticReportMediaCopyWith<DiagnosticReportMedia> get copyWith =>
      _$DiagnosticReportMediaCopyWithImpl<DiagnosticReportMedia>(
        this,
        (value) => value,
      );
}
