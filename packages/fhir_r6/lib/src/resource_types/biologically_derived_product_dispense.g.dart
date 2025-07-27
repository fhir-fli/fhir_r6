// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'biologically_derived_product_dispense.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $BiologicallyDerivedProductDispenseCopyWith<T>
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
    BiologicallyDerivedProductDispenseCodes? status,
    CodeableConcept? originRelationshipType,
    Reference? product,
    Reference? patient,
    CodeableConcept? matchStatus,
    List<BiologicallyDerivedProductDispensePerformer>? performer,
    Reference? location,
    Quantity? quantity,
    FhirDateTime? preparedDate,
    FhirDateTime? whenHandedOver,
    Reference? destination,
    List<Annotation>? note,
    FhirString? usageInstruction,
    bool? disallowExtensions,
  });
}

class _$BiologicallyDerivedProductDispenseCopyWithImpl<T>
    implements $BiologicallyDerivedProductDispenseCopyWith<T> {
  final BiologicallyDerivedProductDispense _value;
  final T Function(BiologicallyDerivedProductDispense) _then;

  _$BiologicallyDerivedProductDispenseCopyWithImpl(this._value, this._then);

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
    Object? originRelationshipType = fhirSentinel,
    Object? product = fhirSentinel,
    Object? patient = fhirSentinel,
    Object? matchStatus = fhirSentinel,
    Object? performer = fhirSentinel,
    Object? location = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? preparedDate = fhirSentinel,
    Object? whenHandedOver = fhirSentinel,
    Object? destination = fhirSentinel,
    Object? note = fhirSentinel,
    Object? usageInstruction = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      BiologicallyDerivedProductDispense(
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
            : (status as BiologicallyDerivedProductDispenseCodes?) ??
                _value.status,
        originRelationshipType: identical(originRelationshipType, fhirSentinel)
            ? _value.originRelationshipType
            : originRelationshipType as CodeableConcept?,
        product: identical(product, fhirSentinel)
            ? _value.product
            : (product as Reference?) ?? _value.product,
        patient: identical(patient, fhirSentinel)
            ? _value.patient
            : (patient as Reference?) ?? _value.patient,
        matchStatus: identical(matchStatus, fhirSentinel)
            ? _value.matchStatus
            : matchStatus as CodeableConcept?,
        performer: identical(performer, fhirSentinel)
            ? _value.performer
            : performer as List<BiologicallyDerivedProductDispensePerformer>?,
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as Reference?,
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
            : usageInstruction as FhirString?,
      ),
    );
  }
}

extension BiologicallyDerivedProductDispenseCopyWithExtension
    on BiologicallyDerivedProductDispense {
  $BiologicallyDerivedProductDispenseCopyWith<
          BiologicallyDerivedProductDispense>
      get copyWith => _$BiologicallyDerivedProductDispenseCopyWithImpl<
              BiologicallyDerivedProductDispense>(
            this,
            (value) => value,
          );
}

abstract class $BiologicallyDerivedProductDispensePerformerCopyWith<T>
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

class _$BiologicallyDerivedProductDispensePerformerCopyWithImpl<T>
    implements $BiologicallyDerivedProductDispensePerformerCopyWith<T> {
  final BiologicallyDerivedProductDispensePerformer _value;
  final T Function(BiologicallyDerivedProductDispensePerformer) _then;

  _$BiologicallyDerivedProductDispensePerformerCopyWithImpl(
    this._value,
    this._then,
  );

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
      BiologicallyDerivedProductDispensePerformer(
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

extension BiologicallyDerivedProductDispensePerformerCopyWithExtension
    on BiologicallyDerivedProductDispensePerformer {
  $BiologicallyDerivedProductDispensePerformerCopyWith<
          BiologicallyDerivedProductDispensePerformer>
      get copyWith => _$BiologicallyDerivedProductDispensePerformerCopyWithImpl<
              BiologicallyDerivedProductDispensePerformer>(
            this,
            (value) => value,
          );
}
