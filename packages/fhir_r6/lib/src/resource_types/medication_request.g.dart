// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'medication_request.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $MedicationRequestCopyWith<T>
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
    Reference? priorPrescription,
    Identifier? groupIdentifier,
    MedicationrequestStatus? status,
    CodeableConcept? statusReason,
    FhirDateTime? statusChanged,
    MedicationRequestIntent? intent,
    List<CodeableConcept>? category,
    RequestPriority? priority,
    FhirBoolean? doNotPerform,
    CodeableReference? medication,
    Reference? subject,
    List<Reference>? informationSource,
    Reference? encounter,
    List<Reference>? supportingInformation,
    FhirDateTime? authoredOn,
    Reference? requester,
    FhirBoolean? reported,
    CodeableConcept? performerType,
    List<Reference>? performer,
    List<CodeableReference>? device,
    Reference? recorder,
    List<CodeableReference>? reason,
    CodeableConcept? courseOfTherapyType,
    List<Reference>? insurance,
    List<Annotation>? note,
    FhirMarkdown? renderedDosageInstruction,
    Period? effectiveDosePeriod,
    List<Dosage>? dosageInstruction,
    MedicationRequestDispenseRequest? dispenseRequest,
    MedicationRequestSubstitution? substitution,
    List<Reference>? eventHistory,
    bool? disallowExtensions,
  });
}

