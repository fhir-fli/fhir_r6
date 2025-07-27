// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'specimen.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $SpecimenCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    Identifier? accessionIdentifier,
    SpecimenStatus? status,
    CodeableConcept? type,
    Reference? subject,
    FhirDateTime? receivedTime,
    List<Reference>? parent,
    List<Reference>? request,
    SpecimenCombined? combined,
    List<CodeableConcept>? role,
    List<SpecimenFeature>? feature,
    SpecimenCollection? collection,
    List<SpecimenProcessing>? processing,
    List<SpecimenContainer>? container,
    List<CodeableConcept>? condition,
    List<Annotation>? note,
    bool? disallowExtensions,
  });
}

class _$SpecimenCopyWithImpl<T> implements $SpecimenCopyWith<T> {
  final Specimen _value;
  final T Function(Specimen) _then;

  _$SpecimenCopyWithImpl(this._value, this._then);

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
    Object? accessionIdentifier = fhirSentinel,
    Object? status = fhirSentinel,
    Object? type = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? receivedTime = fhirSentinel,
    Object? parent = fhirSentinel,
    Object? request = fhirSentinel,
    Object? combined = fhirSentinel,
    Object? role = fhirSentinel,
    Object? feature = fhirSentinel,
    Object? collection = fhirSentinel,
    Object? processing = fhirSentinel,
    Object? container = fhirSentinel,
    Object? condition = fhirSentinel,
    Object? note = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Specimen(
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
        accessionIdentifier: identical(accessionIdentifier, fhirSentinel)
            ? _value.accessionIdentifier
            : accessionIdentifier as Identifier?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : status as SpecimenStatus?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : subject as Reference?,
        receivedTime: identical(receivedTime, fhirSentinel)
            ? _value.receivedTime
            : receivedTime as FhirDateTime?,
        parent: identical(parent, fhirSentinel)
            ? _value.parent
            : parent as List<Reference>?,
        request: identical(request, fhirSentinel)
            ? _value.request
            : request as List<Reference>?,
        combined: identical(combined, fhirSentinel)
            ? _value.combined
            : combined as SpecimenCombined?,
        role: identical(role, fhirSentinel)
            ? _value.role
            : role as List<CodeableConcept>?,
        feature: identical(feature, fhirSentinel)
            ? _value.feature
            : feature as List<SpecimenFeature>?,
        collection: identical(collection, fhirSentinel)
            ? _value.collection
            : collection as SpecimenCollection?,
        processing: identical(processing, fhirSentinel)
            ? _value.processing
            : processing as List<SpecimenProcessing>?,
        container: identical(container, fhirSentinel)
            ? _value.container
            : container as List<SpecimenContainer>?,
        condition: identical(condition, fhirSentinel)
            ? _value.condition
            : condition as List<CodeableConcept>?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
      ),
    );
  }
}

extension SpecimenCopyWithExtension on Specimen {
  $SpecimenCopyWith<Specimen> get copyWith => _$SpecimenCopyWithImpl<Specimen>(
        this,
        (value) => value,
      );
}

abstract class $SpecimenFeatureCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirString? description,
    bool? disallowExtensions,
  });
}

class _$SpecimenFeatureCopyWithImpl<T> implements $SpecimenFeatureCopyWith<T> {
  final SpecimenFeature _value;
  final T Function(SpecimenFeature) _then;

  _$SpecimenFeatureCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? description = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SpecimenFeature(
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
        description: identical(description, fhirSentinel)
            ? _value.description
            : (description as FhirString?) ?? _value.description,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SpecimenFeatureCopyWithExtension on SpecimenFeature {
  $SpecimenFeatureCopyWith<SpecimenFeature> get copyWith =>
      _$SpecimenFeatureCopyWithImpl<SpecimenFeature>(
        this,
        (value) => value,
      );
}

abstract class $SpecimenCollectionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? collector,
    FhirDateTime? collectedX,
    FhirDuration? duration,
    Quantity? quantity,
    CodeableConcept? method,
    CodeableReference? device,
    Reference? procedure,
    CodeableReference? bodySite,
    CodeableConcept? fastingStatusX,
    bool? disallowExtensions,
  });
}

