// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'medication_administration.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $MedicationAdministrationCopyWith<T>
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
    List<Reference>? basedOn,
    List<Reference>? partOf,
    MedicationAdministrationStatusCodes? status,
    List<CodeableConcept>? statusReason,
    List<CodeableConcept>? category,
    CodeableReference? medication,
    Reference? subject,
    Reference? encounter,
    List<Reference>? supportingInformation,
    FhirDateTime? occurenceX,
    FhirDateTime? recorded,
    FhirBoolean? isSubPotent,
    List<CodeableConcept>? subPotentReason,
    List<MedicationAdministrationPerformer>? performer,
    List<CodeableReference>? reason,
    Reference? request,
    List<CodeableReference>? device,
    List<Annotation>? note,
    MedicationAdministrationDosage? dosage,
    List<Reference>? eventHistory,
    bool? disallowExtensions,
  });
}

class _$MedicationAdministrationCopyWithImpl<T>
    implements $MedicationAdministrationCopyWith<T> {
  final MedicationAdministration _value;
  final T Function(MedicationAdministration) _then;

  _$MedicationAdministrationCopyWithImpl(this._value, this._then);

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
    Object? partOf = fhirSentinel,
    Object? status = fhirSentinel,
    Object? statusReason = fhirSentinel,
    Object? category = fhirSentinel,
    Object? medication = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? supportingInformation = fhirSentinel,
    Object? occurenceX = fhirSentinel,
    Object? recorded = fhirSentinel,
    Object? isSubPotent = fhirSentinel,
    Object? subPotentReason = fhirSentinel,
    Object? performer = fhirSentinel,
    Object? reason = fhirSentinel,
    Object? request = fhirSentinel,
    Object? device = fhirSentinel,
    Object? note = fhirSentinel,
    Object? dosage = fhirSentinel,
    Object? eventHistory = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationAdministration(
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
        partOf: identical(partOf, fhirSentinel)
            ? _value.partOf
            : partOf as List<Reference>?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as MedicationAdministrationStatusCodes?) ?? _value.status,
        statusReason: identical(statusReason, fhirSentinel)
            ? _value.statusReason
            : statusReason as List<CodeableConcept>?,
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
        supportingInformation: identical(supportingInformation, fhirSentinel)
            ? _value.supportingInformation
            : supportingInformation as List<Reference>?,
        occurenceX: identical(occurenceX, fhirSentinel)
            ? _value.occurenceX
            : (occurenceX as FhirDateTime?) ?? _value.occurenceX,
        recorded: identical(recorded, fhirSentinel)
            ? _value.recorded
            : recorded as FhirDateTime?,
        isSubPotent: identical(isSubPotent, fhirSentinel)
            ? _value.isSubPotent
            : isSubPotent as FhirBoolean?,
        subPotentReason: identical(subPotentReason, fhirSentinel)
            ? _value.subPotentReason
            : subPotentReason as List<CodeableConcept>?,
        performer: identical(performer, fhirSentinel)
            ? _value.performer
            : performer as List<MedicationAdministrationPerformer>?,
        reason: identical(reason, fhirSentinel)
            ? _value.reason
            : reason as List<CodeableReference>?,
        request: identical(request, fhirSentinel)
            ? _value.request
            : request as Reference?,
        device: identical(device, fhirSentinel)
            ? _value.device
            : device as List<CodeableReference>?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        dosage: identical(dosage, fhirSentinel)
            ? _value.dosage
            : dosage as MedicationAdministrationDosage?,
        eventHistory: identical(eventHistory, fhirSentinel)
            ? _value.eventHistory
            : eventHistory as List<Reference>?,
      ),
    );
  }
}

extension MedicationAdministrationCopyWithExtension
    on MedicationAdministration {
  $MedicationAdministrationCopyWith<MedicationAdministration> get copyWith =>
      _$MedicationAdministrationCopyWithImpl<MedicationAdministration>(
        this,
        (value) => value,
      );
}

abstract class $MedicationAdministrationPerformerCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? function_,
    CodeableReference? actor,
    bool? disallowExtensions,
  });
}

class _$MedicationAdministrationPerformerCopyWithImpl<T>
    implements $MedicationAdministrationPerformerCopyWith<T> {
  final MedicationAdministrationPerformer _value;
  final T Function(MedicationAdministrationPerformer) _then;

  _$MedicationAdministrationPerformerCopyWithImpl(this._value, this._then);

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
      MedicationAdministrationPerformer(
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
            : (actor as CodeableReference?) ?? _value.actor,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationAdministrationPerformerCopyWithExtension
    on MedicationAdministrationPerformer {
  $MedicationAdministrationPerformerCopyWith<MedicationAdministrationPerformer>
      get copyWith => _$MedicationAdministrationPerformerCopyWithImpl<
              MedicationAdministrationPerformer>(
            this,
            (value) => value,
          );
}

abstract class $MedicationAdministrationDosageCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? text,
    CodeableConcept? site,
    CodeableConcept? route,
    CodeableConcept? method,
    Quantity? dose,
    Ratio? rateX,
    bool? disallowExtensions,
  });
}

class _$MedicationAdministrationDosageCopyWithImpl<T>
    implements $MedicationAdministrationDosageCopyWith<T> {
  final MedicationAdministrationDosage _value;
  final T Function(MedicationAdministrationDosage) _then;

  _$MedicationAdministrationDosageCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? text = fhirSentinel,
    Object? site = fhirSentinel,
    Object? route = fhirSentinel,
    Object? method = fhirSentinel,
    Object? dose = fhirSentinel,
    Object? rateX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationAdministrationDosage(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        text: identical(text, fhirSentinel) ? _value.text : text as FhirString?,
        site: identical(site, fhirSentinel)
            ? _value.site
            : site as CodeableConcept?,
        route: identical(route, fhirSentinel)
            ? _value.route
            : route as CodeableConcept?,
        method: identical(method, fhirSentinel)
            ? _value.method
            : method as CodeableConcept?,
        dose: identical(dose, fhirSentinel) ? _value.dose : dose as Quantity?,
        rateX: identical(rateX, fhirSentinel) ? _value.rateX : rateX as Ratio?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationAdministrationDosageCopyWithExtension
    on MedicationAdministrationDosage {
  $MedicationAdministrationDosageCopyWith<MedicationAdministrationDosage>
      get copyWith => _$MedicationAdministrationDosageCopyWithImpl<
              MedicationAdministrationDosage>(
            this,
            (value) => value,
          );
}
