// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'transport.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $TransportCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    FhirCanonical? instantiatesCanonical,
    FhirUri? instantiatesUri,
    List<Reference>? basedOn,
    Identifier? groupIdentifier,
    List<Reference>? partOf,
    TransportStatus? status,
    CodeableConcept? statusReason,
    TransportIntent? intent,
    RequestPriority? priority,
    CodeableConcept? code,
    FhirString? description,
    Reference? focus,
    Reference? for_,
    Reference? encounter,
    FhirDateTime? completionTime,
    FhirDateTime? authoredOn,
    FhirDateTime? lastModified,
    Reference? requester,
    List<CodeableConcept>? performerType,
    Reference? owner,
    Reference? location,
    List<Reference>? insurance,
    List<Annotation>? note,
    List<Reference>? relevantHistory,
    TransportRestriction? restriction,
    List<TransportInput>? input,
    List<TransportOutput>? output,
    Reference? requestedLocation,
    Reference? currentLocation,
    CodeableReference? reason,
    Reference? history,
    bool? disallowExtensions,
  });
}

class _$TransportCopyWithImpl<T> implements $TransportCopyWith<T> {
  final Transport _value;
  final T Function(Transport) _then;

  _$TransportCopyWithImpl(this._value, this._then);

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
    Object? instantiatesCanonical = fhirSentinel,
    Object? instantiatesUri = fhirSentinel,
    Object? basedOn = fhirSentinel,
    Object? groupIdentifier = fhirSentinel,
    Object? partOf = fhirSentinel,
    Object? status = fhirSentinel,
    Object? statusReason = fhirSentinel,
    Object? intent = fhirSentinel,
    Object? priority = fhirSentinel,
    Object? code = fhirSentinel,
    Object? description = fhirSentinel,
    Object? focus = fhirSentinel,
    Object? for_ = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? completionTime = fhirSentinel,
    Object? authoredOn = fhirSentinel,
    Object? lastModified = fhirSentinel,
    Object? requester = fhirSentinel,
    Object? performerType = fhirSentinel,
    Object? owner = fhirSentinel,
    Object? location = fhirSentinel,
    Object? insurance = fhirSentinel,
    Object? note = fhirSentinel,
    Object? relevantHistory = fhirSentinel,
    Object? restriction = fhirSentinel,
    Object? input = fhirSentinel,
    Object? output = fhirSentinel,
    Object? requestedLocation = fhirSentinel,
    Object? currentLocation = fhirSentinel,
    Object? reason = fhirSentinel,
    Object? history = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Transport(
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
        instantiatesCanonical: identical(instantiatesCanonical, fhirSentinel)
            ? _value.instantiatesCanonical
            : instantiatesCanonical as FhirCanonical?,
        instantiatesUri: identical(instantiatesUri, fhirSentinel)
            ? _value.instantiatesUri
            : instantiatesUri as FhirUri?,
        basedOn: identical(basedOn, fhirSentinel)
            ? _value.basedOn
            : basedOn as List<Reference>?,
        groupIdentifier: identical(groupIdentifier, fhirSentinel)
            ? _value.groupIdentifier
            : groupIdentifier as Identifier?,
        partOf: identical(partOf, fhirSentinel)
            ? _value.partOf
            : partOf as List<Reference>?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : status as TransportStatus?,
        statusReason: identical(statusReason, fhirSentinel)
            ? _value.statusReason
            : statusReason as CodeableConcept?,
        intent: identical(intent, fhirSentinel)
            ? _value.intent
            : (intent as TransportIntent?) ?? _value.intent,
        priority: identical(priority, fhirSentinel)
            ? _value.priority
            : priority as RequestPriority?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        focus:
            identical(focus, fhirSentinel) ? _value.focus : focus as Reference?,
        for_: identical(for_, fhirSentinel) ? _value.for_ : for_ as Reference?,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as Reference?,
        completionTime: identical(completionTime, fhirSentinel)
            ? _value.completionTime
            : completionTime as FhirDateTime?,
        authoredOn: identical(authoredOn, fhirSentinel)
            ? _value.authoredOn
            : authoredOn as FhirDateTime?,
        lastModified: identical(lastModified, fhirSentinel)
            ? _value.lastModified
            : lastModified as FhirDateTime?,
        requester: identical(requester, fhirSentinel)
            ? _value.requester
            : requester as Reference?,
        performerType: identical(performerType, fhirSentinel)
            ? _value.performerType
            : performerType as List<CodeableConcept>?,
        owner:
            identical(owner, fhirSentinel) ? _value.owner : owner as Reference?,
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as Reference?,
        insurance: identical(insurance, fhirSentinel)
            ? _value.insurance
            : insurance as List<Reference>?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        relevantHistory: identical(relevantHistory, fhirSentinel)
            ? _value.relevantHistory
            : relevantHistory as List<Reference>?,
        restriction: identical(restriction, fhirSentinel)
            ? _value.restriction
            : restriction as TransportRestriction?,
        input: identical(input, fhirSentinel)
            ? _value.input
            : input as List<TransportInput>?,
        output: identical(output, fhirSentinel)
            ? _value.output
            : output as List<TransportOutput>?,
        requestedLocation: identical(requestedLocation, fhirSentinel)
            ? _value.requestedLocation
            : (requestedLocation as Reference?) ?? _value.requestedLocation,
        currentLocation: identical(currentLocation, fhirSentinel)
            ? _value.currentLocation
            : (currentLocation as Reference?) ?? _value.currentLocation,
        reason: identical(reason, fhirSentinel)
            ? _value.reason
            : reason as CodeableReference?,
        history: identical(history, fhirSentinel)
            ? _value.history
            : history as Reference?,
      ),
    );
  }
}

