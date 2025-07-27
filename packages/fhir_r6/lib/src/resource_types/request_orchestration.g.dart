// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'request_orchestration.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $RequestOrchestrationCopyWith<T>
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
    List<FhirCanonical>? instantiatesCanonical,
    List<FhirUri>? instantiatesUri,
    List<Reference>? basedOn,
    List<Reference>? replaces,
    Identifier? groupIdentifier,
    RequestStatus? status,
    RequestIntent? intent,
    RequestPriority? priority,
    CodeableConcept? code,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? authoredOn,
    Reference? author,
    List<CodeableReference>? reason,
    List<Reference>? goal,
    List<Annotation>? note,
    List<RequestOrchestrationAction>? action,
    bool? disallowExtensions,
  });
}

class _$RequestOrchestrationCopyWithImpl<T>
    implements $RequestOrchestrationCopyWith<T> {
  final RequestOrchestration _value;
  final T Function(RequestOrchestration) _then;

  _$RequestOrchestrationCopyWithImpl(this._value, this._then);

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
    Object? code = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? authoredOn = fhirSentinel,
    Object? author = fhirSentinel,
    Object? reason = fhirSentinel,
    Object? goal = fhirSentinel,
    Object? note = fhirSentinel,
    Object? action = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      RequestOrchestration(
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
            : (status as RequestStatus?) ?? _value.status,
        intent: identical(intent, fhirSentinel)
            ? _value.intent
            : (intent as RequestIntent?) ?? _value.intent,
        priority: identical(priority, fhirSentinel)
            ? _value.priority
            : priority as RequestPriority?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : subject as Reference?,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as Reference?,
        authoredOn: identical(authoredOn, fhirSentinel)
            ? _value.authoredOn
            : authoredOn as FhirDateTime?,
        author: identical(author, fhirSentinel)
            ? _value.author
            : author as Reference?,
        reason: identical(reason, fhirSentinel)
            ? _value.reason
            : reason as List<CodeableReference>?,
        goal: identical(goal, fhirSentinel)
            ? _value.goal
            : goal as List<Reference>?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        action: identical(action, fhirSentinel)
            ? _value.action
            : action as List<RequestOrchestrationAction>?,
      ),
    );
  }
}

extension RequestOrchestrationCopyWithExtension on RequestOrchestration {
  $RequestOrchestrationCopyWith<RequestOrchestration> get copyWith =>
      _$RequestOrchestrationCopyWithImpl<RequestOrchestration>(
        this,
        (value) => value,
      );
}

abstract class $RequestOrchestrationActionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? linkId,
    FhirString? prefix,
    FhirString? title,
    FhirMarkdown? description,
    FhirMarkdown? textEquivalent,
    RequestPriority? priority,
    List<CodeableConcept>? code,
    List<RelatedArtifact>? documentation,
    List<Reference>? goal,
    List<RequestOrchestrationCondition>? condition,
    List<RequestOrchestrationInput>? input,
    List<RequestOrchestrationOutput>? output,
    List<RequestOrchestrationRelatedAction>? relatedAction,
    FhirDateTime? timingX,
    CodeableReference? location,
    List<RequestOrchestrationParticipant>? participant,
    CodeableConcept? type,
    ActionGroupingBehavior? groupingBehavior,
    ActionSelectionBehavior? selectionBehavior,
    ActionRequiredBehavior? requiredBehavior,
    ActionPrecheckBehavior? precheckBehavior,
    ActionCardinalityBehavior? cardinalityBehavior,
    Reference? resource,
    FhirCanonical? definitionX,
    FhirCanonical? transform,
    List<RequestOrchestrationDynamicValue>? dynamicValue,
    List<RequestOrchestrationAction>? action,
    bool? disallowExtensions,
  });
}

