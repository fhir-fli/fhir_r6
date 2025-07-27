// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'audit_event.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $AuditEventCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    List<CodeableConcept>? category,
    CodeableConcept? code,
    AuditEventAction? action,
    AuditEventSeverity? severity,
    Period? occurredX,
    FhirInstant? recorded,
    AuditEventOutcome? outcome,
    List<CodeableConcept>? authorization,
    List<Reference>? basedOn,
    Reference? patient,
    Reference? encounter,
    List<AuditEventAgent>? agent,
    AuditEventSource? source,
    List<AuditEventEntity>? entity,
    bool? disallowExtensions,
  });
}

class _$AuditEventCopyWithImpl<T> implements $AuditEventCopyWith<T> {
  final AuditEvent _value;
  final T Function(AuditEvent) _then;

  _$AuditEventCopyWithImpl(this._value, this._then);

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
    Object? category = fhirSentinel,
    Object? code = fhirSentinel,
    Object? action = fhirSentinel,
    Object? severity = fhirSentinel,
    Object? occurredX = fhirSentinel,
    Object? recorded = fhirSentinel,
    Object? outcome = fhirSentinel,
    Object? authorization = fhirSentinel,
    Object? basedOn = fhirSentinel,
    Object? patient = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? agent = fhirSentinel,
    Object? source = fhirSentinel,
    Object? entity = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AuditEvent(
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
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as List<CodeableConcept>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as CodeableConcept?) ?? _value.code,
        action: identical(action, fhirSentinel)
            ? _value.action
            : action as AuditEventAction?,
        severity: identical(severity, fhirSentinel)
            ? _value.severity
            : severity as AuditEventSeverity?,
        occurredX: identical(occurredX, fhirSentinel)
            ? _value.occurredX
            : occurredX as Period?,
        recorded: identical(recorded, fhirSentinel)
            ? _value.recorded
            : (recorded as FhirInstant?) ?? _value.recorded,
        outcome: identical(outcome, fhirSentinel)
            ? _value.outcome
            : outcome as AuditEventOutcome?,
        authorization: identical(authorization, fhirSentinel)
            ? _value.authorization
            : authorization as List<CodeableConcept>?,
        basedOn: identical(basedOn, fhirSentinel)
            ? _value.basedOn
            : basedOn as List<Reference>?,
        patient: identical(patient, fhirSentinel)
            ? _value.patient
            : patient as Reference?,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as Reference?,
        agent: identical(agent, fhirSentinel)
            ? _value.agent
            : (agent as List<AuditEventAgent>?) ?? _value.agent,
        source: identical(source, fhirSentinel)
            ? _value.source
            : (source as AuditEventSource?) ?? _value.source,
        entity: identical(entity, fhirSentinel)
            ? _value.entity
            : entity as List<AuditEventEntity>?,
      ),
    );
  }
}

extension AuditEventCopyWithExtension on AuditEvent {
  $AuditEventCopyWith<AuditEvent> get copyWith =>
      _$AuditEventCopyWithImpl<AuditEvent>(
        this,
        (value) => value,
      );
}

abstract class $AuditEventOutcomeCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Coding? code,
    List<CodeableConcept>? detail,
    bool? disallowExtensions,
  });
}

class _$AuditEventOutcomeCopyWithImpl<T>
    implements $AuditEventOutcomeCopyWith<T> {
  final AuditEventOutcome _value;
  final T Function(AuditEventOutcome) _then;

  _$AuditEventOutcomeCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? detail = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AuditEventOutcome(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as Coding?) ?? _value.code,
        detail: identical(detail, fhirSentinel)
            ? _value.detail
            : detail as List<CodeableConcept>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension AuditEventOutcomeCopyWithExtension on AuditEventOutcome {
  $AuditEventOutcomeCopyWith<AuditEventOutcome> get copyWith =>
      _$AuditEventOutcomeCopyWithImpl<AuditEventOutcome>(
        this,
        (value) => value,
      );
}

abstract class $AuditEventAgentCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<CodeableConcept>? role,
    Reference? who,
    FhirBoolean? requestor,
    Reference? location,
    List<FhirUri>? policy,
    Reference? networkX,
    List<CodeableConcept>? authorization,
    bool? disallowExtensions,
  });
}

class _$AuditEventAgentCopyWithImpl<T> implements $AuditEventAgentCopyWith<T> {
  final AuditEventAgent _value;
  final T Function(AuditEventAgent) _then;