class _$SpecimenCollectionCopyWithImpl<T>
    implements $SpecimenCollectionCopyWith<T> {
  final SpecimenCollection _value;
  final T Function(SpecimenCollection) _then;

  _$SpecimenCollectionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? collector = fhirSentinel,
    Object? collectedX = fhirSentinel,
    Object? duration = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? method = fhirSentinel,
    Object? device = fhirSentinel,
    Object? procedure = fhirSentinel,
    Object? bodySite = fhirSentinel,
    Object? fastingStatusX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SpecimenCollection(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        collector: identical(collector, fhirSentinel)
            ? _value.collector
            : collector as Reference?,
        collectedX: identical(collectedX, fhirSentinel)
            ? _value.collectedX
            : collectedX as FhirDateTime?,
        duration: identical(duration, fhirSentinel)
            ? _value.duration
            : duration as FhirDuration?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as Quantity?,
        method: identical(method, fhirSentinel)
            ? _value.method
            : method as CodeableConcept?,
        device: identical(device, fhirSentinel)
            ? _value.device
            : device as CodeableReference?,
        procedure: identical(procedure, fhirSentinel)
            ? _value.procedure
            : procedure as Reference?,
        bodySite: identical(bodySite, fhirSentinel)
            ? _value.bodySite
            : bodySite as CodeableReference?,
        fastingStatusX: identical(fastingStatusX, fhirSentinel)
            ? _value.fastingStatusX
            : fastingStatusX as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SpecimenCollectionCopyWithExtension on SpecimenCollection {
  $SpecimenCollectionCopyWith<SpecimenCollection> get copyWith =>
      _$SpecimenCollectionCopyWithImpl<SpecimenCollection>(
        this,
        (value) => value,
      );
}

abstract class $SpecimenProcessingCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    CodeableConcept? method,
    List<Reference>? additive,
    FhirDateTime? timeX,
    bool? disallowExtensions,
  });
}

class _$SpecimenProcessingCopyWithImpl<T>
    implements $SpecimenProcessingCopyWith<T> {
  final SpecimenProcessing _value;
  final T Function(SpecimenProcessing) _then;

  _$SpecimenProcessingCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? description = fhirSentinel,
    Object? method = fhirSentinel,
    Object? additive = fhirSentinel,
    Object? timeX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SpecimenProcessing(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        method: identical(method, fhirSentinel)
            ? _value.method
            : method as CodeableConcept?,
        additive: identical(additive, fhirSentinel)
            ? _value.additive
            : additive as List<Reference>?,
        timeX: identical(timeX, fhirSentinel)
            ? _value.timeX
            : timeX as FhirDateTime?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SpecimenProcessingCopyWithExtension on SpecimenProcessing {
  $SpecimenProcessingCopyWith<SpecimenProcessing> get copyWith =>
      _$SpecimenProcessingCopyWithImpl<SpecimenProcessing>(
        this,
        (value) => value,
      );
}

abstract class $SpecimenContainerCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? device,
    Reference? location,
    Quantity? specimenQuantity,
    bool? disallowExtensions,
  });
}

class _$SpecimenContainerCopyWithImpl<T>
    implements $SpecimenContainerCopyWith<T> {
  final SpecimenContainer _value;
  final T Function(SpecimenContainer) _then;

  _$SpecimenContainerCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? device = fhirSentinel,
    Object? location = fhirSentinel,
    Object? specimenQuantity = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SpecimenContainer(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        device: identical(device, fhirSentinel)
            ? _value.device
            : (device as Reference?) ?? _value.device,
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as Reference?,
        specimenQuantity: identical(specimenQuantity, fhirSentinel)
            ? _value.specimenQuantity
            : specimenQuantity as Quantity?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SpecimenContainerCopyWithExtension on SpecimenContainer {
  $SpecimenContainerCopyWith<SpecimenContainer> get copyWith =>
      _$SpecimenContainerCopyWithImpl<SpecimenContainer>(
        this,
        (value) => value,
      );
}
