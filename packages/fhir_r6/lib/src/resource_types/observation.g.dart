// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'observation.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ObservationCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    FhirCanonical? instantiatesX,
    List<Reference>? basedOn,
    List<ObservationTriggeredBy>? triggeredBy,
    List<Reference>? partOf,
    ObservationStatus? status,
    List<CodeableConcept>? category,
    CodeableConcept? code,
    Reference? subject,
    List<Reference>? focus,
    Reference? encounter,
    FhirDateTime? effectiveX,
    FhirInstant? issued,
    List<Reference>? performer,
    Quantity? valueX,
    CodeableConcept? dataAbsentReason,
    List<CodeableConcept>? interpretation,
    List<Annotation>? note,
    CodeableConcept? bodySite,
    Reference? bodyStructure,
    CodeableConcept? method,
    Reference? specimen,
    Reference? device,
    List<ObservationReferenceRange>? referenceRange,
    List<Reference>? hasMember,
    List<Reference>? derivedFrom,
    List<ObservationComponent>? component,
    bool? disallowExtensions,
  });
}

class _$ObservationCopyWithImpl<T> implements $ObservationCopyWith<T> {
  final Observation _value;
  final T Function(Observation) _then;

  _$ObservationCopyWithImpl(this._value, this._then);

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
    Object? instantiatesX = fhirSentinel,
    Object? basedOn = fhirSentinel,
    Object? triggeredBy = fhirSentinel,
    Object? partOf = fhirSentinel,
    Object? status = fhirSentinel,
    Object? category = fhirSentinel,
    Object? code = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? focus = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? effectiveX = fhirSentinel,
    Object? issued = fhirSentinel,
    Object? performer = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? dataAbsentReason = fhirSentinel,
    Object? interpretation = fhirSentinel,
    Object? note = fhirSentinel,
    Object? bodySite = fhirSentinel,
    Object? bodyStructure = fhirSentinel,
    Object? method = fhirSentinel,
    Object? specimen = fhirSentinel,
    Object? device = fhirSentinel,
    Object? referenceRange = fhirSentinel,
    Object? hasMember = fhirSentinel,
    Object? derivedFrom = fhirSentinel,
    Object? component = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Observation(
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
        instantiatesX: identical(instantiatesX, fhirSentinel)
            ? _value.instantiatesX
            : instantiatesX as FhirCanonical?,
        basedOn: identical(basedOn, fhirSentinel)
            ? _value.basedOn
            : basedOn as List<Reference>?,
        triggeredBy: identical(triggeredBy, fhirSentinel)
            ? _value.triggeredBy
            : triggeredBy as List<ObservationTriggeredBy>?,
        partOf: identical(partOf, fhirSentinel)
            ? _value.partOf
            : partOf as List<Reference>?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as ObservationStatus?) ?? _value.status,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as List<CodeableConcept>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as CodeableConcept?) ?? _value.code,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : subject as Reference?,
        focus: identical(focus, fhirSentinel)
            ? _value.focus
            : focus as List<Reference>?,
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
        valueX: identical(valueX, fhirSentinel)
            ? _value.valueX
            : valueX as Quantity?,
        dataAbsentReason: identical(dataAbsentReason, fhirSentinel)
            ? _value.dataAbsentReason
            : dataAbsentReason as CodeableConcept?,
        interpretation: identical(interpretation, fhirSentinel)
            ? _value.interpretation
            : interpretation as List<CodeableConcept>?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        bodySite: identical(bodySite, fhirSentinel)
            ? _value.bodySite
            : bodySite as CodeableConcept?,
        bodyStructure: identical(bodyStructure, fhirSentinel)
            ? _value.bodyStructure
            : bodyStructure as Reference?,
        method: identical(method, fhirSentinel)
            ? _value.method
            : method as CodeableConcept?,
        specimen: identical(specimen, fhirSentinel)
            ? _value.specimen
            : specimen as Reference?,
        device: identical(device, fhirSentinel)
            ? _value.device
            : device as Reference?,
        referenceRange: identical(referenceRange, fhirSentinel)
            ? _value.referenceRange
            : referenceRange as List<ObservationReferenceRange>?,
        hasMember: identical(hasMember, fhirSentinel)
            ? _value.hasMember
            : hasMember as List<Reference>?,
        derivedFrom: identical(derivedFrom, fhirSentinel)
            ? _value.derivedFrom
            : derivedFrom as List<Reference>?,
        component: identical(component, fhirSentinel)
            ? _value.component
            : component as List<ObservationComponent>?,
      ),
    );
  }
}

