// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'imaging_study.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ImagingStudyCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    ImagingStudyStatus? status,
    List<CodeableConcept>? modality,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? started,
    List<Reference>? basedOn,
    List<Reference>? partOf,
    Reference? referrer,
    List<Reference>? endpoint,
    FhirUnsignedInt? numberOfSeries,
    FhirUnsignedInt? numberOfInstances,
    List<CodeableReference>? procedure,
    Reference? location,
    List<CodeableReference>? reason,
    List<Annotation>? note,
    FhirString? description,
    List<ImagingStudySeries>? series,
    bool? disallowExtensions,
  });
}

class _$ImagingStudyCopyWithImpl<T> implements $ImagingStudyCopyWith<T> {
  final ImagingStudy _value;
  final T Function(ImagingStudy) _then;

  _$ImagingStudyCopyWithImpl(this._value, this._then);

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
    Object? modality = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? started = fhirSentinel,
    Object? basedOn = fhirSentinel,
    Object? partOf = fhirSentinel,
    Object? referrer = fhirSentinel,
    Object? endpoint = fhirSentinel,
    Object? numberOfSeries = fhirSentinel,
    Object? numberOfInstances = fhirSentinel,
    Object? procedure = fhirSentinel,
    Object? location = fhirSentinel,
    Object? reason = fhirSentinel,
    Object? note = fhirSentinel,
    Object? description = fhirSentinel,
    Object? series = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ImagingStudy(
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
            : (status as ImagingStudyStatus?) ?? _value.status,
        modality: identical(modality, fhirSentinel)
            ? _value.modality
            : modality as List<CodeableConcept>?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : (subject as Reference?) ?? _value.subject,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as Reference?,
        started: identical(started, fhirSentinel)
            ? _value.started
            : started as FhirDateTime?,
        basedOn: identical(basedOn, fhirSentinel)
            ? _value.basedOn
            : basedOn as List<Reference>?,
        partOf: identical(partOf, fhirSentinel)
            ? _value.partOf
            : partOf as List<Reference>?,
        referrer: identical(referrer, fhirSentinel)
            ? _value.referrer
            : referrer as Reference?,
        endpoint: identical(endpoint, fhirSentinel)
            ? _value.endpoint
            : endpoint as List<Reference>?,
        numberOfSeries: identical(numberOfSeries, fhirSentinel)
            ? _value.numberOfSeries
            : numberOfSeries as FhirUnsignedInt?,
        numberOfInstances: identical(numberOfInstances, fhirSentinel)
            ? _value.numberOfInstances
            : numberOfInstances as FhirUnsignedInt?,
        procedure: identical(procedure, fhirSentinel)
            ? _value.procedure
            : procedure as List<CodeableReference>?,
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as Reference?,
        reason: identical(reason, fhirSentinel)
            ? _value.reason
            : reason as List<CodeableReference>?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        series: identical(series, fhirSentinel)
            ? _value.series
            : series as List<ImagingStudySeries>?,
      ),
    );
  }
}

extension ImagingStudyCopyWithExtension on ImagingStudy {
  $ImagingStudyCopyWith<ImagingStudy> get copyWith =>
      _$ImagingStudyCopyWithImpl<ImagingStudy>(
        this,
        (value) => value,
      );
}

abstract class $ImagingStudySeriesCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? uid,
    FhirUnsignedInt? number,
    CodeableConcept? modality,
    FhirString? description,
    FhirUnsignedInt? numberOfInstances,
    List<Reference>? endpoint,
    CodeableReference? bodySite,
    CodeableConcept? laterality,
    List<Reference>? specimen,
    FhirDateTime? started,
    List<ImagingStudyPerformer>? performer,
    List<ImagingStudyInstance>? instance,
    bool? disallowExtensions,
  });
}

