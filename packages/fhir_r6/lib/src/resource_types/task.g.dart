// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'task.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $TaskCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    TaskStatus? status,
    CodeableReference? statusReason,
    CodeableConcept? businessStatus,
    TaskIntent? intent,
    RequestPriority? priority,
    FhirBoolean? doNotPerform,
    CodeableConcept? code,
    FhirString? description,
    Reference? focus,
    Reference? for_,
    Reference? encounter,
    Period? requestedPeriod,
    Period? executionPeriod,
    FhirDateTime? authoredOn,
    FhirDateTime? lastModified,
    Reference? requester,
    List<CodeableReference>? requestedPerformer,
    Reference? owner,
    List<TaskPerformer>? performer,
    Reference? location,
    List<CodeableReference>? reason,
    List<Reference>? insurance,
    List<Annotation>? note,
    List<Reference>? relevantHistory,
    TaskRestriction? restriction,
    List<TaskInput>? input,
    List<TaskOutput>? output,
    bool? disallowExtensions,
  });
}

class _$TaskCopyWithImpl<T> implements $TaskCopyWith<T> {
  final Task _value;
  final T Function(Task) _then;

  _$TaskCopyWithImpl(this._value, this._then);

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
    Object? businessStatus = fhirSentinel,
    Object? intent = fhirSentinel,
    Object? priority = fhirSentinel,
    Object? doNotPerform = fhirSentinel,
    Object? code = fhirSentinel,
    Object? description = fhirSentinel,
    Object? focus = fhirSentinel,
    Object? for_ = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? requestedPeriod = fhirSentinel,
    Object? executionPeriod = fhirSentinel,
    Object? authoredOn = fhirSentinel,
    Object? lastModified = fhirSentinel,
    Object? requester = fhirSentinel,
    Object? requestedPerformer = fhirSentinel,
    Object? owner = fhirSentinel,
    Object? performer = fhirSentinel,
    Object? location = fhirSentinel,
    Object? reason = fhirSentinel,
    Object? insurance = fhirSentinel,
    Object? note = fhirSentinel,
    Object? relevantHistory = fhirSentinel,
    Object? restriction = fhirSentinel,
    Object? input = fhirSentinel,
    Object? output = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Task(
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
            : (status as TaskStatus?) ?? _value.status,
        statusReason: identical(statusReason, fhirSentinel)
            ? _value.statusReason
            : statusReason as CodeableReference?,
        businessStatus: identical(businessStatus, fhirSentinel)
            ? _value.businessStatus
            : businessStatus as CodeableConcept?,
        intent: identical(intent, fhirSentinel)
            ? _value.intent
            : (intent as TaskIntent?) ?? _value.intent,
        priority: identical(priority, fhirSentinel)
            ? _value.priority
            : priority as RequestPriority?,
        doNotPerform: identical(doNotPerform, fhirSentinel)
            ? _value.doNotPerform
            : doNotPerform as FhirBoolean?,
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
        requestedPeriod: identical(requestedPeriod, fhirSentinel)
            ? _value.requestedPeriod
            : requestedPeriod as Period?,
        executionPeriod: identical(executionPeriod, fhirSentinel)
            ? _value.executionPeriod
            : executionPeriod as Period?,
        authoredOn: identical(authoredOn, fhirSentinel)
            ? _value.authoredOn
            : authoredOn as FhirDateTime?,
        lastModified: identical(lastModified, fhirSentinel)
            ? _value.lastModified
            : lastModified as FhirDateTime?,
        requester: identical(requester, fhirSentinel)
            ? _value.requester
            : requester as Reference?,
        requestedPerformer: identical(requestedPerformer, fhirSentinel)
            ? _value.requestedPerformer
            : requestedPerformer as List<CodeableReference>?,
        owner:
            identical(owner, fhirSentinel) ? _value.owner : owner as Reference?,
        performer: identical(performer, fhirSentinel)
            ? _value.performer
            : performer as List<TaskPerformer>?,
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as Reference?,
        reason: identical(reason, fhirSentinel)
            ? _value.reason
            : reason as List<CodeableReference>?,
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
            : restriction as TaskRestriction?,
        input: identical(input, fhirSentinel)
            ? _value.input
            : input as List<TaskInput>?,
        output: identical(output, fhirSentinel)
            ? _value.output
            : output as List<TaskOutput>?,
      ),
    );
  }
}

extension TaskCopyWithExtension on Task {
  $TaskCopyWith<Task> get copyWith => _$TaskCopyWithImpl<Task>(
        this,
        (value) => value,
      );
}

abstract class $TaskPerformerCopyWith<T> extends $BackboneElementCopyWith<T> {
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

class _$TaskPerformerCopyWithImpl<T> implements $TaskPerformerCopyWith<T> {
  final TaskPerformer _value;
  final T Function(TaskPerformer) _then;

  _$TaskPerformerCopyWithImpl(this._value, this._then);

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
      TaskPerformer(
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

extension TaskPerformerCopyWithExtension on TaskPerformer {
  $TaskPerformerCopyWith<TaskPerformer> get copyWith =>
      _$TaskPerformerCopyWithImpl<TaskPerformer>(
        this,
        (value) => value,
      );
}

abstract class $TaskRestrictionCopyWith<T> extends $BackboneElementCopyWith<T> {
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

class _$TaskRestrictionCopyWithImpl<T> implements $TaskRestrictionCopyWith<T> {
  final TaskRestriction _value;
  final T Function(TaskRestriction) _then;

  _$TaskRestrictionCopyWithImpl(this._value, this._then);

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
      TaskRestriction(
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

extension TaskRestrictionCopyWithExtension on TaskRestriction {
  $TaskRestrictionCopyWith<TaskRestriction> get copyWith =>
      _$TaskRestrictionCopyWithImpl<TaskRestriction>(
        this,
        (value) => value,
      );
}

abstract class $TaskInputCopyWith<T> extends $BackboneElementCopyWith<T> {
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

class _$TaskInputCopyWithImpl<T> implements $TaskInputCopyWith<T> {
  final TaskInput _value;
  final T Function(TaskInput) _then;

  _$TaskInputCopyWithImpl(this._value, this._then);

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
      TaskInput(
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

extension TaskInputCopyWithExtension on TaskInput {
  $TaskInputCopyWith<TaskInput> get copyWith =>
      _$TaskInputCopyWithImpl<TaskInput>(
        this,
        (value) => value,
      );
}

abstract class $TaskOutputCopyWith<T> extends $BackboneElementCopyWith<T> {
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

class _$TaskOutputCopyWithImpl<T> implements $TaskOutputCopyWith<T> {
  final TaskOutput _value;
  final T Function(TaskOutput) _then;

  _$TaskOutputCopyWithImpl(this._value, this._then);

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
      TaskOutput(
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

extension TaskOutputCopyWithExtension on TaskOutput {
  $TaskOutputCopyWith<TaskOutput> get copyWith =>
      _$TaskOutputCopyWithImpl<TaskOutput>(
        this,
        (value) => value,
      );
}
