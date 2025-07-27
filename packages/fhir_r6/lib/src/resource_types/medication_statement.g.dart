// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'medication_statement.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $MedicationStatementCopyWith<T>
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
    List<Reference>? partOf,
    MedicationStatementStatusCodes? status,
    List<CodeableConcept>? category,
    CodeableReference? medication,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? effectiveX,
    FhirDateTime? dateAsserted,
    List<Reference>? informationSource,
    List<Reference>? derivedFrom,
    List<CodeableReference>? reason,
    List<Annotation>? note,
    List<Reference>? relatedClinicalInformation,
    FhirMarkdown? renderedDosageInstruction,
    List<Dosage>? dosage,
    MedicationStatementAdherence? adherence,
    bool? disallowExtensions,
  });
}

class _$MedicationStatementCopyWithImpl<T>
    implements $MedicationStatementCopyWith<T> {
  final MedicationStatement _value;
  final T Function(MedicationStatement) _then;

  _$MedicationStatementCopyWithImpl(this._value, this._then);

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
    Object? partOf = fhirSentinel,
    Object? status = fhirSentinel,
    Object? category = fhirSentinel,
    Object? medication = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? effectiveX = fhirSentinel,
    Object? dateAsserted = fhirSentinel,
    Object? informationSource = fhirSentinel,
    Object? derivedFrom = fhirSentinel,
    Object? reason = fhirSentinel,
    Object? note = fhirSentinel,
    Object? relatedClinicalInformation = fhirSentinel,
    Object? renderedDosageInstruction = fhirSentinel,
    Object? dosage = fhirSentinel,
    Object? adherence = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationStatement(
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
        partOf: identical(partOf, fhirSentinel)
            ? _value.partOf
            : partOf as List<Reference>?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as MedicationStatementStatusCodes?) ?? _value.status,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as List<CodeableConcept>?,
        medication: identical(medication, fhirSentinel)
            ? _value.medication
            : (medication as CodeableReference?) ?? _value.medication,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : (subject as Reference?) ?? _value.subject,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as Reference?,
        effectiveX: identical(effectiveX, fhirSentinel)
            ? _value.effectiveX
            : effectiveX as FhirDateTime?,
        dateAsserted: identical(dateAsserted, fhirSentinel)
            ? _value.dateAsserted
            : dateAsserted as FhirDateTime?,
        informationSource: identical(informationSource, fhirSentinel)
            ? _value.informationSource
            : informationSource as List<Reference>?,
        derivedFrom: identical(derivedFrom, fhirSentinel)
            ? _value.derivedFrom
            : derivedFrom as List<Reference>?,
        reason: identical(reason, fhirSentinel)
            ? _value.reason
            : reason as List<CodeableReference>?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        relatedClinicalInformation:
            identical(relatedClinicalInformation, fhirSentinel)
                ? _value.relatedClinicalInformation
                : relatedClinicalInformation as List<Reference>?,
        renderedDosageInstruction:
            identical(renderedDosageInstruction, fhirSentinel)
                ? _value.renderedDosageInstruction
                : renderedDosageInstruction as FhirMarkdown?,
        dosage: identical(dosage, fhirSentinel)
            ? _value.dosage
            : dosage as List<Dosage>?,
        adherence: identical(adherence, fhirSentinel)
            ? _value.adherence
            : adherence as MedicationStatementAdherence?,
      ),
    );
  }
}

extension MedicationStatementCopyWithExtension on MedicationStatement {
  $MedicationStatementCopyWith<MedicationStatement> get copyWith =>
      _$MedicationStatementCopyWithImpl<MedicationStatement>(
        this,
        (value) => value,
      );
}

abstract class $MedicationStatementAdherenceCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    CodeableConcept? reason,
    bool? disallowExtensions,
  });
}

class _$MedicationStatementAdherenceCopyWithImpl<T>
    implements $MedicationStatementAdherenceCopyWith<T> {
  final MedicationStatementAdherence _value;
  final T Function(MedicationStatementAdherence) _then;

  _$MedicationStatementAdherenceCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? reason = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationStatementAdherence(
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

extension MedicationStatementAdherenceCopyWithExtension
    on MedicationStatementAdherence {
  $MedicationStatementAdherenceCopyWith<MedicationStatementAdherence>
      get copyWith => _$MedicationStatementAdherenceCopyWithImpl<
              MedicationStatementAdherence>(
            this,
            (value) => value,
          );
}