class _$MedicationRequestCopyWithImpl<T>
    implements $MedicationRequestCopyWith<T> {
  final MedicationRequest _value;
  final T Function(MedicationRequest) _then;

  _$MedicationRequestCopyWithImpl(this._value, this._then);

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
    Object? priorPrescription = fhirSentinel,
    Object? groupIdentifier = fhirSentinel,
    Object? status = fhirSentinel,
    Object? statusReason = fhirSentinel,
    Object? statusChanged = fhirSentinel,
    Object? intent = fhirSentinel,
    Object? category = fhirSentinel,
    Object? priority = fhirSentinel,
    Object? doNotPerform = fhirSentinel,
    Object? medication = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? informationSource = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? supportingInformation = fhirSentinel,
    Object? authoredOn = fhirSentinel,
    Object? requester = fhirSentinel,
    Object? reported = fhirSentinel,
    Object? performerType = fhirSentinel,
    Object? performer = fhirSentinel,
    Object? device = fhirSentinel,
    Object? recorder = fhirSentinel,
    Object? reason = fhirSentinel,
    Object? courseOfTherapyType = fhirSentinel,
    Object? insurance = fhirSentinel,
    Object? note = fhirSentinel,
    Object? renderedDosageInstruction = fhirSentinel,
    Object? effectiveDosePeriod = fhirSentinel,
    Object? dosageInstruction = fhirSentinel,
    Object? dispenseRequest = fhirSentinel,
    Object? substitution = fhirSentinel,
    Object? eventHistory = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationRequest(
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
        priorPrescription: identical(priorPrescription, fhirSentinel)
            ? _value.priorPrescription
            : priorPrescription as Reference?,
        groupIdentifier: identical(groupIdentifier, fhirSentinel)
            ? _value.groupIdentifier
            : groupIdentifier as Identifier?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as MedicationrequestStatus?) ?? _value.status,
        statusReason: identical(statusReason, fhirSentinel)
            ? _value.statusReason
            : statusReason as CodeableConcept?,
        statusChanged: identical(statusChanged, fhirSentinel)
            ? _value.statusChanged
            : statusChanged as FhirDateTime?,
        intent: identical(intent, fhirSentinel)
            ? _value.intent
            : (intent as MedicationRequestIntent?) ?? _value.intent,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as List<CodeableConcept>?,
        priority: identical(priority, fhirSentinel)
            ? _value.priority
            : priority as RequestPriority?,
        doNotPerform: identical(doNotPerform, fhirSentinel)
            ? _value.doNotPerform
            : doNotPerform as FhirBoolean?,
        medication: identical(medication, fhirSentinel)
            ? _value.medication
            : (medication as CodeableReference?) ?? _value.medication,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : (subject as Reference?) ?? _value.subject,
        informationSource: identical(informationSource, fhirSentinel)
            ? _value.informationSource
            : informationSource as List<Reference>?,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as Reference?,
        supportingInformation: identical(supportingInformation, fhirSentinel)
            ? _value.supportingInformation
            : supportingInformation as List<Reference>?,
        authoredOn: identical(authoredOn, fhirSentinel)
            ? _value.authoredOn
            : authoredOn as FhirDateTime?,
        requester: identical(requester, fhirSentinel)
            ? _value.requester
            : requester as Reference?,
        reported: identical(reported, fhirSentinel)
            ? _value.reported
            : reported as FhirBoolean?,
        performerType: identical(performerType, fhirSentinel)
            ? _value.performerType
            : performerType as CodeableConcept?,
        performer: identical(performer, fhirSentinel)
            ? _value.performer
            : performer as List<Reference>?,
        device: identical(device, fhirSentinel)
            ? _value.device
            : device as List<CodeableReference>?,
        recorder: identical(recorder, fhirSentinel)
            ? _value.recorder
            : recorder as Reference?,
        reason: identical(reason, fhirSentinel)
            ? _value.reason
            : reason as List<CodeableReference>?,
        courseOfTherapyType: identical(courseOfTherapyType, fhirSentinel)
            ? _value.courseOfTherapyType
            : courseOfTherapyType as CodeableConcept?,
        insurance: identical(insurance, fhirSentinel)
            ? _value.insurance
            : insurance as List<Reference>?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        renderedDosageInstruction:
            identical(renderedDosageInstruction, fhirSentinel)
                ? _value.renderedDosageInstruction
                : renderedDosageInstruction as FhirMarkdown?,
        effectiveDosePeriod: identical(effectiveDosePeriod, fhirSentinel)
            ? _value.effectiveDosePeriod
            : effectiveDosePeriod as Period?,
        dosageInstruction: identical(dosageInstruction, fhirSentinel)
            ? _value.dosageInstruction
            : dosageInstruction as List<Dosage>?,
        dispenseRequest: identical(dispenseRequest, fhirSentinel)
            ? _value.dispenseRequest
            : dispenseRequest as MedicationRequestDispenseRequest?,
        substitution: identical(substitution, fhirSentinel)
            ? _value.substitution
            : substitution as MedicationRequestSubstitution?,
        eventHistory: identical(eventHistory, fhirSentinel)
            ? _value.eventHistory
            : eventHistory as List<Reference>?,
      ),
    );
  }
}

extension MedicationRequestCopyWithExtension on MedicationRequest {
  $MedicationRequestCopyWith<MedicationRequest> get copyWith =>
      _$MedicationRequestCopyWithImpl<MedicationRequest>(
        this,
        (value) => value,
      );
}

abstract class $MedicationRequestDispenseRequestCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    MedicationRequestInitialFill? initialFill,
    FhirDuration? dispenseInterval,
    Period? validityPeriod,
    FhirUnsignedInt? numberOfRepeatsAllowed,
    Quantity? quantity,
    FhirDuration? expectedSupplyDuration,
    Reference? dispenser,
    List<Annotation>? dispenserInstruction,
    CodeableConcept? doseAdministrationAid,
    bool? disallowExtensions,
  });
}