extension ObservationCopyWithExtension on Observation {
  $ObservationCopyWith<Observation> get copyWith =>
      _$ObservationCopyWithImpl<Observation>(
        this,
        (value) => value,
      );
}

abstract class $ObservationTriggeredByCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? observation,
    TriggeredBytype? type,
    FhirString? reason,
    bool? disallowExtensions,
  });
}

class _$ObservationTriggeredByCopyWithImpl<T>
    implements $ObservationTriggeredByCopyWith<T> {
  final ObservationTriggeredBy _value;
  final T Function(ObservationTriggeredBy) _then;

  _$ObservationTriggeredByCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? observation = fhirSentinel,
    Object? type = fhirSentinel,
    Object? reason = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ObservationTriggeredBy(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        observation: identical(observation, fhirSentinel)
            ? _value.observation
            : (observation as Reference?) ?? _value.observation,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as TriggeredBytype?) ?? _value.type,
        reason: identical(reason, fhirSentinel)
            ? _value.reason
            : reason as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ObservationTriggeredByCopyWithExtension on ObservationTriggeredBy {
  $ObservationTriggeredByCopyWith<ObservationTriggeredBy> get copyWith =>
      _$ObservationTriggeredByCopyWithImpl<ObservationTriggeredBy>(
        this,
        (value) => value,
      );
}

abstract class $ObservationReferenceRangeCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Quantity? low,
    Quantity? high,
    CodeableConcept? normalValue,
    CodeableConcept? type,
    List<CodeableConcept>? appliesTo,
    Range? age,
    FhirMarkdown? text,
    bool? disallowExtensions,
  });
}

class _$ObservationReferenceRangeCopyWithImpl<T>
    implements $ObservationReferenceRangeCopyWith<T> {
  final ObservationReferenceRange _value;
  final T Function(ObservationReferenceRange) _then;

  _$ObservationReferenceRangeCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? low = fhirSentinel,
    Object? high = fhirSentinel,
    Object? normalValue = fhirSentinel,
    Object? type = fhirSentinel,
    Object? appliesTo = fhirSentinel,
    Object? age = fhirSentinel,
    Object? text = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ObservationReferenceRange(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        low: identical(low, fhirSentinel) ? _value.low : low as Quantity?,
        high: identical(high, fhirSentinel) ? _value.high : high as Quantity?,
        normalValue: identical(normalValue, fhirSentinel)
            ? _value.normalValue
            : normalValue as CodeableConcept?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        appliesTo: identical(appliesTo, fhirSentinel)
            ? _value.appliesTo
            : appliesTo as List<CodeableConcept>?,
        age: identical(age, fhirSentinel) ? _value.age : age as Range?,
        text:
            identical(text, fhirSentinel) ? _value.text : text as FhirMarkdown?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ObservationReferenceRangeCopyWithExtension
    on ObservationReferenceRange {
  $ObservationReferenceRangeCopyWith<ObservationReferenceRange> get copyWith =>
      _$ObservationReferenceRangeCopyWithImpl<ObservationReferenceRange>(
        this,
        (value) => value,
      );
}

abstract class $ObservationComponentCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    Quantity? valueX,
    CodeableConcept? dataAbsentReason,
    List<CodeableConcept>? interpretation,
    List<ObservationReferenceRange>? referenceRange,
    bool? disallowExtensions,
  });
}

class _$ObservationComponentCopyWithImpl<T>
    implements $ObservationComponentCopyWith<T> {
  final ObservationComponent _value;
  final T Function(ObservationComponent) _then;

  _$ObservationComponentCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? dataAbsentReason = fhirSentinel,
    Object? interpretation = fhirSentinel,
    Object? referenceRange = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ObservationComponent(
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
        valueX: identical(valueX, fhirSentinel)
            ? _value.valueX
            : valueX as Quantity?,
        dataAbsentReason: identical(dataAbsentReason, fhirSentinel)
            ? _value.dataAbsentReason
            : dataAbsentReason as CodeableConcept?,
        interpretation: identical(interpretation, fhirSentinel)
            ? _value.interpretation
            : interpretation as List<CodeableConcept>?,
        referenceRange: identical(referenceRange, fhirSentinel)
            ? _value.referenceRange
            : referenceRange as List<ObservationReferenceRange>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ObservationComponentCopyWithExtension on ObservationComponent {
  $ObservationComponentCopyWith<ObservationComponent> get copyWith =>
      _$ObservationComponentCopyWithImpl<ObservationComponent>(
        this,
        (value) => value,
      );
}