class _$RequestOrchestrationActionCopyWithImpl<T>
    implements $RequestOrchestrationActionCopyWith<T> {
  final RequestOrchestrationAction _value;
  final T Function(RequestOrchestrationAction) _then;

  _$RequestOrchestrationActionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? linkId = fhirSentinel,
    Object? prefix = fhirSentinel,
    Object? title = fhirSentinel,
    Object? description = fhirSentinel,
    Object? textEquivalent = fhirSentinel,
    Object? priority = fhirSentinel,
    Object? code = fhirSentinel,
    Object? documentation = fhirSentinel,
    Object? goal = fhirSentinel,
    Object? condition = fhirSentinel,
    Object? input = fhirSentinel,
    Object? output = fhirSentinel,
    Object? relatedAction = fhirSentinel,
    Object? timingX = fhirSentinel,
    Object? location = fhirSentinel,
    Object? participant = fhirSentinel,
    Object? type = fhirSentinel,
    Object? groupingBehavior = fhirSentinel,
    Object? selectionBehavior = fhirSentinel,
    Object? requiredBehavior = fhirSentinel,
    Object? precheckBehavior = fhirSentinel,
    Object? cardinalityBehavior = fhirSentinel,
    Object? resource = fhirSentinel,
    Object? definitionX = fhirSentinel,
    Object? transform = fhirSentinel,
    Object? dynamicValue = fhirSentinel,
    Object? action = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      RequestOrchestrationAction(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        linkId: identical(linkId, fhirSentinel)
            ? _value.linkId
            : linkId as FhirString?,
        prefix: identical(prefix, fhirSentinel)
            ? _value.prefix
            : prefix as FhirString?,
        title: identical(title, fhirSentinel)
            ? _value.title
            : title as FhirString?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        textEquivalent: identical(textEquivalent, fhirSentinel)
            ? _value.textEquivalent
            : textEquivalent as FhirMarkdown?,
        priority: identical(priority, fhirSentinel)
            ? _value.priority
            : priority as RequestPriority?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as List<CodeableConcept>?,
        documentation: identical(documentation, fhirSentinel)
            ? _value.documentation
            : documentation as List<RelatedArtifact>?,
        goal: identical(goal, fhirSentinel)
            ? _value.goal
            : goal as List<Reference>?,
        condition: identical(condition, fhirSentinel)
            ? _value.condition
            : condition as List<RequestOrchestrationCondition>?,
        input: identical(input, fhirSentinel)
            ? _value.input
            : input as List<RequestOrchestrationInput>?,
        output: identical(output, fhirSentinel)
            ? _value.output
            : output as List<RequestOrchestrationOutput>?,
        relatedAction: identical(relatedAction, fhirSentinel)
            ? _value.relatedAction
            : relatedAction as List<RequestOrchestrationRelatedAction>?,
        timingX: identical(timingX, fhirSentinel)
            ? _value.timingX
            : timingX as FhirDateTime?,
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as CodeableReference?,
        participant: identical(participant, fhirSentinel)
            ? _value.participant
            : participant as List<RequestOrchestrationParticipant>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        groupingBehavior: identical(groupingBehavior, fhirSentinel)
            ? _value.groupingBehavior
            : groupingBehavior as ActionGroupingBehavior?,
        selectionBehavior: identical(selectionBehavior, fhirSentinel)
            ? _value.selectionBehavior
            : selectionBehavior as ActionSelectionBehavior?,
        requiredBehavior: identical(requiredBehavior, fhirSentinel)
            ? _value.requiredBehavior
            : requiredBehavior as ActionRequiredBehavior?,
        precheckBehavior: identical(precheckBehavior, fhirSentinel)
            ? _value.precheckBehavior
            : precheckBehavior as ActionPrecheckBehavior?,
        cardinalityBehavior: identical(cardinalityBehavior, fhirSentinel)
            ? _value.cardinalityBehavior
            : cardinalityBehavior as ActionCardinalityBehavior?,
        resource: identical(resource, fhirSentinel)
            ? _value.resource
            : resource as Reference?,
        definitionX: identical(definitionX, fhirSentinel)
            ? _value.definitionX
            : definitionX as FhirCanonical?,
        transform: identical(transform, fhirSentinel)
            ? _value.transform
            : transform as FhirCanonical?,
        dynamicValue: identical(dynamicValue, fhirSentinel)
            ? _value.dynamicValue
            : dynamicValue as List<RequestOrchestrationDynamicValue>?,
        action: identical(action, fhirSentinel)
            ? _value.action
            : action as List<RequestOrchestrationAction>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension RequestOrchestrationActionCopyWithExtension
    on RequestOrchestrationAction {
  $RequestOrchestrationActionCopyWith<RequestOrchestrationAction>
      get copyWith =>
          _$RequestOrchestrationActionCopyWithImpl<RequestOrchestrationAction>(
            this,
            (value) => value,
          );
}

abstract class $RequestOrchestrationConditionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ActionConditionKind? kind,
    FhirExpression? expression,
    bool? disallowExtensions,
  });
}

