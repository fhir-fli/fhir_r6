// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'encounter_history.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $EncounterHistoryCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    Reference? encounter,
    List<Identifier>? identifier,
    EncounterStatus? status,
    CodeableConcept? class_,
    List<CodeableConcept>? type,
    List<CodeableReference>? serviceType,
    Reference? subject,
    CodeableConcept? subjectStatus,
    Period? actualPeriod,
    FhirDateTime? plannedStartDate,
    FhirDateTime? plannedEndDate,
    FhirDuration? length,
    List<EncounterHistoryLocation>? location,
    bool? disallowExtensions,
  });
}

class _$EncounterHistoryCopyWithImpl<T>
    implements $EncounterHistoryCopyWith<T> {
  final EncounterHistory _value;
  final T Function(EncounterHistory) _then;

  _$EncounterHistoryCopyWithImpl(this._value, this._then);

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
    Object? encounter = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? status = fhirSentinel,
    Object? class_ = fhirSentinel,
    Object? type = fhirSentinel,
    Object? serviceType = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? subjectStatus = fhirSentinel,
    Object? actualPeriod = fhirSentinel,
    Object? plannedStartDate = fhirSentinel,
    Object? plannedEndDate = fhirSentinel,
    Object? length = fhirSentinel,
    Object? location = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EncounterHistory(
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
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as Reference?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as List<Identifier>?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as EncounterStatus?) ?? _value.status,
        class_: identical(class_, fhirSentinel)
            ? _value.class_
            : (class_ as CodeableConcept?) ?? _value.class_,
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
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as List<EncounterHistoryLocation>?,
      ),
    );
  }
}

extension EncounterHistoryCopyWithExtension on EncounterHistory {
  $EncounterHistoryCopyWith<EncounterHistory> get copyWith =>
      _$EncounterHistoryCopyWithImpl<EncounterHistory>(
        this,
        (value) => value,
      );
}

abstract class $EncounterHistoryLocationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? location,
    CodeableConcept? form,
    bool? disallowExtensions,
  });
}

class _$EncounterHistoryLocationCopyWithImpl<T>
    implements $EncounterHistoryLocationCopyWith<T> {
  final EncounterHistoryLocation _value;
  final T Function(EncounterHistoryLocation) _then;

  _$EncounterHistoryLocationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? location = fhirSentinel,
    Object? form = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EncounterHistoryLocation(
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
        form: identical(form, fhirSentinel)
            ? _value.form
            : form as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension EncounterHistoryLocationCopyWithExtension
    on EncounterHistoryLocation {
  $EncounterHistoryLocationCopyWith<EncounterHistoryLocation> get copyWith =>
      _$EncounterHistoryLocationCopyWithImpl<EncounterHistoryLocation>(
        this,
        (value) => value,
      );
}
