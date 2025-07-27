// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'subscription.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $SubscriptionCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    FhirString? name,
    SubscriptionStatusCodes? status,
    FhirCanonical? topic,
    List<ContactPoint>? contact,
    FhirInstant? end,
    Reference? managingEntity,
    FhirString? reason,
    List<SubscriptionFilterBy>? filterBy,
    Coding? channelType,
    FhirUrl? endpoint,
    List<SubscriptionParameter>? parameter,
    FhirUnsignedInt? heartbeatPeriod,
    FhirUnsignedInt? timeout,
    FhirCode? contentType,
    SubscriptionPayloadContent? content,
    FhirPositiveInt? maxCount,
    bool? disallowExtensions,
  });
}

class _$SubscriptionCopyWithImpl<T> implements $SubscriptionCopyWith<T> {
  final Subscription _value;
  final T Function(Subscription) _then;

  _$SubscriptionCopyWithImpl(this._value, this._then);

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
    Object? name = fhirSentinel,
    Object? status = fhirSentinel,
    Object? topic = fhirSentinel,
    Object? contact = fhirSentinel,
    Object? end = fhirSentinel,
    Object? managingEntity = fhirSentinel,
    Object? reason = fhirSentinel,
    Object? filterBy = fhirSentinel,
    Object? channelType = fhirSentinel,
    Object? endpoint = fhirSentinel,
    Object? parameter = fhirSentinel,
    Object? heartbeatPeriod = fhirSentinel,
    Object? timeout = fhirSentinel,
    Object? contentType = fhirSentinel,
    Object? content = fhirSentinel,
    Object? maxCount = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Subscription(
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
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as SubscriptionStatusCodes?) ?? _value.status,
        topic: identical(topic, fhirSentinel)
            ? _value.topic
            : (topic as FhirCanonical?) ?? _value.topic,
        contact: identical(contact, fhirSentinel)
            ? _value.contact
            : contact as List<ContactPoint>?,
        end: identical(end, fhirSentinel) ? _value.end : end as FhirInstant?,
        managingEntity: identical(managingEntity, fhirSentinel)
            ? _value.managingEntity
            : managingEntity as Reference?,
        reason: identical(reason, fhirSentinel)
            ? _value.reason
            : reason as FhirString?,
        filterBy: identical(filterBy, fhirSentinel)
            ? _value.filterBy
            : filterBy as List<SubscriptionFilterBy>?,
        channelType: identical(channelType, fhirSentinel)
            ? _value.channelType
            : (channelType as Coding?) ?? _value.channelType,
        endpoint: identical(endpoint, fhirSentinel)
            ? _value.endpoint
            : endpoint as FhirUrl?,
        parameter: identical(parameter, fhirSentinel)
            ? _value.parameter
            : parameter as List<SubscriptionParameter>?,
        heartbeatPeriod: identical(heartbeatPeriod, fhirSentinel)
            ? _value.heartbeatPeriod
            : heartbeatPeriod as FhirUnsignedInt?,
        timeout: identical(timeout, fhirSentinel)
            ? _value.timeout
            : timeout as FhirUnsignedInt?,
        contentType: identical(contentType, fhirSentinel)
            ? _value.contentType
            : contentType as FhirCode?,
        content: identical(content, fhirSentinel)
            ? _value.content
            : content as SubscriptionPayloadContent?,
        maxCount: identical(maxCount, fhirSentinel)
            ? _value.maxCount
            : maxCount as FhirPositiveInt?,
      ),
    );
  }
}

extension SubscriptionCopyWithExtension on Subscription {
  $SubscriptionCopyWith<Subscription> get copyWith =>
      _$SubscriptionCopyWithImpl<Subscription>(
        this,
        (value) => value,
      );
}

abstract class $SubscriptionFilterByCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? resourceType,
    FhirString? filterParameter,
    SearchComparator? comparator,
    SearchModifierCode? modifier,
    FhirString? value,
    bool? disallowExtensions,
  });
}

class _$SubscriptionFilterByCopyWithImpl<T>
    implements $SubscriptionFilterByCopyWith<T> {
  final SubscriptionFilterBy _value;
  final T Function(SubscriptionFilterBy) _then;

  _$SubscriptionFilterByCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? resourceType = fhirSentinel,
    Object? filterParameter = fhirSentinel,
    Object? comparator = fhirSentinel,
    Object? modifier = fhirSentinel,
    Object? value = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubscriptionFilterBy(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        resourceType: identical(resourceType, fhirSentinel)
            ? _value.resourceType
            : resourceType as FhirUri?,
        filterParameter: identical(filterParameter, fhirSentinel)
            ? _value.filterParameter
            : (filterParameter as FhirString?) ?? _value.filterParameter,
        comparator: identical(comparator, fhirSentinel)
            ? _value.comparator
            : comparator as SearchComparator?,
        modifier: identical(modifier, fhirSentinel)
            ? _value.modifier
            : modifier as SearchModifierCode?,
        value: identical(value, fhirSentinel)
            ? _value.value
            : (value as FhirString?) ?? _value.value,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubscriptionFilterByCopyWithExtension on SubscriptionFilterBy {
  $SubscriptionFilterByCopyWith<SubscriptionFilterBy> get copyWith =>
      _$SubscriptionFilterByCopyWithImpl<SubscriptionFilterBy>(
        this,
        (value) => value,
      );
}

abstract class $SubscriptionParameterCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    FhirString? value,
    bool? disallowExtensions,
  });
}

class _$SubscriptionParameterCopyWithImpl<T>
    implements $SubscriptionParameterCopyWith<T> {
  final SubscriptionParameter _value;
  final T Function(SubscriptionParameter) _then;

  _$SubscriptionParameterCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? name = fhirSentinel,
    Object? value = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SubscriptionParameter(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        name: identical(name, fhirSentinel)
            ? _value.name
            : (name as FhirString?) ?? _value.name,
        value: identical(value, fhirSentinel)
            ? _value.value
            : (value as FhirString?) ?? _value.value,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SubscriptionParameterCopyWithExtension on SubscriptionParameter {
  $SubscriptionParameterCopyWith<SubscriptionParameter> get copyWith =>
      _$SubscriptionParameterCopyWithImpl<SubscriptionParameter>(
        this,
        (value) => value,
      );
}