class _$RequestOrchestrationConditionCopyWithImpl<T>
    implements $RequestOrchestrationConditionCopyWith<T> {
  final RequestOrchestrationCondition _value;
  final T Function(RequestOrchestrationCondition) _then;

  _$RequestOrchestrationConditionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? kind = fhirSentinel,
    Object? expression = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      RequestOrchestrationCondition(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        kind: identical(kind, fhirSentinel)
            ? _value.kind
            : (kind as ActionConditionKind?) ?? _value.kind,
        expression: identical(expression, fhirSentinel)
            ? _value.expression
            : expression as FhirExpression?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension RequestOrchestrationConditionCopyWithExtension
    on RequestOrchestrationCondition {
  $RequestOrchestrationConditionCopyWith<RequestOrchestrationCondition>
      get copyWith => _$RequestOrchestrationConditionCopyWithImpl<
              RequestOrchestrationCondition>(
            this,
            (value) => value,
          );
}

abstract class $RequestOrchestrationInputCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? title,
    DataRequirement? requirement,
    FhirId? relatedData,
    bool? disallowExtensions,
  });
}

class _$RequestOrchestrationInputCopyWithImpl<T>
    implements $RequestOrchestrationInputCopyWith<T> {
  final RequestOrchestrationInput _value;
  final T Function(RequestOrchestrationInput) _then;

  _$RequestOrchestrationInputCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? title = fhirSentinel,
    Object? requirement = fhirSentinel,
    Object? relatedData = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      RequestOrchestrationInput(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        title: identical(title, fhirSentinel)
            ? _value.title
            : title as FhirString?,
        requirement: identical(requirement, fhirSentinel)
            ? _value.requirement
            : requirement as DataRequirement?,
        relatedData: identical(relatedData, fhirSentinel)
            ? _value.relatedData
            : relatedData as FhirId?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension RequestOrchestrationInputCopyWithExtension
    on RequestOrchestrationInput {
  $RequestOrchestrationInputCopyWith<RequestOrchestrationInput> get copyWith =>
      _$RequestOrchestrationInputCopyWithImpl<RequestOrchestrationInput>(
        this,
        (value) => value,
      );
}

abstract class $RequestOrchestrationOutputCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? title,
    DataRequirement? requirement,
    FhirString? relatedData,
    bool? disallowExtensions,
  });
}

class _$RequestOrchestrationOutputCopyWithImpl<T>
    implements $RequestOrchestrationOutputCopyWith<T> {
  final RequestOrchestrationOutput _value;
  final T Function(RequestOrchestrationOutput) _then;

  _$RequestOrchestrationOutputCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? title = fhirSentinel,
    Object? requirement = fhirSentinel,
    Object? relatedData = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      RequestOrchestrationOutput(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        title: identical(title, fhirSentinel)
            ? _value.title
            : title as FhirString?,
        requirement: identical(requirement, fhirSentinel)
            ? _value.requirement
            : requirement as DataRequirement?,
        relatedData: identical(relatedData, fhirSentinel)
            ? _value.relatedData
            : relatedData as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension RequestOrchestrationOutputCopyWithExtension
    on RequestOrchestrationOutput {
  $RequestOrchestrationOutputCopyWith<RequestOrchestrationOutput>
      get copyWith =>
          _$RequestOrchestrationOutputCopyWithImpl<RequestOrchestrationOutput>(
            this,
            (value) => value,
          );
}

abstract class $RequestOrchestrationRelatedActionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? targetId,
    ActionRelationshipType? relationship,
    ActionRelationshipType? endRelationship,
    FhirDuration? offsetX,
    bool? disallowExtensions,
  });
}

