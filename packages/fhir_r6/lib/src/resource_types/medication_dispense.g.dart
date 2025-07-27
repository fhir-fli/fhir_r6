// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'medication_dispense.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $MedicationDispenseCopyWith<T>
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
    MedicationDispenseStatusCodes? status,
    CodeableReference? notPerformedReason,
    FhirDateTime? statusChanged,
    List<CodeableConcept>? category,
    CodeableReference? medication,
    Reference? subject,
    Reference? encounter,
    List<Reference>? supportingInformation,
    List<MedicationDispensePerformer>? performer,
    Reference? location,
    List<Reference>? authorizingPrescription,
    CodeableConcept? type,
    Quantity? quantity,
    Quantity? daysSupply,
    FhirDateTime? recorded,
    FhirDateTime? whenPrepared,
    FhirDateTime? whenHandedOver,
    Reference? destination,
    List<Reference>? receiver,
    List<Annotation>? note,
    FhirMarkdown? renderedDosageInstruction,
    List<Dosage>? dosageInstruction,
    MedicationDispenseSubstitution? substitution,
    List<Reference>? eventHistory,
    bool? disallowExtensions,
  });
}

class _$MedicationDispenseCopyWithImpl<T>
    implements $MedicationDispenseCopyWith<T> {
  final MedicationDispense _value;
  final T Function(MedicationDispense) _then;

  _$MedicationDispenseCopyWithImpl(this._value, this._then);

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
    Object? notPerformedReason = fhirSentinel,
    Object? statusChanged = fhirSentinel,
    Object? category = fhirSentinel,
    Object? medication = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? supportingInformation = fhirSentinel,
    Object? performer = fhirSentinel,
    Object? location = fhirSentinel,
    Object? authorizingPrescription = fhirSentinel,
    Object? type = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? daysSupply = fhirSentinel,
    Object? recorded = fhirSentinel,
    Object? whenPrepared = fhirSentinel,
    Object? whenHandedOver = fhirSentinel,
    Object? destination = fhirSentinel,
    Object? receiver = fhirSentinel,
    Object? note = fhirSentinel,
    Object? renderedDosageInstruction = fhirSentinel,
    Object? dosageInstruction = fhirSentinel,
    Object? substitution = fhirSentinel,
    Object? eventHistory = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationDispense(
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
            : (status as MedicationDispenseStatusCodes?) ?? _value.status,
        notPerformedReason: identical(notPerformedReason, fhirSentinel)
            ? _value.notPerformedReason
            : notPerformedReason as CodeableReference?,
        statusChanged: identical(statusChanged, fhirSentinel)
            ? _value.statusChanged
            : statusChanged as FhirDateTime?,
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
        performer: identical(performer, fhirSentinel)
            ? _value.performer
            : performer as List<MedicationDispensePerformer>?,
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as Reference?,
        authorizingPrescription:
            identical(authorizingPrescription, fhirSentinel)
                ? _value.authorizingPrescription
                : authorizingPrescription as List<Reference>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as Quantity?,
        daysSupply: identical(daysSupply, fhirSentinel)
            ? _value.daysSupply
            : daysSupply as Quantity?,
        recorded: identical(recorded, fhirSentinel)
            ? _value.recorded
            : recorded as FhirDateTime?,
        whenPrepared: identical(whenPrepared, fhirSentinel)
            ? _value.whenPrepared
            : whenPrepared as FhirDateTime?,
        whenHandedOver: identical(whenHandedOver, fhirSentinel)
            ? _value.whenHandedOver
            : whenHandedOver as FhirDateTime?,
        destination: identical(destination, fhirSentinel)
            ? _value.destination
            : destination as Reference?,
        receiver: identical(receiver, fhirSentinel)
            ? _value.receiver
            : receiver as List<Reference>?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        renderedDosageInstruction:
            identical(renderedDosageInstruction, fhirSentinel)
                ? _value.renderedDosageInstruction
                : renderedDosageInstruction as FhirMarkdown?,
        dosageInstruction: identical(dosageInstruction, fhirSentinel)
            ? _value.dosageInstruction
            : dosageInstruction as List<Dosage>?,
        substitution: identical(substitution, fhirSentinel)
            ? _value.substitution
            : substitution as MedicationDispenseSubstitution?,
        eventHistory: identical(eventHistory, fhirSentinel)
            ? _value.eventHistory
            : eventHistory as List<Reference>?,
      ),
    );
  }
}

extension MedicationDispenseCopyWithExtension on MedicationDispense {
  $MedicationDispenseCopyWith<MedicationDispense> get copyWith =>
      _$MedicationDispenseCopyWithImpl<MedicationDispense>(
        this,
        (value) => value,
      );
}

abstract class $MedicationDispensePerformerCopyWith<T>
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

class _$MedicationDispensePerformerCopyWithImpl<T>
    implements $MedicationDispensePerformerCopyWith<T> {
  final MedicationDispensePerformer _value;
  final T Function(MedicationDispensePerformer) _then;

  _$MedicationDispensePerformerCopyWithImpl(this._value, this._then);

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
      MedicationDispensePerformer(
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

extension MedicationDispensePerformerCopyWithExtension
    on MedicationDispensePerformer {
  $MedicationDispensePerformerCopyWith<MedicationDispensePerformer>
      get copyWith => _$MedicationDispensePerformerCopyWithImpl<
              MedicationDispensePerformer>(
            this,
            (value) => value,
          );
}

abstract class $MedicationDispenseSubstitutionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? wasSubstituted,
    CodeableConcept? type,
    List<CodeableConcept>? reason,
    Reference? responsibleParty,
    bool? disallowExtensions,
  });
}

class _$MedicationDispenseSubstitutionCopyWithImpl<T>
    implements $MedicationDispenseSubstitutionCopyWith<T> {
  final MedicationDispenseSubstitution _value;
  final T Function(MedicationDispenseSubstitution) _then;

  _$MedicationDispenseSubstitutionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? wasSubstituted = fhirSentinel,
    Object? type = fhirSentinel,
    Object? reason = fhirSentinel,
    Object? responsibleParty = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationDispenseSubstitution(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        wasSubstituted: identical(wasSubstituted, fhirSentinel)
            ? _value.wasSubstituted
            : (wasSubstituted as FhirBoolean?) ?? _value.wasSubstituted,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        reason: identical(reason, fhirSentinel)
            ? _value.reason
            : reason as List<CodeableConcept>?,
        responsibleParty: identical(responsibleParty, fhirSentinel)
            ? _value.responsibleParty
            : responsibleParty as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationDispenseSubstitutionCopyWithExtension
    on MedicationDispenseSubstitution {
  $MedicationDispenseSubstitutionCopyWith<MedicationDispenseSubstitution>
      get copyWith => _$MedicationDispenseSubstitutionCopyWithImpl<
              MedicationDispenseSubstitution>(
            this,
            (value) => value,
          );
}
