// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'device_request.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $DeviceRequestCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    List<FhirCanonical>? instantiatesCanonical,
    List<FhirUri>? instantiatesUri,
    List<Reference>? basedOn,
    List<Reference>? replaces,
    Identifier? groupIdentifier,
    RequestStatus? status,
    RequestIntent? intent,
    RequestPriority? priority,
    FhirBoolean? doNotPerform,
    CodeableReference? code,
    FhirInteger? quantity,
    List<DeviceRequestParameter>? parameter,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? occurrenceX,
    FhirDateTime? authoredOn,
    Reference? requester,
    CodeableReference? performer,
    List<CodeableReference>? reason,
    FhirBoolean? asNeeded,
    CodeableConcept? asNeededFor,
    List<Reference>? insurance,
    List<Reference>? supportingInfo,
    List<Annotation>? note,
    List<Reference>? relevantHistory,
    bool? disallowExtensions,
  });
}

class _$DeviceRequestCopyWithImpl<T> implements $DeviceRequestCopyWith<T> {
  final DeviceRequest _value;
  final T Function(DeviceRequest) _then;

  _$DeviceRequestCopyWithImpl(this._value, this._then);

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
    Object? replaces = fhirSentinel,
    Object? groupIdentifier = fhirSentinel,
    Object? status = fhirSentinel,
    Object? intent = fhirSentinel,
    Object? priority = fhirSentinel,
    Object? doNotPerform = fhirSentinel,
    Object? code = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? parameter = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? occurrenceX = fhirSentinel,
    Object? authoredOn = fhirSentinel,
    Object? requester = fhirSentinel,
    Object? performer = fhirSentinel,
    Object? reason = fhirSentinel,
    Object? asNeeded = fhirSentinel,
    Object? asNeededFor = fhirSentinel,
    Object? insurance = fhirSentinel,
    Object? supportingInfo = fhirSentinel,
    Object? note = fhirSentinel,
    Object? relevantHistory = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceRequest(
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
            : instantiatesCanonical as List<FhirCanonical>?,
        instantiatesUri: identical(instantiatesUri, fhirSentinel)
            ? _value.instantiatesUri
            : instantiatesUri as List<FhirUri>?,
        basedOn: identical(basedOn, fhirSentinel)
            ? _value.basedOn
            : basedOn as List<Reference>?,
        replaces: identical(replaces, fhirSentinel)
            ? _value.replaces
            : replaces as List<Reference>?,
        groupIdentifier: identical(groupIdentifier, fhirSentinel)
            ? _value.groupIdentifier
            : groupIdentifier as Identifier?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : status as RequestStatus?,
        intent: identical(intent, fhirSentinel)
            ? _value.intent
            : (intent as RequestIntent?) ?? _value.intent,
        priority: identical(priority, fhirSentinel)
            ? _value.priority
            : priority as RequestPriority?,
        doNotPerform: identical(doNotPerform, fhirSentinel)
            ? _value.doNotPerform
            : doNotPerform as FhirBoolean?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as CodeableReference?) ?? _value.code,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as FhirInteger?,
        parameter: identical(parameter, fhirSentinel)
            ? _value.parameter
            : parameter as List<DeviceRequestParameter>?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : (subject as Reference?) ?? _value.subject,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as Reference?,
        occurrenceX: identical(occurrenceX, fhirSentinel)
            ? _value.occurrenceX
            : occurrenceX as FhirDateTime?,
        authoredOn: identical(authoredOn, fhirSentinel)
            ? _value.authoredOn
            : authoredOn as FhirDateTime?,
        requester: identical(requester, fhirSentinel)
            ? _value.requester
            : requester as Reference?,
        performer: identical(performer, fhirSentinel)
            ? _value.performer
            : performer as CodeableReference?,
        reason: identical(reason, fhirSentinel)
            ? _value.reason
            : reason as List<CodeableReference>?,
        asNeeded: identical(asNeeded, fhirSentinel)
            ? _value.asNeeded
            : asNeeded as FhirBoolean?,
        asNeededFor: identical(asNeededFor, fhirSentinel)
            ? _value.asNeededFor
            : asNeededFor as CodeableConcept?,
        insurance: identical(insurance, fhirSentinel)
            ? _value.insurance
            : insurance as List<Reference>?,
        supportingInfo: identical(supportingInfo, fhirSentinel)
            ? _value.supportingInfo
            : supportingInfo as List<Reference>?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        relevantHistory: identical(relevantHistory, fhirSentinel)
            ? _value.relevantHistory
            : relevantHistory as List<Reference>?,
      ),
    );
  }
}

extension DeviceRequestCopyWithExtension on DeviceRequest {
  $DeviceRequestCopyWith<DeviceRequest> get copyWith =>
      _$DeviceRequestCopyWithImpl<DeviceRequest>(
        this,
        (value) => value,
      );
}

abstract class $DeviceRequestParameterCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    CodeableConcept? valueX,
    bool? disallowExtensions,
  });
}

class _$DeviceRequestParameterCopyWithImpl<T>
    implements $DeviceRequestParameterCopyWith<T> {
  final DeviceRequestParameter _value;
  final T Function(DeviceRequestParameter) _then;

  _$DeviceRequestParameterCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceRequestParameter(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        valueX: identical(valueX, fhirSentinel)
            ? _value.valueX
            : valueX as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DeviceRequestParameterCopyWithExtension on DeviceRequestParameter {
  $DeviceRequestParameterCopyWith<DeviceRequestParameter> get copyWith =>
      _$DeviceRequestParameterCopyWithImpl<DeviceRequestParameter>(
        this,
        (value) => value,
      );
}