class _$RequestOrchestrationRelatedActionCopyWithImpl<T>
    implements $RequestOrchestrationRelatedActionCopyWith<T> {
  final RequestOrchestrationRelatedAction _value;
  final T Function(RequestOrchestrationRelatedAction) _then;

  _$RequestOrchestrationRelatedActionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? targetId = fhirSentinel,
    Object? relationship = fhirSentinel,
    Object? endRelationship = fhirSentinel,
    Object? offsetX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      RequestOrchestrationRelatedAction(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        targetId: identical(targetId, fhirSentinel)
            ? _value.targetId
            : (targetId as FhirId?) ?? _value.targetId,
        relationship: identical(relationship, fhirSentinel)
            ? _value.relationship
            : (relationship as ActionRelationshipType?) ?? _value.relationship,
        endRelationship: identical(endRelationship, fhirSentinel)
            ? _value.endRelationship
            : endRelationship as ActionRelationshipType?,
        offsetX: identical(offsetX, fhirSentinel)
            ? _value.offsetX
            : offsetX as FhirDuration?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension RequestOrchestrationRelatedActionCopyWithExtension
    on RequestOrchestrationRelatedAction {
  $RequestOrchestrationRelatedActionCopyWith<RequestOrchestrationRelatedAction>
      get copyWith => _$RequestOrchestrationRelatedActionCopyWithImpl<
              RequestOrchestrationRelatedAction>(
            this,
            (value) => value,
          );
}

abstract class $RequestOrchestrationParticipantCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ActionParticipantType? type,
    FhirCanonical? typeCanonical,
    Reference? typeReference,
    CodeableConcept? role,
    CodeableConcept? function_,
    FhirCanonical? actorX,
    bool? disallowExtensions,
  });
}

class _$RequestOrchestrationParticipantCopyWithImpl<T>
    implements $RequestOrchestrationParticipantCopyWith<T> {
  final RequestOrchestrationParticipant _value;
  final T Function(RequestOrchestrationParticipant) _then;

  _$RequestOrchestrationParticipantCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? typeCanonical = fhirSentinel,
    Object? typeReference = fhirSentinel,
    Object? role = fhirSentinel,
    Object? function_ = fhirSentinel,
    Object? actorX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      RequestOrchestrationParticipant(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as ActionParticipantType?,
        typeCanonical: identical(typeCanonical, fhirSentinel)
            ? _value.typeCanonical
            : typeCanonical as FhirCanonical?,
        typeReference: identical(typeReference, fhirSentinel)
            ? _value.typeReference
            : typeReference as Reference?,
        role: identical(role, fhirSentinel)
            ? _value.role
            : role as CodeableConcept?,
        function_: identical(function_, fhirSentinel)
            ? _value.function_
            : function_ as CodeableConcept?,
        actorX: identical(actorX, fhirSentinel)
            ? _value.actorX
            : actorX as FhirCanonical?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension RequestOrchestrationParticipantCopyWithExtension
    on RequestOrchestrationParticipant {
  $RequestOrchestrationParticipantCopyWith<RequestOrchestrationParticipant>
      get copyWith => _$RequestOrchestrationParticipantCopyWithImpl<
              RequestOrchestrationParticipant>(
            this,
            (value) => value,
          );
}

abstract class $RequestOrchestrationDynamicValueCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? path,
    FhirExpression? expression,
    bool? disallowExtensions,
  });
}

class _$RequestOrchestrationDynamicValueCopyWithImpl<T>
    implements $RequestOrchestrationDynamicValueCopyWith<T> {
  final RequestOrchestrationDynamicValue _value;
  final T Function(RequestOrchestrationDynamicValue) _then;

  _$RequestOrchestrationDynamicValueCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? path = fhirSentinel,
    Object? expression = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      RequestOrchestrationDynamicValue(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        path: identical(path, fhirSentinel) ? _value.path : path as FhirString?,
        expression: identical(expression, fhirSentinel)
            ? _value.expression
            : expression as FhirExpression?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension RequestOrchestrationDynamicValueCopyWithExtension
    on RequestOrchestrationDynamicValue {
  $RequestOrchestrationDynamicValueCopyWith<RequestOrchestrationDynamicValue>
      get copyWith => _$RequestOrchestrationDynamicValueCopyWithImpl<
              RequestOrchestrationDynamicValue>(
            this,
            (value) => value,
          );
}