class _$ImagingStudySeriesCopyWithImpl<T>
    implements $ImagingStudySeriesCopyWith<T> {
  final ImagingStudySeries _value;
  final T Function(ImagingStudySeries) _then;

  _$ImagingStudySeriesCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? uid = fhirSentinel,
    Object? number = fhirSentinel,
    Object? modality = fhirSentinel,
    Object? description = fhirSentinel,
    Object? numberOfInstances = fhirSentinel,
    Object? endpoint = fhirSentinel,
    Object? bodySite = fhirSentinel,
    Object? laterality = fhirSentinel,
    Object? specimen = fhirSentinel,
    Object? started = fhirSentinel,
    Object? performer = fhirSentinel,
    Object? instance = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ImagingStudySeries(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        uid: identical(uid, fhirSentinel)
            ? _value.uid
            : (uid as FhirId?) ?? _value.uid,
        number: identical(number, fhirSentinel)
            ? _value.number
            : number as FhirUnsignedInt?,
        modality: identical(modality, fhirSentinel)
            ? _value.modality
            : (modality as CodeableConcept?) ?? _value.modality,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        numberOfInstances: identical(numberOfInstances, fhirSentinel)
            ? _value.numberOfInstances
            : numberOfInstances as FhirUnsignedInt?,
        endpoint: identical(endpoint, fhirSentinel)
            ? _value.endpoint
            : endpoint as List<Reference>?,
        bodySite: identical(bodySite, fhirSentinel)
            ? _value.bodySite
            : bodySite as CodeableReference?,
        laterality: identical(laterality, fhirSentinel)
            ? _value.laterality
            : laterality as CodeableConcept?,
        specimen: identical(specimen, fhirSentinel)
            ? _value.specimen
            : specimen as List<Reference>?,
        started: identical(started, fhirSentinel)
            ? _value.started
            : started as FhirDateTime?,
        performer: identical(performer, fhirSentinel)
            ? _value.performer
            : performer as List<ImagingStudyPerformer>?,
        instance: identical(instance, fhirSentinel)
            ? _value.instance
            : instance as List<ImagingStudyInstance>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ImagingStudySeriesCopyWithExtension on ImagingStudySeries {
  $ImagingStudySeriesCopyWith<ImagingStudySeries> get copyWith =>
      _$ImagingStudySeriesCopyWithImpl<ImagingStudySeries>(
        this,
        (value) => value,
      );
}

abstract class $ImagingStudyPerformerCopyWith<T>
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

class _$ImagingStudyPerformerCopyWithImpl<T>
    implements $ImagingStudyPerformerCopyWith<T> {
  final ImagingStudyPerformer _value;
  final T Function(ImagingStudyPerformer) _then;

  _$ImagingStudyPerformerCopyWithImpl(this._value, this._then);

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
      ImagingStudyPerformer(
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

extension ImagingStudyPerformerCopyWithExtension on ImagingStudyPerformer {
  $ImagingStudyPerformerCopyWith<ImagingStudyPerformer> get copyWith =>
      _$ImagingStudyPerformerCopyWithImpl<ImagingStudyPerformer>(
        this,
        (value) => value,
      );
}

abstract class $ImagingStudyInstanceCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? uid,
    Coding? sopClass,
    FhirUnsignedInt? number,
    FhirString? title,
    bool? disallowExtensions,
  });
}

class _$ImagingStudyInstanceCopyWithImpl<T>
    implements $ImagingStudyInstanceCopyWith<T> {
  final ImagingStudyInstance _value;
  final T Function(ImagingStudyInstance) _then;

  _$ImagingStudyInstanceCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? uid = fhirSentinel,
    Object? sopClass = fhirSentinel,
    Object? number = fhirSentinel,
    Object? title = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ImagingStudyInstance(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        uid: identical(uid, fhirSentinel)
            ? _value.uid
            : (uid as FhirId?) ?? _value.uid,
        sopClass: identical(sopClass, fhirSentinel)
            ? _value.sopClass
            : (sopClass as Coding?) ?? _value.sopClass,
        number: identical(number, fhirSentinel)
            ? _value.number
            : number as FhirUnsignedInt?,
        title: identical(title, fhirSentinel)
            ? _value.title
            : title as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ImagingStudyInstanceCopyWithExtension on ImagingStudyInstance {
  $ImagingStudyInstanceCopyWith<ImagingStudyInstance> get copyWith =>
      _$ImagingStudyInstanceCopyWithImpl<ImagingStudyInstance>(
        this,
        (value) => value,
      );
}
