// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'device_alert.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $DeviceAlertCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    DeviceAlertStatusCodes? status,
    DeviceAlertTypeCodes? type,
    DeviceAlertPriorityCodes? priority,
    Reference? subject,
    Reference? source,
    DeviceAlertCondition? condition,
    List<Reference>? derivedFrom,
    FhirString? label,
    List<DeviceAlertSignal>? signal,
    bool? disallowExtensions,
  });
}

class _$DeviceAlertCopyWithImpl<T> implements $DeviceAlertCopyWith<T> {
  final DeviceAlert _value;
  final T Function(DeviceAlert) _then;

  _$DeviceAlertCopyWithImpl(this._value, this._then);

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
    Object? type = fhirSentinel,
    Object? priority = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? source = fhirSentinel,
    Object? condition = fhirSentinel,
    Object? derivedFrom = fhirSentinel,
    Object? label = fhirSentinel,
    Object? signal = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceAlert(
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
            : (status as DeviceAlertStatusCodes?) ?? _value.status,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as DeviceAlertTypeCodes?,
        priority: identical(priority, fhirSentinel)
            ? _value.priority
            : priority as DeviceAlertPriorityCodes?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : (subject as Reference?) ?? _value.subject,
        source: identical(source, fhirSentinel)
            ? _value.source
            : source as Reference?,
        condition: identical(condition, fhirSentinel)
            ? _value.condition
            : (condition as DeviceAlertCondition?) ?? _value.condition,
        derivedFrom: identical(derivedFrom, fhirSentinel)
            ? _value.derivedFrom
            : derivedFrom as List<Reference>?,
        label: identical(label, fhirSentinel)
            ? _value.label
            : label as FhirString?,
        signal: identical(signal, fhirSentinel)
            ? _value.signal
            : signal as List<DeviceAlertSignal>?,
      ),
    );
  }
}

extension DeviceAlertCopyWithExtension on DeviceAlert {
  $DeviceAlertCopyWith<DeviceAlert> get copyWith =>
      _$DeviceAlertCopyWithImpl<DeviceAlert>(
        this,
        (value) => value,
      );
}

abstract class $DeviceAlertConditionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    FhirBoolean? acknowledged,
    FhirBoolean? presence,
    Period? timing,
    Range? limit,
    bool? disallowExtensions,
  });
}

class _$DeviceAlertConditionCopyWithImpl<T>
    implements $DeviceAlertConditionCopyWith<T> {
  final DeviceAlertCondition _value;
  final T Function(DeviceAlertCondition) _then;

  _$DeviceAlertConditionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? acknowledged = fhirSentinel,
    Object? presence = fhirSentinel,
    Object? timing = fhirSentinel,
    Object? limit = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceAlertCondition(
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
        acknowledged: identical(acknowledged, fhirSentinel)
            ? _value.acknowledged
            : acknowledged as FhirBoolean?,
        presence: identical(presence, fhirSentinel)
            ? _value.presence
            : (presence as FhirBoolean?) ?? _value.presence,
        timing:
            identical(timing, fhirSentinel) ? _value.timing : timing as Period?,
        limit: identical(limit, fhirSentinel) ? _value.limit : limit as Range?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DeviceAlertConditionCopyWithExtension on DeviceAlertCondition {
  $DeviceAlertConditionCopyWith<DeviceAlertCondition> get copyWith =>
      _$DeviceAlertConditionCopyWithImpl<DeviceAlertCondition>(
        this,
        (value) => value,
      );
}

abstract class $DeviceAlertSignalCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    DeviceAlertActivationStateCodes? activationState,
    DeviceAlertPresenceCodes? presence,
    CodeableReference? annunciator,
    CodeableConcept? manifestation,
    List<CodeableConcept>? type,
    Period? indication,
    bool? disallowExtensions,
  });
}

class _$DeviceAlertSignalCopyWithImpl<T>
    implements $DeviceAlertSignalCopyWith<T> {
  final DeviceAlertSignal _value;
  final T Function(DeviceAlertSignal) _then;

  _$DeviceAlertSignalCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? activationState = fhirSentinel,
    Object? presence = fhirSentinel,
    Object? annunciator = fhirSentinel,
    Object? manifestation = fhirSentinel,
    Object? type = fhirSentinel,
    Object? indication = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceAlertSignal(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        activationState: identical(activationState, fhirSentinel)
            ? _value.activationState
            : (activationState as DeviceAlertActivationStateCodes?) ??
                _value.activationState,
        presence: identical(presence, fhirSentinel)
            ? _value.presence
            : presence as DeviceAlertPresenceCodes?,
        annunciator: identical(annunciator, fhirSentinel)
            ? _value.annunciator
            : annunciator as CodeableReference?,
        manifestation: identical(manifestation, fhirSentinel)
            ? _value.manifestation
            : manifestation as CodeableConcept?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as List<CodeableConcept>?,
        indication: identical(indication, fhirSentinel)
            ? _value.indication
            : indication as Period?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DeviceAlertSignalCopyWithExtension on DeviceAlertSignal {
  $DeviceAlertSignalCopyWith<DeviceAlertSignal> get copyWith =>
      _$DeviceAlertSignalCopyWithImpl<DeviceAlertSignal>(
        this,
        (value) => value,
      );
}