  _$AuditEventAgentCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? role = fhirSentinel,
    Object? who = fhirSentinel,
    Object? requestor = fhirSentinel,
    Object? location = fhirSentinel,
    Object? policy = fhirSentinel,
    Object? networkX = fhirSentinel,
    Object? authorization = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AuditEventAgent(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        role: identical(role, fhirSentinel)
            ? _value.role
            : role as List<CodeableConcept>?,
        who: identical(who, fhirSentinel)
            ? _value.who
            : (who as Reference?) ?? _value.who,
        requestor: identical(requestor, fhirSentinel)
            ? _value.requestor
            : requestor as FhirBoolean?,
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as Reference?,
        policy: identical(policy, fhirSentinel)
            ? _value.policy
            : policy as List<FhirUri>?,
        networkX: identical(networkX, fhirSentinel)
            ? _value.networkX
            : networkX as Reference?,
        authorization: identical(authorization, fhirSentinel)
            ? _value.authorization
            : authorization as List<CodeableConcept>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension AuditEventAgentCopyWithExtension on AuditEventAgent {
  $AuditEventAgentCopyWith<AuditEventAgent> get copyWith =>
      _$AuditEventAgentCopyWithImpl<AuditEventAgent>(
        this,
        (value) => value,
      );
}

abstract class $AuditEventSourceCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? site,
    Reference? observer,
    List<CodeableConcept>? type,
    bool? disallowExtensions,
  });
}

class _$AuditEventSourceCopyWithImpl<T>
    implements $AuditEventSourceCopyWith<T> {
  final AuditEventSource _value;
  final T Function(AuditEventSource) _then;

  _$AuditEventSourceCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? site = fhirSentinel,
    Object? observer = fhirSentinel,
    Object? type = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AuditEventSource(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        site: identical(site, fhirSentinel) ? _value.site : site as Reference?,
        observer: identical(observer, fhirSentinel)
            ? _value.observer
            : (observer as Reference?) ?? _value.observer,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as List<CodeableConcept>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension AuditEventSourceCopyWithExtension on AuditEventSource {
  $AuditEventSourceCopyWith<AuditEventSource> get copyWith =>
      _$AuditEventSourceCopyWithImpl<AuditEventSource>(
        this,
        (value) => value,
      );
}

abstract class $AuditEventEntityCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? what,
    CodeableConcept? role,
    List<CodeableConcept>? securityLabel,
    FhirBase64Binary? query,
    List<AuditEventDetail>? detail,
    List<AuditEventAgent>? agent,
    bool? disallowExtensions,
  });
}

class _$AuditEventEntityCopyWithImpl<T>
    implements $AuditEventEntityCopyWith<T> {
  final AuditEventEntity _value;
  final T Function(AuditEventEntity) _then;

  _$AuditEventEntityCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? what = fhirSentinel,
    Object? role = fhirSentinel,
    Object? securityLabel = fhirSentinel,
    Object? query = fhirSentinel,
    Object? detail = fhirSentinel,
    Object? agent = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AuditEventEntity(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        what: identical(what, fhirSentinel) ? _value.what : what as Reference?,
        role: identical(role, fhirSentinel)
            ? _value.role
            : role as CodeableConcept?,
        securityLabel: identical(securityLabel, fhirSentinel)
            ? _value.securityLabel
            : securityLabel as List<CodeableConcept>?,
        query: identical(query, fhirSentinel)
            ? _value.query
            : query as FhirBase64Binary?,
        detail: identical(detail, fhirSentinel)
            ? _value.detail
            : detail as List<AuditEventDetail>?,
        agent: identical(agent, fhirSentinel)
            ? _value.agent
            : agent as List<AuditEventAgent>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension AuditEventEntityCopyWithExtension on AuditEventEntity {
  $AuditEventEntityCopyWith<AuditEventEntity> get copyWith =>
      _$AuditEventEntityCopyWithImpl<AuditEventEntity>(
        this,
        (value) => value,
      );
}

abstract class $AuditEventDetailCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    Quantity? valueX,
    bool? disallowExtensions,
  });
}

class _$AuditEventDetailCopyWithImpl<T>
    implements $AuditEventDetailCopyWith<T> {
  final AuditEventDetail _value;
  final T Function(AuditEventDetail) _then;

  _$AuditEventDetailCopyWithImpl(this._value, this._then);

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
      AuditEventDetail(
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
            : (valueX as Quantity?) ?? _value.valueX,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension AuditEventDetailCopyWithExtension on AuditEventDetail {
  $AuditEventDetailCopyWith<AuditEventDetail> get copyWith =>
      _$AuditEventDetailCopyWithImpl<AuditEventDetail>(
        this,
        (value) => value,
      );
}