class _$MedicationRequestDispenseRequestCopyWithImpl<T>
    implements $MedicationRequestDispenseRequestCopyWith<T> {
  final MedicationRequestDispenseRequest _value;
  final T Function(MedicationRequestDispenseRequest) _then;

  _$MedicationRequestDispenseRequestCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? initialFill = fhirSentinel,
    Object? dispenseInterval = fhirSentinel,
    Object? validityPeriod = fhirSentinel,
    Object? numberOfRepeatsAllowed = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? expectedSupplyDuration = fhirSentinel,
    Object? dispenser = fhirSentinel,
    Object? dispenserInstruction = fhirSentinel,
    Object? doseAdministrationAid = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationRequestDispenseRequest(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        initialFill: identical(initialFill, fhirSentinel)
            ? _value.initialFill
            : initialFill as MedicationRequestInitialFill?,
        dispenseInterval: identical(dispenseInterval, fhirSentinel)
            ? _value.dispenseInterval
            : dispenseInterval as FhirDuration?,
        validityPeriod: identical(validityPeriod, fhirSentinel)
            ? _value.validityPeriod
            : validityPeriod as Period?,
        numberOfRepeatsAllowed: identical(numberOfRepeatsAllowed, fhirSentinel)
            ? _value.numberOfRepeatsAllowed
            : numberOfRepeatsAllowed as FhirUnsignedInt?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as Quantity?,
        expectedSupplyDuration: identical(expectedSupplyDuration, fhirSentinel)
            ? _value.expectedSupplyDuration
            : expectedSupplyDuration as FhirDuration?,
        dispenser: identical(dispenser, fhirSentinel)
            ? _value.dispenser
            : dispenser as Reference?,
        dispenserInstruction: identical(dispenserInstruction, fhirSentinel)
            ? _value.dispenserInstruction
            : dispenserInstruction as List<Annotation>?,
        doseAdministrationAid: identical(doseAdministrationAid, fhirSentinel)
            ? _value.doseAdministrationAid
            : doseAdministrationAid as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationRequestDispenseRequestCopyWithExtension
    on MedicationRequestDispenseRequest {
  $MedicationRequestDispenseRequestCopyWith<MedicationRequestDispenseRequest>
      get copyWith => _$MedicationRequestDispenseRequestCopyWithImpl<
              MedicationRequestDispenseRequest>(
            this,
            (value) => value,
          );
}

abstract class $MedicationRequestInitialFillCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Quantity? quantity,
    FhirDuration? duration,
    bool? disallowExtensions,
  });
}

class _$MedicationRequestInitialFillCopyWithImpl<T>
    implements $MedicationRequestInitialFillCopyWith<T> {
  final MedicationRequestInitialFill _value;
  final T Function(MedicationRequestInitialFill) _then;

  _$MedicationRequestInitialFillCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? duration = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationRequestInitialFill(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as Quantity?,
        duration: identical(duration, fhirSentinel)
            ? _value.duration
            : duration as FhirDuration?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MedicationRequestInitialFillCopyWithExtension
    on MedicationRequestInitialFill {
  $MedicationRequestInitialFillCopyWith<MedicationRequestInitialFill>
      get copyWith => _$MedicationRequestInitialFillCopyWithImpl<
              MedicationRequestInitialFill>(
            this,
            (value) => value,
          );
}

abstract class $MedicationRequestSubstitutionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? allowedX,
    CodeableConcept? reason,
    bool? disallowExtensions,
  });
}

class _$MedicationRequestSubstitutionCopyWithImpl<T>
    implements $MedicationRequestSubstitutionCopyWith<T> {
  final MedicationRequestSubstitution _value;
  final T Function(MedicationRequestSubstitution) _then;

  _$MedicationRequestSubstitutionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? allowedX = fhirSentinel,
    Object? reason = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MedicationRequestSubstitution(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        allowedX: identical(allowedX, fhirSentinel)
            ? _value.allowedX
            : (allowedX as FhirBoolean?) ?? _value.allowedX,
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

extension MedicationRequestSubstitutionCopyWithExtension
    on MedicationRequestSubstitution {
  $MedicationRequestSubstitutionCopyWith<MedicationRequestSubstitution>
      get copyWith => _$MedicationRequestSubstitutionCopyWithImpl<
              MedicationRequestSubstitution>(
            this,
            (value) => value,
          );
}
