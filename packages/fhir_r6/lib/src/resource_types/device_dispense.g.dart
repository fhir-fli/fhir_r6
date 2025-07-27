// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'device_dispense.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $DeviceDispenseCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    DeviceDispenseStatusCodes? status,
    CodeableReference? statusReason,
    List<CodeableConcept>? category,
    CodeableReference? device,
    Reference? subject,
    Reference? receiver,
    Reference? encounter,
    List<Reference>? supportingInformation,
    List<DeviceDispensePerformer>? performer,
    Reference? location,
    CodeableConcept? type,
    Quantity? quantity,
    FhirDateTime? preparedDate,
    FhirDateTime? whenHandedOver,
    Reference? destination,
    List<Annotation>? note,
    FhirMarkdown? usageInstruction,
    List<Reference>? eventHistory,
    bool? disallowExtensions,
  });
}

class _$DeviceDispenseCopyWithImpl<T> implements $DeviceDispenseCopyWith<T> {
  final DeviceDispense _value;
  final T Function(DeviceDispense) _then;

  _$DeviceDispenseCopyWithImpl(this._value, this._then);

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
    Object? device = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? receiver = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? supportingInformation = fhirSentinel,
    Object? performer = fhirSentinel,
    Object? location = fhirSentinel,
    Object? type = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? preparedDate = fhirSentinel,
    Object? whenHandedOver = fhirSentinel,
    Object? destination = fhirSentinel,
    Object? note = fhirSentinel,
    Object? usageInstruction = fhirSentinel,
    Object? eventHistory = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceDispense(
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
            : (status as DeviceDispenseStatusCodes?) ?? _value.status,
        statusReason: identical(statusReason, fhirSentinel)
            ? _value.statusReason
            : statusReason as CodeableReference?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as List<CodeableConcept>?,
        device: identical(device, fhirSentinel)
            ? _value.device
            : (device as CodeableReference?) ?? _value.device,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : (subject as Reference?) ?? _value.subject,
        receiver: identical(receiver, fhirSentinel)
            ? _value.receiver
            : receiver as Reference?,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as Reference?,
        supportingInformation: identical(supportingInformation, fhirSentinel)
            ? _value.supportingInformation
            : supportingInformation as List<Reference>?,
        performer: identical(performer, fhirSentinel)
            ? _value.performer
            : performer as List<DeviceDispensePerformer>?,
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as Reference?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as Quantity?,
        preparedDate: identical(preparedDate, fhirSentinel)
            ? _value.preparedDate
            : preparedDate as FhirDateTime?,
        whenHandedOver: identical(whenHandedOver, fhirSentinel)
            ? _value.whenHandedOver
            : whenHandedOver as FhirDateTime?,
        destination: identical(destination, fhirSentinel)
            ? _value.destination
            : destination as Reference?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        usageInstruction: identical(usageInstruction, fhirSentinel)
            ? _value.usageInstruction
            : usageInstruction as FhirMarkdown?,
        eventHistory: identical(eventHistory, fhirSentinel)
            ? _value.eventHistory
            : eventHistory as List<Reference>?,
      ),
    );
  }
}

extension DeviceDispenseCopyWithExtension on DeviceDispense {
  $DeviceDispenseCopyWith<DeviceDispense> get copyWith =>
      _$DeviceDispenseCopyWithImpl<DeviceDispense>(
        this,
        (value) => value,
      );
}

abstract class $DeviceDispensePerformerCopyWith<T>
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

class _$DeviceDispensePerformerCopyWithImpl<T>
    implements $DeviceDispensePerformerCopyWith<T> {
  final DeviceDispensePerformer _value;
  final T Function(DeviceDispensePerformer) _then;

  _$DeviceDispensePerformerCopyWithImpl(this._value, this._then);

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
      DeviceDispensePerformer(
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

extension DeviceDispensePerformerCopyWithExtension on DeviceDispensePerformer {
  $DeviceDispensePerformerCopyWith<DeviceDispensePerformer> get copyWith =>
      _$DeviceDispensePerformerCopyWithImpl<DeviceDispensePerformer>(
        this,
        (value) => value,
      );
}