extension TransportCopyWithExtension on Transport {
  $TransportCopyWith<Transport> get copyWith =>
      _$TransportCopyWithImpl<Transport>(
        this,
        (value) => value,
      );
}

abstract class $TransportRestrictionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? repetitions,
    Period? period,
    List<Reference>? recipient,
    bool? disallowExtensions,
  });
}

class _$TransportRestrictionCopyWithImpl<T>
    implements $TransportRestrictionCopyWith<T> {
  final TransportRestriction _value;
  final T Function(TransportRestriction) _then;

  _$TransportRestrictionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? repetitions = fhirSentinel,
    Object? period = fhirSentinel,
    Object? recipient = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TransportRestriction(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        repetitions: identical(repetitions, fhirSentinel)
            ? _value.repetitions
            : repetitions as FhirPositiveInt?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        recipient: identical(recipient, fhirSentinel)
            ? _value.recipient
            : recipient as List<Reference>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TransportRestrictionCopyWithExtension on TransportRestriction {
  $TransportRestrictionCopyWith<TransportRestriction> get copyWith =>
      _$TransportRestrictionCopyWithImpl<TransportRestriction>(
        this,
        (value) => value,
      );
}

abstract class $TransportInputCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirBase64Binary? valueX,
    bool? disallowExtensions,
  });
}

class _$TransportInputCopyWithImpl<T> implements $TransportInputCopyWith<T> {
  final TransportInput _value;
  final T Function(TransportInput) _then;

  _$TransportInputCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TransportInput(
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
        valueX: identical(valueX, fhirSentinel)
            ? _value.valueX
            : (valueX as FhirBase64Binary?) ?? _value.valueX,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TransportInputCopyWithExtension on TransportInput {
  $TransportInputCopyWith<TransportInput> get copyWith =>
      _$TransportInputCopyWithImpl<TransportInput>(
        this,
        (value) => value,
      );
}

abstract class $TransportOutputCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirBase64Binary? valueX,
    bool? disallowExtensions,
  });
}

class _$TransportOutputCopyWithImpl<T> implements $TransportOutputCopyWith<T> {
  final TransportOutput _value;
  final T Function(TransportOutput) _then;

  _$TransportOutputCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TransportOutput(
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
        valueX: identical(valueX, fhirSentinel)
            ? _value.valueX
            : (valueX as FhirBase64Binary?) ?? _value.valueX,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TransportOutputCopyWithExtension on TransportOutput {
  $TransportOutputCopyWith<TransportOutput> get copyWith =>
      _$TransportOutputCopyWithImpl<TransportOutput>(
        this,
        (value) => value,
      );
}
